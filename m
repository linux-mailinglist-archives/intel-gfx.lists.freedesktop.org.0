Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1924E4498
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 17:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C032210E2A5;
	Tue, 22 Mar 2022 16:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2919F10E2DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647968183; x=1679504183;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bmmDyu0Vb7XFsOT1vxBWP7QRy91KbOrlHk6aSyxue84=;
 b=VoeNDHk/Ni129M2UHUUUzpQcEhos84WwIPkljGgzBwmrj1rs7aA1k67V
 oBJLMJogf3wtS7QoOVhs7CAXxpxVi+aZz0ayzM5rmPazIPE/HkZl1tzMo
 mAC42ci5xFzockYDY4WX5SF8iXORB0kdX0uWwXB1mVvbwufj9H7gzz8Jm
 E3wfPAWrnhF+F7cU6X9alzLLW55dUc2rjYhuOLMw/ikH20jF9bLl2m7E+
 daWjPZmjJKofPuh7z9mrQ19CPpIrsbjLr5rvs7cbYEglufppuCljyVGod
 4V5w7pDmZcOULc9zDDPcb3qo2ZvUGeK8WnRuB2OCHcZ27cmKHRlhhqKZc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="318582957"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="318582957"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 09:56:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="560464945"
Received: from jdtong-mobl.amr.corp.intel.com (HELO intel.com) ([10.255.37.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 09:56:20 -0700
Date: Tue, 22 Mar 2022 12:56:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Yjn/si3bGhPtJcyc@intel.com>
References: <20220315131157.3972238-1-alexander.usyskin@intel.com>
 <20220315131157.3972238-5-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220315131157.3972238-5-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v11 4/5] mei: gsc: add runtime pm handlers
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
Cc: David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 15, 2022 at 03:11:56PM +0200, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> Implement runtime handlers for mei-gsc, to track
> idle state of the device properly.
> 
> CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
> V4: drop debug prints
> V5: Rebase
> V6: Rebase
> V7: add Greg KH Reviewed-by
> V8: Rebase
> V9: Rebase
> V11: Rebase
> ---
>  drivers/misc/mei/gsc-me.c | 67 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 66 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
> index 58e39c00f150..32ea75f5e7aa 100644
> --- a/drivers/misc/mei/gsc-me.c
> +++ b/drivers/misc/mei/gsc-me.c
> @@ -159,7 +159,72 @@ static int __maybe_unused mei_gsc_pm_resume(struct device *device)
>  	return 0;
>  }
>  
> -static SIMPLE_DEV_PM_OPS(mei_gsc_pm_ops, mei_gsc_pm_suspend, mei_gsc_pm_resume);
> +static int __maybe_unused mei_gsc_pm_runtime_idle(struct device *device)
> +{
> +	struct mei_device *dev = dev_get_drvdata(device);
> +
> +	if (!dev)
> +		return -ENODEV;
> +	if (mei_write_is_idle(dev))
> +		pm_runtime_autosuspend(device);
> +
> +	return -EBUSY;

I see now... this function takes to the autosuspend but returns the EBUSY so
the pci subsystem won't take it. Many other drivers taking this approach.

> +}
> +
> +static int  __maybe_unused mei_gsc_pm_runtime_suspend(struct device *device)
> +{
> +	struct mei_device *dev = dev_get_drvdata(device);
> +	struct mei_me_hw *hw;
> +	int ret;
> +
> +	if (!dev)
> +		return -ENODEV;
> +
> +	mutex_lock(&dev->device_lock);
> +
> +	if (mei_write_is_idle(dev)) {
> +		hw = to_me_hw(dev);
> +		hw->pg_state = MEI_PG_ON;
> +		ret = 0;
> +	} else {
> +		ret = -EAGAIN;
> +	}
> +
> +	mutex_unlock(&dev->device_lock);
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused mei_gsc_pm_runtime_resume(struct device *device)
> +{
> +	struct mei_device *dev = dev_get_drvdata(device);
> +	struct mei_me_hw *hw;
> +	irqreturn_t irq_ret;
> +
> +	if (!dev)
> +		return -ENODEV;
> +
> +	mutex_lock(&dev->device_lock);
> +
> +	hw = to_me_hw(dev);
> +	hw->pg_state = MEI_PG_OFF;
> +
> +	mutex_unlock(&dev->device_lock);
> +
> +	irq_ret = mei_me_irq_thread_handler(1, dev);
> +	if (irq_ret != IRQ_HANDLED)
> +		dev_err(dev->dev, "thread handler fail %d\n", irq_ret);
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops mei_gsc_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(mei_gsc_pm_suspend,
> +				mei_gsc_pm_resume)
> +	SET_RUNTIME_PM_OPS(mei_gsc_pm_runtime_suspend,
> +			   mei_gsc_pm_runtime_resume,
> +			   mei_gsc_pm_runtime_idle)
> +};

Thank you for all the explanation.

I would prefer if you could move the autosuspend enable and autosuspend delay
to this patch instead of having it on the patch 2. Concerning some strange
behaviour in some bisect...

But that's minor and up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



>  
>  static const struct auxiliary_device_id mei_gsc_id_table[] = {
>  	{
> -- 
> 2.32.0
> 
