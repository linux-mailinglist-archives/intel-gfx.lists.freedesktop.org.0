Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F84F874D67
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 12:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380B810F0BF;
	Thu,  7 Mar 2024 11:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DvgQlbZq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA1A10E6E9;
 Thu,  7 Mar 2024 11:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709810942; x=1741346942;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pVRIvM56NXTl/ATD/uNvJrXmgkgP7pPzeAlnCECzs14=;
 b=DvgQlbZqyqQBjiCcQgYyrF9aHDtzu2o2yAOvNHJyKLXJtxgqIKrHVxE/
 RVBFUiNNaw6UKMF2mEx010H9tftI4RNb4MZYUR2zswe+932IEwoTc9Iow
 Z9HGY2ZQkugTrUUsNBvW85LdXRK/gw2M0FVO1RH4dVAX2PwHDURqBzvPI
 JLhV7U8NweoecWmWhYZzMgPD0PcbPzzmIrBrHn4lPAM4C1gq4c9Hk+itQ
 KwLHFw5Qxi+Ms4gR8J6oMM8MDKmkjblcRtHDtkIhGnhgMASJ+Up8fmhzC
 FlhGLs/i4O2rJAeNoySyqRKL4W7TkeSYO/mj4ZmXVZ4p46oR7yenHE+pr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="8294239"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="8294239"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 03:29:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="41058972"
Received: from tcavalax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.241])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 03:29:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [RFC v2 2/4] drm/i915/display: add generic to_intel_display()
 macro
In-Reply-To: <ZeizBzI-yv_fwdmx@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1709727127.git.jani.nikula@intel.com>
 <0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com>
 <ZeizBzI-yv_fwdmx@intel.com>
Date: Thu, 07 Mar 2024 13:28:57 +0200
Message-ID: <87zfvawa9y.fsf@intel.com>
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

On Wed, 06 Mar 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Mar 06, 2024 at 02:24:36PM +0200, Jani Nikula wrote:
>> Convert various pointers to struct intel_display * using _Generic().
>> 
>> Add some macro magic to make adding new conversions easier, and somewhat
>> abstract the need to cast each generic association. The cast is required
>> because all associations needs to compile, regardless of the type and
>> the generic selection.
>> 
>> The use of *p in the generic selection assignment expression removes the
>> need to add separate associations for const pointers.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
>>  1 file changed, 46 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e67cd5b02e84..3f63a5a74d77 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -2183,4 +2183,50 @@ static inline int to_bpp_x16(int bpp)
>>  	return bpp << 4;
>>  }
>>  
>> +/*
>> + * Conversion functions/macros from various pointer types to struct
>> + * intel_display pointer.
>> + */
>> +static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
>> +{
>> +	/*
>> +	 * Assume there's a pointer to struct intel_display in memory right
>> +	 * after struct drm_device.
>> +	 */
>> +	struct intel_display **p = (struct intel_display **)(drm + 1);
>
> at least this patch and the first one should be together to help the
> 'magic' to be understood and confirmed safe.

Yes. I just kept them separate while still juggling the whole thing.

And it occurs to me we could make *this* the first patch in the series,
by making the above function:

static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
{
	return &to_i915(drm)->display;
}

Then we could only add the struct drm_device *drm backpointer in struct
intel_display from patch 1, and proceed with patches 3-4, avoiding the
whole magic thing for starters. It would unblock a whole lot of
refactoring as the first step.

>
>> +
>> +	return *p;
>> +}
>> +
>> +#define __intel_connector_to_intel_display(p)		\
>> +	__drm_device_to_intel_display((p)->base.dev)
>> +#define __intel_crtc_to_intel_display(p)		\
>> +	__drm_device_to_intel_display((p)->base.dev)
>> +#define __intel_crtc_state_to_intel_display(p)			\
>> +	__drm_device_to_intel_display((p)->uapi.crtc->dev)
>> +#define __intel_digital_port_to_intel_display(p)		\
>> +	__drm_device_to_intel_display((p)->base.base.dev)
>> +#define __intel_encoder_to_intel_display(p)		\
>> +	__drm_device_to_intel_display((p)->base.dev)
>> +#define __intel_hdmi_to_intel_display(p)	\
>> +	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
>> +#define __intel_dp_to_intel_display(p)	\
>> +	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
>> +
>> +/* Helper for generic association. Map types to conversion functions/macros. */
>> +#define __assoc(type, p) \
>> +	struct type: __##type##_to_intel_display((struct type *)(p))
>> +
>> +/* Convert various pointer types to struct intel_display pointer. */
>> +#define to_intel_display(p)				\
>
> For a moment I almost complained of this because of the generic magic,
> but mostly because I had guc related code in mind where you can never
> find the definition, but here it is different. the used 'to_intel_display'
> can easily be searched by cscope/ctags and then you are able to see
> below what are the accepted cases, so I ended up liking it.

Yay!

I also tried to put effort into making this easily extensible. Add a
__<FROM-STRUCT>_to_intel_display(p) macro or function, and
__assoc(<FROM-STRUCT>, p) in the association list below, and it just
works.

BR,
Jani.

>
>> +	_Generic(*p,					\
>> +		 __assoc(intel_connector, p),		\
>> +		 __assoc(intel_crtc, p),		\
>> +		 __assoc(intel_crtc_state, p),		\
>> +		 __assoc(intel_digital_port, p),	\
>> +		 __assoc(intel_encoder, p),		\
>> +		 __assoc(intel_hdmi, p),		\
>> +		 __assoc(intel_dp, p),			\
>> +		 __assoc(drm_device, p))
>> +
>>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
