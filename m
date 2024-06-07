Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3316900126
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 12:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A9110E183;
	Fri,  7 Jun 2024 10:48:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BrWh5u5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B634D10E183
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 10:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717757300; x=1749293300;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sSP+IGXirqndLVOvr4GqT5GA6k43iXhbXHVuhqxEBh4=;
 b=BrWh5u5No9mpOwaeOY02nGqoN9GGLMuDZl13KD4JdLgKXWICPxTJwGVG
 FYtAa5EcjIaLdMUlnUpI3nbLNi3hha3IR+oFBwSudO9Nl1SPsSpzvuzbb
 Kw7o+T/l8bajOb6egvDKlzKwDRv8RyKZmj7b7znJ63w6WNn07B01BrbR8
 /56VXOicmz2DOJSMJHept4jO0LK50dGd/Wwyy69oHAAZUk/tCUqvbb1AW
 vAtGmYPLTa6owLy3Cos/F6gWJAGxa1RAnkpUhQjyNRJs+jowd2IZPf136
 nHLay7DOCSh9uUMsjffa+ti1ykOK6tyQtgLxCXg17Bplbs4nat+Emeptj g==;
X-CSE-ConnectionGUID: i6St85ZCSjSgK3rxxfO9OQ==
X-CSE-MsgGUID: LWICBGkER0eCaf9ixyWf6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="11962476"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="11962476"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:48:19 -0700
X-CSE-ConnectionGUID: 84ZH6d1qQw27e0ANJ9Pe0A==
X-CSE-MsgGUID: LTTCbO9XS2mtWWa2lRlPow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="43225037"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:48:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 45/65] drm/i915: pass dev_priv explicitly to _DSPBSIZE
In-Reply-To: <875xulm3n7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717514638.git.jani.nikula@intel.com>
 <fae5b3a14efab76ea4a549794512774659c36fc8.1717514638.git.jani.nikula@intel.com>
 <ZmHfRVycFB1rCsQA@intel.com> <875xulm3n7.fsf@intel.com>
Date: Fri, 07 Jun 2024 13:48:14 +0300
Message-ID: <8734ppm3kh.fsf@intel.com>
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

On Fri, 07 Jun 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 06 Jun 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Tue, Jun 04, 2024 at 06:26:03PM +0300, Jani Nikula wrote:
>>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>>> explicitly to the _DSPBSIZE register macro.
>>> 
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index 38c8b98d95c3..36ed23b93475 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -2312,7 +2312,7 @@
>>>  #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
>>>  #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
>>>  #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
>>> -#define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>>> +#define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>>
>> way too many unused cases...
>> we should probably remove them all in one patch and whoever is introducing them
>> later should already introduce with the dev_priv...
>>
>> but again, up to you
>>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> Dropped the changes touching unused macros, and pushed everything else
> to din. I've got a separate series cleaning up gvt a bit and removing
> the unused ones.

PS. Fixed a couple of whitespace issues while pushing.

>
> Thanks for the review!
>
> BR,
> Jani.
>
>
>>
>>
>>>  #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>>>  #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>>>  #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
