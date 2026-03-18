Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sICCC4OLumnSXgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 12:24:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BBA2BAC1B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 12:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4AC10E11A;
	Wed, 18 Mar 2026 11:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LD1owGyu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F8210E101;
 Wed, 18 Mar 2026 11:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773833086; x=1805369086;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7iYZhmzUVmRe9FqDsbg26T7NvenTXk+071AGD/Mpbbw=;
 b=LD1owGyu1KVhHvqarUMDU7dx6z6weHVpcCrANxGhsMhQqDaLJ2GmAkoI
 x+D4YjVlNlWfL79OdFmhU8y95QBnowCkHs57MqgA1yrdPH+d1dCA+dR80
 yrYTRulY8cJKc4AbQAPLf1CNqLA5p1Kny+kBXgh32YsRgiJiQvUZRBJJp
 SwyandFsDLRNgnoTuarnPA8BIm/DrFgrfdmFhjpnWrcTR8svndmPPWQHh
 FUN/MeTsgUrMbvcy935Z6NoW1jlgbkw3DWz7e22tcDO6TwmH4p6/zr0nf
 ahc09Mq4pUzr/iLrHhL98PW3etlBxvi9EQEiky4LqbyxX6ZgvuJqVfjPh g==;
X-CSE-ConnectionGUID: pGRfDwLMSDem91cVJ1XSbw==
X-CSE-MsgGUID: Tq5oTjHHQ5GVA+PGawoU4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="92453171"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="92453171"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 04:24:45 -0700
X-CSE-ConnectionGUID: vgBnmoh8QReLJ0Jmngc/pQ==
X-CSE-MsgGUID: 2ye0oTnlSeGlrwalpRHuFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="222654923"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 04:24:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Arnd Bergmann
 <arnd@kernel.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Uma Shankar <uma.shankar@intel.com>, Mika Kahola
 <mika.kahola@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/i915/fbdev: fix link failure without FBDEV emulation
In-Reply-To: <9b3354fe-ff49-4436-9f36-2a19eaf2918c@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260304083701.724908-1-arnd@kernel.org>
 <c9fe5e38-de78-45f3-82ae-adf0996a7aa1@suse.de>
 <9b3354fe-ff49-4436-9f36-2a19eaf2918c@suse.de>
Date: Wed, 18 Mar 2026 13:24:36 +0200
Message-ID: <e3204759f615aacdccb62eb124fe9701726a90a3@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[suse.de,kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D3BBA2BAC1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Hi
>
> Am 04.03.26 um 09:43 schrieb Thomas Zimmermann:
>> Hi
>>
>> Am 04.03.26 um 09:36 schrieb Arnd Bergmann:
>>> From: Arnd Bergmann <arnd@arndb.de>
>>>
>>> If CONFIG_DRM_FBDEV_EMULATION is disabled but CONFIG_FRAMEBUFFER_CONSOLE
>>> is turned on, the i915 driver now fails to link:
>>>
>>> ERROR: modpost: "intel_fbdev_fb_prefer_stolen"=20
>>> [drivers/gpu/drm/i915/i915.ko] undefined!
>>>
>>> Fix the contition to include a check for the symbol that controls=20
>>> compilation
>>> of intel_fbdev_fb.c.
>>>
>>> Fixes: 94c7d2861292 ("drm/i915/fbdev: Extract=20
>>> intel_fbdev_fb_prefer_stolen()")
>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>> ---
>>> =C2=A0 drivers/gpu/drm/i915/i915_initial_plane.c | 3 ++-
>>> =C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c=20
>>> b/drivers/gpu/drm/i915/i915_initial_plane.c
>>> index 5594548f51d8..390a9248d631 100644
>>> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
>>> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
>>> @@ -115,7 +115,8 @@ initial_plane_vma(struct drm_i915_private *i915,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * important and we should probably=
 use that space with FBC or=20
>>> other
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * features.
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>>> -=C2=A0=C2=A0=C2=A0 if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>>> +=C2=A0=C2=A0=C2=A0 if (IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IS_ENABLED(CONFIG_FRAMEBUFF=
ER_CONSOLE) &&
>>
>> It's possible to run fbdev without the console. So if I'm not=20
>> mistaken, only CONFIG_DRM_FBDEV_EMULATION would be correct.
>
> Did anyone pick up this fix?

Pushed to drm-intel-next, thanks for the patch.

BR,
Jani.

>
> Best regards
> Thomas
>
>>
>> Best regards
>> Thomas
>>
>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mem =3D=3D i915-=
>mm.stolen_region &&
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 !intel_fbdev_fb_=
prefer_stolen(&i915->drm, size)) {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_dbg_kms(&i91=
5->drm, "Initial FB size exceeds half of=20
>>> stolen, discarding\n");
>>

--=20
Jani Nikula, Intel
