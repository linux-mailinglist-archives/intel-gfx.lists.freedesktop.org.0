Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0893C5D2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 16:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6609B10E83E;
	Thu, 25 Jul 2024 14:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="a1RJkohR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5356F10E83C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 14:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1721919546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=F5ZoSYsZGaDw2dOGbs0OwYpDKl56Fzks8qZErLXmwLY=;
 b=a1RJkohRgGCir/1ncOoRNdIawXsDduowBbxzc1bfwjDhJB6gElG2bjQF5j9iuW4LwUVDYV
 N5Iy52KGTr1iKHTD6c5Rc2zwMIFs8ItuqWxH3VT8HEWvol6s91jhmD16jtXa/GKe7RtcD3
 TjgEazJGFUQjUvVOZ9LY6qUrlgVuwjg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-T5NvYAKyN1GldvZ3rNDSQg-1; Thu, 25 Jul 2024 10:59:02 -0400
X-MC-Unique: T5NvYAKyN1GldvZ3rNDSQg-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-36832c7023bso664924f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 07:59:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721919541; x=1722524341;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F5ZoSYsZGaDw2dOGbs0OwYpDKl56Fzks8qZErLXmwLY=;
 b=o5wPDqnoTqyNSfVRj5Sx1slOW7Ix7DiqMnEjY2slcB9eDcy+YLdRHpuoQ6ReuFlFpH
 KW8BL2fJopyd8OhpvdtidmUop0COI56L7I0paxWoLlr1IVQ73N9G52Hp8eMdySUkwZ0P
 ydUPPqNxUtHe2lHI7HkvYEurc9qlNhpCAl+1MtQXw7jE/AsmkmeXhj5A5257oL33a+KA
 K5WHdBOgfqXqgJebvgPlhVtF+Qd0gO+wA21sGR9WSK/it/yuvm16zCZqmN69jH3qHGBM
 PCRD8qJQiqhmF0IJn3DXo1gZPaJzHMrs73wg3awxN3ke2jZefn6u2wFLY7LkccXBNO3o
 X0fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNaYa7TcmcsS4giFqq/JSA8wgRiA2mruDzO3TCHqAwHmCXRWSEw8SPE+XXwdoxDipKs9IJQs0LnFIb6+4RDUdWZCvTdtdnLlZkGOPKnKs2
X-Gm-Message-State: AOJu0YzkuSHBhVLQvUaDFbib10G3ErDDGm4P3jWM2Idc8cXwRGff32d8
 MgSemkuPZXOT/bSGoTHvA5sLkyPJ2pdKHR2xuYS2Hoeymm+fpvWWw/cqEJjVYRtifM+AFZb8e1q
 9PwxkugV3/At0XWr62pPi3IrvPwUUnBfJDQvs2UqYPBqw9/9bo7VFMbn92M2S/TdwHA==
X-Received: by 2002:adf:fc8d:0:b0:367:926a:7413 with SMTP id
 ffacd0b85a97d-36b3664af5cmr1550886f8f.63.1721919541183; 
 Thu, 25 Jul 2024 07:59:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+NVPsJdjWpOoZv9kl75pyyXyS6KI24cjaV3bYhAWPCMWcUU5fAEb2n3xEHhHtR6Unbf0Pjw==
X-Received: by 2002:adf:fc8d:0:b0:367:926a:7413 with SMTP id
 ffacd0b85a97d-36b3664af5cmr1550872f8f.63.1721919540858; 
 Thu, 25 Jul 2024 07:59:00 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36b36858229sm2511373f8f.82.2024.07.25.07.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jul 2024 07:59:00 -0700 (PDT)
Date: Thu, 25 Jul 2024 16:59:00 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20240725-frisky-wren-of-tact-f5f504@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="djddhsk7xnue6mdo"
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


--djddhsk7xnue6mdo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-next-fixes PR

Maxime

drm-misc-next-fixes-2024-07-25:
A single fix for a panel compatible
The following changes since commit 1fe1c66274fb80cc1ac42e0d38917d53adc7d7a3:

  drm/v3d: Fix Indirect Dispatch configuration for V3D 7.1.6 and later (2024-07-15 12:49:52 -0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2024-07-25

for you to fetch changes up to b6f7d984ebf826069d3dc6fa187b4d1cfb90f965:

  dt-bindings: display: panel: samsung,atna33xc20: Document ATNA45AF01 (2024-07-22 08:40:32 -0700)

----------------------------------------------------------------
A single fix for a panel compatible

----------------------------------------------------------------
Stephan Gerhold (1):
      dt-bindings: display: panel: samsung,atna33xc20: Document ATNA45AF01

 .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml     | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

--djddhsk7xnue6mdo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZqJoMwAKCRAnX84Zoj2+
dv3wAX9uhXuJHQ99wQ/RUjs48BI39MRvUD2V8xthlvqYprxbUUb3kLaKYAkzaO0q
/0QTIfMBgIzD+UyFxrDtQgHD6C6XXvUe8D3T8PwK5N1czxywG3y//5cROWj35J+D
itUZryZOvg==
=oso5
-----END PGP SIGNATURE-----

--djddhsk7xnue6mdo--

