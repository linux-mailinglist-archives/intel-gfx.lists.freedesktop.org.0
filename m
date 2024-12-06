Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09459E6D24
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 12:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9142B10E3E2;
	Fri,  6 Dec 2024 11:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBE810E3E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 11:17:52 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0352B61E5FE05;
 Fri, 06 Dec 2024 12:17:34 +0100 (CET)
Message-ID: <97e55056-0f4f-4d4f-9c0c-fe8da4de147c@molgen.mpg.de>
Date: Fri, 6 Dec 2024 12:17:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
To: Jani Nikula <jani.nikula@intel.com>
References: <20241205123720.3278727-1-jani.nikula@intel.com>
Content-Language: en-US
Cc: intel-gfx@lists.freedesktop.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241205123720.3278727-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Dear Jani,


Thank you for the patch.

Am 05.12.24 um 13:37 schrieb Jani Nikula:
> The debugfs contains all the other timings except panel power cycle
> delay. Add it for completeness.

For the record, here is the output from the Dell XPS 13 9360, and in 
case you want to add it to the commit message.

     $ sudo more /sys/kernel/debug/dri/0000:00:02.0/eDP-1/i915_panel_timings
     Panel power up delay: 200
     Panel power down delay: 50
     Panel power cycle delay: 600
     Backlight on delay: 1
     Backlight off delay: 200

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_pps.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7784b3b760db..e55c84685521 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1819,6 +1819,8 @@ static int intel_pps_show(struct seq_file *m, void *data)
>   		   intel_dp->pps.panel_power_up_delay);
>   	seq_printf(m, "Panel power down delay: %d\n",
>   		   intel_dp->pps.panel_power_down_delay);
> +	seq_printf(m, "Panel power cycle delay: %d\n",
> +		   intel_dp->pps.panel_power_cycle_delay);
>   	seq_printf(m, "Backlight on delay: %d\n",
>   		   intel_dp->pps.backlight_on_delay);
>   	seq_printf(m, "Backlight off delay: %d\n",

Tested-by: Paul Menzel <pmenzel@molgen.mpg.de> # Dell XPS 13 9360


Kind regards,

Paul
