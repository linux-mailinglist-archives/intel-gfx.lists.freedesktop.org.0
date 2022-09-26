Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 514EE5E9E97
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819E710E65D;
	Mon, 26 Sep 2022 10:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA0410E65D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 10:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664186781; x=1695722781;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=vXcO78hR9Y6wRUT0dEAglVShbqB4E2GUv+avHZcESus=;
 b=IAH75drseAitqtOJe4kaWUM18u/OGxlrVqOdsDMHY2gXOyxueXvRGlOV
 v7zmZ1LX+SFhgPCAKEO4JtrJf959MCLJt8pb9RBkHOwebIYutHNLBfMCZ
 bcFr6xiQCeaZkxlfXGW52L0hIraA18vgbMw2Ip7oOErzjLANGZFGEaAkC
 Y/Kj5C8POmTDfNwufICxmjc/TlOq+0VBvukxzRNh/jIcbNZfmbiCeKBnO
 te0XA2gzp/iM9s287vPZt+45KQyGKOG+uLBT1bXXzjBmc6bWPIxFdRt7W
 tinjQrfRCpNXsnseE5ZAhxXeAxvFiurdpGIBQZopHaBF7au2aCEJMNA0y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="298589328"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="298589328"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:06:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="572148783"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="572148783"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:06:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e05a2c6d-74fa-476d-8590-677bc330d731@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220914163514.1837467-1-jani.nikula@intel.com>
 <d0545b60-65b5-a59f-0fe4-87d3a55ab811@linux.intel.com>
 <e05a2c6d-74fa-476d-8590-677bc330d731@intel.com>
Date: Mon, 26 Sep 2022 13:05:49 +0300
Message-ID: <87wn9q30xu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move i915_coherent_map_type() to
 i915_gem_pages.c and un-inline
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

On Tue, 20 Sep 2022, Matthew Auld <matthew.auld@intel.com> wrote:
> On 15/09/2022 08:49, Tvrtko Ursulin wrote:
>>=20
>> On 14/09/2022 17:35, Jani Nikula wrote:
>>> The inline function has no place in i915_drv.h. Move it away, un-inline,
>>> and untangle some header dependencies while at it.
>>>
>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>> ---
>>>
>>> I don't know where this belongs, I just know it doesn't belong in
>>> i915_drv.h.
>>=20
>> Don't know either.. it straddles the line between objects and platforms=
=20
>> by definition. Maybe Matt will have an idea or opinion.
>
> gem_pages.c seems like a good enough spot to me.
>
> Acked-by: Matthew Auld <matthew.auld@intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.

