Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0F1A3227D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0BC10E82A;
	Wed, 12 Feb 2025 09:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6k6Bn8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8508710E829;
 Wed, 12 Feb 2025 09:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739353157; x=1770889157;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=q+O8i9GKYTEtfQ+FhhUK/e4HAOKWPpFI59JntB1wsFY=;
 b=Z6k6Bn8YLnfmdJU1WMgjmffcXfv8HIQLhEzrgcVGHP4EnSk0/O8LVp+i
 /CW2QcPdSg+/YBM3+AdXqCdgj3VpuTqQE5ToimAmCuxdBhl2ZGPQmNyRG
 C4eQuh3Bq8YDHG49DxvmjzpIJ/lpw5ziYCUH+VnXnZ4LyMu5pAml/odei
 2XgW3ygvoDxIAdqfKVCfT2Bf9zgYCFg6pOuTiPnILYZIaEHAZuCoYFb/6
 /joJaRxta6KRgpmp7cHi+hd5wOykeNHtdYmu4PMV31+vlZWhhEDk9GiWn
 sgR72ng9ZI4aRricUIPwTQ5p+A3Dg/xJ9rTiPzwUsa9U4e7Im3AFnYF2T A==;
X-CSE-ConnectionGUID: ABAMeBTIR1OTtdx5XzHlcQ==
X-CSE-MsgGUID: raCyN9/lTra6SXNUE3nGZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50984010"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50984010"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:39:17 -0800
X-CSE-ConnectionGUID: h9pwOqeoSheqpWmO1Qx0wg==
X-CSE-MsgGUID: tCEg2rfuRvWl4vMab2h4MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117396103"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:39:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
In-Reply-To: <SN7PR11MB6750130E77EEDC5C1700E211E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738935286.git.jani.nikula@intel.com>
 <719f1ceb87262ae49bb20209d3928da343126226.1738935286.git.jani.nikula@intel.com>
 <SN7PR11MB6750130E77EEDC5C1700E211E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 12 Feb 2025 11:39:11 +0200
Message-ID: <87v7tfzem8.fsf@intel.com>
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

On Wed, 12 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> b/drivers/gpu/drm/i915/i915_reg.h index 670cd2371f94..da658c3591f0
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1394,88 +1394,50 @@
>>  #define VLV_DP_B             _MMIO(VLV_DISPLAY_BASE + 0x64100)
>>  #define VLV_DP_C             _MMIO(VLV_DISPLAY_BASE + 0x64200)
>>  #define CHV_DP_D             _MMIO(VLV_DISPLAY_BASE + 0x64300)
>> -#define   DP_PORT_EN                 (1 << 31)
>> -#define   DP_PIPE_SEL_SHIFT          30
>> -#define   DP_PIPE_SEL_MASK           (1 << 30)
>> -#define   DP_PIPE_SEL(pipe)          ((pipe) << 30)
>> -#define   DP_PIPE_SEL_SHIFT_IVB              29
>> -#define   DP_PIPE_SEL_MASK_IVB               (3 << 29)
>> -#define   DP_PIPE_SEL_IVB(pipe)              ((pipe) << 29)
>> +#define   DP_PORT_EN                 REG_BIT(31)
>> +#define   DP_PIPE_SEL_MASK           REG_GENMASK(30, 30)
>
> Why not use REG_BIT() here REG_GENMASK for a single bit seems wrong

...because defining a MASK with BIT feels wrong to me. :)


BR,
Jani.


-- 
Jani Nikula, Intel
