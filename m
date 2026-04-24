Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CN9G7Jg62kCMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:23:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00A45E5FE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560EE10F54F;
	Fri, 24 Apr 2026 12:23:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBThLzqq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6349A10F548;
 Fri, 24 Apr 2026 12:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777033391; x=1808569391;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ijt5VZTCj2NkfjHfVPqo5gHkdbHpc4Up17Aw4DOCVzo=;
 b=HBThLzqqEB8St+msIfjHesUPLF5+gfR/XUjB6Q84gRyBfkvszbaEB5rp
 q2wA80w6TidFFqm0XONK8FfZKKMZnTkjS+qtGa0oNICcYW8+WmVLDCT/f
 dKyKdEYwdS1Z7GcQEPPO+G/YPJ/XJclALVzsmVbfmJV17uscU5AGwvvJz
 MSddgmq1csvXL0ZmaofRyOipE6BhO1E+DHQlwzSsBtkPaVwaTPbuvffcW
 Vurupfk/BXpo74OXsGWYBvbNUXqtwIdNTIM/haO1SoCsW9D9uGBD2+e6N
 YAueP0sRkUWpY881LSsOirfbMNuNEWw9UGoIMrCV2VvBm24dbTxS1G9l4 w==;
X-CSE-ConnectionGUID: AThXiI5dQKWVmSHHRDtiKA==
X-CSE-MsgGUID: 0jPloUOKTxCHhe+MeijV+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77898446"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77898446"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:23:10 -0700
X-CSE-ConnectionGUID: nlTELJ9/TbCtaJ9WTGPavA==
X-CSE-MsgGUID: FuwktHv/T7C7AGT5+kS72g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="232847855"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:23:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Juha-Pekka =?utf-8?Q?Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>,
 Raag Jadav <raag.jadav@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
In-Reply-To: <737a684a-5a97-4e2d-9250-69990fb23e91@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
 <92d121173a3e42ef91274f9fa810e47d71b8dd70@intel.com>
 <aetXJXANjinP119i@black.igk.intel.com>
 <737a684a-5a97-4e2d-9250-69990fb23e91@gmail.com>
Date: Fri, 24 Apr 2026 15:23:05 +0300
Message-ID: <fb4e14bdd4914b082d819b887d7016799930bdf7@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: CB00A45E5FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]

On Fri, 24 Apr 2026, Juha-Pekka Heikkil=C3=A4 <juhapekka.heikkila@gmail.com=
> wrote:
> On 24/04/2026 14.42, Raag Jadav wrote:
>> On Fri, Apr 24, 2026 at 11:44:57AM +0300, Jani Nikula wrote:
>>> On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>=
 wrote:
>>>> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
>>>> disabled on both Xe and i915 drivers. Here allow dg2 to use
>>>> ccs again for framebuffers.
>>>>
>>>> Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: De=
tect AuxCCS support via display parent interface")
>>>
>>> In kernel, there should be 12 characters of sha1.
>>=20
>> I had a misconception that checkpatch already flags this, but it seems
>> not? Or perhaps I'm not much informed about the history (if any)?
>
> What checkpatch says is to use 12+ long sha when sha is shorter, like thi=
s:
>
> WARNING: Please use correct Fixes: style 'Fixes: <12+ chars of sha1>=20
> ("<title line>")'
>
> hence I did put the full sha.

I think the + in the 12+ is for when 12 is ambiguous.

BR,
Jani.

>
> /Juha-Pekka
>
>
>>> 'dim fixes <sha1>' gives you the correct format, and suggests Cc's
>>> (though you probably shouldn't actually Cc all of them).
>>>
>>> For referencing commits in general, I have this handy alias in my
>>> .gitconfig:
>>>
>>> [alias]
>>> 	cite =3D log -1 --abbrev=3D12 '--format=3D%h (\"%s\")'
>>>
>>> $ git cite 6a99e91a6ca8fec5882450128fb128265f86b32a
>>> 6a99e91a6ca8 ("drm/i915/display: Detect AuxCCS support via display pare=
nt interface")
>>>
>>> BR,
>>> Jani.
>>>
>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/i915_driver.c | 5 ++---
>>>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915=
/i915_driver.c
>>>> index d31819758f3d..a4bd4f8e18b2 100644
>>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>>> @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
>>>>   {
>>>>   	struct drm_i915_private *i915 =3D to_i915(drm);
>>>>=20=20=20
>>>> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
>>>> -	       IS_ALDERLAKE_P(i915) ||
>>>> -	       IS_METEORLAKE(i915);
>>>> +	return IS_GRAPHICS_VER(i915, 9, 12) &&
>>>> +		!HAS_FLAT_CCS(i915);
>>>>   }
>>>>=20=20=20
>>>>   static bool has_fenced_regions(struct drm_device *drm)
>>>
>>> --=20
>>> Jani Nikula, Intel
>

--=20
Jani Nikula, Intel
