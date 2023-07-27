Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE1D7647AB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 09:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011C810E4DD;
	Thu, 27 Jul 2023 07:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F5810E4DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 07:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1690441525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Sg1RKM+t1E27+cvMfDl0xLHgEF6qP56lVlrDKJA2JG0=;
 b=NVSalP8LyVBBHQHyMu8gW0eV6JKqkCbYiOZVPYjam9vdcn6lTORSzyL6vVPoNXwif5PQtF
 Jmg2evqY3nhYH68J6iMK8f+GJJePUeQr9y4rNEorQNWd1ZTyuUBgjsa6Ve6Zquf84f1m7t
 cXTsTYClDf9FsYKlwcbAQlxEOYwd73Q=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-383-BW9RX14XPc6ywLl2I45bWA-1; Thu, 27 Jul 2023 03:05:22 -0400
X-MC-Unique: BW9RX14XPc6ywLl2I45bWA-1
Received: by mail-lf1-f69.google.com with SMTP id
 2adb3069b0e04-4fb76659cacso561360e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 00:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690441520; x=1691046320;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Sg1RKM+t1E27+cvMfDl0xLHgEF6qP56lVlrDKJA2JG0=;
 b=ZTR8cWRgwqX8QuiowbuWlvkIMHITpMDhQcwdZUugitb3wcHKp0yKAxNBFXJIC9AKUR
 VxViesQoHi75vnmmfYq1vBvFMvM2sFEJL9jVt7/Do7cNDDoHYEMk9UKYzGmQon4wZ3KY
 YUcJsBIZTcXXVQ9TifFL1+18g0Kn7o9i5buN+RFarR3ioRkg9l+417WulxWqX6PNhAts
 B1BJuTuvFfkEO4bLKfMUzoDroxqvWUwxrAdBAhfostnW4XKRXpN1i7oLnlSbBzmIPvQM
 8KwxhqZ/lvzLRFle4WU+N87OelByETIF+DlFU9PJnvFiIJb+daBCsubGyoHjWhubQ1Jf
 3HKA==
X-Gm-Message-State: ABy/qLZuo/0+h0yY1Sgk4MyXnwR8EBlt4nh1c88z8b92v1xR1i5Q2cZk
 QbDhQOpaNv67/8JeR3JoEhYaNQMJZ9AK/JwgSJriKEbOxFBltXPlNWdtpsnGSxE85Q7MENtCK3b
 mEDaCgJF0VY8B/7TqlQAhuon1ERQ+
X-Received: by 2002:a2e:a317:0:b0:2b5:7a87:a85a with SMTP id
 l23-20020a2ea317000000b002b57a87a85amr1021845lje.13.1690441520645; 
 Thu, 27 Jul 2023 00:05:20 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHVhFlicS+HPifL/pAnegBMYT0IBn1Q1Q0vdNG3/js8oBIKQLt23w7nh+ATmsiozEnVmy+1Tg==
X-Received: by 2002:a2e:a317:0:b0:2b5:7a87:a85a with SMTP id
 l23-20020a2ea317000000b002b57a87a85amr1021825lje.13.1690441520282; 
 Thu, 27 Jul 2023 00:05:20 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 e22-20020a05600c219600b003fbfea1afffsm995746wme.27.2023.07.27.00.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jul 2023 00:05:19 -0700 (PDT)
Date: Thu, 27 Jul 2023 09:05:19 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <dqvxednqyab5t7gvwvcq72x6yu7ug5gusmhpgs3kq6z7pf3co6@ofr6s7547gbe>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="dmumsurbkx6mmsib"
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--dmumsurbkx6mmsib
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2023-07-27:
A single patch to remove an unused function.
The following changes since commit ea293f823a8805735d9e00124df81a8f448ed1ae:

  drm/nouveau/kms/nv50-: init hpd_irq_lock for PIOR DP (2023-07-19 11:08:47 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-07-27

for you to fetch changes up to 39b1320e5dc2b707dfb5c25b0298ce9d4fc05aea:

  drm/fb-helper: Remove unused inline function drm_fb_helper_defio_init() (2023-07-25 20:38:37 +0200)

----------------------------------------------------------------
A single patch to remove an unused function.

----------------------------------------------------------------
YueHaibing (1):
      drm/fb-helper: Remove unused inline function drm_fb_helper_defio_init()

 include/drm/drm_fb_helper.h | 5 -----
 1 file changed, 5 deletions(-)

--dmumsurbkx6mmsib
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZMIXLwAKCRDj7w1vZxhR
xaykAP43IELI6U33d2tR0hfFiGAnvvw9uqlZ7e2ha2p5zYesLwD/eo4UIKhp6mnX
pObydxayxfbzIKde7ovy/g3oSl6CtwA=
=tQ+g
-----END PGP SIGNATURE-----

--dmumsurbkx6mmsib--

