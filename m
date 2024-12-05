Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3099E58DB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5367310EEA7;
	Thu,  5 Dec 2024 14:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 530 seconds by postgrey-1.36 at gabe;
 Thu, 05 Dec 2024 14:49:03 UTC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9E610EEA7;
 Thu,  5 Dec 2024 14:49:03 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aee9c.dynamic.kabel-deutschland.de
 [95.90.238.156])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3014461E6476B;
 Thu, 05 Dec 2024 15:39:59 +0100 (CET)
Message-ID: <469420b8-6c6f-4316-a52c-a9d933dac0d3@molgen.mpg.de>
Date: Thu, 5 Dec 2024 15:39:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pps: debug log the remaining power cycle delay
 to wait
To: Jani Nikula <jani.nikula@intel.com>
References: <20241204160048.2774419-1-jani.nikula@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
In-Reply-To: <20241204160048.2774419-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


Thank you very much for the patch.

Am 04.12.24 um 17:00 schrieb Jani Nikula:
> While pps_init_delays() debug logs the power cycle delay, also debug log
> the actual remaining time to wait in wait_panel_power_cycle().
> 
> Note that this still isn't the full picture; the power sequencer may
> still wait after this one.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13007
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>   drivers/gpu/drm/i915/display/intel_pps.c | 19 ++++++++++---------
>   1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7784b3b760db..bfda52850150 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -668,23 +668,24 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>   	struct intel_display *display = to_intel_display(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	ktime_t panel_power_on_time;
> -	s64 panel_power_off_duration;
> -
> -	drm_dbg_kms(display->drm,
> -		    "[ENCODER:%d:%s] %s wait for panel power cycle\n",
> -		    dig_port->base.base.base.id, dig_port->base.base.name,
> -		    pps_name(intel_dp));
> +	s64 panel_power_off_duration, remaining;
>   
>   	/* take the difference of current time and panel power off time
>   	 * and then make panel wait for power_cycle if needed. */
>   	panel_power_on_time = ktime_get_boottime();
>   	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);
>   
> +	remaining = max(0, intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);
> +
> +	drm_dbg_kms(display->drm,
> +		    "[ENCODER:%d:%s] %s wait for panel power cycle (%lld ms remaining)\n",
> +		    dig_port->base.base.base.id, dig_port->base.base.name,
> +		    pps_name(intel_dp), remaining);
> +
>   	/* When we disable the VDD override bit last we have to do the manual
>   	 * wait. */
> -	if (panel_power_off_duration < (s64)intel_dp->pps.panel_power_cycle_delay)
> -		wait_remaining_ms_from_jiffies(jiffies,
> -				       intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);
> +	if (remaining)
> +		wait_remaining_ms_from_jiffies(jiffies, remaining);
>   
>   	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>   }

Tested-by: Paul Menzel <pmenzel@molgen.mpg.de> # Dell XPS 13 
9360/0596KF, BIOS 2.21.0 06/02/2022

     [   51.596033] PM: suspend entry (deep)
     [   51.622184] Filesystems sync: 0.026 seconds
     [   51.634863] Freezing user space processes
     [   51.636697] Freezing user space processes completed (elapsed 
0.001 seconds)
     [   51.636708] OOM killer disabled.
     [   51.636711] Freezing remaining freezable tasks
     [   51.638017] Freezing remaining freezable tasks completed 
(elapsed 0.001 seconds)
     [   51.638132] printk: Suspending console(s) (use 
no_console_suspend to debug)
     [   51.673815] i915 0000:00:02.0: [drm:intel_power_well_enable 
[i915]] enabling always-on
     […]
     [   53.751682] i915 0000:00:02.0: [drm:intel_pps_on_unlocked 
[i915]] [ENCODER:98:DDI A/PHY A] PPS 0 turn panel power on
     [   53.751872] i915 0000:00:02.0: [drm:wait_panel_power_cycle 
[i915]] [ENCODER:98:DDI A/PHY A] PPS 0 wait for panel power cycle (0 ms 
remaining)
     [   53.752096] i915 0000:00:02.0: [drm:wait_panel_status [i915]] 
[ENCODER:98:DDI A/PHY A] PPS 0 mask: 0xb800000f value: 0x00000000 
PP_STATUS: 0x00000000 PP_CONTROL: 0x00000000
     [   53.752268] i915 0000:00:02.0: [drm:intel_pps_on_unlocked 
[i915]] Wait complete
     [   53.752440] i915 0000:00:02.0: [drm:intel_pps_on_unlocked 
[i915]] [ENCODER:98:DDI A/PHY A] PPS 0 wait for panel power on
     [   53.752638] i915 0000:00:02.0: [drm:wait_panel_status [i915]] 
[ENCODER:98:DDI A/PHY A] PPS 0 mask: 0xb000000f value: 0x80000008 
PP_STATUS: 0x9000000a PP_CONTROL: 0x00000003
     [   53.801920] i915 0000:00:02.0: [drm:spt_irq_handler [i915]] 
hotplug event received, stat 0x01000000, dig 0x12001010, pins 
0x00000010, long 0x00000010
     [   53.802088] i915 0000:00:02.0: [drm:intel_hpd_irq_handler 
[i915]] digital hpd on [ENCODER:98:DDI A/PHY A] - long
     [   53.802226] i915 0000:00:02.0: [drm:intel_hpd_irq_handler 
[i915]] Received HPD interrupt on PIN 4 - cnt: 10
     [   53.802399] i915 0000:00:02.0: [drm:intel_dp_hpd_pulse [i915]] 
ignoring long hpd on eDP [ENCODER:98:DDI A/PHY A]
     [   53.831776] i915 0000:00:02.0: [drm:i915_hdcp_component_bind 
[i915]] I915 HDCP comp bind
     [   53.832940] mei_hdcp 
0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 
(ops i915_hdcp_ops [i915])
     [   53.835771] Bluetooth: hci0: using NVM file: 
qca/nvm_usb_00000302.bin
     [   53.864037] Bluetooth: hci0: HCI Enhanced Setup Synchronous 
Connection command is advertised, but not supported.
     [   53.952873] i915 0000:00:02.0: [drm:intel_pps_on_unlocked 
[i915]] Wait complete


Kind regards,

Paul
