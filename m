Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOg/O2jqAWpHmQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733C15105BC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E54010E79C;
	Mon, 11 May 2026 14:40:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kcore.it header.i=@kcore.it header.b="WYXmb1qC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 984 seconds by postgrey-1.36 at gabe;
 Sun, 10 May 2026 17:46:38 UTC
Received: from spark.kcore.it (spark.kcore.it [49.13.27.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9F410E133;
 Sun, 10 May 2026 17:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kcore.it;
 s=spark; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TJ58bbmrh+pyeR1MRXgtBNPGCye/bC7K9b1jnY3KMLk=; b=WYXmb1qCPjPTtZM1Q/ywAGdcx5
 p/7/ajKQNAjoaf+Sy40DyWLpxQwen6YuyortBavxEosoHFMCbUXNEZFM8zTiom99HyDHvYIKus1KI
 H4Cm0cPBZP4zTx0QSt6Y6RBOOPdjPPFJu7Jvoj5sHXjl/D8Xi3eurMAJ9Lw1oyG+lUMQ=;
Received: from mnencia by spark.kcore.it with local (Exim 4.96)
 (envelope-from <mnencia@kcore.it>) id 1wM7yj-000BFA-2l;
 Sun, 10 May 2026 19:30:09 +0200
Date: Sun, 10 May 2026 19:30:09 +0200
From: Marco Nenciarini <mnencia@kcore.it>
To: Aaron Esau <aaron1esau@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Mika Kahola <mika.kahola@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on
 Meteor Lake
Message-ID: <agDAocAQF_wpZYs5@spark.kcore.it>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="H+WTlR/4MbHBIrr6"
Content-Disposition: inline
In-Reply-To: <20260509162407.510539-1-aaron1esau@gmail.com>
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 733C15105BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.71 / 15.00];
	SIGNED_PGP(-2.00)[];
	R_DKIM_REJECT(1.00)[kcore.it:s=spark];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[kcore.it];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.924];
	FROM_NEQ_ENVFROM(0.00)[mnencia@kcore.it,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kcore.it:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kcore.it:email,spark.kcore.it:mid]
X-Rspamd-Action: no action


--H+WTlR/4MbHBIrr6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Aaron,

Short version: same regression reproduces on Arrow Lake-P with a
different NVIDIA SKU, and NVreg_EnableS0ixPowerManagement=3D1 is already
set on this machine. The S0ix knob alone is not sufficient to suppress
the race here, so the i915 side of the fix matters even on systems
where the NVIDIA workaround is in place.

Hardware:
  Dell Pro Max 16 Premium (MA16250)
  Intel Arrow Lake-P, Arc Pro 140T iGPU [8086:7d51]
  NVIDIA RTX PRO 1000 Blackwell [10de:2db8]
  NVIDIA driver 595.71.05 (open kernel modules)

Kernel: 7.0.4+deb13-amd64 (Debian 7.0.4-1~bpo13+1).

NVIDIA module options:
  NVreg_EnableS0ixPowerManagement=3D1
  NVreg_PreserveVideoMemoryAllocations=3D1
  NVreg_DynamicPowerManagement=3D0x00

Representative trace from a recent boot, ~45 minutes in, on the
internal eDP panel. The trigger was a VT switch out of the graphical
session via systemd-logind (vt_ioctl, fbcon_switch,
intel_fbdev_pan_display), not a direct s2idle resume; a suspend/resume
cycle had occurred earlier in the same boot:

  i915 0000:00:02.0: [drm] *ERROR* Failed to bring PHY A to idle.
  i915 0000:00:02.0: [drm] *ERROR* PHY A Read 0c70 failed after 3 retries.
  i915 0000:00:02.0: [drm] *ERROR* PHY A Write 0c70 failed after 3 retries.
  i915 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to get act=
ive
  i915 0000:00:02.0: [drm] *ERROR* Timed out waiting for DP idle patterns
  i915 0000:00:02.0: [drm] *ERROR* [CRTC:149:pipe A] flip_done timed out
  i915 0000:00:02.0: [drm] *ERROR* [CRTC:149:pipe A] mismatch in port_clock
                                   (expected 540000, found 61440)
  WARNING ... intel_modeset_verify_crtc+0x325/0x550 [i915]
  WARNING ... verify_single_dpll_state+0x1a2/0x560 [i915]

After this point, every suspend/resume cycle in the same boot is
followed by [CONNECTOR:506:eDP-1] commit wait timed out, which is the
symptom your series is meant to make the driver fail cleanly on.

Happy to test the series on this hardware. Let me know whether you
prefer it tested against the current posting on drm-tip, or if a v2 is
in flight.

One small note: the cover-letter title says Meteor Lake, but the
cx0/C10 PHY path is shared with Arrow Lake-P (and Lunar Lake), so the
scope of the fix is wider than the title suggests. Worth widening in
v2 if you respin.

Thanks,
Marco

--=20
Marco Nenciarini - mnencia@kcore.it
7C23 B804 3E65 D298 0A21  B6E2 589F 03F0 1BA5 5038

--H+WTlR/4MbHBIrr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEfCO4BD5l0pgKIbbiWJ8D8BulUDgFAmoAwKAACgkQWJ8D8Bul
UDgNlBAAjBBS1Ph+31LDOsuy/1ezA8j6S6cHo0pJWtgSNqNoQUBsfj5CrfiAHB4P
HnK65pEuyUhAPSK3SijI2lGNs5qlHiMvdcs+vY4sU6OiT7DW4oQ1cUv8v6V981zY
yZKfA0eeJbp/kxGgEKddCwD7qaZSxv3HFSUk/Xb4niR8Ma1alxwyrcQGpuL1aQ1E
vgEy21nRy+tqIiowbKKmEqyvDnNEEUxWw60XZR/sr/3JzzVhzqrYeOjqSpKT7EYZ
eix6asWQnLsEuQ5DimWBR4G8DFDDD+2RtwXHoo9pp/jhLLDEk/9hZptQRfdz6Cug
gJQpx1TalvftNOUI9kp80cqRBNI/UfMdOuMv97p8ptKmUodnjFe/b282DvEB5eH8
nKxdumfg/3OdRSOmM9OrFhCIMrYza8yn9ZNFWGPybZi0RG0GJSI3n+aIOoAWzmQo
89JFFmU1aGrPLA5kJbyLaX5GDDaBeXQ1vfSgqB9Vuk5QXRETh9fwWdS2/WobTR+7
IlVXg8r1v8lkiUeiqFLs6yQfzhZnzFZZPDt4EClYp7IiHathwmhmQaHhbwM2hyp/
p1lDuyagjOYykvWHMmD0402/EpReSzeQ0Qt+gOUVAX9yuzwS7efq9hwEAXlHitSp
uMVtVusODO2rX68NXXKduB6QTZspNXx9vzyS6Ac/uKwELP+vHH8=
=Dt7q
-----END PGP SIGNATURE-----

--H+WTlR/4MbHBIrr6--
