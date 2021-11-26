Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA54E45E8F0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 09:00:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909306E906;
	Fri, 26 Nov 2021 08:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715376E906;
 Fri, 26 Nov 2021 08:00:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="215652246"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="215652246"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 00:00:28 -0800
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="458105384"
Received: from jbuczak-mobl.ger.corp.intel.com (HELO [10.213.10.192])
 ([10.213.10.192])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 00:00:26 -0800
Message-ID: <f2dfa757-5483-903e-d30b-ef60f156f14d@linux.intel.com>
Date: Fri, 26 Nov 2021 09:00:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20211118084140.120777-1-janusz.krzysztofik@linux.intel.com>
From: "Bernatowicz, Marcin" <marcin.bernatowicz@linux.intel.com>
In-Reply-To: <20211118084140.120777-1-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Show device PCI
 bus address on errors
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/18/2021 9:41 AM, Janusz Krzysztofik wrote:
> Strange -ENODEV responses from the kernel to i915 driver rebind attempts
> have been sporadically observed.  After successfully unbinding the driver
> from a device by writing a string representing its PCI bus address to
> /sys/bus/pci/driver/i915/unbind, the test then fails while writing the
> same device PCI bus address string to /sys/bus/pci/drivers/i915/bind.  It
> is unlikely that the device disappears from the bus when this happens --
> the test would attempt to rescan the bus in such cases while it doesn't.
> 
> To shed more light on what may be going on, extend error messages emitted
> by the test with the device PCI bus address string it uses also printed.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>   tests/core_hotunplug.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index b36616688..2f2fb7ac1 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -174,11 +174,11 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix,
>   	igt_set_timeout(timeout, "Driver unbind timeout!");
>   	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_drv, "unbind",
>   				   priv->dev_bus_addr),
> -		     "Driver unbind failure!\n");
> +		     "Driver unbind failure (%s)!\n", priv->dev_bus_addr);
>   	igt_reset_timeout();
>   
>   	igt_assert_f(faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr, F_OK, 0),
> -		     "Unbound device still present\n");
> +		     "Unbound device still present (%s)\n", priv->dev_bus_addr);
>   }
>   
>   /* Re-bind the driver to the device */
> @@ -190,12 +190,12 @@ static void driver_bind(struct hotunplug *priv, int timeout)
>   	igt_set_timeout(timeout, "Driver re-bind timeout!");
>   	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_drv, "bind",
>   				   priv->dev_bus_addr),
> -		     "Driver re-bind failure\n!");
> +		     "Driver re-bind failure (%s)!\n", priv->dev_bus_addr);
>   	igt_reset_timeout();
>   
>   	igt_fail_on_f(faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr,
>   				F_OK, 0),
> -		      "Rebound device not present!\n");
> +		      "Rebound device not present (%s)!\n", priv->dev_bus_addr);
>   
>   	if (priv->snd_unload)
>   		igt_kmod_load("snd_hda_intel", NULL);
> @@ -223,7 +223,7 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
>   	igt_assert_eq(priv->fd.sysfs_dev, -1);
>   
>   	igt_assert_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr, F_OK, 0),
> -		     "Unplugged device still present\n");
> +		     "Unplugged device still present (%s)\n", priv->dev_bus_addr);
>   }
>   
>   /* Re-discover the device by rescanning its bus */
> @@ -239,7 +239,7 @@ static void bus_rescan(struct hotunplug *priv, int timeout)
>   
>   	igt_fail_on_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr,
>   				F_OK, 0),
> -		      "Fakely unplugged device not rediscovered!\n");
> +		      "Fakely unplugged device not rediscovered (%s)!\n", priv->dev_bus_addr);
>   }
>   
>   static void cleanup(struct hotunplug *priv)
> 
LGTM,
Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
