Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A9678FAED
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 11:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC2910E758;
	Fri,  1 Sep 2023 09:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE0910E758
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693560912; x=1725096912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OOv5gyxByLunrDTSnC7lJSIWwDO+wQZal93f6VFMerE=;
 b=iVhRwUM1at53VcZ5o2Nvfj0teDoaA0Cg6qsMCjBIK8nvBDloo1OQACU6
 7/wmw0WwRx0IXTdXPrQMQpzFHJwntuM0QMwyEHkc8dhvveWyn19p+g2Tx
 LLn3xtzHtkx9aDtBKwnkSsjoNPhgrvfX+pdzTf5ahHiCXCVrIryPoLrEc
 bMNg9ladg6rvNB9Lyp0Glzdk3uPTKHqUXqGfbWabyqDwTxvZ/p3x7npg2
 KfPLFcPA9myMStOm78IT55XuaUDHFTBG2xRPF6gEJjI6azzLObBq4Z8Dn
 TZwcbJ5jN3B0YzQ9sHw4Rp66crp7pwVewYBcP6NVpj2ybHZ08YAvNNP0X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="378906671"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="378906671"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689709234"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="689709234"
Received: from haslam-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.58.201])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 12:34:56 +0300
Message-Id: <20230901093500.3463046-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] Handle dma fences in dirtyfb ioctl
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

v4:
 - Move invalidate back being done before cb is added
v3:
 - Check frontbuffer bits before adding any fence fb
 - Invalidate only when adding fence cb succeeds
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

