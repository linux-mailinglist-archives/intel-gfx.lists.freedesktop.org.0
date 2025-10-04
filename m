Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81D7BB927C
	for <lists+intel-gfx@lfdr.de>; Sun, 05 Oct 2025 00:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04AF10E045;
	Sat,  4 Oct 2025 22:40:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JEp2cymF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A5810E045
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Oct 2025 22:40:24 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-269639879c3so32330365ad.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Oct 2025 15:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759617624; x=1760222424; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bOAdntz+KeAlO/SvuA1JcD8OWmt9u//UdVphsQBdXps=;
 b=JEp2cymF3kelrcREOSID9YkvTFPPMA3qt/d7SclOqxDqDhNGTXyYPAj4Rftc661n5N
 KijSPkYftkvVedWz9zjMs09sntDYdm9jnxYgAvLY2MsmO79KIFdO4nXDE+UUYdpJe53g
 94GB5KpNf28aZlGGEbnhGPePUNy8dTZ9ZmJh40TTlJVlOXWn8oFnh1D9O1VG4Gb9hN0o
 IaifQE4zBoq0ZY83Bwq195HHqZYR9h1i0moWrTqcgvideIsdZY4pQ7dqFaTKTmMnah8B
 VCSUyFY/m6Pi/oH/6ayirPMFcmfreU4IkQfg9lZHK0U5tsGn5RADN44eSGBRxoNAK+pw
 zK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759617624; x=1760222424;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bOAdntz+KeAlO/SvuA1JcD8OWmt9u//UdVphsQBdXps=;
 b=iTMlYRR4lygQr4F3j4tJxpQTQy29ic/56tA6Je2c96fE4bk1dw6oBUMWvLHRCZ0Uiu
 QqVY0ojLrAV2UyTBUpwaaAYpGE3u5JyCYOdnemMWITUR89TCc4JJgspWbYWOFTYxLgZM
 oXgTvckQ8lottdkJeHO4YZSRAlPfffySZ1PB1L/jCMttOocLLx2GOjUIOikFMlgsYOHP
 GecUtOon5iLenTiiSslrDDiXW/qKinqegA8TVMFWlDk/nwKdIoVeC+qL0X34GS0gdfED
 q2ysLYCIST4P74L59v13J+9TbGB+8nbAs20DMBgyZhtR3TmpyIiRI+lNSVRyCv/W1RzD
 SI2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCW84xQuK6L6P8zQCFDz520BL90mfXT9wJgcMcf2/pz0I8+hu6mUWG7i4PKEDnYnxStG+4EjG0rYO50=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyogzahlZqVyG1tjS+9REZYIHDSys41+zvaQmRR6h8D9yhhfMbG
 13Xrb4HbShN959UDE5mBL3Mtx750pchzVsRQR4zGy19zcTFDTPcg9vpU
X-Gm-Gg: ASbGncsCn14rKi9THdzJQlR3YWhG/UDT7b1ked9n+75X5LwRHlQNjrgwG5ctGbTgRSc
 PRdFQwpsTlFc5oce80Vs0gAsYdOJXT3Mp4qV1LNKWgpNT0hJa4dbtLuU3cTLxhgz/Hf+AeCvpkm
 XEwsunPysn2HfPaps2fMlufxeOATQOFDvwD/eXaxD8plYQtmw7DzG8bBmSzh8qmdG74q26SaGWo
 CNvgr+1GnoTPKD0V3DXNh6VveJ4koURVsvDfkwq64HNtn8vusZJP33SBpuPS1D9td+zZMqmcDf/
 fGkkile8KsI9UH6rqk2HDat85444S9F8kB1VmttkJPkRK3ymJNTePAbWMmtwMHLmHgUPaj5NcG7
 Ats5D4aDMrIztHLiezPLVVPsA3SaVLNBtAjLNXOhxUF1n3WqRaCP+ypAsTc+a
