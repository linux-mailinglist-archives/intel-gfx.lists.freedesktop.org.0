Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKq/IPiGc2krxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:34:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8F87721A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806DA10EB0C;
	Fri, 23 Jan 2026 14:34:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UTkQ5L9p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1F810EB0A;
 Fri, 23 Jan 2026 14:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769178870; x=1800714870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BegwYUQqEHNaZ+apO5NM6k8xrLgTNlWgV3KTxJdYAqY=;
 b=UTkQ5L9pVPDMAvJoq37BMvwJGJdc/5ORVN0fRv7RzJTmvIrdEna/JMt5
 CVDXl/I9pLW5RJRvEJYjyDFAM3+gAtSgyKWhqnoegbyA/STch7UeHzkm6
 RPjNfkrNCQyXIZjDlUQ8MyIEAjXzpdlSRhyZb8dI5mdlXlzH+8COsuSNP
 lAZ79g4gBMewyXEOyLBn/cXb4/fbRw5EkIZg+QqTdSywp3kMrtZciK1rr
 g6A92BCSgdpiy2Yjpx4KT/d6b6r9GMKx9t0u3SQo/yJ96Hx/z9YdAydUk
 ark0kKt5dFbJQpgDeiQq9weqPkau4kDKvPBSxzfULi1l/dd4Eh7XmI5Sg A==;
X-CSE-ConnectionGUID: wxGZ2PGITTy2xZ/IaJOUIQ==
X-CSE-MsgGUID: 0XAowScaRaaem1X0fQ/68A==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="80735687"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="80735687"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:34:29 -0800
X-CSE-ConnectionGUID: 6RSbNaE5Sz2PuQs/ChVcTQ==
X-CSE-MsgGUID: Le8CZeXrQ02K0Q5WGnNyEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207459064"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.8])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:34:26 -0800
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
Date: Fri, 23 Jan 2026 15:34:23 +0100
Message-ID: <6123599.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DFVX33TUJM19.WAFS6MCXBOJR@intel.com>
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-16-janusz.krzysztofik@linux.intel.com>
 <DFVX33TUJM19.WAFS6MCXBOJR@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jkrzyszt-mobl2.ger.corp.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EA8F87721A
X-Rspamd-Action: no action

Hi Sebastian,

On Friday, 23 January 2026 12:03:45 CET Sebastian Brzezinka wrote:
> Hi Janusz,
>=20
> On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> > In a short listing, information about PCI parents of DRM devices, as we=
ll
> > as about DRM children of PCI GPU devices is now printed.  In a long
> > listing in turn, the latter is also printed.  Apply a similar approach =
to
> > PCIe bridge upstream ports: print information about their PCI GPU child=
ren
> > and also their codenames in both formats, and inform about upstream por=
ts
> > of PCIe bridges found on PCI discrete GPU cards in the short format.
> >
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_device_scan.c | 22 +++++++++++++++++-----
> >  1 file changed, 17 insertions(+), 5 deletions(-)
> >
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index e86da001a9..69ea8d2eaf 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -250,6 +250,8 @@ struct igt_device {
> >  	char *codename; /* For grouping by codename */
> >  	enum dev_type dev_type; /* For grouping by integrated/discrete */
> > =20
> > +	char *pci_gpu; /* Filled for upstream bridge ports */
> > +
> >  	struct igt_list_head link;
> >  };
> > =20
> > @@ -1058,6 +1060,9 @@ static void update_or_add_parent(struct udev *ude=
v,
> >  	igt_assert(bridge_idev);
> > =20
> >  	bridge_idev->dev_type =3D DEVTYPE_BRIDGE;
> > +	bridge_idev->pci_gpu =3D parent_idev->pci_slot_name;
> > +	bridge_idev->codename =3D parent_idev->codename;
> > +	parent_idev->parent =3D bridge_idev;
> I haven=E2=80=99t checked the release process myself. Have you verified t=
hat freeing this
> memory won=E2=80=99t lead to any problems?
>  (Maybe use strdup??)

Indeed, I might have missed something here.  While pci_gpu and parent seem=
=20
safe for me at a first glance, I'm not sure about codename.  Let me have=20
another, closer look at all of them.

Thanks,
Janusz


