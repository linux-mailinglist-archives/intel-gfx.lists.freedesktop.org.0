Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7218C4E9E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 11:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA9B10E0A1;
	Tue, 14 May 2024 09:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkul6A1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB0510E0A1;
 Tue, 14 May 2024 09:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715678767; x=1747214767;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:to:cc:from:message-id:date;
 bh=sIprpNqmQGNjW2B629cp5jAMrSJB1dAwE26MZ27NsVI=;
 b=gkul6A1L2R1uBpJ3fjQTDmq0XFSt5X9b3odQSnkyiqGLAxzF+HpEs9Bf
 Apvd5JH841ZiYHiNYgab91KvkDoqD5mRblzzrcE85s4Np+sW1SPTlwYi3
 WdWfYaaP8sD6Ck3mNZaWBPP9/JI0RzB3aUbjZOKcOEYg3DACAY2+e4PZd
 lCGLYCS+97NCuFv0UgNUlwxZuqx8zshKxzl4cR8DdYspIIVdi949aiVoi
 WHvXvzSGToNtAptDJOYxwL79pP95nXdsO/Ua1h+YzWGjMToITMfLI4jbY
 Z6KY1wZK1J/pMugn8A75HfsL8hHf+6tOxW9iNT5d9rmN0Ov5uXQvp6mrO g==;
X-CSE-ConnectionGUID: 09xcFAI6TaC/ICp32jr8LQ==
X-CSE-MsgGUID: XS4Kc3ShSnOfBg26oQjoxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11471813"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11471813"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 02:26:06 -0700
X-CSE-ConnectionGUID: mwWDS7gBRaSZUk8U4+/LIg==
X-CSE-MsgGUID: C160X4DrQzuag88RUpw5hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35327286"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 02:26:01 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <22290768.EfDdHjke4D@mizzik>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
 <22290768.EfDdHjke4D@mizzik>
Subject: Re: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS
 Modifier for Xe2
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Kenneth Graunke <kenneth.w.graunke@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, "Chery,
 Nanley G" <nanley.g.chery@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, "Souza, Jose" <jose.souza@intel.com>, "Mathew,
 Alwin" <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <171567875573.17841.1431042175236504579@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 14 May 2024 12:25:55 +0300
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

Quoting Kenneth Graunke (2024-05-11 03:58:34)
> On Tuesday, May 7, 2024 3:56:57=E2=80=AFPM PDT Matt Roper wrote:
> > On Mon, May 06, 2024 at 09:52:35PM +0300, Juha-Pekka Heikkila wrote:
> > > These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS modifier, whi=
ch,
> > > from the kernel's perspective, behaves similarly to=20
> `I915_FORMAT_MOD_4_TILED`.
> > > This new modifier is primarily intended for user space to effectively=
=20
> monitor
> > > compression status, especially when dealing with a mix of compressed =
and
> > > uncompressed buffers.
> > >=20
> > > The addition of this modifier facilitates user space in managing=20
> compression
> > > status, particularly when utilizing both compressed and uncompressed =

> buffers
> > > concurrently. To leverage compression for these buffers, user space
> > > applications must configure the appropriate Page Attribute Table (PAT=
)=20
> index.
> > > Display engine will treat all Tile4 as if it were compressed under all
> > > circumstances on Xe2 architecture.
> >=20
> > I may have missed some discussion about this, but I thought the previous
> > consensus was that we didn't want/need new modifiers for compression on
> > Xe2?  If a userspace client (or the display hardware) receives a buffer
> > of unknown origin and unknown compression status, it's always fine to
> > select a compressed PAT when binding the buffer to read since even for
> > uncompressed buffers the CCS metadata will accurately reflect the
> > compression status.  Unlike Xe1, where generating content without
> > compression enabled would leave random garbage in the FlatCCS area, Xe2
> > will set the corresponding FlatCCS to '0x0' for each block, indicating
> > uncompressed data.
> >=20
> > Can you explain more what the benefit of handling these modifiers
> > explicitly is?
> >=20
> >=20
> > Matt
>=20
> Thanks, Matt!  I'm a bit late in getting up to speed with the Xe2 compres=
sion=20
> changes; this is really good information.
>=20
> As I understand it...all blocks on the GPU behave in the way you mentione=
d,=20
> where generating uncompressed data via the GPU will set FlatCCS =3D 0, so=
 you=20
> can assume a compressed PAT entry and everything works.
>=20
> One snag is...I've heard that CPU access doesn't work that way.  So, if y=
ou=20
> mmap a buffer on the CPU, and write data with the CPU, then I think we're=
 back=20
> to the "FlatCCS contains uninitialized garbage" case, where it's unsafe t=
o=20
> assume a compressed PAT.  And... we don't really know when sharing buffer=
s=20
> whether the other side is going to want to do CPU access.

I think the previous discussion has specifically happened in the context of
dma-buf, so not only CPU but other GPUs/accelerators/decoders/devices in the
system are also relevant.

It boils down to the fact that when exporting a dma-buf, one can't know it =
will
be consumed only by the same GPU (or other device for that matter) unless t=
here
is an explicit negotiation between exporter and importers.

> It would be really nice to assume compression by default, though, which g=
ot me=20
> thinking: if we mmap a buffer via DRM_XE_GEM_MMAP_OFFSET, could xe.ko dis=
able=20
> compression for us?  So, resolve any outstanding CCS data, and then switc=
h any=20
> PAT entries to uncompressed.  Mapping would block until that resolve is d=
one. =20
> It could leave compression off forever (once you CPU map a buffer, it's n=
ever=20
> compressed again).  Or it could turn CCS back on when map count reaches 0=
 (but=20
> frankly I'm not sure that's terribly important, and sounds more complex).

This would only really work for a single device but the dma-buf is
specifically targeting more generic sharing. There's no built-in mechanism
to limit the sharing to subset of devices without explicit negotiation
between the exporter and importers.

So I think the "by default" mode needs to be interoperable, and the
explicit negotiation can then use less compatible formats given those FD
are never passed to importers that were not part of the negotiation.

> As I understand it, at least on discrete GPUs, the kernel already has to =
do=20
> something similar for eviction, when migrating BOs to system memory (whic=
h=20
> doesn't support compression).  So this would be doing basically the same =

> "resolve and disable CCS" step the kernel can presumably already do, but =
now=20
> on mmap as well.

So far the eviction strategy has been to copy both the backing store and
compression bits in raw form. With Xe2 it would indeed be possible to do
an implicit resolve IFF the buffer has not been shared to someone who doesn=
't
understand compression and might have left garbage in the CCS bits.

When evicting in raw form, kernel doesn't have to know if the CCS bits
are garbage or not on any given moment.

Regards, Joonas

>=20
> What do you think?  Viable?  Crazy?  Have I missed something?
>=20
> --Ken