X-Google-Smtp-Source: AGHT+IEEuDpKzQXtVuShc4pJf9BgCPzJ18iq05PWmkh13oJnHgXyYPdarqa0eRgaRYG+SwX7DVV9HQ==
X-Received: by 2002:a17:903:28e:b0:270:ba81:14d9 with SMTP id
 d9443c01a7336-28e9a693fd4mr103604355ad.36.1759617623667; 
 Sat, 04 Oct 2025 15:40:23 -0700 (PDT)
Received: from archie.me ([103.124.138.155]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-28e8d111910sm88078525ad.18.2025.10.04.15.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Oct 2025 15:40:22 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
 id 835BE4233433; Sun, 05 Oct 2025 05:40:19 +0700 (WIB)
Date: Sun, 5 Oct 2025 05:40:19 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: =?utf-8?B?TG/Dr2M=?= Molinari <loic.molinari@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Melissa Wen <mwen@igalia.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Hugh Dickins <hughd@google.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>,
 =?utf-8?Q?Miko=C5=82aj?= Wasiak <mikolaj.wasiak@intel.com>,
 Christian Brauner <brauner@kernel.org>,
 Nitin Gote <nitin.r.gote@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Christopher Healy <healych@amazon.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org, kernel@collabora.com
Subject: Re: [PATCH v3 10/10] Documentation/gpu/drm-mm: Add THP paragraph to
 GEM mapping section
Message-ID: <aOGiU77k1XPb9W9M@archie.me>
References: <20251004093054.21388-1-loic.molinari@collabora.com>
 <20251004093054.21388-11-loic.molinari@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="cgdVn3+TYG3JLZOy"
Content-Disposition: inline
In-Reply-To: <20251004093054.21388-11-loic.molinari@collabora.com>
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


--cgdVn3+TYG3JLZOy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 04, 2025 at 11:30:53AM +0200, Lo=C3=AFc Molinari wrote:
> @@ -290,7 +292,7 @@ The open and close operations must update the GEM obj=
ect reference
>  count. Drivers can use the drm_gem_vm_open() and drm_gem_vm_close() help=
er
>  functions directly as open and close handlers.
> =20
> -The fault operation handler is responsible for mapping individual pages
> +The fault operation handlers are responsible for mapping individual pages
>  to userspace when a page fault occurs. Depending on the memory
>  allocation scheme, drivers can allocate pages at fault time, or can
>  decide to allocate memory for the GEM object at the time the object is
> @@ -299,6 +301,19 @@ created.
>  Drivers that want to map the GEM object upfront instead of handling page
>  faults can implement their own mmap file operation handler.
> =20
> +In order to reduce page table overhead, if the internal shmem mountpoint
> +"shm_mnt" is configured to use transparent huge pages (for builds with
> +CONFIG_TRANSPARENT_HUGEPAGE enabled) and if the shmem backing store
> +manages to allocate huge pages, faulty addresses within huge pages will
> +be mapped into the tables using the huge page fault handler. In such
> +cases, mmap() user address alignment for GEM objects is handled by
> +providing a custom get_unmapped_area properly forwarding to the shmem
> +backing store. For most drivers, which don't create a huge mountpoint by
> +default or through a module parameter, transparent huge pages can be
> +enabled by either setting the "transparent_hugepage_shmem" kernel
> +parameter or the "/sys/kernel/mm/transparent_hugepage/shmem_enabled"
> +sysfs knob.
> +
>  For platforms without MMU the GEM core provides a helper method
>  drm_gem_dma_get_unmapped_area(). The mmap() routines will call this to g=
et a
>  proposed address for the mapping.
=20
LGTM, thanks!

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--cgdVn3+TYG3JLZOy
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaOGiTwAKCRD2uYlJVVFO
owsBAP926UwrcUZLpaNBVlMMMAJn+GCE/YTh2qS92wDMr5wDhAD8D6FJXmT5X1j7
e7eeG3goT2uCJaiZG5r1107jYRzKSAs=
=vdd1
-----END PGP SIGNATURE-----

--cgdVn3+TYG3JLZOy--
