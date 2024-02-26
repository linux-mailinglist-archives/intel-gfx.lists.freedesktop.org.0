Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B83868038
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B1E10E79C;
	Mon, 26 Feb 2024 18:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MtOSYOhZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6166B10E79C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973926; x=1740509926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=edZpHiWeaUOKxTWQ9YRLtdrFGxFI5A2INjJ4t8c/Jgw=;
 b=MtOSYOhZEtAnebhm3Kjl7W4jqImAuxR3GhPRih8s7Ewnl0rVh8UeCMZf
 /NsDsX5aAj0snuK2+zS8JM/MCC3tbufhrWr1G1CEPHZK19gsGO4B6G5Jk
 kHngD6qfkgkHy89Mj3dU/ul/KcacCUBsksSWf002VH3z6IeGG11ZvooDV
 SVQzUhjR6NiOuhn7ecYu3t9wv1yj1gq/A333B7Gv3ODCf+J76VV0xUpUP
 +pEfqS7aZS7YOStxvEgK1oWOfsNbSrAJjliEHTGPUCsSztFseK8l0kAFV
 inoRyXV/4cW0Oaf8wtIS5x/J1kMHx5MC+QbBqQ1dN/W8/Kj1YdM4JR/uq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3394212"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3394212"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:58:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770475"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770475"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 10:58:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 20:58:43 +0200
Date: Mon, 26 Feb 2024 20:58:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 6/6] uxa: stop calling deprecated xf86_reload_cursors()
Message-ID: <ZdzfY5-gKy-Yg9Tk@intel.com>
References: <20240221185550.11943-1-info@metux.net>
 <20240221185550.11943-6-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221185550.11943-6-info@metux.net>
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

On Wed, Feb 21, 2024 at 07:55:50PM +0100, Enrico Weigelt, metux IT consult wrote:

<Start of the sentence missing here>

> the function has become a no-op, it's former duties are done automatically.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/uxa/intel_display.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
> index ba4b8d87..ef5962eb 100644
> --- a/src/uxa/intel_display.c
> +++ b/src/uxa/intel_display.c
> @@ -393,9 +393,6 @@ intel_crtc_apply(xf86CrtcPtr crtc)
>  		}
>  	}
> 
> -	if (scrn->pScreen)
> -		xf86_reload_cursors(scrn->pScreen);
> -
>  done:
>  	free(output_ids);
>  	return ret;
> --
> 2.39.2

-- 
Ville Syrjälä
Intel
