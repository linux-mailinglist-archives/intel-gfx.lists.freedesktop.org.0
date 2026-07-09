Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rj7DJUiVT2qZkAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:34:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 189E2731056
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:34:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bseccNL5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D88710F59C;
	Thu,  9 Jul 2026 12:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E8D210F59C;
 Thu,  9 Jul 2026 12:34:13 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id A7059600C3;
 Thu,  9 Jul 2026 12:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 416DC1F000E9;
 Thu,  9 Jul 2026 12:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783600452;
 bh=PLcyfyRLh9N274iEIAU0fg4hnH+FVhFMtjqvfI8OHEc=;
 h=Date:From:To:Cc:Subject;
 b=bseccNL5IajMpaKml0Cf6JglRnD3jC+Q1AWQzLot0EA7gD7jKDk4l0haAHXGRfCIN
 BPPzP1WU4g7bjFNFd848ZgxKYl5C0c5zlvr++A6DIgcZCy+vBIaHBLHISEmr66opq6
 S8HfDiTkqzBXDer+bZWSySMNoSqFHy3lO1p4lmZ6f/yq+8OBqENDk4DvkCqQguS/zw
 EYNbQmr4+PCSEbcZl1/QKnNWnJDMrNDLQMrf7FYp3pVCu2+36cHodmVg0Ss9w9mDIJ
 O/XdRwlPHKSOQ8Xun6gbsx8Ot9dNBYtMWOy99Dj1J2xaADQoKhsnfmbc5DD40p84pU
 nrmmctDpz6aAA==
Date: Thu, 9 Jul 2026 13:34:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: linux-kernel@vger.kernel.org, linux-next@vger.kernel.org
Subject: Fixes tags need work in the drm-misc tree
Message-ID: <ak-VQChNqm9ymtS6@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ySfZFTdHsc5H/OLM"
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 189E2731056


--ySfZFTdHsc5H/OLM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In commit

  0aeed866cb938 ("drm/amd/display: Fix dangling pointer in CRTC reset function")

Fixes tag

  Fixes: e7b07ceef2a6 ("drm/amd/display: Merge amdgpu_dm_crtc and dm_crtc_state")

has these problem(s):

  - Subject does not match target commit subject
    Just use
	git log -1 --format='Fixes: %h ("%s")'

--ySfZFTdHsc5H/OLM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpPlUAACgkQJNaLcl1U
h9DuLwf/S7lHF1Sp6r6EGwnAz5Xpnr4wcgRT3e76kWqVLOglVplCjZsJPkBhbb4R
dEbXZM6pYa1ygK6Yefqr3W0sbTppN6l9e5q/a4fA+6PJoN5mFDHdXjyKCbBeZSsR
cyLjnZCT160raWAVLiSZpG6ETvdusRJehu0e4PEQ/qgORPLMRdZTUr2fkaGOz7xJ
WxxL7JX9El47q/uz88bvXzAD3iXJTbca+IpZ9COCyhe0cN2V6ojo90jyL/4xuwET
BEhlsCgKe4316jOWXAfaOjIFgXU9ns53YDdwPtrU/3vqmZghMT4M2LcbWJGeTPVS
KnADsQX5IgmW1NIINRqWZDuCIFN3og==
=glOm
-----END PGP SIGNATURE-----

--ySfZFTdHsc5H/OLM--
