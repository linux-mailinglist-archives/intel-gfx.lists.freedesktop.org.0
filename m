Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HrPCKofhQ2rekwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:32:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F466E5F7C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:32:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JJJIyeMh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AAE10EB6B;
	Tue, 30 Jun 2026 15:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7865510EB48;
 Tue, 30 Jun 2026 15:32:19 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 87C2560018;
 Tue, 30 Jun 2026 15:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B4991F000E9;
 Tue, 30 Jun 2026 15:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782833538;
 bh=B3E/VMQCEgyj/nixWkmIaQ5sXftrXDwGEkHIWsF2cz4=;
 h=Date:From:To:Cc:Subject;
 b=JJJIyeMhqC5QLBZ3U6PW+xxJNgI3SHGOm8bOo5YQu2f2RcG5Wehs7ygVd4dgOt9qu
 6picrqxCwv5Sgqv3+Hjbk4tvWsza4GnmtdaCs7LyN0g+XPaCFZK2R7JEq6JiaE+FhE
 JLe26ExWavZD12qf6o2rnr1NUFZsKH69JBB2Q0UMmCwT/SdipdlJvoEpAJiD3Z84dO
 u7JOnvT7R4im8Wgg5JSjbA+rA5XnD0J5+N6RL3eIcaAA+N/Dvr0Bewh48Aw1I27xSx
 wsFE3nWnVihUurMjfng5iv9yLU3XpouqDPUqstfQHeT7NzJ6PKxJ75K33sEZQUB/Hi
 ukdt/8YJAvviA==
