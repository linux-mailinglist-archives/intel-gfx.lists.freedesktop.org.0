Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF2992E74A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 13:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B2E10EA2C;
	Thu, 11 Jul 2024 11:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="fXzQ0XoC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415B410EA2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 11:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1720698208;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=MofSZeDyVzWkqGzbXdelFG68l2ucBKWV0CSSC6YMCJU=;
 b=fXzQ0XoCzTQU0YH/pRkrNy1fTRW8bfbiQvI5DMTPnuFFoTO0CcLYzjEmNnsWDTywyeXGWd
 CN4xtGZ/OU0DQ37LKebIzlgnZzZ72X6QNq8leAN/meu2YpMmocraUcTZ/IUqpnLn/FDO4J
 5QU+4h2TOIAFrkvSkpf/fbcMx/7J5OY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-ensAlbx4OUiW3i7gPCaHdQ-1; Thu, 11 Jul 2024 07:43:24 -0400
X-MC-Unique: ensAlbx4OUiW3i7gPCaHdQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-367960f4673so971848f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 04:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720698202; x=1721303002;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MofSZeDyVzWkqGzbXdelFG68l2ucBKWV0CSSC6YMCJU=;
 b=ns04B04vWJD3zGtFNiGhbXqAIqldoaTWN370gtV+wyPjy5JMuGrw8brKuQQ9XCQYmw
 slS6q2vkurd9uE01N9cFQVP7BOsjAFYtvN4yk46hrOvoiPccay+rjvi3PWpY0dYFxQul
 I45wzmkUGyO525YQkHfgDujSKCcHzRZkbCmYIk9i9O5Ayc2jvD1h2x+MFUUSQfGOjA8/
 9x9knsdBer/4uHed/L1wAcn0NG/A82okv3Zakf/w9tZ6teejRCRq42cYc5k4B6a3iyZn
 jQGS/igDf9ujUPhlyfJixNQ30qZA9PuA0wu0eFBR8SFhDImE4L45RL2cmG+0tR51lUvq
 jNUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRt22eAR8i5rxUYedOsBhYVtam7fTDaTe5QHFUNteu47gDRwZma9CchkCazt//dcnNrTvEG6o6ZPAYf/bYqq8/A3Q4zNzUzDjjRdTedN9u
X-Gm-Message-State: AOJu0Yw1GX8zkipYzwYsgDMZzcYzUA4ziMao4Np3IrF1VTQAqZB4P/wy
 p0F5gN0pdoIFGF5Ym3wItyypknmPIIENI8/yOxgui0RPLRbxI4po1gkzjxFNQdbL7prq2+cPqh2
 KkDQvdEwPKGIR1IqQxZGx0yZbj+L93uQR9PM1nTOrplEuv48tXGBZf+ieM/w4tvqUTA==
X-Received: by 2002:a05:6000:e86:b0:367:8e63:4da4 with SMTP id
 ffacd0b85a97d-367f04ca2d7mr1970140f8f.14.1720698202615; 
 Thu, 11 Jul 2024 04:43:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKWwK9mQfjAxuy6d/Q76G5tEr15S1eUj7ecFAczGH+5nB4lofGO2HqY2Y+hF94BBlR5S5EPA==
X-Received: by 2002:a05:6000:e86:b0:367:8e63:4da4 with SMTP id
 ffacd0b85a97d-367f04ca2d7mr1970113f8f.14.1720698202132; 
 Thu, 11 Jul 2024 04:43:22 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4266f737b1bsm116663935e9.32.2024.07.11.04.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jul 2024 04:43:21 -0700 (PDT)
Date: Thu, 11 Jul 2024 13:43:21 +0200
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
Message-ID: <20240711-benign-rich-mouflon-2eeafe@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="dzmsejr4sz47r6mw"
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


--dzmsejr4sz47r6mw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-next-fixes PR

Thanks!
Maxime

drm-misc-next-fixes-2024-07-11:
A fix for fbdev on big endian systems, a condition fix for a sharp panel
at removal, and a fix for qxl to prevent unpinned buffer access under
certain conditions.
The following changes since commit 896868eded124059023be0af92d68cdaf9b4de70:

  drm/panthor: Record devfreq busy as soon as a job is started (2024-07-04 09:29:55 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2024-07-11

for you to fetch changes up to c537fb4e3d36e7cd1a0837dd577cd30d3d64f1bc:

  drm/qxl: Pin buffer objects for internal mappings (2024-07-10 09:12:42 +0200)

----------------------------------------------------------------
A fix for fbdev on big endian systems, a condition fix for a sharp panel
at removal, and a fix for qxl to prevent unpinned buffer access under
certain conditions.

----------------------------------------------------------------
Douglas Anderson (1):
      drm/panel: sharp-lq101r1sx01: Fixed reversed "if" in remove

Maxime Ripard (1):
      Merge drm-misc-next-2024-07-04 into drm-misc-next-fixes

Thomas Huth (1):
      drm/fbdev-dma: Fix framebuffer mode for big endian devices

Thomas Zimmermann (1):
      drm/qxl: Pin buffer objects for internal mappings

 drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c |  5 -----
 drivers/gpu/drm/drm_fbdev_dma.c                        |  3 ++-
 drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c        |  2 +-
 drivers/gpu/drm/qxl/qxl_display.c                      | 14 +++++++-------
 drivers/gpu/drm/qxl/qxl_object.c                       | 13 +++++++++++--
 drivers/gpu/drm/qxl/qxl_object.h                       |  4 ++--
 6 files changed, 23 insertions(+), 18 deletions(-)

--dzmsejr4sz47r6mw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZo/FWAAKCRAnX84Zoj2+
ducuAYCQ2yxTQEAVBbW1pjLEqLM8ZqWbhUe30yZe+1K91x/U9fSYGnmsfeWpJYHh
VsiVNBgBgMVRP82CcCt7Cp2HFfHXl/enrvZaYvJUDetm3ZbnGwAT5TGqbefXGok6
phXB4NyL4Q==
=SiwA
-----END PGP SIGNATURE-----

--dzmsejr4sz47r6mw--

