Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B1C6F4763
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B42410E587;
	Tue,  2 May 2023 15:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D7D10E375
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041891; x=1714577891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l2niQlZoZM+uDRTSCMWw2I4N6zqzB0yhi5r/LEOEtIU=;
 b=XFTVFM933xua7gw027KlhbwY7W0NqCFMbA7Rk4O8vz2Rxmt2UtureCcu
 FBj4NUwQb1gu5d9rTOK76C4QEZwQWnwFxSO2fyC9KSqYsBfmUFOW4lbr1
 huKxz2vqoo2ZhUJSBmjoVM7MkXAXSFMuHuPIPAk9fccddtliumIeYmMTL
 QK+c62yK2KxdBv+EOz4Jql8e3bxhYWVnSzkrCFXcbNAVMzI46R2UhZBDe
 yegcjl2TW7efFxZ/S55gA3P4a/HWrkk9N+WvkZz7da4c4qhQYu+yRDHmp
 qU6kekJV3rlIHkJkPexCkP06xTZ+zgJfigDkv4TO5ALxPeNiguJJPoTiQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889329"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889329"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="673699706"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="673699706"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:20 +0300
Message-Id: <e6e33a7f03c4a78739fa96e6ae74eb272ae147e7.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/24] drm/i915/utils: drop kernel-doc from
 __wait_for()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The parameters aren't documented, and the file isn't included in Sphinx
build anyway, so demote the kernel-doc to a regular comment.

drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'OP' not described in '__wait_for'
drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'COND' not described in '__wait_for'
drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'US' not described in '__wait_for'
drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'Wmin' not described in '__wait_for'
drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'Wmax' not described in '__wait_for'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 2c430c0c3bad..c61066498bf2 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -250,7 +250,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 	}
 }
 
-/**
+/*
  * __wait_for - magic wait macro
  *
  * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
-- 
2.39.2

