Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA1EA6C613
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:50:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F78510E844;
	Fri, 21 Mar 2025 22:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HCcOQhCz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24ACA10E844
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742597403; x=1774133403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yKB4RFCdZBAyCUR8sbfb4K3OHWhKPCGYIzz7AecKJDw=;
 b=HCcOQhCzMzriGF37W4W+E0hcDsHh56kaambXPrTKexZbNRqprtr0E+AR
 74q3FWeMU43Mw4/v5mKwvbUWDWddwNjaJljIZHhowwyGFr0pWbI+U9FQz
 v26lRfgl4j64Cce4xMogONAzCE+eco8H5MaIRk4YtYeOjPjvLmCY+SESC
 Nu5lC6oTNXq93iucfaXRio6XmOQeKAMoj5vJ6fhR5Jt4DsdjJ547Bffv9
 HcaWtHF3SuyKbZ3syCoZJzSAGdKl/E5kClSOGmr1tVXyRgIV9JDVdlE20
 dKqbuudB4/OfxWEsAvR81f7ulKwv/iYut0ze6tghbtYRQBKrfgUEf4zVa Q==;
X-CSE-ConnectionGUID: QfHdPgG5RPedOJaihN8WYg==
X-CSE-MsgGUID: W1M7dXphS6+nDyunqhaPmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="44002461"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="44002461"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:50:03 -0700
X-CSE-ConnectionGUID: 4X8dUFLRR/2nWjA9n9QRyg==
X-CSE-MsgGUID: JLiQV3/hQN2PzhopSS25fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128745874"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:50:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:49:59 +0200
Date: Sat, 22 Mar 2025 00:49:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/16] uxa: stop calling deprecated xf86_reload_cursors()
Message-ID: <Z93tFxt0c4AkJOMr@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-10-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-10-info@metux.net>
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

On Tue, Mar 04, 2025 at 04:58:02PM +0100, Enrico Weigelt, metux IT consult wrote:
> the function has become a no-op, it's former duties are done automatically.

s/the function/xf86_reload_cursors()/

Could use xserver commit references as well.

> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/uxa/intel_display.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
> index 409cbbcf..2a544779 100644
> --- a/src/uxa/intel_display.c
> +++ b/src/uxa/intel_display.c
> @@ -394,9 +394,6 @@ intel_crtc_apply(xf86CrtcPtr crtc)
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
> 2.39.5

-- 
Ville Syrjälä
Intel
