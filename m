Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMapI+VREGrgWAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 146565B48E3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1641E10F5CF;
	Fri, 22 May 2026 12:53:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kcore.it header.i=@kcore.it header.b="UnrZa0y6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from spark.kcore.it (spark.kcore.it [49.13.27.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1F110E539;
 Thu, 21 May 2026 17:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kcore.it;
 s=spark; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gtmAPYkpVGVatBCjoKxOfhStCUdrB5GtxSNrliuEqkI=; b=UnrZa0y6DoQmmF6jiDoUILifwS
 qF/uYCkhdGtQbxe+HSKtUp+vAXe6j6jwORr+RoAeVaCkmwV4YCNt/bBdrXIP80AVA6EAP0zGJjBfl
 ujpEcqNKR2DsBD0dzQqjt4r6F65G8Z9X/c4upsDcyvqS6w6XRuoDuKMwNFEdTUrO9ow0=;
Received: from mnencia by spark.kcore.it with local (Exim 4.96)
 (envelope-from <mnencia@kcore.it>) id 1wQ7eD-000MzG-1Y;
 Thu, 21 May 2026 19:57:29 +0200
Date: Thu, 21 May 2026 19:57:29 +0200
From: Marco Nenciarini <mnencia@kcore.it>
To: Jakub Bystron <jb@elitecode.cz>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Aaron Esau <aaron1esau@gmail.com>, Imre Deak <imre.deak@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: Re: [BUG] xe: Meteor Lake 7d55 eDP PHY A/DPLL state mismatch,
 flip_done timeout
Message-ID: <ag9HiZKGsQcBRBot@spark.kcore.it>
References: <TDn3cEkpVu-dBI63qMzn4sYGIkclsctG5pYDF70-dxuekRCixI_FpRQmeJL6UjZH_MtI8PBkjEsJxc93SEV9OmQvlT_CCrD2-qDb8Ss8X-Q=@elitecode.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="YfUaswObbfKc3UX+"
Content-Disposition: inline
In-Reply-To: <TDn3cEkpVu-dBI63qMzn4sYGIkclsctG5pYDF70-dxuekRCixI_FpRQmeJL6UjZH_MtI8PBkjEsJxc93SEV9OmQvlT_CCrD2-qDb8Ss8X-Q=@elitecode.cz>
X-Mailman-Approved-At: Fri, 22 May 2026 12:53:52 +0000
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
X-Spamd-Result: default: False [-1.71 / 15.00];
	SIGNED_PGP(-2.00)[];
	R_DKIM_REJECT(1.00)[kcore.it:s=spark];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kcore.it];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,intel.com,linux.intel.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[mnencia@kcore.it,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kcore.it:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,spark.kcore.it:mid]
X-Rspamd-Queue-Id: 146565B48E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--YfUaswObbfKc3UX+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

I reproduce the same bug on different hardware with the i915 driver:

  Hardware: Dell Pro Max 16 Premium MA16250, BIOS 1.9.0
  CPU: Core Ultra 7 265H (Arrow Lake-H)
  iGPU: 8086:7d51 (different MTL/ARL stepping from your 7d55)
  Kernel: 7.0.7+deb13-amd64 (Debian)
  Driver: i915 (no force_probe), Wayland (GNOME)
  Hybrid: NVIDIA RTX PRO 1000 Blackwell dGPU, open module 595.71.05

Signature is line-for-line identical to yours on the internal eDP
panel:

  i915 0000:00:02.0: [drm] *ERROR* Failed to bring PHY A to idle.
  i915 0000:00:02.0: [drm] *ERROR* PHY A Read 0c70 failed after 3 retries.
  i915 0000:00:02.0: [drm] *ERROR* PHY A Write 0c70 failed after 3 retries.
  i915 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to get act=
ive
  i915 0000:00:02.0: [drm] *ERROR* Timed out waiting for DP idle patterns
  i915 0000:00:02.0: [drm] *ERROR* [CRTC:149:pipe A] flip_done timed out
  i915 0000:00:02.0: [drm] *ERROR* [CRTC:149:pipe A] mismatch in dpll_hw_st=
ate
  i915 0000:00:02.0: [drm] *ERROR* [CRTC:149:pipe A] mismatch in port_clock
                                   (expected 540000, found 61440)
  WARNING ... intel_modeset_verify_crtc+0x325/0x550 [i915]
  WARNING ... verify_single_dpll_state+0x1a2/0x560 [i915]
  i915 0000:00:02.0: [drm] *ERROR* flip_done timed out (x N, every 10 s)
  i915 0000:00:02.0: [drm] PHY A failed to change powerdown state
  WARNING ... intel_disable_transcoder+0x311/0x3c0 [i915]
  i915 0000:00:02.0: [drm] pipe_off wait timed out

