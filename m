Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 311137B4C43
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6698310E193;
	Mon,  2 Oct 2023 07:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC82510E193
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696230531; x=1727766531;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qol3aoS2oRizdVbzE2yM6mHXhZ+xhbXckeoyzC4Ax6w=;
 b=KwWP3HoemhlZ/ph7EFMW4qxL6/DCpfnAYW72wZPaL4iBUQ5l7ncZfKWk
 Rqzgr6KRg9pH3oun0ns1wqzEYIbSOsFxad51BMwE3MS/5MzyTCBGeQdij
 YMew3eT9BY/e4/QAvdvA0CYdtR6W4pG8Gxtxs9Cj2qvJ7aQ14dYm6C530
 BupH3k3eKba8DFty0iVDCnuv+r/XfQ6jQeaxm7vb901j0Aemaxp2jIu5a
 nJPJRs02IEEJKBkb+8/cj0SaiZ20Ul4DWvsAyIAEjpciB7f+35KG9UaZ/
 dmIdqI1XUxE6wS3hWpyG6D4gCElNWZmKtaI5siweUBk5TYeqYUMdfwkYc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="381477027"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="381477027"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:08:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="894057174"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="894057174"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:07:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <169599418712.1718.2462102342426764863@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230928065210.103376-1-jouni.hogander@intel.com>
 <87cyy2kajy.fsf@intel.com>
 <169599418712.1718.2462102342426764863@gjsousa-mobl2>
Date: Mon, 02 Oct 2023 10:08:40 +0300
Message-ID: <877co5ijrb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 Sep 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-09-28 04:43:13-03:00)
>>On Thu, 28 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>>> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When =
we
>>> are releasing frontbuffer we are clearing the pointer from the object. =
Warn
>>> on if return value is not null.
>>>
>>> v2: Instead of ignoring do drm_WARN_ON
>>>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>
>>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers=
/gpu/drm/i915/display/intel_frontbuffer.c
>>> index d5540c739404..95319301cf2b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>> @@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
>>>=20=20
>>>          i915_ggtt_clear_scanout(obj);
>>>=20=20
>>> -        i915_gem_object_set_frontbuffer(obj, NULL);
>>> +        drm_WARN_ON(&intel_bo_to_i915(obj)->drm,
>>> +                    i915_gem_object_set_frontbuffer(obj, NULL) !=3D NU=
LL);
>>
>>I'm in the camp that says drm_WARN_ON() and friends should not contain
>>any functional actions, and it should just be for checks. I.e. if you
>>removed all the warns, things would still work, and lines that do stuff
>>stand out and aren't hidden in WARN parameters.
>
> Good rationale.
>
> Here is a command for finding places where a fix might be applicable :-)
>
>     spatch --very-quiet --sp 'drm_WARN_ON(..., <+... E(...) ...+>)' drive=
rs/gpu/drm/i915

Good hints, but also a *lot* of false positives!

BR,
Jani.

>
> --
> Gustavo Sousa
>
>>
>>Like so:
>>
>>        ret =3D i915_gem_object_set_frontbuffer(obj, NULL);
>>        drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
>>
>>BR,
>>Jani.
>>
>>>          spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>>>=20=20
>>>          i915_active_fini(&front->write);
>>
>>--=20
>>Jani Nikula, Intel

--=20
Jani Nikula, Intel
