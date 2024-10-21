Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2609A6776
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5FA10E4AA;
	Mon, 21 Oct 2024 12:03:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYr7KKgd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03C210E4A6;
 Mon, 21 Oct 2024 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729512178; x=1761048178;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nqCdATHcmFYPSjikc/cxoP4EbRGPg5s+3RnhpdEJ80s=;
 b=JYr7KKgdX24h7Be3erWTgS7qvTvWHcA+OXyE68wP0e/YNGeh0Kf9bYZN
 Xr06SifUueGaesp8wuoKm3GHXKY9Vkz6k5vetxcPrum3nz5gSGcUfqFXX
 LYdokC4kwO+UyqxK74qglyE1McNdzHA4qdCERs/yU5jiLAwoDtrtWLr8e
 i8ARd9ntvoSp4aqSerDxyscT5CWn3U6jMpcjUWG74djPQWIVGQCGglyAG
 v+jYFXnA21nlzQndbAowMvofpRL0JmAIB6gf80/gNfT00fo4N9EeY2nwi
 ARrco7ABm4le4/3rhCFjtTJHpw+xtc+UYxv1N9SS2HczY1+EpvawkHq4C w==;
X-CSE-ConnectionGUID: KissWAyVQpuAdrmP3x76Og==
X-CSE-MsgGUID: uc1rLNvnQMuWh/NPNyS3sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="40362437"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="40362437"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:02:58 -0700
X-CSE-ConnectionGUID: MKAWmG2dST2IupfldXy5Sg==
X-CSE-MsgGUID: f80iW5K/QBqotNa1dUdqng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="110338360"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:02:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 03/12] drm/i915/cx0: Extend C10 check to PTL
In-Reply-To: <172951189985.2472.13732832127012630178@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-4-matthew.s.atwood@intel.com>
 <172951189985.2472.13732832127012630178@gjsousa-mobl2>
Date: Mon, 21 Oct 2024 15:02:52 +0300
Message-ID: <87bjzdzms3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Matt Atwood (2024-10-18 17:49:32-03:00)
>>From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>
>>When deciding the type of the phy, Add PTL support to make
>
> s/Add/add/
>
>>sure the correct path is taken for selection of C10 PHY.
>>Only port A is connected C10 PHY for Pantherlake.
>>
>>Bspec:  72571
>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 9 +++++++--
>> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
>> 2 files changed, 8 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>index 13a99f494680..73a151c81706 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>@@ -34,6 +34,9 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
>>         struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>         enum phy phy = intel_encoder_to_phy(encoder);
>> 
>>+        if (IS_PANTHERLAKE(i915) && phy == PHY_A)
>>+                return true;
>>+
>>         if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
>>                 return true;
>> 
>>@@ -221,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>>          * down and let the message bus to end up
>>          * in a known state
>>          */
>>-        intel_cx0_bus_reset(encoder, lane);
>>+        if (DISPLAY_VER(i915) < 30)
>>+                intel_cx0_bus_reset(encoder, lane);
>
> I think skipping the call to intel_cx0_bus_reset() should be a patch on
> its own.

Moreover, the commit message fails to explain *why* it's skipped.

BR,
Jani.

>
> With this patch containing only the change to intel_encoder_is_c10phy(),
>
>     Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
> --
> Gustavo Sousa
>
>> 
>>         return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
>> }
>>@@ -310,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>>          * down and let the message bus to end up
>>          * in a known state
>>          */
>>-        intel_cx0_bus_reset(encoder, lane);
>>+        if (DISPLAY_VER(i915) < 30)
>>+                intel_cx0_bus_reset(encoder, lane);
>> 
>>         return 0;
>> }
>>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>index b7041b578e5e..bd8c3de57dcd 100644
>>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>@@ -67,6 +67,7 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>> #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
>> #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
>> #define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
>>+#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
>> 
>> #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
>> #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
>>-- 
>>2.45.0
>>

-- 
Jani Nikula, Intel
