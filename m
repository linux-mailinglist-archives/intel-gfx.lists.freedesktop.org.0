Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7806212DA85
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 18:17:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CF26E258;
	Tue, 31 Dec 2019 17:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7026E258
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 17:17:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 09:17:54 -0800
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208";a="209343803"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 09:17:54 -0800
Date: Tue, 31 Dec 2019 09:17:41 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191231171741.zjwgiitiglxng6ui@ldmartin-desk1>
References: <20191224231521.3430660-1-matthew.d.roper@intel.com>
 <20191226222349.pyo7i3gcx46kbr3q@ldmartin-desk1>
 <20191226230541.GI2877816@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226230541.GI2877816@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Assume future platforms will
 inherit TGL's SFC capability
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 26, 2019 at 03:05:41PM -0800, Matt Roper wrote:
>On Thu, Dec 26, 2019 at 02:23:49PM -0800, Lucas De Marchi wrote:
>> On Tue, Dec 24, 2019 at 03:15:21PM -0800, Matt Roper wrote:
>> > Our usual i915 convention is to assume that future platforms will follow
>> > the same behavior as the latest platform of today.  The VDBOX/SFC
>> > capabilities described here don't seem like something that should be
>> > specific to TGL, so let's future-proof by making the test apply to all
>> > gen12+ platforms.
>> >
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/intel_device_info.c | 2 +-
>> > 1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> > index 1acb5db77431..bb709a08bd3c 100644
>> > --- a/drivers/gpu/drm/i915/intel_device_info.c
>> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> > @@ -1093,7 +1093,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
>> > 		 * hooked up to an SFC (Scaler & Format Converter) unit.
>> > 		 * In TGL each VDBOX has access to an SFC.
>> > 		 */
>> > -		if (IS_TIGERLAKE(dev_priv) || logical_vdbox++ % 2 == 0)
>> > +		if (INTEL_GEN(dev_priv) >= 12 || logical_vdbox++ % 2 == 0)
>> > 			RUNTIME_INFO(dev_priv)->vdbox_sfc_access |= BIT(i);
>>
>> but why are we even doing this instead of initiliazing them at compile
>> time on the device_info? If it's fused off, then whatever is set in
>> vdbox_sfc_access bit shouldn't matter... or if the code making use of
>> this doesn't check for engine availability, then this part of the
>> function could just disable the bit of whatever is fused off, regardless
>> if it's ice lake, tiger lake or whatever.
>
>I'm not sure; it looks like among other things we send this bitmask
>directly to the GuC, so I'm not really comfortable making the assumption
>that all users of the mask will pay attention to whether the engine is
>fused off or not, even if that turns out to be true for the i915 usage.
>
>I could switch this to being initialized statically and then modified
>here if an engine is fused off.  In that case should this move out of
>RUNTIME_INFO() and back to INTEL_INFO()?  Honestly I've never really
>understood why we have those separated given that we still ignore the
>const and modify INTEL_INFO at runtime in several places.

hummn... true, there's this problem of not being able to initialize it
statically in one place and possibly modify it later.

We can't move it to INTEL_INFO. Anything that can be modified in runtime
needs to be inside the runtime_info, not info. I  think the goal with the
separation was to make it explicit what are the fields that can be
changed in runtime. We really can't change `info` since its static const
that can be shared (think binding the driver to more than one device).
It didn't matter much in the past since we were limited to 1.

And I think the reason to have the runtime_info const and discard it here
is because it should be in fact treated as const in all places except on
initialization: we don't want accidental changes of that struct.

So... I think there may be a better solution here, but I don't think
it's important enough to block this: it's always better to be consistent
to be able to refactor this when the needs arrive.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>
>Matt
>
>>
>> Lucas De Marchi
>>
>>
>> > 	}
>> > 	DRM_DEBUG_DRIVER("vdbox enable: %04x, instances: %04lx\n",
>> > --
>> > 2.23.0
>> >
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
