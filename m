Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A009FA00A59
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 15:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5E210E125;
	Fri,  3 Jan 2025 14:14:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K945bsDq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5856F10E125
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 14:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735913693; x=1767449693;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pQfDUBC4Kpeubeqe5dILckplQCalUfk5faTxL/dMpsI=;
 b=K945bsDqZHIvuWiCtqJ2Uvy28/ZHjxf+G8wMzPqIbhqbcQorhiHOZtZ+
 cIzfP+kSkNsuYqnMUMJ5p59X6OIU/RtXJ5temKrpGRo23sPRlhKeE/ovI
 2vLueyAKf6gtzBpplyBO4lZyLSuCeCA5zxMxuiSdn3JGMtEnObnfxnjSx
 t9YlKQu3jcnr7VjsRUbgR/aaD2By7TfWzpm0J2gTtfgFt+ZnKmc+D3Ezk
 X5RWb6EivuN7ZeJE82rA7d0ORuTiBVN6wfj6RoBa1ZAbOgQUPIwe8WRiR
 mchF8q8MwlcqHZv8WK60V7iUiw8PjAszPWW0sRQxpE5hyt7mPJmgzUkks g==;
X-CSE-ConnectionGUID: 9JQvQsihQnmp+EQcNS+YAw==
X-CSE-MsgGUID: fYrGLTbBQbGF+x7kO2Vcow==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36387069"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36387069"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:14:52 -0800
X-CSE-ConnectionGUID: ymt2/vEtSTWPDXX3P61LEg==
X-CSE-MsgGUID: cDm49gxNR5+oUOOD76XAWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101659631"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:14:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aditya Garg <gargaditya08@live.com>, Ashish Arora
 <ashisharora.linux@outlook.com>
Cc: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Orlando Chamberlain
 <orlandoch.dev@gmail.com>
Subject: Re: [BUG] The bottom and right edges on the tty are not shown on
 Apple T2 MacBooks with Retina display
In-Reply-To: <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com>
Date: Fri, 03 Jan 2025 16:14:45 +0200
Message-ID: <87bjwom1be.fsf@intel.com>
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

On Fri, 03 Jan 2025, Aditya Garg <gargaditya08@live.com> wrote:
> Hello maintainers
>
> This bug has been there for a long time, and hasn't been fixed yet. In ca=
se the Intel GPU is used as boot GPU on Apple T2 MacBooks, the bottom and r=
ight edges of the tty are no longer seen, thus making some text not visible.
>
> It has been reported in almost all Apple T2 MacBooks with Intel GPU, whic=
h have the Retina display.
>
> In case of a dual GPU MacBook, if the AMD dGPU is used to boot, the bug n=
o longer exists.
>
> This patch below was submitted 3 years ago, and it fixes this issue.

Please file a bug as described at [1], attaching dmesg from boot with
debugs enabled, etc.

As suggested by Ville in [2], the bug is likely elsewhere, and this just
hides it. A bigger fb shouldn't be a problem, and we shouldn't add this
limitation everywhere because of the issue you're seeing.

BR,
Jani.



[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

[2] https://lore.kernel.org/r/Yd7ZnBlU0sjP4qcG@intel.com

>
>> On 11 Jan 2022, at 1:25=E2=80=AFPM, Ashish Arora <ashisharora.linux@outl=
ook.com> wrote:
>>=20
>> From: Ashish Arora <ashisharora.linux@outlook.com>
>>=20
>> On certain 4k panels and Macs, the BIOS framebuffer is larger than what
>> panel requires causing display corruption. Introduce a check for the sam=
e.
>>=20
>>=20
>> Signed-off-by: Ashish Arora <ashisharora.linux@outlook.com>
>> Reviewed-by: Aun-Ali Zaidi <admin@kodeit.net>
>> ---
>> V2 :- Use !=3D instead of < and >
>> V3 :- Mention Macs (Thanks to Orlando)
>> drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
>> 1 file changed, 3 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/dr=
m/i915/display/intel_fbdev.c
>> index 842c04e63..16b1c82b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -181,10 +181,10 @@ static int intelfb_create(struct drm_fb_helper *he=
lper,
>> int ret;
>>=20
>> if (intel_fb &&
>> -    (sizes->fb_width > intel_fb->base.width ||
>> -     sizes->fb_height > intel_fb->base.height)) {
>> +    (sizes->fb_width !=3D intel_fb->base.width ||
>> +     sizes->fb_height !=3D intel_fb->base.height)) {
>> drm_dbg_kms(&dev_priv->drm,
>> -    "BIOS fb too small (%dx%d), we require (%dx%d),"
>> +    "BIOS fb not valid (%dx%d), we require (%dx%d),"
>>    " releasing it\n",
>>    intel_fb->base.width, intel_fb->base.height,
>>    sizes->fb_width, sizes->fb_height);
>> --=20
>> 2.25.1
>>=20
>>=20
>>=20
>

--=20
Jani Nikula, Intel
