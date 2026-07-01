Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nSraIbbLRGoy1AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:11:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC8F6EAF85
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:11:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VXqZRPo9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D9710EE29;
	Wed,  1 Jul 2026 08:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB67F10EE29;
 Wed,  1 Jul 2026 08:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782893491; x=1814429491;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=ZVV2hjY9ay7iumIfLUlyzYe4GywTvBJ7/pC6zjq9+8s=;
 b=VXqZRPo9EMUM46LVZBP8wBAH2w29ZeYfBu9j2tl49Y2k1pwOtT6p4LVN
 DLvqoe3wiMdey1qgg/5TwiqMx4LdNWbOt+tmL36/Z1FHjN11n7Pyu1QJh
 XWpxTA7jLeIlECwXtPemODCB/+tkbykieRFOkVu9k+ooCWUek2enyC8GH
 0BEvEBdp5dZSULdFNiIVdeyEo8ZJ9k13Vb+5vP5wkIKcJxALSdqRY/S3Y
 vLJgRz41/QDz2XgdVuxtUPNMPmFfnxeAyvcq+cHif8dQ9vVvWWnNuxHA8
 LfX8/oIC7ANF35QaLRS/5p4om508MzW9VDs0ql98B26OKNhdpG+RlPags A==;
X-CSE-ConnectionGUID: 67fk4z5STJ+GMXq107SBag==
X-CSE-MsgGUID: Cg/HBOh8Rs+7q804FPNoIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="94772611"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="94772611"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 01:08:53 -0700
X-CSE-ConnectionGUID: 8UFmS5fRQiuB5i3UYg20qw==
X-CSE-MsgGUID: Eo5z0S5iRCWWQbbtLv9j+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="252078510"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.25])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 01:08:50 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260701074137.84A9B1F000E9@smtp.kernel.org>
References: <20260701073030.44850-1-joonas.lahtinen@linux.intel.com>
 <20260701074137.84A9B1F000E9@smtp.kernel.org>
Subject: Re: [PATCH] drm/i915/gem: Do not leak siblings[] on proto context
 error
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
To: sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev
Date: Wed, 01 Jul 2026 11:08:47 +0300
Message-ID: <178289332700.56387.13946790938701225803@jlahtine-mobl>
User-Agent: alot/0.13.dev2+g40c57d620
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,sashiko.dev:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DAC8F6EAF85

Quoting sashiko-bot@kernel.org (2026-07-01 10:41:36)
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
>=20
> Pre-existing issues:
> - [Critical] Unchecked NULL pointer dereference of `pe->engine` in `set_p=
roto_ctx_sseu()`.
> --
>=20
> commit 65a99ba2c873d452c04e00448f3e025e69552b68
> Author: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>=20
> drm/i915/gem: Do not leak siblings[] on proto context error
>=20
> This commit fixes a memory leak in the context creation error path.
> It ensures the siblings[] array is properly freed if an error happens
> while processing user extensions.
>=20
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/=
drm/i915/gem/i915_gem_context.c
> > index aeafe1742d308..87fce2adfeefb 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> [ ... ]
> > @@ -800,15 +800,21 @@ static int set_proto_ctx_engines(struct drm_i915_=
file_private *fpriv,
> >                                          set_proto_ctx_engines_extensio=
ns,
> >                                          ARRAY_SIZE(set_proto_ctx_engin=
es_extensions),
> >                                          &set);
> [ ... ]
> > +err_extensions:
> > +     for (n =3D 0; n < set.num_engines; n++)
> > +             kfree(set.engines[n].siblings);
> > +err:
> > +     kfree(set.engines);
> > +
> > +     return err;
> >  }
> > =20
> >  static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
>=20
> [Severity: Critical]
> This is a pre-existing issue, but could this cause a NULL pointer
> dereference later in set_proto_ctx_sseu()?
>=20
> If a user creates a proto-context and uses I915_CONTEXT_PARAM_ENGINES to
> set an engine array with an I915_ENGINE_CLASS_INVALID entry,
> set_proto_ctx_engines() initializes the slot to 0 and skips setting
> pe->engine.
>=20
> If the user then calls I915_CONTEXT_PARAM_SSEU and specifies the index of
> that invalid engine, set_proto_ctx_sseu() executes this:
>=20
>     idx =3D array_index_nospec(idx, pc->num_user_engines);
>     pe =3D &pc->user_engines[idx];
>=20
>     /* Only render engine supports RPCS configuration. */
>     if (pe->engine->class !=3D RENDER_CLASS)
>         return -EINVAL;
>=20
> Does pe->engine need to be checked for NULL before dereferencing it here,=
 to
> prevent a panic?

There is a fix submitted for this already at [1] given the issue was
already taken note of.

Regards, Joonas

[1] https://lore.kernel.org/intel-gfx/20260701075555.52142-1-joonas.lahtine=
n@linux.intel.com/

> --=20
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701073030.44=
850-1-joonas.lahtinen@linux.intel.com?part=3D1
