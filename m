Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64B7EB16B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 15:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5097410E209;
	Tue, 14 Nov 2023 14:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5552910E209
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 14:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699970440; x=1731506440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8MTbpo3Efo//szP/HyktlpuvdpYf9TCc/j17TSKA3us=;
 b=kNToPgRZLnahgvRAH03D6AJnt9anuwtqGeF+EPYEBXLYiMZJqj917u26
 X8neGn3K40gp07OuzL4AsK/MhXl8fjc1gv2z7QQ5Dsxm+pAGJW3l1Cz+L
 /hRKpTopibbad4Aq4Rbqi0ZzDsiVtYGij4bxsyIS+bzS69yZ3NdnW0Nmz
 5h+2DPR7LEH98SJcUj4qd1y6Hbb6pKTizIlg8akMdwkU8xo+eeqYgtF58
 IgejojKwh88wCN2jkk7QaYkpRUE7myUJFiTRu8oDhyCtoh9yIQv87i82x
 TamID85cqQhwCHh2+aiqjUmy2k6LsD9+7aty+mkkCtOzjEOf/LkQbMUjH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="370855827"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="370855827"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 06:00:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758180109"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="758180109"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 06:00:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 16:00:27 +0200
Date: Tue, 14 Nov 2023 16:00:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <ZVN9e3BczixJy_1H@intel.com>
References: <20231011110157.247552-1-tomas.winkler@intel.com>
 <20231011110157.247552-4-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011110157.247552-4-tomas.winkler@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [char-misc-next 3/4] mei: pxp: re-enable client on
 errors
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 11, 2023 at 02:01:56PM +0300, Tomas Winkler wrote:
> From: Alexander Usyskin <alexander.usyskin@intel.com>
> 
> Disable and enable mei-pxp client on errors to clean the internal state.

This broke i915 on my Alderlake-P laptop.

Trying to start Xorg just hangs and I eventually have to power off the
laptop to get things back into shape.

The behaviour gets a bit better after commit fb99e79ee62a ("mei: update mei-pxp's
component interface with timeouts") as Xorg "only" gets blocked for
~10 seconds, after which it manages to start, and I get a bunch of spew
in dmesg:
[   25.431535] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   30.435241] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   30.435965] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   30.437341] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   30.437356] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg for inv-stream-key-15, ret=[28]
[   35.555210] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   35.555919] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   35.555937] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg init arb session, ret=[-62]
[   35.555941] i915 0000:00:02.0: [drm] *ERROR* tee cmd for arb session creation failed
[   35.556765] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   36.021808] fuse: init (API version 7.39)
[   40.675183] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   40.676045] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   40.676591] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   40.676602] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg for inv-stream-key-15, ret=[28]
[   40.960209] mate-session-ch[5936]: memfd_create() called without MFD_EXEC or MFD_NOEXEC_SEAL set
[   45.795172] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   45.795872] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   45.796520] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   50.915183] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   50.916005] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   50.916012] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg for inv-stream-key-15, ret=[-62]
[   50.916846] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   56.035149] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
[   56.035956] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   56.036585] i915 0000:00:02.0: [drm] *ERROR* Failed to send PXP TEE message
[   56.036592] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg for inv-stream-key-15, ret=[28]
[   61.155137] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...

The same spew repeats every time I run any application that uses the GPU,
and the application also gets blocked for a long time (eg. firefox takes
over 15 seconds to start now).

> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  drivers/misc/mei/pxp/mei_pxp.c | 70 +++++++++++++++++++++++-----------
>  1 file changed, 48 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_pxp.c
> index c6cdd6a47308ebcc72f34c38..9875d16445bb03efcfb31cd9 100644
> --- a/drivers/misc/mei/pxp/mei_pxp.c
> +++ b/drivers/misc/mei/pxp/mei_pxp.c
> @@ -23,6 +23,24 @@
>  
>  #include "mei_pxp.h"
>  
> +static inline int mei_pxp_reenable(const struct device *dev, struct mei_cl_device *cldev)
> +{
> +	int ret;
> +
> +	dev_warn(dev, "Trying to reset the channel...\n");
> +	ret = mei_cldev_disable(cldev);
> +	if (ret < 0)
> +		dev_warn(dev, "mei_cldev_disable failed. %d\n", ret);
> +	/*
> +	 * Explicitly ignoring disable failure,
> +	 * enable may fix the states and succeed
> +	 */
> +	ret = mei_cldev_enable(cldev);
> +	if (ret < 0)
> +		dev_err(dev, "mei_cldev_enable failed. %d\n", ret);
> +	return ret;
> +}
> +
>  /**
>   * mei_pxp_send_message() - Sends a PXP message to ME FW.
>   * @dev: device corresponding to the mei_cl_device
> @@ -35,6 +53,7 @@ mei_pxp_send_message(struct device *dev, const void *message, size_t size)
>  {
>  	struct mei_cl_device *cldev;
>  	ssize_t byte;
> +	int ret;
>  
>  	if (!dev || !message)
>  		return -EINVAL;
> @@ -44,10 +63,20 @@ mei_pxp_send_message(struct device *dev, const void *message, size_t size)
>  	byte = mei_cldev_send(cldev, message, size);
>  	if (byte < 0) {
>  		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
> -		return byte;
> +		switch (byte) {
> +		case -ENOMEM:
> +			fallthrough;
> +		case -ENODEV:
> +			fallthrough;
> +		case -ETIME:
> +			ret = mei_pxp_reenable(dev, cldev);
> +			if (ret)
> +				byte = ret;
> +			break;
> +		}
>  	}
>  
> -	return 0;
> +	return byte;
>  }
>  
>  /**
> @@ -63,6 +92,7 @@ mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
>  	struct mei_cl_device *cldev;
>  	ssize_t byte;
>  	bool retry = false;
> +	int ret;
>  
>  	if (!dev || !buffer)
>  		return -EINVAL;
> @@ -73,26 +103,22 @@ mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
>  	byte = mei_cldev_recv(cldev, buffer, size);
>  	if (byte < 0) {
>  		dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
> -		if (byte != -ENOMEM)
> -			return byte;
> -
> -		/* Retry the read when pages are reclaimed */
> -		msleep(20);
> -		if (!retry) {
> -			retry = true;
> -			goto retry;
> -		} else {
> -			dev_warn(dev, "No memory on data receive after retry, trying to reset the channel...\n");
> -			byte = mei_cldev_disable(cldev);
> -			if (byte < 0)
> -				dev_warn(dev, "mei_cldev_disable failed. %zd\n", byte);
> -			/*
> -			 * Explicitly ignoring disable failure,
> -			 * enable may fix the states and succeed
> -			 */
> -			byte = mei_cldev_enable(cldev);
> -			if (byte < 0)
> -				dev_err(dev, "mei_cldev_enable failed. %zd\n", byte);
> +		switch (byte) {
> +		case -ENOMEM:
> +			/* Retry the read when pages are reclaimed */
> +			msleep(20);
> +			if (!retry) {
> +				retry = true;
> +				goto retry;
> +			}
> +			fallthrough;
> +		case -ENODEV:
> +			fallthrough;
> +		case -ETIME:
> +			ret = mei_pxp_reenable(dev, cldev);
> +			if (ret)
> +				byte = ret;
> +			break;
>  		}
>  	}
>  
> -- 
> 2.41.0
> 

-- 
Ville Syrj�l�
Intel
