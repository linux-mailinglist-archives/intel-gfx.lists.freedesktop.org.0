Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RQAeOpq3O2oabwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:55:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9AF6BD827
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:55:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dOoJNJJq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4FD10E095;
	Wed, 24 Jun 2026 10:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D9210E095;
 Wed, 24 Jun 2026 10:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782298519; x=1813834519;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=tSQKiZLoAj9wMv6AVFyxdekkE3IHGmlYoUnvYQF+Cfw=;
 b=dOoJNJJqOn5RGMVjc12xoYoaou+iScACG6NrWaQJP7vNieL9hr/Qxytt
 1a24mkDvUgPQiUvKzXmiLzcet25aJSxHu7JZyRSaWw0yNtBjlVYr3K/gy
 D6KNh0YDxy7BuPyQmq1ajf4mdm/TCNtiua6c1+uitL62zAOF76nBxj0b5
 F0MRQyCY/bZYtvGd1MXbO6T9MQsw2z/8R7+nHf0TowDCJy9Eb9WwB2Jnd
 xO67zxz6XAXzC/TiEMarlhCuBD3J2nluKFkWHFTG+RQlMxv6h8W6UtCcy
 kf4P9PHe1IVqB8RQZlHn/up0UKbB/3UGfIhKw/dwxKulPBjt40VFSjza1 Q==;
X-CSE-ConnectionGUID: Sp5wfdqAT0O8p4k7LkCPgQ==
X-CSE-MsgGUID: in9GhegATMu5Rr7dRRwUng==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="83060545"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="83060545"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:55:19 -0700
X-CSE-ConnectionGUID: xslLh6faT4u3Z44MamtUVg==
X-CSE-MsgGUID: s2dMlfp2R72oGFQOrwC9fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="246902281"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.147])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 03:55:16 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ajuyD3vOdMdvbGqx@intel.com>
References: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
 <ajqXK-fZnty-YGCK@intel.com>
 <178228365985.16303.14222363163462260344@jlahtine-mobl>
 <ajuyD3vOdMdvbGqx@intel.com>
Subject: Re: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: =?utf-8?q?Gabr=C3=ADel_Arth=C3=BAr_P=C3=A9tursson?=
 <gabriel.petursson@jbtmarel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 24 Jun 2026 13:55:13 +0300
Message-ID: <178229851360.107728.7349366780272154676@jlahtine-mobl>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,jlahtine-mobl:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C9AF6BD827

Quoting Ville Syrj=C3=A4l=C3=A4 (2026-06-24 13:31:43)
> On Wed, Jun 24, 2026 at 09:47:39AM +0300, Joonas Lahtinen wrote:
> > Quoting Ville Syrj=C3=A4l=C3=A4 (2026-06-23 17:24:43)
> > > This smells like the same thing I already fixed with
> > > commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
> > > without a full PLL re-enable")
> > >=20
> > > Sadly it looks like I forgot to cc:stable it :/
> > >=20
> > > Jani, can you pick that up for -fixes and slap a cc:stable on it?
> >=20
> > I'll include it in drm-intel-next-fixes, do we have a
> > Fixes: tag to add?
>=20
> It's been basically broken forever so the correct fixes
> tags probably aren't super useful.
>=20
> However the nastier user visible regression happened in=20
> commit ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from
> state->modeset") which therefore might make sense as a
> fixes tag. But if we put that in then I'm worried that it
> won't get backported to older kernels. I guess we could throw
> that in there along with the ancient commits that actually
> introduced the problem.
>=20
> So something along the lines of:
> Fixes: ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")
> Fixes: d66a21947e21 ("drm/i915/bxt: Sanitize CDCLK to fix breakage during=
 S4 resume")
> Fixes: c73666f394fc ("drm/i915/skl: If needed sanitize bios programmed cd=
clk")

Thanks, applied with those and Cc: stable with "# v4.5+" picking
the earliest version of the three.

Regards, Joonas

>=20
> --=20
> Ville Syrj=C3=A4l=C3=A4
> Intel
