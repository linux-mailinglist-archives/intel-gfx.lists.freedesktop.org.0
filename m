Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FE478D3D2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C1410E4D1;
	Wed, 30 Aug 2023 08:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0878110E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382672; x=1724918672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wlS5G6E5pM5uV1AzRkDJsFOjBJ7vrzjERRqc9ioMvDg=;
 b=SRO68/bvgL80xKvahC/X8siY/4TmnlCaJWrVh6i4M+/1Sh9vpTzEY4De
 rd9KsV4Oq2xhgVlekA/5o+UNtLFuHZtd/4f3JU0rcIglXvSGu1ODgx1fC
 z6YGUyJYfAJUt2g4BODNWGoGXsUL8qPa+uhYHmrzfKz8i+Wg7lqavXVmf
 BTckdDgL6G34nX0CVEcOAhGZqGdjtdku+F6CWklskaDQ7WXvPwQ3/OGBi
 tLQ8epOKBHmZ7umP14Tl2Ua9IP8bkoUw4k/zPIf0gTcIOjNv7ebV+3waQ
 FNRx6+a0KwoOtq+L6SyAXpsNEpguYZ2GNDbzXldJ5Ed35YQlDUzRElHtQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439526908"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439526908"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882646667"
Received: from alorinti-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.33.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:02:15 +0300
Message-Id: <20230830080219.2529281-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] Handle dma fences in dirtyfb ioctl
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently i915 dirtyfb ioctl is not taking dma fences into
account. This works with features like FBC, PSR, DRRS because our gem
code is triggering flush again when rendering completes. We are
targeting in getting rid of frontbuffer tracking code: Flusing hook
from gem code will be removed as well.

This patch set is adding dma fence handling into i915 dirtyfb ioctl.

v3:
 - Check frontbuffer bits before adding any fence fb
 - Flush only when adding fence cb succeeds
 - Check schedule work success rather than work being pending
 - Init flush work when frontbuffer struct is initialized
v2:
 - Clear fbc and psr busy bits on flip
 - Check if flush work is already pending
 - Use dma_resv_get_singleton

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (4):
  drm/i915/fbc: Clear frontbuffer busy bits on flip
  drm/i915/psr: Clear frontbuffer busy bits on flip
  drm/i915: Add new frontbuffer tracking interface to queue flush
  drm/i915: Handle dma fences in dirtyfb callback

 drivers/gpu/drm/i915/display/intel_fb.c       | 60 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 28 +++++++++
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 ++
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 ++
 5 files changed, 97 insertions(+), 7 deletions(-)

-- 
2.34.1

