Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFtzDppkd2lefAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 13:56:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A7988838
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 13:56:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82CC10E411;
	Mon, 26 Jan 2026 12:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZuqI96h+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6399710E21E;
 Mon, 26 Jan 2026 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769432213; x=1800968213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+lMEAILZfAJO9u0LWDi0oL79K7xksAaqRfLBQX37uF0=;
 b=ZuqI96h+3O5ysjqythMo/4r9nB5IBw6rrdeBvvukoPZ06QxQhCiabXRH
 A9mRq8LEauTKpv7bVCEarNFxgUMqCebs5ZqY15Cze9RvnE+r0Jj42kOsu
 SKnFZqvmTvF9p2tf3co7+DF9PcrNb+8fVlqQnmpsi8wU0hwk8xqW01JTo
 oc17JRHsyPjZFEnUydIbEV9EQO4QiKKGq0U6cYFgNf5ojSwZuzVLrD2Dp
 Rb/9V/zEdKerBoXScDWtMQNXN471r724tpQvvGRocyFhKJg87SyNvzOn5
 g59YvP3hnAOJdjJ6bmKdeIzUNlVkGKVciwiodzxDqu8YjHZQLWHZON5F/ g==;
X-CSE-ConnectionGUID: j9KlGbquRKKIHvAEgXNxtw==
X-CSE-MsgGUID: oWmGmFcUQHWswr+eWX37eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="81326493"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="81326493"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 04:56:53 -0800
X-CSE-ConnectionGUID: 2xHfz/nbSuygkHrfbxZ00g==
X-CSE-MsgGUID: LS3dOau+QeyYBeotQoCHIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="207728841"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.97])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 04:56:49 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 7/7] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Date: Mon, 26 Jan 2026 13:56:46 +0100
Message-ID: <2893102.BEx9A2HvPv@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <6123599.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <DFVX33TUJM19.WAFS6MCXBOJR@intel.com>
 <6123599.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 99A7988838
X-Rspamd-Action: no action

Hi,

Here are my conclusion from a closer look.

On Friday, 23 January 2026 15:34:23 CET Janusz Krzysztofik wrote:
> Hi Sebastian,
>=20
> On Friday, 23 January 2026 12:03:45 CET Sebastian Brzezinka wrote:
> > Hi Janusz,
> >=20
> > On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> > > In a short listing, information about PCI parents of DRM devices, as =
well
> > > as about DRM children of PCI GPU devices is now printed.  In a long
> > > listing in turn, the latter is also printed.  Apply a similar approac=
h to
> > > PCIe bridge upstream ports: print information about their PCI GPU chi=
ldren
> > > and also their codenames in both formats, and inform about upstream p=
orts
> > > of PCIe bridges found on PCI discrete GPU cards in the short format.
> > >
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  lib/igt_device_scan.c | 22 +++++++++++++++++-----
> > >  1 file changed, 17 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > > index e86da001a9..69ea8d2eaf 100644
> > > --- a/lib/igt_device_scan.c
> > > +++ b/lib/igt_device_scan.c
> > > @@ -250,6 +250,8 @@ struct igt_device {
> > >  	char *codename; /* For grouping by codename */
> > >  	enum dev_type dev_type; /* For grouping by integrated/discrete */
> > > =20
> > > +	char *pci_gpu; /* Filled for upstream bridge ports */
> > > +
> > >  	struct igt_list_head link;
> > >  };
> > > =20
> > > @@ -1058,6 +1060,9 @@ static void update_or_add_parent(struct udev *u=
dev,
> > >  	igt_assert(bridge_idev);
> > > =20
> > >  	bridge_idev->dev_type =3D DEVTYPE_BRIDGE;
> > > +	bridge_idev->pci_gpu =3D parent_idev->pci_slot_name;
> > > +	bridge_idev->codename =3D parent_idev->codename;
> > > +	parent_idev->parent =3D bridge_idev;
> > I haven=E2=80=99t checked the release process myself. Have you verified=
 that freeing this
> > memory won=E2=80=99t lead to any problems?
> >  (Maybe use strdup??)
>=20
> Indeed, I might have missed something here.  While pci_gpu and parent see=
m=20
> safe for me at a first glance, I'm not sure about codename.  Let me have=
=20
> another, closer look at all of them.

I think parent_idev->parent is safe, it follows the pattern used before:
	idev->parent =3D parent_idev;

However, bridge_idev->codename evidently requires strdup() to avoid double=
=20
free() on destroy.

As long as printing to stdout likely captures content of bridge_idev->pci_g=
pu=20
before parent_idev and its attributes are destroyed, that one seems safe, b=
ut=20
let's use strdup() as well to be on the safe side.

Thanks for catching this.

Thanks,
Janusz


>=20
> Thanks,
> Janusz
>=20




