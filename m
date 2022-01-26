Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B879549D166
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA53010E5C0;
	Wed, 26 Jan 2022 18:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B31510E307
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 18:05:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2505C61BB6;
 Wed, 26 Jan 2022 18:05:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F20EC340E3;
 Wed, 26 Jan 2022 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643220334;
 bh=4mOTV3T/OhqNoQq9ppaU5uGUyXH2XX18wSlRzpX73pA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ot/Fc1GoZLezYx/ro5TJdySOQTjQc5ONJkSxMbJ6HIxMKaEFfwvhbZYo1QWrw0Fpj
 L3qQxSqVm3JHWEvEOyoM0DvVo82YzBsMFoG9449Lerv81JGO3cLiEbDndfrzcWt3qL
 xmpUkqz6RnUm6DcuvNq4Fu5i/nqWZwG6M/4uoYvg=
Date: Wed, 26 Jan 2022 19:05:32 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YfGNbK6n3Ag/ORFJ@kroah.com>
References: <20220119155807.222657-1-alexander.usyskin@intel.com>
 <20220119155807.222657-3-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119155807.222657-3-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/5] mei: add support for graphics system
 controller (gsc) devices
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 19, 2022 at 05:58:04PM +0200, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> GSC is a graphics system controller, based on CSE, it provides
> a chassis controller for graphics discrete cards, as well as it
> supports media protection on selected devices.
> 
> mei_gsc binds to a auxiliary devices exposed by Intel discrete
> driver i915.
> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  drivers/misc/mei/Kconfig  |  14 +++
>  drivers/misc/mei/Makefile |   3 +
>  drivers/misc/mei/gsc-me.c | 192 ++++++++++++++++++++++++++++++++++++++
>  drivers/misc/mei/hw-me.c  |  27 +++++-
>  drivers/misc/mei/hw-me.h  |   2 +
>  5 files changed, 236 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/misc/mei/gsc-me.c
> 
> diff --git a/drivers/misc/mei/Kconfig b/drivers/misc/mei/Kconfig
> index 0e0bcd0da852..ec119bb98251 100644
> --- a/drivers/misc/mei/Kconfig
> +++ b/drivers/misc/mei/Kconfig
> @@ -46,6 +46,20 @@ config INTEL_MEI_TXE
>  	  Supported SoCs:
>  	  Intel Bay Trail
>  
> +config INTEL_MEI_GSC
> +	tristate "Intel MEI GSC embedded device"
> +	select INTEL_MEI
> +	select INTEL_MEI_ME

Please don't select, why not just depend on?

thanks,

greg k-h
