Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEA1830C5F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 19:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8A510E146;
	Wed, 17 Jan 2024 18:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980AF10E146
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705514513; x=1737050513;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RupBlp/Pi2wKk8Wduup/rrNumCw7y2nfbyMeMHDGZUA=;
 b=TphzsIRJm1ZeyFxSVdDVn48l1tJ8e9vQeT6chz01qzGNxQFbPDjvGNhS
 fd8RKgSkw2vj+54MbAMr9C0F4a3YNdfVN4uLYOF1oXxvGvB17ZnpLCrfP
 QYGseuzPQ3jRb49YQcfllMNwOQCeWjldJVWPiiDyQprxuuYN7zkE6J3+O
 BRsEmDrzwTk48XKgechpZSsVs9qd16FPoM1MyKKYACXDHrlONGTsK8yzA
 EHJaBA9UiOjZQDpScONTRRnogQwiiG2YSlwHTXHPjQvlGUY94yNOm7FGn
 Gd1fzQ+IQHq11nAxcuxJbs6hiUsNwORikk1wdSr3DqUpauXK/xSZ9w86J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="466618955"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="466618955"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 10:01:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777514357"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777514357"
Received: from msznigir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.230])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 10:01:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy
 <stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option
 to debugfs
In-Reply-To: <94796951-a166-43fa-b476-a8522c8a272d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018132400.1446-1-stanislav.lisovskiy@intel.com>
 <ZTkRRRf2lTksA_a2@intel.com>
 <94796951-a166-43fa-b476-a8522c8a272d@intel.com>
Date: Wed, 17 Jan 2024 20:01:40 +0200
Message-ID: <87y1cnq1ob.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Jan 2024, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
> Hi Ville,
>
> On 25-Oct-23 6:29 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Wed, Oct 18, 2023 at 04:24:00PM +0300, Stanislav Lisovskiy wrote:
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
>>> index 4f6835a7578e..6a9148232a9c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1153,7 +1153,11 @@ bool intel_dp_need_bigjoiner(struct intel_dp *in=
tel_dp,
>>>   	if (!intel_dp_can_bigjoiner(intel_dp))
>>>   		return false;
>>>=20=20=20
>>> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
>>> +	if (intel_dp->force_bigjoiner_enable)
>>> +		drm_dbg_kms(&i915->drm, "Forcing bigjoiner mode\n");
>>=20
>> That's going to cause excessive dmesg spam.
>
> Then how from dmesg we will get to know, big joiner was forced?=20
> Shouldn't we have atleast one debug print to know this?

Yeah. But this gets called for every single display mode via
intel_dp_mode_valid().

BR,
Jani.


--=20
Jani Nikula, Intel
