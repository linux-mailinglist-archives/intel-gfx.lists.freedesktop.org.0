Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1996E7645A6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 07:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D1010E126;
	Thu, 27 Jul 2023 05:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98AB10E0D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 05:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690436145; x=1721972145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gYAs0IPMDSyN1fH4MKfkkAsz+HpISzAaUrhELRRryXA=;
 b=d4wk/wGcd1u6Ykggp/6ug2GtBiWXCmaYsaTksVHuon5pJxstrQ+vfURA
 z9cNr8o+XZf7hzBnWUqrTuPyt8MBYsFfPPMpjg9cWZ6uzl6GLuEQXWdUd
 WMbL64mOVZ2gkyGqWLk/Gv2Rh3YpZgg/zwsoCGMYpnHi4a/kLzXed9Zpa
 eTwo1Ta5ntzZaAZ7gHGSyajps6f8KKhCdchTEBxQ6yAcRQnmBGEvbFUt3
 g7SozqbxDxjQUQPfaFQgNt8OU5z7Cuo6zhQmAMV4PgHSQ6khTIidiAnuZ
 U1cZwLAAah1dNfq3R3ieW6SR+Z2KSRB8B2jvXFMKRlFHq9RlqhLeNSzVG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368227198"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368227198"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="676978320"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="676978320"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 08:35:14 +0300
Message-Id: <20230727053518.709345-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Handle dma fences in dirtyfb ioctl
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

 drivers/gpu/drm/i915/display/intel_fb.c       | 57 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 33 +++++++++++
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 ++
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 ++
 5 files changed, 99 insertions(+), 7 deletions(-)

-- 
2.34.1