>
>>=20
>> Regards,
>>=20
>> Tvrtko
>>=20
>>> I first tried moving it as inline, but it's really annoying as an inline
>>> because it needs to pull in i915_drv.h, i915_gem_lmem.h, and
>>> i915_gem_object_types.h.
>>> ---
>>> =C2=A0 drivers/gpu/drm/i915/display/intel_dpt.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gem/i915_gem_object.h=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++++
>>> =C2=A0 drivers/gpu/drm/i915/gem/i915_gem_pages.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 12 ++++++++++++
>>> =C2=A0 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gt/intel_gsc.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gt/intel_migrate.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gt/selftest_migrate.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c=C2=A0 |=C2=A0 =
1 +
>>> =C2=A0 drivers/gpu/drm/i915/i915_drv.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 13 -------------
>>> =C2=A0 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 1 +
>>> =C2=A0 11 files changed, 24 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c=20
>>> b/drivers/gpu/drm/i915/display/intel_dpt.c
>>> index ac587647e1f5..ad1a37b515fb 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>> @@ -5,6 +5,7 @@
>>> =C2=A0 #include "gem/i915_gem_domain.h"
>>> =C2=A0 #include "gem/i915_gem_internal.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gt/gen8_ppgtt.h"
>>> =C2=A0 #include "i915_drv.h"
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h=20
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index 7317d4102955..a3b7551a57fc 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -482,6 +482,10 @@ void *__must_check i915_gem_object_pin_map(struct=
=20
>>> drm_i915_gem_object *obj,
>>> =C2=A0 void *__must_check i915_gem_object_pin_map_unlocked(struct=20
>>> drm_i915_gem_object *obj,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum i915_map_type type);
>>> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i91=
5,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_g=
em_object *obj,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool always_coher=
ent);
>>> +
>>> =C2=A0 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long offset,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long size);
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c=20
>>> b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> index 4df50b049cea..16f845663ff2 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> @@ -466,6 +466,18 @@ void *i915_gem_object_pin_map_unlocked(struct=20
>>> drm_i915_gem_object *obj,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;
>>> =C2=A0 }
>>> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i91=
5,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_i915_g=
em_object *obj,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool always_coher=
ent)
>>> +{
>>> +=C2=A0=C2=A0=C2=A0 if (i915_gem_object_is_lmem(obj))
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WC;
>>> +=C2=A0=C2=A0=C2=A0 if (HAS_LLC(i915) || always_coherent)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WB;
>>> +=C2=A0=C2=A0=C2=A0 else
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WC;
>>> +}
>>> +
>>> =C2=A0 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long offset,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long size)
>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c=20
>>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>> index b73c91aa5450..1cae24349a96 100644
>>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>> @@ -8,6 +8,7 @@
>>> =C2=A0 #include <linux/prime_numbers.h>
>>> =C2=A0 #include "gem/i915_gem_internal.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gem/i915_gem_region.h"
>>> =C2=A0 #include "gem/i915_gem_ttm.h"
>>> =C2=A0 #include "gem/i915_gem_ttm_move.h"
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c=20
>>> b/drivers/gpu/drm/i915/gt/intel_gsc.c
>>> index 7af6db3194dd..d56f75b605d8 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
>>> @@ -7,6 +7,7 @@
>>> =C2=A0 #include <linux/mei_aux.h>
>>> =C2=A0 #include "i915_drv.h"
>>> =C2=A0 #include "i915_reg.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gem/i915_gem_region.h"
>>> =C2=A0 #include "gt/intel_gsc.h"
>>> =C2=A0 #include "gt/intel_gt.h"
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c=20
>>> b/drivers/gpu/drm/i915/gt/intel_migrate.c
>>> index aaaf1906026c..b405a04135ca 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
>>> @@ -10,6 +10,7 @@
>>> =C2=A0 #include "intel_gtt.h"
>>> =C2=A0 #include "intel_migrate.h"
>>> =C2=A0 #include "intel_ring.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 struct insert_pte_data {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 offset;
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c=20
>>> b/drivers/gpu/drm/i915/gt/selftest_migrate.c
>>> index 2b0c87999949..0dc5309c90a4 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
>>> @@ -6,6 +6,7 @@
>>> =C2=A0 #include <linux/sort.h>
>>> =C2=A0 #include "gem/i915_gem_internal.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "selftests/i915_random.h"
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c=20
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> index 74cbe8eaf531..657f0beb8e06 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>>> @@ -5,6 +5,7 @@
>>> =C2=A0 #include <linux/bsearch.h>
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gt/intel_engine_regs.h"
>>> =C2=A0 #include "gt/intel_gt.h"
>>> =C2=A0 #include "gt/intel_gt_mcr.h"
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c=20
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> index 22ba66e48a9b..ca6f47496869 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -6,6 +6,7 @@
>>> =C2=A0 #include <linux/circ_buf.h>
>>> =C2=A0 #include "gem/i915_gem_context.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gt/gen8_engine_cs.h"
>>> =C2=A0 #include "gt/intel_breadcrumbs.h"
>>> =C2=A0 #include "gt/intel_context.h"
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h=20
>>> b/drivers/gpu/drm/i915/i915_drv.h
>>> index 9f9372931fd2..524b5ee495be 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -40,7 +40,6 @@
>>> =C2=A0 #include "display/intel_display_core.h"
>>> =C2=A0 #include "gem/i915_gem_context_types.h"
>>> -#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gem/i915_gem_shrinker.h"
>>> =C2=A0 #include "gem/i915_gem_stolen.h"
>>> @@ -985,16 +984,4 @@ mkwrite_device_info(struct drm_i915_private=20
>>> *dev_priv)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return (struct intel_device_info *)INTEL=
_INFO(dev_priv);
>>> =C2=A0 }
>>> -static inline enum i915_map_type
>>> -i915_coherent_map_type(struct drm_i915_private *i915,
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 struct drm_i915_gem_object *obj, bool always_coherent)
>>> -{
>>> -=C2=A0=C2=A0=C2=A0 if (i915_gem_object_is_lmem(obj))
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WC;
>>> -=C2=A0=C2=A0=C2=A0 if (HAS_LLC(i915) || always_coherent)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WB;
>>> -=C2=A0=C2=A0=C2=A0 else
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return I915_MAP_WC;
>>> -}
>>> -
>>> =C2=A0 #endif
>>> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c=20
>>> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>>> index e050a2de5fd1..ea2cf1080979 100644
>>> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>>> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>>> @@ -27,6 +27,7 @@
>>> =C2=A0 #include "gem/i915_gem_context.h"
>>> =C2=A0 #include "gem/i915_gem_internal.h"
>>> +#include "gem/i915_gem_lmem.h"
>>> =C2=A0 #include "gem/i915_gem_region.h"
>>> =C2=A0 #include "gem/selftests/mock_context.h"
>>> =C2=A0 #include "gt/intel_context.h"

--=20
Jani Nikula, Intel Open Source Graphics Center
