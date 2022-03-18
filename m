Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C074DD6FC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144E210E180;
	Fri, 18 Mar 2022 09:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AC810E180
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647595193; x=1679131193;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mMbnGIqtwtLH8vJAeneP+Ho1rIFrLkOuEAZ+DQ8LAHQ=;
 b=f6pGikKSMC+XMf6ZokQkTzMoAyjqX56Iyd6xi+4/HBL5MgcX2rCjBC5w
 DTeV6zCnuDJcIky6sZtNW2dmsPXPcgGbrSEL826EAlGmcmzjQdLEdbeTs
 /fSyJ+LXaNOQsArEPOmrrwJ+Zksef0nygM6aeCPLijEiH4dmx0ZIJsyMO
 6CD7l3wPnWk0W7qfrjG/SzkcuCxv0ojwTGjogMAtDSknonBCVB3ybghNy
 IY9KJDvZm/OA385Luw4xGNt7nRxF9/Y1717m///eXMDhS2aNEaXnZtgVF
 wN1Ullp8ihXxtRw4oydQHQzQmcec4iZwtPzyVVTsf+hlPvmwZbwoT8ucD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237046052"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="237046052"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:19:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="558339138"
Received: from dplotkin-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.55.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:19:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220317193648.jxjnjuyd535hsrtk@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1647542120.git.jani.nikula@intel.com>
 <6142e2f8e495bfb9373ee908af16352f5c9e9464.1647542120.git.jani.nikula@intel.com>
 <20220317193648.jxjnjuyd535hsrtk@ldmartin-desk2>
Date: Fri, 18 Mar 2022 11:19:46 +0200
Message-ID: <878rt7mxcd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/dmc: move assert_dmc_loaded()
 to intel_dmc.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Mar 17, 2022 at 08:36:14PM +0200, Jani Nikula wrote:
>>Start localizing DMC register and data access to intel_dmc.c.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_display_power.c | 12 ------------
>> drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +++++++++++
>> drivers/gpu/drm/i915/display/intel_dmc.h           |  2 ++
>> 3 files changed, 13 insertions(+), 12 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>>index b3efe345567f..6a5695008f7c 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>@@ -905,18 +905,6 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
>> 	intel_pps_unlock_regs_wa(dev_priv);
>> }
>>
>>-static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
>>-{
>>-	drm_WARN_ONCE(&dev_priv->drm,
>>-		      !intel_de_read(dev_priv,
>>-				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>>-				     "DMC program storage start is NULL\n");
>>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
>>-		      "DMC SSP Base Not fine\n");
>>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_HTP_SKL),
>>-		      "DMC HTP Not fine\n");
>>-}
>>-
>> /**
>>  * intel_display_power_set_target_dc_state - Set target dc state.
>>  * @dev_priv: i915 device
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index 66fd69259e73..63ae16622c3e 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -305,6 +305,17 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>> 	gen9_set_dc_state_debugmask(dev_priv);
>> }
>>
>>+void assert_dmc_loaded(struct drm_i915_private *i915)
>>+{
>>+	drm_WARN_ONCE(&i915->drm,
>>+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>>+		      "DMC program storage start is NULL\n");
>>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
>>+		      "DMC SSP Base Not fine\n");
>>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_HTP_SKL),
>>+		      "DMC HTP Not fine\n");
>>+}
>>+
>> static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
>> 				     const struct stepping_info *si)
>> {
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>>index 7c590309a3a9..326f80ad0f31 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.h
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>>@@ -55,4 +55,6 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>> void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>> bool intel_dmc_has_payload(struct drm_i915_private *i915);
>>
>>+void assert_dmc_loaded(struct drm_i915_private *i915);
>
>
> intel_dmc_assert_loaded()?

assert_dmc_loaded() is in line with the display asserts we have:

git grep assert_ -- drivers/gpu/drm/i915/display/*.h

I'd rather stick with that convention for now, and moving away from it
should be a separate conversation.

BR,
Jani.

>
> Lucas De Marchi
>
>>+
>> #endif /* __INTEL_DMC_H__ */
>>-- 
>>2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
