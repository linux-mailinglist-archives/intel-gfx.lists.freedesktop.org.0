Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG/BISHdgGnMBwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 18:21:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7DECF869
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 18:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D00610E515;
	Mon,  2 Feb 2026 17:21:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bt8AD1EG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B5610E1B4;
 Mon,  2 Feb 2026 17:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770052891; x=1801588891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndXsjL8euQWQHw6KVXGoSgnGy/CUTJCJJfMsYtQaNvs=;
 b=Bt8AD1EGUEsA7Tn+C2ZrHjAvsZcwQ6ygYj0I76c3NbHAgPi5W/7VCLou
 RU3t82MXzcGuoju2A4S/2940wTCoEaW9A3ibfqk9fb2gIBkD3tYcuiFeu
 Qnn3OLiRYK0LJCR1sr6Jatw71a6Giw3G2g90wG7vczbndqAdP+JoZLNTi
 9THrJUD5LwnqB8u1fHB2GSY1/HDJWe7U9TyGmRiXPDBA8/wQDMjq+GQmW
 c53JI/XVdrM/T9xS/l5mTZ92G7LI1HygWLT4XsFh6UDljCs+KQLvxUBWo
 Gl0xerUp3gPC2osp27MwyzZfFDGigF7lM9LVOEO9Ln1ohJ65+7N9QuOk3 g==;
X-CSE-ConnectionGUID: tpZYZnfnS8yuOxCAIOn0XQ==
X-CSE-MsgGUID: uAf/u5wxSUKFRO7qrPyqWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71124424"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71124424"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 09:21:31 -0800
X-CSE-ConnectionGUID: Wj5YVyu7RA+Tabdkyt8OIw==
X-CSE-MsgGUID: XCl1YKtSQrmfMyj9EwOhXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209585959"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.168])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 09:21:29 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v3 6/6] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Date: Mon, 02 Feb 2026 18:21:26 +0100
Message-ID: <3833156.RUnXabflUD@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DG11TIYPUWHH.1SQKHOBSDKJEF@intel.com>
References: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
 <20260128161041.225652-14-janusz.krzysztofik@linux.intel.com>
 <DG11TIYPUWHH.1SQKHOBSDKJEF@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: BF7DECF869
X-Rspamd-Action: no action

On Thursday, 29 January 2026 12:49:39 CET Sebastian Brzezinka wrote:
> Hi Janusz,
>=20
> On Wed Jan 28, 2026 at 5:09 PM CET, Janusz Krzysztofik wrote:
> > In a short listing, lsgpu prints a sysfs path of a PCI GPU parent as a
> > local attribute of a DRM device.  However, if that's a discrete GPU and
> > its associated PCIe upstream bridge port has been identified, no
> > information on that bridge is listed among the GPU attributes.  Follow =
the
> > pattern used with DRM devices and also show a PCI slot of the bridge po=
rt
> > as a local attribute of the discrete GPU device.
> >
> > Moreover, in both short and detailed listings, local attributes intended
> > for providing device names of GPU associated DRM devices and the GPU
> > codename are also printed as attributes of related PCIe upstream bridge
> > port, however, the DRM device names are shown as (null), and the codena=
me
> > attribute provides raw vendor:device codes of the bridge itself.  Repla=
ce
> > those with PCI slot and codename of the GPU device.
> >
> > v2: Allocate memory to local attributes of a bridge for safety (Sebasti=
an),
> >   - merge with a formerly separate patch "lib/igt_device_scan: Don't pr=
int
> >     bridge not applicable attributes" (Sebastian),
> >   - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.
> >
> > Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_device_scan.c | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index f4d2eb6568..96bf0e359d 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -249,6 +249,8 @@ struct igt_device {
> >  	char *codename; /* For grouping by codename */
> >  	enum dev_type dev_type; /* For grouping by integrated/discrete */
> > =20
> > +	char *pci_gpu; /* Filled for upstream bridge ports */
> > +
> >  	struct igt_list_head link;
> >  };
> > =20
> > @@ -1063,6 +1065,9 @@ static void update_or_add_parent(struct udev *ude=
v,
> > =20
> >  	/* override DEVTYPE_INTEGRATED so link attributes won't be omitted */
> >  	bridge_idev->dev_type =3D DEVTYPE_ALL;
> > +	bridge_idev->pci_gpu =3D strdup(parent_idev->pci_slot_name);
> > +	bridge_idev->codename =3D strdup(parent_idev->codename);
> Releasing memory here is safer, but we must ensure
> igt_device_new_from_udev hasn't already filled the codename otherwise,
> the original pointer will be lost.
>=20
> I=E2=80=99m thinking about how to refactor these functions to make them
> cleaner. They=E2=80=99re a bit cluttered right now since the 'find' and
> 'update' logic are merged together. This might be outside the scope
> of your current patches, but the memory management is becoming quite
> confusing. Unfortunately, there isn't an easy way to move this logic
> into igt_device_new_from_udev right now.

I've had another look at it.  We could pass a flag that says that's a bridg=
e,=20
not a GPU, but that's not sufficient.  It could be used for selecting corre=
ct=20
dev_type for the bridge, but if we also wanted igt_device_new_from_udev() t=
o=20
populated codename with a copy of that of the GPU then also that data would=
=20
have to be passed.  OTOH, update_or_add_parent() never fully relied on=20
igt_device_new_from_udev() populating all attributes of a GPU parent and=20
handled some, e.g. drm_dev and drm_render, locally, then I think we can tak=
e=20
a similar approach to a bridge sub-parent.  As I stated before, the only no=
n-
trivial case is the already populated codename, but I'll fix its handling.

Thanks,
Janusz

>=20
> > +	parent_idev->parent =3D bridge_idev;
> >  }
> > =20
> >  static struct igt_device *duplicate_device(struct igt_device *dev) {
> > @@ -1234,6 +1239,7 @@ static void igt_device_free(struct igt_device *de=
v)
> >  	free(dev->device);
> >  	free(dev->driver);
> >  	free(dev->pci_slot_name);
> > +	free(dev->pci_gpu);
> It could be unalocated memory.
>=20
>=20




