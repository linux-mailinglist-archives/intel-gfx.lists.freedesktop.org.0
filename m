Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FE735C570
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 13:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04A889E2B;
	Mon, 12 Apr 2021 11:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3D789E2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 11:40:30 +0000 (UTC)
IronPort-SDR: 0LrdBE9GozbjGEeSpmEZMlkD8jczAWRAVHRhrrVxnLgqpgf4OVI1MpHduUOFLae+1z2OkQzRFH
 fewvjnoXH7QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="192037492"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="192037492"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 04:40:30 -0700
IronPort-SDR: vtl4i6cFqEwsbYLg5xkgIzjPb6wRKvYV1Ap/SmKdgSjZzEhkZQCG1ye3Nx2SmQiCUnh0GocHKG
 d3X8D2CfYuIQ==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="423763018"
Received: from cyeni-mobl.ger.corp.intel.com (HELO localhost) ([10.252.62.41])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 04:40:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87czuzkb8f.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
 <20210408045227.985408-3-lucas.demarchi@intel.com> <87czuzkb8f.fsf@intel.com>
Date: Mon, 12 Apr 2021 14:40:24 +0300
Message-ID: <875z0rk9xz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: add macros for graphics and
 media versions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 12 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 07 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> Like it was done in
>> commit 01eb15c9165e ("drm/i915: Add DISPLAY_VER() and related macros")
>> add the correspondent macros for graphics and media. Going forward we
>> will prefer checking the versions for the specific IPs (graphics, media
>> and display) rather than grouping everything under a "gen" version.
>>
>> For consistency and to make the maintenance easier, it'd be preferred
>> not to mix the *GEN* macros with the new ones. For older platforms we
>> can simply consider that the previous "gen" number will extend to all
>> 3 IPs. Then we can start replacing its use in the driver. Right now this
>> replacement is not done and only the infrastructure is put in place.
>> We also leave gen and gen_mask inside struct intel_device_info while
>> it's still being used throughout the code.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          | 17 ++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_pci.c          |  7 ++++++-
>>  drivers/gpu/drm/i915/intel_device_info.h |  3 +++
>>  3 files changed, 25 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 8c62bb2abd31..97cbd019f2e9 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1234,9 +1234,24 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>>  #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
>>  #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
>>  
>> -#define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
>>  #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
>>  
>> +/*
>> + * Deprecated: this will be replaced by individual IP checks:
>> + * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
>> + */
>> +#define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
>> +
>> +#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>> +#define IS_GRAPHICS_RANGE(i915, from, until) \
>> +	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>> +#define IS_GRAPHICS_VER(i915, v)	(GRAPHICS_VER(i915) == (v))
>> +
>> +#define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
>> +#define IS_MEDIA_RANGE(i915, from, until) \
>> +	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
>> +#define IS_MEDIA_VER(i915, v)		(MEDIA_VER(i915) == (v))

Btw, if we're ditching .gen_mask, the original reason (i.e. bit masking)
for having the IS_GEN() macro goes away. Maybe we should just ditch the
IS_GRAPHICS_VER(), IS_MEDIA_VER() and IS_DISPLAY_VER() macros, and move
to GRAPHICS_VER() == V and friends instead?

I know we already added IS_DISPLAY_VER(). Actually 150+ instances of
it. However, we have 500+ usages of DISPLAY_VER() with various
comparisons. Why should "==" be special, when it no longer uses masking?

I argued for keeping the _RANGE() variant to simplify range
conditions. I still stand by that. But the reason is readability.

...

And if we indeed removed IS_GRAPHICS_VER(i915, V)... could we make it
IS_GRAPHICS_VER(i915, from, until) instead? Too confusing? Maybe.

But I'd like to seriously consider dropping, or rather not adding, the
single-version IS_GRAPHICS_VER() and IS_MEDIA_VER() checks, and
converting the IS_DISPLAY_VER() ones too.

Thoughts?


BR,
Jani.





>> +
>>  #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
>>  #define IS_DISPLAY_RANGE(i915, from, until) \
>
> Why is naming so hard?!
>
> I am seriously wondering if IS_GRAPHICS_RANGE() and friends can be
> misleading. What range? IS_GRAPHICS_VER_RANGE() is more accurate, but is
> it too long?
>
> Am I worrying over nothing?
>
>
> BR,
> Jani.
>
>>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index ce5cbeaf036d..97ab73276334 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -36,7 +36,12 @@
>>  #include "i915_selftest.h"
>>  
>>  #define PLATFORM(x) .platform = (x)
>> -#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)
>> +#define GEN(x) \
>> +	.gen_mask = BIT((x) - 1), \
>> +	.gen = (x), \
>> +	.graphics_ver = (x), \
>> +	.media_ver = (x), \
>> +	.display.ver = (x)
>>  
>>  #define I845_PIPE_OFFSETS \
>>  	.pipe_offsets = { \
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>> index b16c75927a12..405883a8cc84 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -162,6 +162,9 @@ enum intel_ppgtt_type {
>>  struct intel_device_info {
>>  	u16 gen_mask;
>>  
>> +	u8 graphics_ver;
>> +	u8 media_ver;
>> +
>>  	u8 gen;
>>  	u8 gt; /* GT number, 0 if undefined */
>>  	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
