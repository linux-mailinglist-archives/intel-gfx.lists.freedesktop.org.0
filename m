Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006F3868118
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0935D10E4F7;
	Mon, 26 Feb 2024 19:35:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q0mG6vxd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D90B10E4F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708976155; x=1740512155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HjPbVdFLY1vpnIK9nN92uOagBlaP1BEjywddz2/keME=;
 b=Q0mG6vxdF1UM+ZYya/JW/Fh1WrPD1sBB1mOWnY0MecokzTIlxFbQqLpr
 9rMKga3PQBEmaqHxlp+kYUSfKSF+Jfhhnrvn5ilo5OfefMNc//Y52BQZU
 j5GOi+HOiUF0i79/fRkfKA98HP5d3R1HHWzrSc3Ac98cIAnoSGOA2tHv0
 bH1+f/9KMcaJsl+K92zp17n07ECfRrFQ1oaP8FYrv0LqquJvoDlMB7YNv
 lVjVLsQLA2SjI6hJU0PvzLEcLumT/AZ7S2vfxdrCzcpzr2pvsn7dlriLa
 5R8LbOM7xMY4UGeAh2D4ykYt8n0+v7qJRLg/OAz5f4Gh6+0p5bXCNlt2T g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3148309"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3148309"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770481"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770481"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 11:35:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 21:35:51 +0200
Date: Mon, 26 Feb 2024 21:35:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] intel_device: fix warning on possible buffer
 overlflow on sprintf() calls
Message-ID: <ZdzoF1RrTGGi8703@intel.com>
References: <20240221185550.11943-1-info@metux.net>
 <20240221185550.11943-4-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221185550.11943-4-info@metux.net>
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

On Wed, Feb 21, 2024 at 07:55:48PM +0100, Enrico Weigelt, metux IT consult wrote:
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/intel_device.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/src/intel_device.c b/src/intel_device.c
> index f28d3be1..06108ec3 100644
> --- a/src/intel_device.c
> +++ b/src/intel_device.c
> @@ -335,7 +335,7 @@ static int __intel_open_device__major_minor(int _major, int _minor)
>  static int __intel_open_device__pci(const struct pci_device *pci)
>  {
>  	struct stat st;
> -	char path[256];
> +	char path[PATH_MAX];

I had a slightly different take on this in
https://patchwork.freedesktop.org/series/115348/

I suppose I should actually push that stuff...

>  	DIR *dir;
>  	struct dirent *de;
>  	int base;
> --
> 2.39.2

-- 
Ville Syrjälä
Intel
