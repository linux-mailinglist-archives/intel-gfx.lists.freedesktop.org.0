Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 741C035D21A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 22:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8254B89C85;
	Mon, 12 Apr 2021 20:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322C489F24
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 20:33:56 +0000 (UTC)
IronPort-SDR: yGSrp4jaYLat60amp0fRmkz37tG8Dg6tH8N1ePTfituZV381Ty2qztRZ8E40j/8/Bv5bjadHCS
 VN+Ky0QSR/FQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="279574266"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="279574266"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 13:33:55 -0700
IronPort-SDR: /FN98IAfDeW5AbpT3zdEn2OzGu/uze5sm4DGRQg3dv0ju/BdKKs+7/5nXtbZWYJoMjLDD9hSQ4
 kFq+Pxg2sbSA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="398508762"
Received: from chihyuch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.197.160])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 13:33:54 -0700
Date: Mon, 12 Apr 2021 13:33:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210412203354.x7f3jn4drlz3f6oq@ldmartin-desk2>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
 <20210408045227.985408-3-lucas.demarchi@intel.com>
 <87czuzkb8f.fsf@intel.com> <875z0rk9xz.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875z0rk9xz.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 02:40:24PM +0300, Jani Nikula wrote:
>On Mon, 12 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Wed, 07 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> Like it was done in
>>> commit 01eb15c9165e ("drm/i915: Add DISPLAY_VER() and related macros")
>>> add the correspondent macros for graphics and media. Going forward we
>>> will prefer checking the versions for the specific IPs (graphics, media
>>> and display) rather than grouping everything under a "gen" version.
>>>
>>> For consistency and to make the maintenance easier, it'd be preferred
>>> not to mix the *GEN* macros with the new ones. For older platforms we
>>> can simply consider that the previous "gen" number will extend to all
>>> 3 IPs. Then we can start replacing its use in the driver. Right now this
>>> replacement is not done and only the infrastructure is put in place.
>>> We also leave gen and gen_mask inside struct intel_device_info while
>>> it's still being used throughout the code.
>>>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_drv.h          | 17 ++++++++++++++++-
>>>  drivers/gpu/drm/i915/i915_pci.c          |  7 ++++++-
>>>  drivers/gpu/drm/i915/intel_device_info.h |  3 +++
>>>  3 files changed, 25 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 8c62bb2abd31..97cbd019f2e9 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -1234,9 +1234,24 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>>>  #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
>>>  #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
>>>
>>> -#define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
>>>  #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
>>>
>>> +/*
>>> + * Deprecated: this will be replaced by individual IP checks:
>>> + * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
>>> + */
>>> +#define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
>>> +
>>> +#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>>> +#define IS_GRAPHICS_RANGE(i915, from, until) \
>>> +	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>>> +#define IS_GRAPHICS_VER(i915, v)	(GRAPHICS_VER(i915) == (v))
>>> +
>>> +#define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
>>> +#define IS_MEDIA_RANGE(i915, from, until) \
>>> +	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
>>> +#define IS_MEDIA_VER(i915, v)		(MEDIA_VER(i915) == (v))
>
>Btw, if we're ditching .gen_mask, the original reason (i.e. bit masking)
>for having the IS_GEN() macro goes away. Maybe we should just ditch the

humn... I don't follow where gen_mask is connected to IS_GEN. It is
connected to the use of IS_GEN_RANGE() mostly. In theory the compiler
could shortcut `if (IS_GEN(i915, 10) || IS_GEN(i915, 11)` etc to do a
single ADD. In practice those are often surrounded by additional checks
that makes this impossible. If they were following one another, then
we should probably convert them to IS_GEN_RANGE() anyway.

