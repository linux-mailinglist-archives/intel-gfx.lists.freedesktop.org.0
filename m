Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16252997EBE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 10:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89AE310E88A;
	Thu, 10 Oct 2024 08:09:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IC+LIi4Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD7410E888;
 Thu, 10 Oct 2024 08:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728547780; x=1760083780;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=q6DQSxg+5Rm7R4qhGwphK4sWfO2qLvem3JGEgeJ2mLM=;
 b=IC+LIi4YsnOKNMRuJzbwRNExBkfTOG0l2XFpzMFL8F4JyWDDqpW0UVOM
 JAVyeClhkrLo8L6O03vCpobtTkDkEV3NCw50Zz0bknvYOtBNmiQ4Bhi5W
 BoGsAESmsMS++ahwd7dLafsCETSIBMwQHnUQ0syLxmWC354QM56NAIgXB
 AdAs+3QxUA9xyUa1DRLGYYVOXjNcq98owXM2wdmtBCP+yuLgraHdOXitm
 TEJM7eENud6aW3DgP0oXMQfdf9BZPgtKWrvaSM6W/GZJbyExxXkoxxr3f
 6viFeFGMpRhZNu9DW5MlijMKnkQ35RTcNQ/cE8C2levtRGwpyqt2sSKjy w==;
X-CSE-ConnectionGUID: s68C1oPWS8aRgJgnrQI++A==
X-CSE-MsgGUID: sw8ZJUVXTgyrtqlZpPQKUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31678106"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="31678106"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:09:39 -0700
X-CSE-ConnectionGUID: MbPBOWyhRiiz/CrmdkeuGg==
X-CSE-MsgGUID: Iuaey3xgRHyoFlOkpcG9Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="107354224"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.131])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:09:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Subject: RE: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
In-Reply-To: <SN7PR11MB6750E5110E8FC97C456AB36DE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-7-matthew.s.atwood@intel.com>
 <87plo9bu8p.fsf@intel.com>
 <SN7PR11MB6750E5110E8FC97C456AB36DE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 10 Oct 2024 11:09:34 +0300
Message-ID: <874j5k8jlt.fsf@intel.com>
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

On Thu, 10 Oct 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, October 9, 2024 1:09 PM
>> To: Atwood, Matthew S <matthew.s.atwood@intel.com>; intel-
>> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Atwood, Matthew S
>> <matthew.s.atwood@intel.com>
>> Subject: Re: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
>> HDCP_LINE_REKEY bit
>> 
>> On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
>> > From: Suraj Kandpal <suraj.kandpal@intel.com>
>> >
>> > DISPLAY_VER() >= 30 has the HDCP_LINE_REKEY bit redefined from bit 12
>> > to bit 14. Create a macro to choose the correct bit based on
>> > DISPLAY_VER().
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>> >  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
>> >  2 files changed, 4 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > index ed6aa87403e2..e9b0414590ce 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> > @@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
>> intel_encoder *encoder,
>> >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
>> >cpu_transcoder),
>> >  				     0, HDCP_LINE_REKEY_DISABLE);
>> >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
>> STEP_FOREVER) ||
>> > -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
>> STEP_B0, STEP_FOREVER))
>> > +			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
>> STEP_B0, STEP_FOREVER) ||
>> > +			 DISPLAY_VER(display) >= 30)
>> >  			intel_de_rmw(display,
>> >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
>> >cpu_transcoder),
>> > -				     0,
>> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>> > +				     0,
>> TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
>> >  	}
>> >  }
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> > b/drivers/gpu/drm/i915/i915_reg.h index d30459f8d1cb..da65500cd0c8
>> > 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -3832,7 +3832,7 @@ enum skl_power_gate {
>> >  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
>> > -#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>> > +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)
>> 	(DISPLAY_VER(display) >= 30 ? REG_BIT(15) : REG_BIT(12))
>> 
>> Do we really want to extend this style to individual bits?
>
> I just thought this might be cleaner should we use 
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE
> And 
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE instead then?

I think so yes.

If it becomes too ugly in code, at the very least define the bits
separately instead of inline in the ternary operator.

BR,
Jani.


>
> Regards,
> Suraj Kandpal
>
>> 
>> BR,
>> Jani.
>> 
>> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
>> 	REG_GENMASK(11, 10)
>> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
>> trans)
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
