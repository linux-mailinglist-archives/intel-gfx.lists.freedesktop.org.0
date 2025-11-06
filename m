Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CFEC3A46E
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812F710E874;
	Thu,  6 Nov 2025 10:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hTtKCeyp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF18210E06B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 10:33:19 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-3ece1102998so452616f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Nov 2025 02:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762425198; x=1763029998; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IQipCRpVFfui25dKlyIy/WSGyJHEdXiJ7zhFimN9ZT4=;
 b=hTtKCeypYltiaCN21eZZ2pJqhPrA575aQxu4ISVJssW8+o9WVBb9R6ueGKwf4wazZR
 TqMCZAz+znqD/uxzXbCfC8+9ULonOtU2LdjuAF2G+DOeE1bfNNvJRy053buX0D28pZio
 ip37HvRplg2mJesqtIh40sPTDidKucfmkktQrJoD6UXDhnBMf3SZ92a+fDck0+MQwedr
 bKoCqHgo5Gi55Z6zPmbyZvXyi6irYTtbgRS1uB6hMt5kglb2oBSpn++84m0YDYrOMQkG
 e/nANOaRwT+WPq+WcFGFFze1BCMLMVyyRMoCd0nAArILUJuQc84XJ8vQLAss6m3GtMFo
 wu+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762425198; x=1763029998;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IQipCRpVFfui25dKlyIy/WSGyJHEdXiJ7zhFimN9ZT4=;
 b=eairizkozzEMq0sDVJ9nnikwMuDBR9ITnA3INXvH0pW7MLXENs+h2w0xDpjauHLIS4
 /wefiCJCBqb/dGX9lI3I+d/CpLBfJYk+5Y7INdqlXp55pqyolYwmtzV7I31LnxspaT4q
 TNionNT0o8fovfFtGUnayu5wu/lC5MjZDX/bIQudYQmrvSNLBzEir8RhL4aDB6ew5zqc
 4eCL0zX7aU2yiAB/MGPgjAhvS1+ZqZ3IVyKvgW1lD9CGavKZiikthEPAZJfXuUd/KA5c
 lO3Yb44DXHulCIJi1v35oMHJrrz7LOwSSGPYXpDtrS5Zxl49/6c9c3+kIeC9YKoj4pHW
 jK5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTEM9T2Yc+s/HQq5lrAXATruphFqPKqeAswBDj7LlyG8p36SjTPubzFA8F1U/kYkTfWua0Z3w4G68=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzk3qzVvUt+tS258WadTs43dEinW/+OkZ57jW5ksNFKVS3sN8o0
 in8BlUmpxKQBwErNhMrspigAC3tzz6neTms3e/uz4et8HNdTwtCpsfxn
X-Gm-Gg: ASbGnct/ea9Kn5rxiIAC4FEaaNaqS7lC1J0Xabx1F7hcb+FBSVCWqif1hYLJJ9l6V9n
 AwpSE3l9wfEs3vXnY/iT97PEOcmgvcy7lpK2Mgqr/EUamHt2jICdq6aF8Qo1B6IYUe2EEtinD5g
 AFlMWDQAYfBiwZQpZeX0d25FNPNGNzymbc4beu6sVuIeu39+lQdf4nO2dPIlTe8R/eC4P9pYqfP
 ztUC8qRv3DcVFYAaHxpPtlXr3O5gvG1yPQYoBp11WdC/UHPJ5crS/blz0EIjTj/YZHjz2AQ5BBw
 u+xgb2ty4xr2OIaDmEU3R8GHWIOBDZE9XsTgdDFpvhq2tfsa7g63un4gL0G7Qz3M5/d2ehOsaBE
 NgpH8dneYwMIAXqP2KvLhtKxBANluR62K1hJuRqAJsa4hTvYP43cou5SAeT2bQeL4f4XT5utvWG
 T+aBQkGfTircinSf6BB7TPTA==
X-Google-Smtp-Source: AGHT+IFtY317gqE6KkPCPF8CEMqlY4XSqSHpCQgEggJ0wgh6u+xUqljo6I5F0N5V/IXa3Sh4CqPFig==
X-Received: by 2002:a05:6000:615:b0:429:c9ab:2cb5 with SMTP id
 ffacd0b85a97d-429e32c817emr5341842f8f.2.1762425197999; 
 Thu, 06 Nov 2025 02:33:17 -0800 (PST)
Received: from archie.me ([210.87.74.117]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429eb403854sm4173231f8f.5.2025.11.06.02.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 02:33:17 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 046AC420A685; Thu, 06 Nov 2025 17:33:12 +0700 (WIB)
Date: Thu, 6 Nov 2025 17:33:12 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Intel Graphics <intel-gfx@lists.freedesktop.org>
Cc: Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Zack Rusin <zack.rusin@broadcom.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/ttm: Fix @alloc_flags description
Message-ID: <aQx5aAR3DjengjVt@archie.me>
References: <20251106005217.14026-1-bagasdotme@gmail.com>
 <f935574c-67d1-4a7c-bd8e-e9dff7aa97ea@igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="rmZmydHKAYCDjdz2"
Content-Disposition: inline
In-Reply-To: <f935574c-67d1-4a7c-bd8e-e9dff7aa97ea@igalia.com>
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


--rmZmydHKAYCDjdz2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 06, 2025 at 08:28:15AM +0000, Tvrtko Ursulin wrote:
> I assume no one merged it yet to any branch so I can push it to
> drm-misc-next?

Of course!

--=20
An old man doll... just what I always wanted! - Clara

--rmZmydHKAYCDjdz2
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaQx5ZAAKCRD2uYlJVVFO
o6KUAQCdWlX+bS8tZGT/WzXuutPy13eM3ApLgSLVthbWq2XiFAD/dr6KLftQULXk
HX5cf0yZ85lJ3S9nW+31ZKHhTSUppwM=
=gYHU
-----END PGP SIGNATURE-----

--rmZmydHKAYCDjdz2--
