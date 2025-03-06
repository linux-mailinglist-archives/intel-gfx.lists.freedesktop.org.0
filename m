Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFE0A5481F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE1D10E162;
	Thu,  6 Mar 2025 10:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ubzj5dMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE7C10E167;
 Thu,  6 Mar 2025 10:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741257734; x=1772793734;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QzubZ57zch1ALOmmNoMoKdJ9fmuCcVtZQmrFksJPFJk=;
 b=Ubzj5dMYo7j5umTAuQe2oCx0K8/qP1/OyJkpKRGk2vHVvIAX124rNkVU
 XZOcGFBpQ1+z9c37nzBUHPlxf2DSWdIj8sOnu/o6gZjJXerTuaKBI5BKe
 rFHXkY8WX7FGeXRkQ70P3Zaqcp3mxhE6iH9vQJmIIRYX7lGGzzzLjkmrH
 IzrJ7mMqUWM0o3UReRLtcZGevnMtSEp6z9qfeuNk5e6mW7UkPvILiu2wI
 gHtK6RrzMOYw091S2/Ank9whhsEzTGrH5CXHrTirR3ArnF6A3i19qn3m6
 CO7/yd/0NUPfbQ0OYk8iFSwjRFCtGuhNdqTdLDXDDBRqjVSy1u5L18U8Q Q==;
X-CSE-ConnectionGUID: aOktshCtQW2JBa7hFBYllQ==
X-CSE-MsgGUID: 5dSCbabtQ3KxvUV1vYWJYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53244801"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="53244801"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:42:14 -0800
X-CSE-ConnectionGUID: cVlVafwxT2+TMhq8huE9Xw==
X-CSE-MsgGUID: ZP/SSieUSN2y5wTvZlHaiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="119485774"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:42:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>,
 Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <20250305-nonchalant-fresh-stoat-61ea0a@lemur>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com> <20250305-nonchalant-fresh-stoat-61ea0a@lemur>
Date: Thu, 06 Mar 2025 12:42:07 +0200
Message-ID: <87frjqwidc.fsf@intel.com>
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

On Wed, 05 Mar 2025, Konstantin Ryabitsev <konstantin@linuxfoundation.org> =
wrote:
> On Wed, Mar 05, 2025 at 07:52:31PM +0200, Jani Nikula wrote:
>> > - For each new series on lore.kernel.org a bridge would create a PR by
>> > taking the latest mirrored drm-tip source, then applying a new series
>> > with `b4 shazam`.
>>=20
>> There's a small catch here. Patchwork is currently more clever about
>> handling series revisions when only some of the patches in a series are
>> updated by way of replying to the individual patch. For example [1][2].
>
> FWIW, b4 does partial rerolls already. E.g., using your own example:

Yay, I upgraded to 0.14 and so it does. Thanks!

The point I made is moot, and I agree with Lucas that we should align
with what b4 does.

> 	$ b4 am -o/tmp 20250305114820.3523077-2-imre.deak@intel.com
> 	[...]
> 	---
> 	  =E2=9C=93 [PATCH v5->v6 1/6] drm/i915/hpd: Track HPD pins instead of p=
orts for HPD pulse events
> 		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (=E2=9C=93 DKIM/inte=
l.com)
> 	  =E2=9C=93 [PATCH v5->v6 2/6] drm/i915/hpd: Let an HPD pin be in the di=
sabled state when handling missed IRQs
> 		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (=E2=9C=93 DKIM/inte=
l.com)
> 	  =E2=9C=93 [PATCH     v6 3/6] drm/i915/hpd: Add support for blocking th=
e IRQ handling on an HPD pin
> 	  =E2=9C=93 [PATCH v5->v6 4/6] drm/i915/dp: Fix link training interrupte=
d by a short HPD pulse
> 		+ Reviewed-by: Jani Nikula <jani.nikula@intel.com> (=E2=9C=93 DKIM/inte=
l.com)
> 	  =E2=9C=93 [PATCH     v6 5/6] drm/i915/dp: Queue a link check after lin=
k training is complete
> 	  =E2=9C=93 [PATCH v5->v6 6/6] drm/i915/crt: Use intel_hpd_block/unblock=
() instead of intel_hpd_disable/enable()
> 	  ---
> 	  =E2=9C=93 Signed: DKIM/intel.com

Side note, I often pipe messages from my MUA (notmuch-emacs) to b4, as
it nicely parses the mails and picks up the message-id from
there. Overall it works great. However, b4 seems to err on the side of
writing color codes to pipes, and I get this as output:

---
  [32m=E2=9C=93[0m [PATCH v5->v6 1/6] drm/i915/hpd: Track HPD pins instead =
of ports for HPD pulse events
    + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m=E2=9C=93[0m DK=
IM/intel.com)
  [32m=E2=9C=93[0m [PATCH v5->v6 2/6] drm/i915/hpd: Let an HPD pin be in th=
e disabled state when handling missed IRQs
    + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m=E2=9C=93[0m DK=
IM/intel.com)
  [32m=E2=9C=93[0m [PATCH     v6 3/6] drm/i915/hpd: Add support for blockin=
g the IRQ handling on an HPD pin
  [32m=E2=9C=93[0m [PATCH v5->v6 4/6] drm/i915/dp: Fix link training interr=
upted by a short HPD pulse
    + Reviewed-by: Jani Nikula <jani.nikula@intel.com> ([32m=E2=9C=93[0m DK=
IM/intel.com)
  [32m=E2=9C=93[0m [PATCH     v6 5/6] drm/i915/dp: Queue a link check after=
 link training is complete
  [32m=E2=9C=93[0m [PATCH v5->v6 6/6] drm/i915/crt: Use intel_hpd_block/unb=
lock() instead of intel_hpd_disable/enable()
  ---
  [32m=E2=9C=93[0m Signed: DKIM/intel.com
---

I haven't had the time to dig into b4 source on this, but it would be
great if it could automatically detect whether sending colors is the
right thing to do or not. Basically only emit color codes to interactive
terminals, unless forced also for pipes.

(Alternatively I could try to figure out how to enable colors on emacs
pipe output, but that's another rabbit hole...)


Thanks,
Jani.


--=20
Jani Nikula, Intel