Yours fires on xe at the same source line offsets in
intel_modeset_verify_crtc and verify_single_dpll_state. Both drivers
share drivers/gpu/drm/i915/display/, so the bug is in that shared
display IP code rather than in the i915-specific or xe-specific
top-level code.

Deterministic trigger I use:

  DBUS_SESSION_BUS_ADDRESS=3Dunix:path=3D/run/user/$(id -u)/bus \
    notify-send -u critical "wake test" "trigger"

with the laptop locked or DPMS-off. Fires within 29 minutes of boot
on our setup. No s2idle in the loop. Probably reproduces under xe on
your hardware too with the same approach.

Self-recovery: bounded waits eventually time out (3 retries on PHY
MSGBUS, 10 s on flip_done, 100 ms on pipe_off). intel_disable_transcoder
returns with the WARN, Mutter stops retrying for 60 to 100 s, the
PHY hardware heals itself in that idle window, and the next wake-input
(mouse, keyboard, fingerprint) triggers a fresh modeset that succeeds.
Total 2 to 4 minutes of dead screen per occurrence. Not REISUB-class
on this hardware.

Cross-reference: Aaron Esau (Cc'd) posted a 3-patch series targeting
this on intel-gfx@ on 2026-05-09 [1]. The series received pushback
=66rom Imre, Jani N, and Mika arguing for catching the failure pre-commit
so the atomic_commit can fail cleanly at check time rather than
mid-commit. The series is currently stalled. With Jakub's report,
Aaron's report, and mine, the bug reproduces on at least three
independent setups across i915 and xe, ARL-H and MTL, with and without
an active NVIDIA driver.

On the NVIDIA framing: Aaron's cover letter attributed the MSGBUS
unresponsiveness to the NVIDIA dGPU not participating in S0ix
(NVreg_EnableS0ixPowerManagement). That framing has two cracks. My
reproduction has S0ix participation enabled AND NVIDIA runtime PM
fully disabled (NVreg_DynamicPowerManagement=3D0x00, dGPU stays in D0
since boot, never enters D3), yet the bug still fires. Jakub's setup
has xe forcing the iGPU and no active NVIDIA driver in dmesg. So
whatever platform-side condition causes the PHY to wedge, the NVIDIA
module parameters are not the lever, and the bug occurs without an
active NVIDIA driver. The fix has to be on the i915/xe side.

Happy to provide a full diagnostic bundle if useful.

[1] https://lore.kernel.org/intel-gfx/20260509162407.510539-1-aaron1esau@gm=
ail.com/

Regards,
Marco

--=20
Marco Nenciarini - mnencia@kcore.it
7C23 B804 3E65 D298 0A21  B6E2 589F 03F0 1BA5 5038

--YfUaswObbfKc3UX+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEfCO4BD5l0pgKIbbiWJ8D8BulUDgFAmoPR4gACgkQWJ8D8Bul
UDi0cg/+N0Hub2aGtwGvJE4deyfEAlU0HP43KSRAWITBkoqxp0K7isqTWXhhUe9H
IjGfoVkP9sRisiaInlEpXL6Vg6/uRp+5kB1PUoL8+Amoj6mbqejbfEHSfmnrIcaF
R+84D9z9IXSbteEoUOB8hPXzLFcU98squ8Dfshf5HBOZLTLTvZyjuclmSuPKPMhe
pGQMAMVIj3GAYwalbQJKRIxdEnd/BrsBIyCT7CxowdYbk8AzWdoL9oREi/YZDN3y
rSpIaBD5JOiDOgG73IoWUDVrEJ8ShognKtplixcCN1XPElNxbMHEymiwGM/RkQ5d
/2tnj8y/sy1w0JC3+LyC4sW4XORjPHwCU7+5dzUp+kMOlnYIHS1nYsXWuimw96vM
zLZr2+j6u5+alhkz4cP84qJy7jcXuA7Oy/AhQC+sa4k+zieaKRwunrSa2GKuc8zW
GgxWKonTq2uKj6XQYX99ickqUawqU9/LascoANWeWHciZg9ArrS7opNjEsGSoKq5
bVfm2eWclCjNZgYidwnsisROX1P/KhX44kfgGC0ZUJ6PqALj+y6N/2oWf1g4hL8T
czS+jt8FbVsNL5Hp++VIe0bu0JSSW1VjeufIRUEuXNp9NIv26LffZP1saVWs0Fo5
J9c2SoG5rWBn/ojG3zblUbA9PEIsyapqUp9vS7hO6l/uU8LRSuM=
=AALC
-----END PGP SIGNATURE-----

--YfUaswObbfKc3UX+--
