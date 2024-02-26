Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF5F868034
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA3810E7A0;
	Mon, 26 Feb 2024 18:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJAAtD24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C19010E7A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973872; x=1740509872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DZTOExiqOFDGJPBm9+q7MyfLFI+m1lQXydEkY+A4yAM=;
 b=PJAAtD24o8Ndy8NvSN7XTZrgIcMOzjsKkxFXcCDZFDy3Ipwk32JIpJpX
 MIC2xyj48iGxW4KKM5W0y0F5nK5SlSaFRj4INT0HrsHBU+ZeLRry7wiT+
 g9v+eLewgemxZb4gB55EyOFmKJuLH3kTzyOSzmc+QCYdo0nrcYu0/9Ybh
 /xM9AktzYxJyxB/r2hYxDpGRGDoQk2c7lqGmu31lgH8ft9sQcKpyR0qhS
 4apsk7wWlVn+S79XL0s3hgj03Xj3uVwvuwCOTC/UOQvvG2SUevt41fY2Y
 3Xit7nBh5nhCDFWYkop88FO2aYrectlbc9q81F3K0ix+h9qrLb7YJknmN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3394102"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3394102"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770473"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770473"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 10:57:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 20:57:49 +0200
Date: Mon, 26 Feb 2024 20:57:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] intel_device: fix warning on possible buffer
 overlflow on sprintf() calls
Message-ID: <ZdzfLVOkMvD7llrI@intel.com>
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

Please write an actual commit message.

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
>  	DIR *dir;
>  	struct dirent *de;
>  	int base;
> --
> 2.39.2

-- 
Ville Syrjälä
Intel
