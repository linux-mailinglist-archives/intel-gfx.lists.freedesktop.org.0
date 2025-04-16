Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76329A8B52E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 11:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18AA10E8A7;
	Wed, 16 Apr 2025 09:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KpM77jWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC3710E3C0;
 Wed, 16 Apr 2025 09:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744795389; x=1776331389;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/tufIAG+VUZJC7b6YakwZhHyHBhfxxSru8ER1OFHfdc=;
 b=KpM77jWE+kUMj1SJGlfoJHtehVlEtmGNfRq/sLZE0FLUEU5wvTY8kXcD
 ljW9pqOnMPSFpDxYM2MTvzhDLH6JruSPAISbK8UNJY9RJUshbgRxJDLXg
 Z+ldCxw+Ls8vBV13E5TdeWsjbOMgMfjJIfIlrstJRPJ5xExCvOyFCfy6U
 jX5a+ks+shBYFXWfdTPio4quWjvhtww4Y/HxYHYwd5bojSJVNe9nL527C
 DhYkizZsYTMtDogyjcEAaUv/WFPSysPjARXDlvodA6qpKKhYTnbdJR+Lw
 u8HUr9bhJvqG38sceLGlaSA0BHsZe561USW/XAgToeMjLVGvj8tNN3rYh A==;
X-CSE-ConnectionGUID: fSFc3FtWT0+NptdMuHGkrw==
X-CSE-MsgGUID: +0Y3niWITqK5z+trvGuWTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46495063"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46495063"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:23:09 -0700
X-CSE-ConnectionGUID: i+2ZkBenQFK9UjPDvAV82Q==
X-CSE-MsgGUID: byr1DdO/QXmCIVsDDjNGWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="153605640"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:23:05 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1u4yyz-0000000Co6S-3lv7; Wed, 16 Apr 2025 12:23:01 +0300
Date: Wed, 16 Apr 2025 12:23:01 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@gmail.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nicolas Schier <nicolas.schier@linux.dev>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] scripts/kernel-doc.py: don't create *.pyc files
Message-ID: <Z_929c1XSfeSi3QD@smile.fi.intel.com>
References: <cover.1744789777.git.mchehab+huawei@kernel.org>
 <4ad5eb8d4b819997c1615d2401581c22a32bb2c1.1744789777.git.mchehab+huawei@kernel.org>
 <87tt6opks7.fsf@intel.com> <20250416171917.0985c0eb@sal.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416171917.0985c0eb@sal.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Apr 16, 2025 at 05:19:17PM +0800, Mauro Carvalho Chehab wrote:
> Em Wed, 16 Apr 2025 11:34:16 +0300
> Jani Nikula <jani.nikula@linux.intel.com> escreveu:
> > On Wed, 16 Apr 2025, Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

...

> > >  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
> > >        cmd_hdrtest = \
> > >  		$(CC) $(c_flags) -fsyntax-only -x c /dev/null -include $< -include $<; \
> > > -		$(srctree)/scripts/kernel-doc -none $(if $(CONFIG_WERROR)$(CONFIG_DRM_WERROR),-Werror) $<; \
> > > +		 PYTHONDONTWRITEBYTECODE=1 $(KERNELDOC) -none $(if $(CONFIG_WERROR)$(CONFIG_DRM_WERROR),-Werror) $<; \  
> > 
> > KERNELDOC is not set here.
> 
> > 
> > /bin/sh: 1: -none: not found
> 
> Weird. This is set on Documentation/Makefile:
> 
> 	$ grep KERNELDOC Documentation/Makefile 
> 	KERNELDOC       = $(srctree)/scripts/kernel-doc.py
> 	...
> 
> drivers/gpu/drm/Makefile should be able to see this variable there...

Does it work in the case of `make drivers/gpu/drm` ? This is probably how Jani
tried it.

> > >  		touch $@

-- 
With Best Regards,
Andy Shevchenko


