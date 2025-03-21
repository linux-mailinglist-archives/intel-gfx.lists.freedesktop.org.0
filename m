Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E63A6C5AA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FE510E842;
	Fri, 21 Mar 2025 22:13:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzD/1ZTN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E040210E842
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742595199; x=1774131199;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FBNeY+3m8hG5Oj2TEgU4XFBb1I9zqpGT8zX28Zza5FY=;
 b=fzD/1ZTNL1fYZ9KLGNv/o5UXebvmyftM438/mIMk+H443MrY2KW0uu96
 ja4/A2ugCShGpjJ7XfAjv5GpC9CNW/RWRQEHC9OztyaLd0JJ6rU766cjY
 aridApC0NRRUMitFomRdxJxEY8qaoFNqkWc/pIXMDEQFfEVBfAYnBDMrK
 IpbCpOL/9nNLRTmSBx7q7M3PV4qnjQLy1hX5W0lPaeRzUseDXEnaNsNCg
 LFkKrTtSpRn3DNegz0fozjjvTFA9faFR0PljLKv+Nsd2E3pDpr4qCmXEl
 EuTAumiZkmb8uVTVgAvmn4Jq8xrovM4aRsM870nqRpe6CLBXbQ8eVaroX Q==;
X-CSE-ConnectionGUID: Qr/XA1dCQLenFHT2xYmdBw==
X-CSE-MsgGUID: YO/G3MlMTyGi0B4KqafD0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43601471"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43601471"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:13:17 -0700
X-CSE-ConnectionGUID: QlhppMZUTSSTK7BO+Ytssw==
X-CSE-MsgGUID: yehhZN7bTYqk1fG+UL+2Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128740011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:13:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:13:13 +0200
Date: Sat, 22 Mar 2025 00:13:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 13/16] meson.build: increase required version
Message-ID: <Z93keZPoi9q0N_V-@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-14-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-14-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:58:06PM +0100, Enrico Weigelt, metux IT consult wrote:
> tools/meson.build:45: WARNING: Project targets '>0.40.0' but uses feature introduced in '0.41.0': capture arg in configure_file.
> 377tools/meson.build:45: WARNING: Project targets '>0.40.0' but uses feature introduced in '0.50.0': install arg in configure_file.

I have a feeling meson itself might be confused as to when things
got added. I'm pretty sure I just used whatever meson version
I had at the time and it hasn't been touched since.

But whatever, >=0.50 seems reasonable enough.

> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  meson.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meson.build b/meson.build
> index 227ca2eb..fa861401 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -5,7 +5,7 @@ project('xf86-video-intel', 'c',
>  	  'c_std=gnu99',
>  	],
>  	license : 'MIT',
> -	meson_version : '>0.40.0')
> +	meson_version : '>=0.50.0')
> 
>  config = configuration_data()
> 
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
