Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPFSDyyB1mmwFwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:24:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E403BECB0
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B6910E6A7;
	Wed,  8 Apr 2026 16:24:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g074HO9j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED0A010E6A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775665448; x=1807201448;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=E+QMn0IYrkJYY8Z5hzVFldk4ojDRTohvdRl48UbYOXs=;
 b=g074HO9jHcjnoa4XW0f6P7WF3y2SLsIcfzh/c5FhdbNCdG9yIwhjnOYT
 MNW8BNg49y0haXcKbTHwglypM6oD6Zzy+K0wDzA1etupgSmkDXMu7+UqT
 Szy7Md04TJzbk3mz4BKcZQb1ac5E47ytwvgLlGn0FydEutOkyJdMGoeCl
 FJDSQJHkxxn1T0weOTim7gNuasC/unH+kvJpNvIfRqiuJvkJ4x8CKoRAp
 cxe76JqU+ibZdbFsM8dMXRgWB2MVbwmnTJXJGj3tn1mhv+0EPCFPCaoAm
 13G1QyjcXa23sZOvOOI5v5haUs3jJs/pELAW36ru7wSJxNjDzKdvj0AJ9 Q==;
X-CSE-ConnectionGUID: qESPsx8ERSaXY/AfKSyaTw==
X-CSE-MsgGUID: f2xUeg4tRPqYlZzrqzZXUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76545489"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76545489"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:24:07 -0700
X-CSE-ConnectionGUID: s/UyX16/Sxmf9BoKKOOwfA==
X-CSE-MsgGUID: djrszF6AScyCMIHWU8pPUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="223752052"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:24:04 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHk-=wgbhJ6TzSwswdM5hKAS_RKF1SLXp2u6JAS35P3i2mW2OQ@mail.gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
 <177564692857.84154.3119637094332266143@jlahtine-mobl>
 <CAHk-=wgbhJ6TzSwswdM5hKAS_RKF1SLXp2u6JAS35P3i2mW2OQ@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, security@kernel.org,
 Simona Vetter <simona.vetter@ffwll.ch>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Wed, 08 Apr 2026 19:24:01 +0300
Message-ID: <177566544117.120471.8020434521083493183@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:simona.vetter@ffwll.ch,m:torvalds@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org,ffwll.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 96E403BECB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Linus Torvalds (2026-04-08 18:38:00)
> On Wed, 8 Apr 2026 at 04:15, Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com> wrote:
> >
> > I've sent out v3 of the patch[1]. I think it should be fine for you to
> > simply drop or revert the version you included in -rc7.
>=20
> No.
>=20
> That code was MISLEADING GARBAGE.

Yes, there was clearly a bug introduced at the time of adding the
vma->vm =3D=3D vm check where zeroing vma was missed if only that part of
check failed. However the vma->vm =3D=3D vm part can't have failed since
d4433c7600f7.

> At least now it does something sane for a situation that it tests for,
> rather than "it tests for a situation that cannot happen, and then
> does insane things".
>=20
> Because "that cannot happen" is not an argument for doing insane things.

Maybe the commit wording was bad if you got that impression, but that was
never argued.

Argument was to amend the zeroing with WARN_ON_ONCE to check for the
"not supposed to happen scenario" in order to get a splat if we ever hit
that scenario.

> If it cannot happen, the test should simply not exist.

If you are happier, in mainline we can just skip the else part
completely and just reduce the check to if (likely(vma)) and skip
the whole vma->vm =3D=3D vm part and not need the else branch at all.

Do you want that to be sent as part of -fixes then?

Regards, Joonas

>=20
>                  Linus