Date: Tue, 30 Jun 2026 16:32:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: linux-next: manual merge of the drm-intel tree with the origin tree
Message-ID: <akPhfS7S4guPimFF@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="x8wgJNr9N82r5WRp"
Content-Disposition: inline
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
X-Spamd-Result: default: False [-3.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54F466E5F7C


--x8wgJNr9N82r5WRp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/display/intel_cdclk.c

between commit:

  2ee8dbd880b14 ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full =
PLL re-enable")

=66rom the origin tree and commits:

  3f9de66f8acbf ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full =
PLL re-enable")
  795e90164a3b8 ("drm/i915/cdclk: Print the reason for the CDCLK sanitizati=
on")
  67d77d9472c66 ("drm/i915/cdclk: Introduce bxt_cdclk_cd2x_pipe_mask() and =
use it")
  8984b402e02ff ("drm/i915/cdclk: Use the TGL+ CD2x pipe select bits also o=
n ICL")

=66rom the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --combined drivers/gpu/drm/i915/display/intel_cdclk.c
index 7bc9b956554ba,d3c5e3438d192..0000000000000
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@@ -1229,23 -1229,28 +1229,28 @@@ static void skl_set_cdclk(struct intel_
 =20
  static void skl_sanitize_cdclk(struct intel_display *display)
  {
- 	u32 cdctl, expected;
+ 	u32 cdctl, expected, swf18;
 =20
  	/*
  	 * check if the pre-os initialized the display
  	 * There is SWF18 scratchpad register defined which is set by the
  	 * pre-os which can be used by the OS drivers to check the status
  	 */
- 	if ((intel_de_read(display, SWF_ILK(0x18)) & 0x00FFFFFF) =3D=3D 0)
+ 	swf18 =3D intel_de_read(display, SWF_ILK(0x18));
+ 	if ((swf18 & 0x00FFFFFF) =3D=3D 0) {
+ 		drm_dbg_kms(display->drm, "Sanitizing CDCLK due to SWF18 0x%x\n", swf18=
);
  		goto sanitize;
+ 	}
 =20
  	intel_update_cdclk(display);
  	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 =20
  	/* Is PLL enabled and locked ? */
  	if (display->cdclk.hw.vco =3D=3D 0 ||
- 	    display->cdclk.hw.cdclk =3D=3D display->cdclk.hw.bypass)
+ 	    display->cdclk.hw.cdclk =3D=3D display->cdclk.hw.bypass) {
+ 		drm_dbg_kms(display->drm, "Sanitizing CDCLK due to PLL not enabled/lock=
ed\n");
  		goto sanitize;
+ 	}
 =20
  	/* DPLL okay; verify the cdclock
  	 *
@@@ -1261,8 -1266,11 +1266,11 @@@
  		cdctl &=3D ~CDCLK_FREQ_DECIMAL_MASK;
  		cdctl |=3D expected & CDCLK_FREQ_DECIMAL_MASK;
 =20
- 		if (cdctl !=3D expected)
+ 		if (cdctl !=3D expected) {
+ 			drm_dbg_kms(display->drm, "Sanitizing CDCLK due to CDCLK_CTL 0x%x, exp=
ected 0x%x)\n",
+ 				    intel_de_read(display, CDCLK_CTL), expected);
  			goto sanitize;
+ 		}
 =20
  		drm_dbg_kms(display->drm, "Sanitizing CDCLK decimal divider (CDCLK_CTL =
0x%x, expected 0x%x)\n",
  			    intel_de_read(display, CDCLK_CTL), expected);
@@@ -1274,8 -1282,6 +1282,6 @@@
  	return;
 =20
  sanitize:
- 	drm_dbg_kms(display->drm, "Sanitizing cdclk programmed by pre-os\n");
-=20
  	/* force cdclk programming */
  	display->cdclk.hw.cdclk =3D 0;
  	/* force full PLL disable + enable */
@@@ -1938,14 -1944,17 +1944,17 @@@ static void adlp_cdclk_pll_crawl(struc
  	display->cdclk.hw.vco =3D vco;
  }
 =20
+ static u32 bxt_cdclk_cd2x_pipe_mask(struct intel_display *display)
+ {
+ 	if (DISPLAY_VER(display) >=3D 11)
+ 		return ICL_CDCLK_CD2X_PIPE_MASK;
+ 	else
+ 		return BXT_CDCLK_CD2X_PIPE_MASK;
+ }
+=20
  static u32 bxt_cdclk_cd2x_pipe(struct intel_display *display, enum pipe p=
ipe)
  {
- 	if (DISPLAY_VER(display) >=3D 12) {
- 		if (pipe =3D=3D INVALID_PIPE)
- 			return TGL_CDCLK_CD2X_PIPE_NONE;
- 		else
- 			return TGL_CDCLK_CD2X_PIPE(pipe);
- 	} else if (DISPLAY_VER(display) >=3D 11) {
+ 	if (DISPLAY_VER(display) >=3D 11) {
  		if (pipe =3D=3D INVALID_PIPE)
  			return ICL_CDCLK_CD2X_PIPE_NONE;
  		else
@@@ -2340,18 -2349,24 +2349,24 @@@ static void bxt_sanitize_cdclk(struct i
  	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 =20
  	if (display->cdclk.hw.vco =3D=3D 0 ||
- 	    display->cdclk.hw.cdclk =3D=3D display->cdclk.hw.bypass)
+ 	    display->cdclk.hw.cdclk =3D=3D display->cdclk.hw.bypass) {
+ 		drm_dbg_kms(display->drm, "Sanitizing CDCLK due to PLL not enabled/lock=
ed\n");
  		goto sanitize;
+ 	}
 =20
  	/* Make sure this is a legal cdclk value for the platform */
  	cdclk =3D bxt_calc_cdclk(display, display->cdclk.hw.cdclk);
- 	if (cdclk !=3D display->cdclk.hw.cdclk)
+ 	if (cdclk !=3D display->cdclk.hw.cdclk) {
+ 		drm_dbg_kms(display->drm, "Sanitizing CDCLK due to bad CDCLK frequency\=
n");
  		goto sanitize;
+ 	}
 =20
  	/* Make sure the VCO is correct for the cdclk */
  	vco =3D bxt_calc_cdclk_pll_vco(display, cdclk);
- 	if (vco !=3D display->cdclk.hw.vco)
+ 	if (vco !=3D display->cdclk.hw.vco) {
+ 		drm_dbg_kms(display->drm, "Sanitizing CDCLK due to bad VCO frequency\n"=
);
  		goto sanitize;
+ 	}
 =20
  	/*
  	 * Some BIOS versions leave an incorrect decimal frequency value and
@@@ -2366,7 -2381,7 +2381,7 @@@
  	 * dividers both syncing to an active pipe, or asynchronously
  	 * (PIPE_NONE).
  	 */
- 	cdctl &=3D ~bxt_cdclk_cd2x_pipe(display, INVALID_PIPE);
+ 	cdctl &=3D ~bxt_cdclk_cd2x_pipe_mask(display);
  	cdctl |=3D bxt_cdclk_cd2x_pipe(display, INVALID_PIPE);
 =20
  	if (cdctl !=3D expected) {
@@@ -2375,8 -2390,11 +2390,11 @@@
  			cdctl |=3D expected & CDCLK_FREQ_DECIMAL_MASK;
  		}
 =20
- 		if (cdctl !=3D expected)
+ 		if (cdctl !=3D expected) {
+ 			drm_dbg_kms(display->drm, "Sanitizing CDCLK due to CDCLK_CTL 0x%x, exp=
ected 0x%x\n",
+ 				    intel_de_read(display, CDCLK_CTL), expected);
  			goto sanitize;
+ 		}
 =20
  		drm_dbg_kms(display->drm, "Sanitizing CDCLK decimal divider (CDCLK_CTL =
0x%x, expected 0x%x)\n",
  			    intel_de_read(display, CDCLK_CTL), expected);
@@@ -2388,8 -2406,6 +2406,6 @@@
  	return;
 =20
  sanitize:
- 	drm_dbg_kms(display->drm, "Sanitizing cdclk programmed by pre-os\n");
-=20
  	/* force cdclk programming */
  	display->cdclk.hw.cdclk =3D 0;
 =20

--x8wgJNr9N82r5WRp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpD4X0ACgkQJNaLcl1U
h9AHHAgAg/xTOJhr4KpYkVV76PdaIRcu+SDjoT33tRNzWROFnxi3EfcJQ7vqDowb
i7X1mNsKtwc6zekQSS8xk8qu73hGtj4BiumyOHZFLu8+wjQn46XAd6FFdCzGYzWE
wy88QDHkx9BMmWxd1PATJxandxsyhhcX7Hx+xvIqXr5WDYOWvao07OZPv+M1FtiS
bEnVHXwzHMgqCaVYObPiCLaCRCHstwQjEIAmdvxA9uadA0htI+UY7v9OpdEkTN8X
6U+ZCfJz+O7R4O2zC9DpeW4xX8UfytCYh8U8+5qMtZS0j0VMJntU7BBATJyD83HN
H5vuxjsZGK0M9MYTvQzMa6N/TwUKRg==
=hqN6
-----END PGP SIGNATURE-----

--x8wgJNr9N82r5WRp--
