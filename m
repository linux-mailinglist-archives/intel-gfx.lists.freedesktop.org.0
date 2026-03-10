Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4M0SAwkesGlBgAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 14:35:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E40A25070F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 14:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8F710E700;
	Tue, 10 Mar 2026 13:35:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="n/JgThux";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6278B10E6F4;
 Tue, 10 Mar 2026 13:35:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D4999600C4;
 Tue, 10 Mar 2026 13:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A11BC19423;
 Tue, 10 Mar 2026 13:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1773149700;
 bh=tm1nj2lmOriJREfH+Qu5V0vXny3pFbW7dtCrEGIG9vA=;
 h=Date:From:To:Cc:Subject:From;
 b=n/JgThuxRT38ZOULF1t6gOR2jYFQExTDH3wGlXKd6q5CO1LtfYGXYo/btPRdimHsK
 GKfv+/F1g9zEuNmDthwA3M9LZgTeU0Hp+RvjNhDaAB9GC1V9tCqGC/p/uAM91MSSfy
 Rh1WGIJmafh8hFOJqU9pyLKqt9pU9tNV1cgV0f1AKqczZUIsluVigGKQdFRRLh+Ixn
 dnBzAQdRQsWGi7jOwtlT9BesDyncvj8auLONTgNmF+z3ZsLqvqwC/ml7DZwLmvoB3s
 ri0S3RkqYISW4E7Gg+ci6dsaAAXZKDR0hKlashXZ+BIJ/cyD6TJx59Uis9jmBbEMmR
 uGHPrDRxzOs8g==
Date: Tue, 10 Mar 2026 13:34:55 +0000
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Imre Deak <imre.deak@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: linux-next: manual merge of the drm-intel tree with the
 drm-intel-fixes tree
Message-ID: <abAd_71qonm8fvk7@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="B7OPzjIj5t59VfcG"
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
X-Rspamd-Queue-Id: 6E40A25070F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,sirena.org.uk:mid]
X-Rspamd-Action: no action


--B7OPzjIj5t59VfcG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/display/intel_vdsc.h

between commit:

  bb5f1cd10101c ("drm/i915/dsc: Add helper for writing DSC Selective Update=
 ET parameters")

=66rom the drm-intel-fixes tree and commits:

  c8698d61aeb3f ("drm/i915/dsc: Add helper for writing DSC Selective Update=
 ET parameters")
  91f0a94974144 ("drm/i915/dsc: Add intel_dsc_get_slice_config()")
  889ff8dd4679a ("drm/i915/dsc: Track the detaild DSC slice configuration")

=66rom the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --combined drivers/gpu/drm/i915/display/intel_vdsc.h
index 99bb9042592a4,3372f8694054d..0000000000000
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@@ -13,10 -13,16 +13,16 @@@ struct drm_printer
  enum transcoder;
  struct intel_crtc;
  struct intel_crtc_state;
+ struct intel_display;
  struct intel_dsb;
+ struct intel_dsc_slice_config;
  struct intel_encoder;
 =20
  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
+ int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *confi=
g);
+ bool intel_dsc_get_slice_config(struct intel_display *display,
+ 				int num_joined_pipes, int slice_per_pipe,
+ 				struct intel_dsc_slice_config *config);
  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc=
_state);
  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
@@@ -38,5 -44,8 +44,8 @@@ void intel_vdsc_state_dump(struct drm_p
  			   const struct intel_crtc_state *crtc_state);
  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
  unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc=
_state);
+ int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *displ=
ay,
+ 					      int pixel_rate, int htotal,
+ 					      int dsc_horizontal_slices);
 =20
  #endif /* __INTEL_VDSC_H__ */

--B7OPzjIj5t59VfcG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmwHf4ACgkQJNaLcl1U
h9CSyQf/XmNfjVo/DztUas+fZw27q1oFWsl2dxPE/uzNxZCTn+qKXsYYQc8dYF9T
JFRqWcEQhjx0cuRI7G+Cd3D8O+19Y1lDP5NKk37fCEPmgQ6r8MFl/fAKfky7c5kJ
LaofBuR67US4+edLJh1PKw9Dz88CWqlRV7Ip+JDTBVbFWE2TPW2gTtVsOGkhRZe/
h9ECzW8HTnG2qKGcY6dbqX5MFcqxV8uYdiPsETFF84nBfZeqg1fei7qmJ2kqYSs/
fSv7yg+yBe3A7D/cMCaBDIIW2CF1JU6dy+upSYkRLasW8LX7mElj7ehtQeY5a7fg
7/FJU2op/jKA/nNHBjrgjbHMfjTg+Q==
=Uwwm
-----END PGP SIGNATURE-----

--B7OPzjIj5t59VfcG--
