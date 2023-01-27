Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C6A67DFB0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 10:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FED10E42D;
	Fri, 27 Jan 2023 09:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80DB10E42D;
 Fri, 27 Jan 2023 09:09:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 84E3CB81F8A;
 Fri, 27 Jan 2023 09:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C85DFC433D2;
 Fri, 27 Jan 2023 09:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1674810540;
 bh=ofc/Q2Cvt2RWidxUaFYOS3ShpvD9z3RYefs0vsOGTTM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bx7/4uXJAYN4MukrTQRBvdOEuujQFAKXdAaCEytN/t9MznPZb8FVn+oAdGM53DHIS
 O8zIgKhOglazoUFZtgjVTusnUJXz/XNU7rfZPUL7+YvfoFv0QZNThb3uXGfPbgiLCm
 9sYaQ6LfZLafQj0BXgMn75+Odn5BR9I/509bhWNE=
Date: Fri, 27 Jan 2023 10:08:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y9OUqX07ndB0U1AP@kroah.com>
References: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
 <20230125082637.118970-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125082637.118970-2-alan.previn.teres.alexis@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 1/6] mei: mei-me: resume device in prepare
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 dri-devel@lists.freedesktop.org, Vivi@kroah.com,
 Rodrigo <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 25, 2023 at 12:26:32AM -0800, Alan Previn wrote:
> From: Alexander Usyskin <alexander.usyskin@intel.com>
> 
> Asynchronous runtime resume is not possible while the system
> is suspending.
> The power management subsystem resumes the device only in the
> suspend phase, not in the prepare phase.
> Force resume device in prepare to allow drivers on mei bus
> to communicate in their prepare callbacks.
> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Reviewed-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/misc/mei/pci-me.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> index 5bf0d50d55a0..676d566f38dd 100644
> --- a/drivers/misc/mei/pci-me.c
> +++ b/drivers/misc/mei/pci-me.c
> @@ -342,6 +342,12 @@ static void mei_me_remove(struct pci_dev *pdev)
>  }
>  
>  #ifdef CONFIG_PM_SLEEP
> +static int mei_me_pci_prepare(struct device *device)
> +{
> +	pm_runtime_resume(device);
> +	return 0;
> +}
> +
>  static int mei_me_pci_suspend(struct device *device)
>  {
>  	struct pci_dev *pdev = to_pci_dev(device);
> @@ -398,7 +404,17 @@ static int mei_me_pci_resume(struct device *device)
>  
>  	return 0;
>  }
> -#endif /* CONFIG_PM_SLEEP */
> +
> +static void mei_me_pci_complete(struct device *device)
> +{
> +	pm_runtime_suspend(device);
> +}
> +#else /* CONFIG_PM_SLEEP */
> +
> +#define mei_me_pci_prepare NULL
> +#define mei_me_pci_complete NULL
> +
> +#endif /* !CONFIG_PM_SLEEP */
>  
>  #ifdef CONFIG_PM
>  static int mei_me_pm_runtime_idle(struct device *device)
> @@ -501,6 +517,8 @@ static inline void mei_me_unset_pm_domain(struct mei_device *dev)
>  }
>  
>  static const struct dev_pm_ops mei_me_pm_ops = {
> +	.prepare = mei_me_pci_prepare,
> +	.complete = mei_me_pci_complete,
>  	SET_SYSTEM_SLEEP_PM_OPS(mei_me_pci_suspend,
>  				mei_me_pci_resume)
>  	SET_RUNTIME_PM_OPS(
> -- 
> 2.39.0
> 

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
