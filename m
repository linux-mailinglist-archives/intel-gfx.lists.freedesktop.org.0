Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570A32E0A15
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 13:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB69B6E32A;
	Tue, 22 Dec 2020 12:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D216E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 12:36:36 +0000 (UTC)
IronPort-SDR: S0Syau4Ni/3i/UyfJekk7clndNwqds+0WxXinNOq6S/tl0zrb/hxiRVPqn23+5fR7rKfdT5A2h
 iEnrW3fPkDgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="175961237"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="175961237"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 04:36:31 -0800
IronPort-SDR: ih8BAQykNhV7ErlpmuYu3mu0fNJ0MWl1K9RX6bde/dsVeukuoClfC13oO+7heVqoTJxAlhajql
 X708aELK1bFA==
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="416491508"
Received: from egudimex-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.25])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 04:36:30 -0800
MIME-Version: 1.0
In-Reply-To: <20201221130105.5519-1-chris@chris-wilson.co.uk>
References: <20201221130105.5519-1-chris@chris-wilson.co.uk>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160864058614.9438.1781789167103661040@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 22 Dec 2020 14:36:26 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add a comment about how to use
 udev for configuring engines
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-12-21 15:01:05)
> We expose engine properties under sysfs so that the sysadmin can
> configure the driver according to their requirements. We can also use
> udev rules to then apply that configuration anytime a device is
> reloaded. Include a udev snippet provided by Joonas as an example.
> 
> v2: Update the snippet
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/sysfs_engines.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index 9cf943b6a44b..37f078e69a42 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -11,6 +11,22 @@
>  #include "intel_engine_heartbeat.h"
>  #include "sysfs_engines.h"
>  
> +/*
> + * The sysfs provides a means for configuring each engine for the intended
> + * usecase, and by utilising a udev the configuration can be made persistent
> + * across reboots and device rebinding.
> + *
> + * An example udev rule to run a custom sysadmin script would be,
> + * /etc/udev/rules.d/50-intel-gpu.rules:
> + *
> + * ACTION=="bind|add",SUBSYSTEM=="pci",DRIVER=="i915",RUN+="/usr/local/libexec/i915-disable-preempt-timeout.sh"
> + *
> + * where the script receives the device name and can open the sysfs, e.g.:
> + * for ENGINE in $(find /sys/$DEVPATH/drm/card?/engine -maxdepth 1) do
> + *   echo 0 > $ENGINE/preempt_timeout_ms # Disable reset on preemption failure
> + * done
> + */

If we just could get this into the output of 'make htmldocs', it would
be good.

Regards, Joonas

> +
>  struct kobj_engine {
>         struct kobject base;
>         struct intel_engine_cs *engine;
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
