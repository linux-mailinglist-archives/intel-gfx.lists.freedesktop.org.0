Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FF326A40A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 13:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65436E237;
	Tue, 15 Sep 2020 11:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E19F6E237
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 11:21:34 +0000 (UTC)
IronPort-SDR: TpwC8tCA/h+qMPjb1tyfdEix/+Q0wrdL9RWK4WaQTgLXd9Q3fA0gpRtLCMmeY7hyaB8+ORJ8N/
 1jBfPgZZ6dGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223422124"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="223422124"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 04:21:33 -0700
IronPort-SDR: VQNyqBYYoUmnD3gAlTmrJ9lfXU43a9R+CqJFy24VnSz7RT959wfQS9izd+qsiFXCx8gPsbL2h+
 VhO+Rf9PzHAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="287957933"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2020 04:21:32 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3B82D5C204E; Tue, 15 Sep 2020 14:20:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200915105113.26564-1-chris@chris-wilson.co.uk>
References: <20200915105113.26564-1-chris@chris-wilson.co.uk>
Date: Tue, 15 Sep 2020 14:20:22 +0300
Message-ID: <87o8m7z3pl.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Check for a registered driver
 with IPS
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If the ips module calls into the driver during an unbind/bind cycle, we
> may see the driver while it has unregistered itself from ips and try and
> dereference a NULL ips_mchdev pointer.
>
> <1> [211.928844] BUG: kernel NULL pointer dereference, address: 0000000000000014
> <1> [211.928861] #PF: supervisor read access in kernel mode
> <1> [211.928871] #PF: error_code(0x0000) - not-present page
> <6> [211.928881] PGD 0 P4D 0
> <4> [211.928890] Oops: 0000 [#1] PREEMPT SMP PTI
> <4> [211.928900] CPU: 3 PID: 327 Comm: ips-monitor Not tainted 5.9.0-rc5-CI-CI_DRM_9008+ #1
> <4> [211.928914] Hardware name: Hewlett-Packard HP EliteBook 8440p/172A, BIOS 68CCU Ver. F.24 09/13/2013
> <4> [211.929056] RIP: 0010:mchdev_get+0x5a/0x180 [i915]
> <4> [211.929067] Code: c0 5a 74 0d 80 3d f1 53 29 00 00 0f 84 ab 00 00 00 48 8b 1d c8 a8 29 00 e8 d3 18 89 e1 85 c0 74 09 80 3d d1 53 29 00 00 74 65 <8b> 4b 14 48 8d 7b 14 85 c9 0f 84 09 01 00 00 8d 51 01 89 c8 f0 0f
> <4> [211.929095] RSP: 0018:ffffc900002efe60 EFLAGS: 00010202
> <4> [211.929105] RAX: 0000000000000001 RBX: 0000000000000000 RCX: ffff8881297acf40
> <4> [211.929118] RDX: 0000000000000000 RSI: ffffffff8264e2c0 RDI: ffff8881297ad820
> <4> [211.929130] RBP: ffffc900002efe68 R08: ffff8881297ad820 R09: 00000000fffffffe
> <4> [211.929143] R10: ffff8881297acf40 R11: 00000000fff74c96 R12: ffff8881294dfa18
> <4> [211.929155] R13: 0000000000000067 R14: ffff888126eff640 R15: ffff888126efe840
> <4> [211.929168] FS:  0000000000000000(0000) GS:ffff888133d80000(0000) knlGS:0000000000000000
> <4> [211.929182] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [211.929194] CR2: 0000000000000014 CR3: 0000000002610000 CR4: 00000000000006e0
> <4> [211.929206] Call Trace:
> <4> [211.929294]  i915_read_mch_val+0x15/0x380 [i915]
> <4> [211.929309]  ? ips_monitor+0x3fb/0x630 [intel_ips]
> <4> [211.929321]  ips_monitor+0x53c/0x630 [intel_ips]
> <4> [211.929334]  ? ips_gpu_lower+0x30/0x30 [intel_ips]
> <4> [211.929348]  kthread+0x14d/0x170
> <4> [211.929358]  ? kthread_park+0x80/0x80
> <4> [211.929369]  ret_from_fork+0x22/0x30
> <4> [211.929382] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_codec_generic ledtrig_audio i915 coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core e1000e snd_pcm mei_me mei intel_ips lpc_ich ptp prime_numbers pps_core
> <4> [211.929437] CR2: 0000000000000014
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index e6a00eea0631..a53928363b86 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1949,7 +1949,7 @@ static struct drm_i915_private *mchdev_get(void)
>  
>  	rcu_read_lock();
>  	i915 = rcu_dereference(ips_mchdev);
> -	if (!kref_get_unless_zero(&i915->drm.ref))
> +	if (i915 && !kref_get_unless_zero(&i915->drm.ref))
>  		i915 = NULL;
>  	rcu_read_unlock();
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
