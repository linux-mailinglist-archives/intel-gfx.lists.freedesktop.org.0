Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D4357C802
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F468BFEB;
	Thu, 21 Jul 2022 09:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A7D8CF56
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396897; x=1689932897;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1oxXVLUF+PB+Ut1WNMnAOB66cPPwo7muQSsiIpcsAQo=;
 b=IIfVH1HTKlXcUNNlvtfxt2rSV13XOjwJINYZ3HY7ZOvQP11SRtJy7IPb
 QY0gPaMzJVewGru6naXVGX6vXdfK6mrTimV6f6JxJqfsE6lscYP8ctPpW
 msIiCIDwt2st2t56zrLzLnASb+jVD2QlGKGHCBX0hiErOJCPKumhHdenR
 UJ7KW9xuuK9e7QFuIGqOqMDS3W/qxyHo8L3H/ujIi1oOcZaUnrlcUCTQy
 EKdFG+tdsh5jnpe4ix/giRAWxvHNEd5ZhhvDyaaCmSTJlOvrfEspbPYrL
 bIXKT17jN7YjmmMehMWuvMyMdmTszUa6+bfY9vm+e56t9dqvx9Us87Gt1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287752214"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="287752214"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="602260719"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jul 2022 02:48:13 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwV026833; Thu, 21 Jul 2022 10:48:09 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:51 +0530
Message-Id: <20220721095955.3986943-5-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: sanitize dc state in rpm resume
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

During runtime resume the display init sequence is called via
intel_display_power_resume() -> icl_display_core_init()
which should restore the display HW state. For restoring the DC9 enabled
state in DC_STATE_EN, gen9_sanitize_dc_state() should be called on the
 runtime resume path too to avoid the

[  513.818190] i915 0000:03:00.0: [drm] *ERROR DC state mismatch (0x8 -> 0x0)*

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 589af257edeb..799f84d3eed6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2229,6 +2229,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 void intel_display_power_resume(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 11) {
+		gen9_sanitize_dc_state(i915);
 		bxt_disable_dc9(i915);
 		icl_display_core_init(i915, true);
 		if (intel_dmc_has_payload(i915)) {
-- 
2.25.1

