Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766AE280DAD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 08:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED396E90F;
	Fri,  2 Oct 2020 06:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB576E90F;
 Fri,  2 Oct 2020 06:52:51 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id 4253982C;
 Fri,  2 Oct 2020 02:52:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 02 Oct 2020 02:52:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:mime-version:content-type; s=
 fm1; bh=kiuP3xMQJSCg9avsL6iktycdjVlUypJjPoKT2gB606Q=; b=ENdRdyCF
 Sa2ajDnXqKiKDLG7LLpS0GJGQgPkJ6yDyahWuXDUOGhMDyfzOKZqlaWRtRmQRN4q
 6Lz8MBlVbEaPB2zkziaXqQNajRQwVaAY0HtECaCAuF77stGZNjn98MXJqpN/bUQ7
 UcSNAz/UfSElzFo1CP1UlOm9sXeE1lSp/eNkMQDDXSRvLSnW2wRBi/Qfz1AzE0em
 fHRi+aomzOnFAxXgBu9qk8q+2lg0FXC2qto1dqQzRFQLAeJ9jZYQa0eRHM0dXp6H
 ada1xG7Y0MItFFc5ytxI+xg3CDLzAu2eJLb30AjVrwWJ8cG6w22yRNnSOzRsvtrM
 R/ZRf5tIP2nL9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=kiuP3xMQJSCg9avsL6iktycdjVlUy
 pJjPoKT2gB606Q=; b=NjTDSOcY445QHCYq/seMgr6F9yyQhhLgogJ3Z8UkUPHKU
 gmAmLX9bL5vCc8/a3H1ivq8PfbGAgSWiRtCt/SAkj8s6P9stpEdbOpZXO8tAtKBx
 RlrvwvXQrGwe3g1ryRLbJaujLnmvjHgKxc6OyqZT4WXIzxNn1lkV/5UgHBABpS7C
 FYq7C4AkvuiM7SSOE1txS/oG/R5XR6HZInJVGwlQZAhrCfc+tqok6PLgiUflnS1a
 mOi+H+oIa3aVAwP/HBOpqn8E+mtQddYYqb1R/qGDz+bJ8sjxeCMInC+aHLx9yfcA
 Zd1GMpPjfLW5gbwkKCV/XsW75/LfTLXDRONRCz1Jw==
X-ME-Sender: <xms:Pc52X4ONG9K4huCJFjB3L5np9WA26qGLp6t5GHE8En9edftvitv6Iw>
 <xme:Pc52X-8OmY2C9fCBohBHxmsH-K4sqiQik8DxPqyrb8CiQIgjtQo8369s0yILzWeVh
 mhLIajUcrxw2ATHVcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrfeehgddutdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfggtggusehgtderredttddvnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
 hrnhepgeeuvddtheeggeehhfeigeetffeufeelveeggfekveegieevudeljeeugedviefg
 necuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Pc52X_RtSstlDFZfbdntXsgpq08oshuIjIcVXl277u1duE-j3l-Pyw>
 <xmx:Pc52Xwt1Taf3mYCMd1WEllNf8cY_Wj8Q__-Vh3-zuKRM6SovmSjLlA>
 <xmx:Pc52Xwd8in8bO4izdJELxSc5AeLnMeXiGE1XHEL3BILr08VPQ4XT7w>
 <xmx:Ps52X3y7AL1dcGNGAgDeEWsy8BP7yEUos8gncZjucESbrSHlKluv6gELQhs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9A28C328005D;
 Fri,  2 Oct 2020 02:52:45 -0400 (EDT)
Date: Fri, 2 Oct 2020 08:52:43 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20201002065243.ry7gp4or3ywhluer@gilmour.lan>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1562455607=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1562455607==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="euhdiwunsubgcjaq"
Content-Disposition: inline


--euhdiwunsubgcjaq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel, Dave,

Here's a few fixes for the next merge window

Thanks!
Maxime

drm-misc-next-fixes-2020-10-02:
Three fixes for vc4 that addresses dual-display breakages
The following changes since commit 089d83418914abd4d908db117d9a3eca7f51a68c:

  drm/vc4: hvs: Pull the state of all the CRTCs prior to PV muxing (2020-09-21 16:43:11 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2020-10-02

for you to fetch changes up to 8ba0b6d196315f68c271f549e8585129caefce97:

  drm/vc4: crtc: Keep the previously assigned HVS FIFO (2020-09-25 16:56:21 +0200)

----------------------------------------------------------------
Three fixes for vc4 that addresses dual-display breakages

----------------------------------------------------------------
Maxime Ripard (3):
      drm/vc4: kms: Assign a FIFO to enabled CRTCs instead of active
      drm/vc4: crtc: Rework a bit the CRTC state code
      drm/vc4: crtc: Keep the previously assigned HVS FIFO

 drivers/gpu/drm/vc4/vc4_crtc.c | 14 +++++++++++---
 drivers/gpu/drm/vc4/vc4_drv.h  |  2 ++
 drivers/gpu/drm/vc4/vc4_kms.c  | 22 ++++++++++++++++------
 3 files changed, 29 insertions(+), 9 deletions(-)

--euhdiwunsubgcjaq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX3bOOwAKCRDj7w1vZxhR
xfDSAQC3K5J9Vx/ckq3LrDHqHaeLxNlTzVf+kqc99hskVe5kTgEA26w3FNk4B+ED
BbHicxzFWNyj/t6Sb6M5LcupQ9Sebg8=
=6Mce
-----END PGP SIGNATURE-----

--euhdiwunsubgcjaq--

--===============1562455607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1562455607==--
