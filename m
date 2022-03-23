Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E464E5085
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 11:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401FC10E676;
	Wed, 23 Mar 2022 10:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDA510E676
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648032028; x=1679568028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QKBsDAl7oTCzEC4w+3YYwec2NF40yUtoTtGwHajI2+s=;
 b=Bv9N6XilMY78Iqjidcvt42YG2HgpqmGm/qCmPSHJ7ZcBG/7mvJaR8vuN
 Qzrw30smy3HR1zt7tZ4ULPg4+Gljdxz6yT2pfoD35Sch+CQX95KJmOv97
 APfTS3M5UCB1jl49KzuKK3iNfhr7inXCD1XmpYVtRoRS78vbsYgqXfBew
 3VKyUSJ9hpPd+r+Pt5FnW8OBkN6HSuE7iu/MErR08UKGn2k846RfTwaGC
 LlvDZ4GLFxjJD6gE25W3tjeRFUZS9mDxub1o9xraUuP0zGumn1Ln5juLQ
 Oknvh5EPvutvLEQaaJy+Iw06ulh5isGn6+o62+cH5U3lJtxLqZ3vLme1/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245551503"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="245551503"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 03:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="544138683"
Received: from caliyanx-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.57.47])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 03:40:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BYAPR11MB271097CC39080E466B5C38E5A3189@BYAPR11MB2710.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321044330.27723-1-cooper.chiou@intel.com>
 <875yo5j88o.fsf@intel.com>
 <BYAPR11MB271097CC39080E466B5C38E5A3189@BYAPR11MB2710.namprd11.prod.outlook.com>
Date: Wed, 23 Mar 2022 12:40:23 +0200
Message-ID: <87wnglhrzc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/edid: filter DisplayID v2.0 CTA block
 in audio detection
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Mar 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> On Wednesday, March 23, 2022 6:04 PM, Nikula, Jani <jani.nikula@intel.com> wrote :
>>On Mon, 21 Mar 2022, Cooper Chiou <cooper.chiou@intel.com> wrote:
>>> In DisplayID v2.0 CTS data block 0x81 case, there is no any audio
>>> information definition, but drm_detect_monitor_audio didn't filter it
>>> so that it caused eDP dummy audio card be detected improperly.
>>>
>>> We observed this issue on some AUO/BOE eDP panel with DID v2.0 CTA
>>> block, and fix issue by adding filter for edid_ext[0]=DATA_BLOCK_CTA
>>> case.
>>
>>Out of curiosity, what does the CTA DisplayID Data Block have for Data Block revision?
>>
>>I haven't found any mention anywhere that it should have any correspondence to the CEA *extension* revision number, which is supposed to be 1..3, and really only 3 for about a decade now.
>>
>>Both the DisplayID v1.3 and v2.0 specs only mention revision 0.
>>
>>BR,
>>Jani.
>>
>
> We don't get many issues in EDID with DisplayID structure. In this case, the revision number is "0" as well.
> As you mentioned, DisplayID v1.3 and v2.0 spec define the block revision value is always 0. Do you think it would cause any problem?

A lot of places in the EDID parser expect CEA revision >= 3. This isn't
true for DisplayID data blocks, so we end up skipping a bunch of stuff
if there's no CEA extension and only a DisplayID block.

I'm fixing this in my series.


BR,
Jani.

>
> Best regards,
> Shawn
>
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>>>
>>> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
>>> ---
>>>  drivers/gpu/drm/drm_edid.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
>>> index f5f5de362ff2..6c9ae4b130bd 100644
>>> --- a/drivers/gpu/drm/drm_edid.c
>>> +++ b/drivers/gpu/drm/drm_edid.c
>>> @@ -4845,7 +4845,7 @@ bool drm_detect_monitor_audio(struct edid *edid)
>>>      int start_offset, end_offset;
>>>
>>>      edid_ext = drm_find_cea_extension(edid);
>>> -    if (!edid_ext)
>>> +    if (!edid_ext || (edid_ext[0] == DATA_BLOCK_CTA))
>>>              goto end;
>>>
>>>      has_audio = ((edid_ext[3] & EDID_BASIC_AUDIO) != 0);
>>
>>--
>>Jani Nikula, Intel Open Source Graphics Center
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
