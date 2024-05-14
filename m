Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC1A8C59E9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 18:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4A210E506;
	Tue, 14 May 2024 16:51:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkYXQBxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A00610E042;
 Tue, 14 May 2024 16:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715705476; x=1747241476;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+aZzvneH3vPsoPmU+P4CBuWmsn3u6mc5w496Eao63Hc=;
 b=YkYXQBxMlpdwtaXZN8sM4y3QN6UT2gEnIU5wLS/Ymil6d6wn5RXJHxhq
 p6Z93KYCqbrcWBvTlphux2feEFJCDi34LzKkDZb2eryJkx9Z9CufIp/MN
 srmdoI83Xn1UtqBBTzeXxn5m3yRYtYheCcg656ylShL0An+8Zqz/sn9cO
 m5Nx6TVLrk6MjEsGTTIg0h1GvOdD3xuyGTGpQD3q8C3H2/MOG9k0vKvUN
 ye7ai8yKjvhaCqcDtO5p61z95ObcMkbJccpghlTlDPVevEIt/hy0NgiWC
 MgBvsU2NVqe75ld2FPHPbdyOOEWzAIgm+5pUw2acu5YR9YwHjsdl734Cg A==;
X-CSE-ConnectionGUID: EcNVQCNRRjyu1slr8LfQaw==
X-CSE-MsgGUID: wet+Rf9WQcepg3e79nXjGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15525951"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="15525951"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 09:51:15 -0700
X-CSE-ConnectionGUID: PE3Lzf/7TueFp9j/v0DIjA==
X-CSE-MsgGUID: 5daZfQndS8ec/UxYSrZ7+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35509238"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO [10.245.246.104])
 ([10.245.246.104])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 09:51:13 -0700
Message-ID: <208ba57378377f8815a7cf07b40ac9ee1ddaaa92.camel@linux.intel.com>
Subject: Re: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS
 Modifier for Xe2
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Juha-Pekka Heikkila
 <juhapekka.heikkila@gmail.com>, Kenneth Graunke
 <kenneth.w.graunke@intel.com>,  Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, "Chery,
 Nanley G" <nanley.g.chery@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Souza, Jose" <jose.souza@intel.com>, "Mathew,
 Alwin" <alwin.mathew@intel.com>, "Zhang, Jianxun"
 <jianxun.zhang@intel.com>, "Syrjala, Ville"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Tue, 14 May 2024 18:51:09 +0200
In-Reply-To: <171567875573.17841.1431042175236504579@jlahtine-mobl.ger.corp.intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
 <22290768.EfDdHjke4D@mizzik>
 <171567875573.17841.1431042175236504579@jlahtine-mobl.ger.corp.intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
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