On some quick greps I can't find a single place in the code base where
that is actually useful. We have some uses like:

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1442:    return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2335:    if (!IS_GEN(rq->engine->i915, 7) || rq->engine->id != RCS0) {
drivers/gpu/drm/i915/gem/i915_gem_stolen.c:150:         if (!r && !IS_GEN(i915, 3)) {
drivers/gpu/drm/i915/gt/gen2_engine_cs.c:77:            if (IS_G4X(rq->engine->i915) || IS_GEN(rq->engine->i915, 5))
drivers/gpu/drm/i915/gt/intel_ggtt.c:109:       if (IS_GEN(i915, 5) && IS_MOBILE(i915))


Maybe this is the only one:

drivers/gpu/drm/i915/i915_cmd_parser.c:949:     if (!IS_GEN(engine->i915, 7) && !(IS_GEN(engine->i915, 9) &&
drivers/gpu/drm/i915/i915_cmd_parser.c-950-                                       engine->class == COPY_ENGINE_CLASS))

which could be done by the compiler as the equivalent of

	mask = ~(0x80 | 0x200)
	if ((gen & mask) && engine->class == COPY_ENGINE_CLASS)

... not worth keeping for that reason IMO

>IS_GRAPHICS_VER(), IS_MEDIA_VER() and IS_DISPLAY_VER() macros, and move
>to GRAPHICS_VER() == V and friends instead?
>
>I know we already added IS_DISPLAY_VER(). Actually 150+ instances of
>it. However, we have 500+ usages of DISPLAY_VER() with various
>comparisons. Why should "==" be special, when it no longer uses masking?
>
>I argued for keeping the _RANGE() variant to simplify range
>conditions. I still stand by that. But the reason is readability.
>
>...
>
>And if we indeed removed IS_GRAPHICS_VER(i915, V)... could we make it
>IS_GRAPHICS_VER(i915, from, until) instead? Too confusing? Maybe.

I think that is reasonable. A long time ago when we were adding the
*_RANGE variants I was even proposing having some macro magic to have
them as IS_GEN(i915, x), IS_GEN(i915, x, y). So I may be biased, but I
like having a IS_GRAPHICS_VER(i915, x, y) and ditch  "RANGE" from the
macro names. Some minor adjustements to patch 11 and the removal of the new
defines should be sufficient.

Btw, I also don't see much problem with the current scheme in this
version.... The missing "_VER" in the RANGE variants doesn't
bother me much.


Anyway, if nobody chimes in opposing to this direction, next version
will be:

	1) IS_*_RANGE() -> IS_*
	2) ditch IS_*_VER() and use direct == comparison.

thanks
Lucas De Marchi

>
>But I'd like to seriously consider dropping, or rather not adding, the
>single-version IS_GRAPHICS_VER() and IS_MEDIA_VER() checks, and
>converting the IS_DISPLAY_VER() ones too.
>
>Thoughts?
>
>
>BR,
>Jani.
>
>
>
>
>
>>> +
>>>  #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
>>>  #define IS_DISPLAY_RANGE(i915, from, until) \
>>
>> Why is naming so hard?!
>>
>> I am seriously wondering if IS_GRAPHICS_RANGE() and friends can be
>> misleading. What range? IS_GRAPHICS_VER_RANGE() is more accurate, but is
>> it too long?
>>
>> Am I worrying over nothing?
>>
>>
>> BR,
>> Jani.
>>
>>>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>> index ce5cbeaf036d..97ab73276334 100644
>>> --- a/drivers/gpu/drm/i915/i915_pci.c
>>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>>> @@ -36,7 +36,12 @@
>>>  #include "i915_selftest.h"
>>>
>>>  #define PLATFORM(x) .platform = (x)
>>> -#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)
>>> +#define GEN(x) \
>>> +	.gen_mask = BIT((x) - 1), \
>>> +	.gen = (x), \
>>> +	.graphics_ver = (x), \
>>> +	.media_ver = (x), \
>>> +	.display.ver = (x)
>>>
>>>  #define I845_PIPE_OFFSETS \
>>>  	.pipe_offsets = { \
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>>> index b16c75927a12..405883a8cc84 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>>> @@ -162,6 +162,9 @@ enum intel_ppgtt_type {
>>>  struct intel_device_info {
>>>  	u16 gen_mask;
>>>
>>> +	u8 graphics_ver;
>>> +	u8 media_ver;
>>> +
>>>  	u8 gen;
>>>  	u8 gt; /* GT number, 0 if undefined */
>>>  	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
