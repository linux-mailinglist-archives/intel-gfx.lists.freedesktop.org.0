Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PPR6FTGVT2qQkAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:33:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D812B731045
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:33:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wyb6fr+0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692D710F5C9;
	Thu,  9 Jul 2026 12:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A40B10F5C1;
 Thu,  9 Jul 2026 12:33:50 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id C9F454170B;
 Thu,  9 Jul 2026 12:33:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 852A81F000E9;
 Thu,  9 Jul 2026 12:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783600429;
 bh=VxCyzKYt+2p3S+jwZw/Xoev9w+MftLxRp12EmyoN6qg=;
 h=Date:From:To:Cc:Subject;
 b=Wyb6fr+0pCxMUPXahLueym4g6s3cML7pvQLcuhdpnJKxBrORwnE2Vp1Z7fL4swA3V
 ASEoocmKX2BCUatvHAGHq1begAG8KDEY1lXuiFCChp07RPuN9qqSAjK4PNi6GfnC8+
 z67n2bevu+XyqfUdfIhTgRjHZhadPGSKDl/hH37hHRlQQHOgqlaIC9fHnyEG+UMK+B
 vJT+kceqvc7xToyrUGhBkdGic7Ce32BrsNvJKJxoY4f7DqJy2v3z/XSfzoNbZlHPZL
 mOsMhnNQIz5ICWTO8xYziHTYykdhBFqtM+kGWpwbQ4+/i6IRXjsCk8k6Xb1+jiihEf
 M9mf7ILVhKgdw==
Date: Thu, 9 Jul 2026 13:33:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: linux-kernel@vger.kernel.org, linux-next@vger.kernel.org
Subject: Fixes tags need work in the drm-misc tree
Message-ID: <ak-VKufd0zg0F8AD@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="bH6rGYeBd6bmCszn"
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
X-Rspamd-Queue-Id: D812B731045


--bH6rGYeBd6bmCszn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In commit

  3b1f4d5e47b36 ("drm/amd/display: Fix dangling pointer in connector reset function")

Fixes tag

  Fixes: e7b07ceef2a6 ("drm/amd/display: Merge amdgpu_dm_crtc and dm_crtc_state")

has these problem(s):

  - Subject does not match target commit subject
    Just use
	git log -1 --format='Fixes: %h ("%s")'

--bH6rGYeBd6bmCszn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpPlSkACgkQJNaLcl1U
h9AKgwf/RNYiEzszQGfZYdb3GELo4yuwD1Al49eAnwIfZAipRVTgJ/1jqVvHJ+WL
IGvU7NFMNysq4atFQBJLm0O/CIb0uIOXwYpm0Xxe9t3C0/jTgCYPsvZm8Xdd3+Bl
2YzytulHikVL1rZzufMIALPRSpjWBQor7w07hPRGvFC99kZ3LB0USzcw6BWNfYjU
p5sFxU7osiPF8YESyt2W6sl6zfh+FcHx61PeuQZ4AlKu41Lu2+eBjFToVIXHAVoQ
+zN6+3hWXnnoaQAoc/1sLNrfoTyXwpoFdjuHsJt3lczZNbRfN5ZJMl3WlSzhoA5T
dRiuFf1W05o9v/LJRhoLBOd0IAr/Lw==
=wWw7
-----END PGP SIGNATURE-----

--bH6rGYeBd6bmCszn--