On Tue, 2024-05-14 at 12:25 +0300, Joonas Lahtinen wrote:
> Quoting Kenneth Graunke (2024-05-11 03:58:34)
> > On Tuesday, May 7, 2024 3:56:57=E2=80=AFPM PDT Matt Roper wrote:
> > > On Mon, May 06, 2024 at 09:52:35PM +0300, Juha-Pekka Heikkila
> > > wrote:
> > > > These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS
> > > > modifier, which,
> > > > from the kernel's perspective, behaves similarly to=20
> > `I915_FORMAT_MOD_4_TILED`.
> > > > This new modifier is primarily intended for user space to
> > > > effectively=20
> > monitor
> > > > compression status, especially when dealing with a mix of
> > > > compressed and
> > > > uncompressed buffers.
> > > >=20
> > > > The addition of this modifier facilitates user space in
> > > > managing=20
> > compression
> > > > status, particularly when utilizing both compressed and
> > > > uncompressed=20
> > buffers
> > > > concurrently. To leverage compression for these buffers, user
> > > > space
> > > > applications must configure the appropriate Page Attribute
> > > > Table (PAT)=20
> > index.
> > > > Display engine will treat all Tile4 as if it were compressed
> > > > under all
> > > > circumstances on Xe2 architecture.
> > >=20
> > > I may have missed some discussion about this, but I thought the
> > > previous
> > > consensus was that we didn't want/need new modifiers for
> > > compression on
> > > Xe2?=C2=A0 If a userspace client (or the display hardware) receives a
> > > buffer
> > > of unknown origin and unknown compression status, it's always
> > > fine to
> > > select a compressed PAT when binding the buffer to read since
> > > even for
> > > uncompressed buffers the CCS metadata will accurately reflect the
> > > compression status.=C2=A0 Unlike Xe1, where generating content withou=
t
> > > compression enabled would leave random garbage in the FlatCCS
> > > area, Xe2
> > > will set the corresponding FlatCCS to '0x0' for each block,
> > > indicating
> > > uncompressed data.
> > >=20
> > > Can you explain more what the benefit of handling these modifiers
> > > explicitly is?
> > >=20
> > >=20
> > > Matt
> >=20
> > Thanks, Matt!=C2=A0 I'm a bit late in getting up to speed with the Xe2
> > compression=20
> > changes; this is really good information.
> >=20
> > As I understand it...all blocks on the GPU behave in the way you
> > mentioned,=20
> > where generating uncompressed data via the GPU will set FlatCCS =3D
> > 0, so you=20
> > can assume a compressed PAT entry and everything works.
> >=20
> > One snag is...I've heard that CPU access doesn't work that way.=C2=A0
> > So, if you=20
> > mmap a buffer on the CPU, and write data with the CPU, then I think
> > we're back=20
> > to the "FlatCCS contains uninitialized garbage" case, where it's
> > unsafe to=20
> > assume a compressed PAT.=C2=A0 And... we don't really know when sharing
> > buffers=20
> > whether the other side is going to want to do CPU access.
>=20
> I think the previous discussion has specifically happened in the
> context of
> dma-buf, so not only CPU but other GPUs/accelerators/decoders/devices
> in the
> system are also relevant.
>=20
> It boils down to the fact that when exporting a dma-buf, one can't
> know it will
> be consumed only by the same GPU (or other device for that matter)
> unless there
> is an explicit negotiation between exporter and importers.
>=20
> > It would be really nice to assume compression by default, though,
> > which got me=20
> > thinking: if we mmap a buffer via DRM_XE_GEM_MMAP_OFFSET, could
> > xe.ko disable=20
> > compression for us?=C2=A0 So, resolve any outstanding CCS data, and the=
n
> > switch any=20
> > PAT entries to uncompressed.=C2=A0 Mapping would block until that
> > resolve is done.=C2=A0=20
> > It could leave compression off forever (once you CPU map a buffer,
> > it's never=20
> > compressed again).=C2=A0 Or it could turn CCS back on when map count
> > reaches 0 (but=20
> > frankly I'm not sure that's terribly important, and sounds more
> > complex).
>=20
> This would only really work for a single device but the dma-buf is
> specifically targeting more generic sharing. There's no built-in
> mechanism
> to limit the sharing to subset of devices without explicit
> negotiation
> between the exporter and importers.
>=20
> So I think the "by default" mode needs to be interoperable, and the
> explicit negotiation can then use less compatible formats given those
> FD
> are never passed to importers that were not part of the negotiation.
>=20
> > As I understand it, at least on discrete GPUs, the kernel already
> > has to do=20
> > something similar for eviction, when migrating BOs to system memory
> > (which=20
> > doesn't support compression).=C2=A0 So this would be doing basically th=
e
> > same=20
> > "resolve and disable CCS" step the kernel can presumably already
> > do, but now=20
> > on mmap as well.
>=20
> So far the eviction strategy has been to copy both the backing store
> and
> compression bits in raw form. With Xe2 it would indeed be possible to
> do
> an implicit resolve IFF the buffer has not been shared to someone who
> doesn't
> understand compression and might have left garbage in the CCS bits.
>=20
> When evicting in raw form, kernel doesn't have to know if the CCS
> bits
> are garbage or not on any given moment.
>=20
> Regards, Joonas

Just a follow-up comment (TBC), IF we're going for the everything-is-
compressed approach, I think there are some considerations to be made:

dma-buf exports to foreign devices need to resolve at map_attachment
time. Foreign devices are all devices that can't interpret the
compressed content.
dma-buf mmaps need to resolve. IIRC Could be implemented in the
DMA_BUF_IOCTL_SYNC callbacks that wrap cpu access.
dma-buf imports from foreign devices need to never use compressed PAT
for writing. Should KMD enforce this? Implicitly? Explicitly? I don't
see how UMD could know whether the imported dma-buf is from a foreign
device.

For mmaps of buffer objects of local device a resolve is needed. Having
KMD do that on a pagefault-basis is definitely possible, but will most
likely be terribly inefficient. Better to leave that to UMD?

/Thomas

>=20
> >=20
> > What do you think?=C2=A0 Viable?=C2=A0 Crazy?=C2=A0 Have I missed somet=
hing?
> >=20
> > --Ken

