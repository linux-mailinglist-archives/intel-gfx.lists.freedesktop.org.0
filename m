Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C10D5AA002
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 21:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CC010E1AF;
	Thu,  1 Sep 2022 19:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8303310E1AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662060753; x=1693596753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Fhp8lnHaklCewe54tAQ90aoozjHlS5bFMWoZsFKap0=;
 b=H3t9d5RfEyIFVzTxzXUgLRtwmaHdYhGXoljmxrahFM4St3u085QAllpJ
 KvxkyGuSYAh9bafDVYVtl6RzctLpkAdnwfaMXwX/l6SW3oqH84cmyHqQN
 S4j8yJL0ertQ5Macv8pCczzSYU0fwgSoamrnneG2/bYjG5qy/h0W+bGta
 ny1YAeugQgUpf7DIBYHlj8Mb0iRB+LX5CVWvi3wYYe0NKILFqUatX//Zx
 dVlIeMvVMV6nTnEBahoV/kPrSy4iAm+DQX4o0HZY8RfoL8Wt1ywjq/r/M
 8ViFAnG+Mizvw4FxgTcNvlfao2Njwf/yiZIlCKEShKCRHcZwlBZgf1IGI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="321964989"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="321964989"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 12:32:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="563592360"
Received: from rishabhj-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.36.114])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 12:32:32 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 15:32:28 -0400
Message-Id: <20220901193228.255098-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220901193228.255098-1-rodrigo.vivi@intel.com>
References: <20220901193228.255098-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Don't try to disable host RPS
 when this was never enabled.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Specially in GT reset case this could be triggered and try
to disable things that had never been enabled. Let's add
some protection here.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 2c8d9eeb7e7e..6bd0aa21f56b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1548,6 +1548,9 @@ void intel_rps_disable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
+	if (!intel_rps_is_enabled(rps))
+		return;
+
 	intel_rps_clear_enabled(rps);
 	intel_rps_clear_interrupts(rps);
 	intel_rps_clear_timer(rps);
-- 
2.37.2

