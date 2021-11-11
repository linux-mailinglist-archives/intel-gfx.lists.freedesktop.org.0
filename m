Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E9E44DB3D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 18:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0296E1FB;
	Thu, 11 Nov 2021 17:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EC46E1FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 17:46:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="231702694"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="231702694"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 09:46:58 -0800
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="602695718"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 09:46:57 -0800
Date: Thu, 11 Nov 2021 19:39:36 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5h1r3m6csi.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2111111920450.3554566@eliteleevi.tm.intel.com>
References: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
 <s5hzgqb65h0.wl-tiwai@suse.de>
 <alpine.DEB.2.22.394.2111110015250.3554566@eliteleevi.tm.intel.com>
 <s5h1r3m6csi.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: fix general protection fault in
 azx_runtime_idle
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
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, 11 Nov 2021, Takashi Iwai wrote:

> A potential problem with the current code is that it doesn't disable
> the runtime PM at the release procedure.  Could you try the patch
> below?  You can put WARN_ON(!chip) at azx_runtime_idle(), too, for
> catching the invalid runtime call.
[...]
> --- a/sound/pci/hda/hda_intel.c
> +++ b/sound/pci/hda/hda_intel.c
> @@ -1347,8 +1347,13 @@ static void azx_free(struct azx *chip)
>  	if (hda->freed)
>  		return;
>  
> -	if (azx_has_pm_runtime(chip) && chip->running)
> +	if (azx_has_pm_runtime(chip) && chip->running) {
>  		pm_runtime_get_noresume(&pci->dev);
> +		pm_runtime_forbid(&pci->dev);
> +		pm_runtime_dont_use_autosuspend(&pci->dev);
> +		pm_runtime_disable(&pci->dev);
> +	}
> +
>  	chip->running = 0;

Tested with next-20211019 (first next tag where I've seen test failures) 
and your patch, and this seems to do the trick. I didn't have my drvdata 
patch included when I ran the test. No rpm_idle() calls 
anymore after azx_remove(), so the bug is not hit.

>  	azx_del_card_list(chip);
> @@ -2320,6 +2325,7 @@ static int azx_probe_continue(struct azx *chip)
>  	set_default_power_save(chip);
>  
>  	if (azx_has_pm_runtime(chip)) {
> +		pm_runtime_enable(&pci->dev);
>  		pm_runtime_use_autosuspend(&pci->dev);

This does generate warnings
[   13.495059] snd_hda_intel 0000:00:1f.3: Unbalanced pm_runtime_enable!

And later
[   54.770701] Enabling runtime PM for inactive device (0000:00:1f.3) with active children
[   54.770718] WARNING: CPU: 0 PID: 10 at drivers/base/power/runtime.c:1439 pm_runtime_enable+0x98/0xb0

Adding a "pm_runtime_set_active(&pci->dev)" to both azx_free() and 
azx_probe_continue() seems to help and fix still works.

Br, Kai
