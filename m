Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE23A9F15E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 14:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7956110E3BA;
	Mon, 28 Apr 2025 12:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=smtpservice.net header.i=@smtpservice.net header.b="SPE7kTM8";
	dkim=temperror (0-bit key) header.d=fjasle.eu header.i=@fjasle.eu header.b="XKRvIRDj";
	dkim=pass (1024-bit key; unprotected) header.d=fjasle.eu header.i=@fjasle.eu header.b="OKMDd0Wr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 7656 seconds by postgrey-1.36 at gabe;
 Fri, 25 Apr 2025 20:56:28 UTC
Received: from e2i427.smtp2go.com (e2i427.smtp2go.com [103.2.141.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F8B10E9D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 20:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=mp6320.a1-4.dyn; x=1745615487; h=Feedback-ID:
 X-Smtpcorp-Track:Message-ID:Subject:To:From:Date:Reply-To:Sender:
 List-Unsubscribe:List-Unsubscribe-Post;
 bh=owWeXA2qFbSxDa+WbGesCQaKVfTlr2DxYaRhX4/qnBw=; b=SPE7kTM8mzb6jQUduH0fvOlZGw
 H5iAE8LBvlYy1uwxhAoa4azF3iKZ/ZogpuFX/3nx6BAF2jwUIOos2BS4PcRa8GgVjmqqd2Hn+F/HG
 bVwiG6YJAya2PipZ1wcf/6yg7dJqCC+JVBSJ/bxgVH+K5atOSIlykkVcNjokNU7WNAKRlS2uMecqm
 ozrY2XlFHl7IXpWgs4YRZINWFGIMqkjepM2ny0LJbgzVyzyACb+kTpu4LexvJ4gtAN9rMlYvi7MVF
 iXAW1XSQKKam0HVtJlLnN4Je/4FJvPXg499P2zOe1ZBYJnj1iR3iAM3oS9C8UYTKKYdrZf/3GAgob
 2yD8x1fw==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fjasle.eu;
 i=@fjasle.eu; q=dns/txt; s=s1174286; t=1745614587; h=from : subject :
 to : message-id : date;
 bh=owWeXA2qFbSxDa+WbGesCQaKVfTlr2DxYaRhX4/qnBw=;
 b=XKRvIRDjfOjA4GIVT9wc9yRfxFj4GsGznRTcQOdDufXQvct6tMxEKJbpZXHfaI04gnzGk
 HQCofRkWzBEKiJffhfwiFeIsl8SuZQrKfrwf13f0XAvFADHko0q0zDpcraORw4JXxmH699D
 zqSM1QYMIdMWnELJgEGZwScxBuQQu4LQ1AQ7fR8iFiIpQE+kRa+MIPQyAAmPSX1D7qLSjko
 tqhldtPgibDlNlXruCAQZYfuKqIHRA0Hbdow2uvQSxqePjJ3kLVu2d1ztkXoq+zXRKEFun5
 ZT681tXDsWdUtRFgSaYLYhq7hNfa+fZZs90phnTWUBuMvOzT/7wDBhdJmrtA==
Received: from [10.172.233.58] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <nicolas@fjasle.eu>)
 id 1u8O4V-TRk3EO-H4; Fri, 25 Apr 2025 18:46:48 +0000
Received: from [10.85.249.164] (helo=leknes.fjasle.eu)
 by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97.1-S2G) (envelope-from <nicolas@fjasle.eu>)
 id 1u8O4U-FnQW0hQ0D58-lO44; Fri, 25 Apr 2025 18:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fjasle.eu; s=mail;
 t=1745606802; bh=0ia0+nAnI/nsJasJHb5V2/gXM9qZLGD5ziz3qvpGdgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OKMDd0WrcBwM6g/L2ydRl++BzlqOyGND91Q+5n+Aa5UgL0vJpqZn49aozb/Xay0sA
 w74dEmdiMz3xybwg2bqnIOrHyzhXUQAa5YwBI6q5j97tQgBe5Yecjp+F97ndaWrunp
 BwHDDOTQ3EBRsd5R0TJ09Y3VzdNKZuJHQYZ6Hx18=
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
 id 17F0A49A5F; Fri, 25 Apr 2025 20:46:41 +0200 (CEST)
Date: Fri, 25 Apr 2025 20:46:41 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nicolas Schier <nicolas.schier@linux.dev>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 3/4] scripts/kernel-doc.py: don't create *.pyc files
Message-ID: <aAvYkchT7RISfxsX@fjasle.eu>
References: <cover.1745453655.git.mchehab+huawei@kernel.org>
 <158b962ed7cd104f7bbfe69f499ec1cc378864db.1745453655.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <158b962ed7cd104f7bbfe69f499ec1cc378864db.1745453655.git.mchehab+huawei@kernel.org>
X-Smtpcorp-Track: twuJXqvZ5VnI.fV2F9sMAMA8m.y2_G6Q69yfs
Feedback-ID: 1174286m:1174286a9YXZ7r:1174286ss-2np7oAv
X-Report-Abuse: Please forward a copy of this message, including all headers, 
 to <abuse-report@smtp2go.com>
X-Mailman-Approved-At: Mon, 28 Apr 2025 12:49:53 +0000
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

On Thu, Apr 24, 2025 at 08:16:23AM +0800 Mauro Carvalho Chehab wrote:
> As reported by Andy, kernel-doc.py is creating a __pycache__
> directory at build time.
> 
> Disable creation of __pycache__ for the libraries used by
> kernel-doc.py, when excecuted via the build system or via
> scripts/find-unused-docs.sh.
> 
> Reported-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Closes: https://lore.kernel.org/linux-doc/Z_zYXAJcTD-c3xTe@black.fi.intel.com/
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpu/drm/Makefile      | 2 +-
>  drivers/gpu/drm/i915/Makefile | 2 +-
>  include/drm/Makefile          | 2 +-
>  scripts/Makefile.build        | 2 +-
>  scripts/find-unused-docs.sh   | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index ed54a546bbe2..d21d0cd2c752 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -236,7 +236,7 @@ always-$(CONFIG_DRM_HEADER_TEST) += \
>  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
>        cmd_hdrtest = \
>  		$(CC) $(c_flags) -fsyntax-only -x c /dev/null -include $< -include $<; \
> -		$(srctree)/scripts/kernel-doc -none $(if $(CONFIG_WERROR)$(CONFIG_DRM_WERROR),-Werror) $<; \
> +		 PYTHONDONTWRITEBYTECODE=1 $(KERNELDOC) -none $(if $(CONFIG_WERROR)$(CONFIG_DRM_WERROR),-Werror) $<; \

Did someone check if we could add

  sys.dont_write_bytecode = True

to the script itself instead of cluttering PYTHONDONTWRITEBYTECODE
everywhere [1]?

Kind regards,
Nicolas


[1]: https://docs.python.org/3/library/sys.html#sys.dont_write_bytecode
