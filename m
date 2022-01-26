Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE0C49D169
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6E410E307;
	Wed, 26 Jan 2022 18:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C73610E307
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 18:06:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F051AB81EA3;
 Wed, 26 Jan 2022 18:06:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F773C340E3;
 Wed, 26 Jan 2022 18:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643220403;
 bh=QLWf46ZJBe3A6s/1uQlaavv/GLlnGitzbdxjYBqG184=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2lm6c0Nrx/v4Zqt61okemGVxrYTkyV+60Ki+OaVumqWNML/3L4nkZm3P63a8+TP5r
 U07x7Dn8FR42wsrasLD6au6IX0deMML7Z2grbCHUYWaBa3zyXo3I2MSulRaAw/1KU0
 bDn1O9uFgqjHVyZRzmooNszhSq6q7bxI60kUMm4M=
Date: Wed, 26 Jan 2022 19:06:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YfGNsSuRGAxYLfCG@kroah.com>
References: <20220119155807.222657-1-alexander.usyskin@intel.com>
 <20220119155807.222657-5-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119155807.222657-5-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/5] mei: gsc: add runtime pm handlers
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

On Wed, Jan 19, 2022 at 05:58:06PM +0200, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> Implement runtime handlers for mei-gsc, to track
> idle state of the device properly.
> 
> CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/misc/mei/gsc-me.c | 80 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 79 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/mei/gsc-me.c b/drivers/misc/mei/gsc-me.c
> index f58e54d2c1fc..fddae8009b62 100644
> --- a/drivers/misc/mei/gsc-me.c
> +++ b/drivers/misc/mei/gsc-me.c
> @@ -158,7 +158,85 @@ static int __maybe_unused mei_gsc_pm_resume(struct device *device)
>  	return 0;
>  }
>  
> -static SIMPLE_DEV_PM_OPS(mei_gsc_pm_ops, mei_gsc_pm_suspend, mei_gsc_pm_resume);
> +static int __maybe_unused mei_gsc_pm_runtime_idle(struct device *device)
> +{
> +	struct mei_device *dev;
> +
> +	dev_dbg(device, "rpm: me: runtime_idle\n");
> +
> +	dev = dev_get_drvdata(device);
> +	if (!dev)
> +		return -ENODEV;
> +	if (mei_write_is_idle(dev))
> +		pm_runtime_autosuspend(device);
> +
> +	return -EBUSY;
> +}
> +
> +static int  __maybe_unused mei_gsc_pm_runtime_suspend(struct device *device)
> +{
> +	struct mei_device *dev;
> +	struct mei_me_hw *hw;
> +	int ret;
> +
> +	dev_dbg(device, "rpm: me: runtime suspend\n");

No need for debugging code to remain, use ftrace if you really need it.

Same for other dev_dbg() calls in this patch, they can all be removed.

thanks,

greg k-h
