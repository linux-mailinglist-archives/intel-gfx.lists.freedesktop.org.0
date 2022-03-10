Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695234D5161
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 20:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B28010E199;
	Thu, 10 Mar 2022 19:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7777010E199
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 19:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646939123; x=1678475123;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WnFGNKbJzycKyV82fMk3LWMbBnyeS+s9105OQY/fMpc=;
 b=JO1Mvr+6LrGPZMIk1+fL3pdZ7BrMfKurzG3i8bmMpzTWnBzlj7XGO/04
 zG62XT129C1g4JcCGHyXJQv9Ty0KtCzczFxnrXAJrIIII8qrqs88RHt3j
 UYl9x/sVPbnKN+ZLrZnVGrpkomsub38pfc4MF6dsohwvB/sEPgnDaQlYp
 vTym3UvYTdtFSBaQJg+cQ7k05g/0vRpPBDAJ22RhUYnjfOouoEdcNHBif
 z4EcSLvfpocgScmDmxCBExQfP0lZQPz08MPQ1uJcLM9o1j1KhBRHaAu6N
 elge/s1TaQxmEfuu+KRhiADwShe4stu1Bllt+BiyBx/q46GWgv3pa8MKU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="235294008"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="235294008"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 11:03:49 -0800
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="554794723"
Received: from jdubrow-mobl.amr.corp.intel.com (HELO intel.com) ([10.255.39.9])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 11:03:46 -0800
Date: Thu, 10 Mar 2022 14:03:45 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YipLkXkoZFFNuK3p@intel.com>
References: <20220308163654.942820-1-alexander.usyskin@intel.com>
 <20220308163654.942820-5-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220308163654.942820-5-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 4/5] mei: gsc: add runtime pm handlers
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

On Tue, Mar 08, 2022 at 06:36:53PM +0200, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> Implement runtime handlers for mei-gsc, to track
> idle state of the device properly.
> 
> CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/misc/mei/gsc-me.c | 67 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 66 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
> index cf427f6fdec9..dac482ddab51 100644
> --- a/drivers/misc/mei/gsc-me.c
> +++ b/drivers/misc/mei/gsc-me.c
> @@ -152,7 +152,72 @@ static int __maybe_unused mei_gsc_pm_resume(struct device *device)
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

This is not needed. The _idle() callback is called right before the autosuspend.
so you just need to return -EBUSY if not idle.

But also I'm missing the call to enable the autosuspend and set the delay.

Is this flow really working and you are getting device suspended when not in use?
(Maybe it is just my ignorance on other flow types here)

> +
> +	return -EBUSY;
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

probably not needed this here... but it would be good if you use
the runtime_pm{get,put} to protect your write operations as well...

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
>  
>  static const struct auxiliary_device_id mei_gsc_id_table[] = {
>  	{
> -- 
> 2.32.0
> 
