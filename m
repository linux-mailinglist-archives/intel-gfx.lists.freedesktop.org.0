Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AE61EA2B5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 13:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC6B6E247;
	Mon,  1 Jun 2020 11:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D186E247
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 11:34:02 +0000 (UTC)
IronPort-SDR: OANZ3zPZV75GLt59SL2nxQheyAf/9ZBiNEB5+LZH23EowlDJ9Srl1OxeMUpGLe3HZ+H2OBIMaE
 sxLpBCfRrocw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 04:34:02 -0700
IronPort-SDR: a4UTikJJJYWuG7BjLa/yLbFZJ8mpyTE5Cdf8GrzECEQzhyGVLOIVvA+c54oPYQ4C3KGL23n/UQ
 lptmA2wk4d5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="470257014"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jun 2020 04:34:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 412665C2CA3; Mon,  1 Jun 2020 14:31:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 14:31:34 +0300
Message-ID: <87pnajhvjd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/36] drm/i915: Handle very early engine
 initialisation failure
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

> If we fail during engine setup, we may leave some engines not yet setup.
> During the error cleanup, we have to be careful not to try and use the
> uninitialise engines before discarding them.
>
> [   16.136152] RIP: 0010:__flush_work+0x198/0x1b0
> [   16.136168] Code: ff ff 8b 0b 48 8b 53 08 83 e1 08 48 0f ba 2b 03 80 c9 f0 e9 63 ff ff ff 0f 0b 48 83 c4 48 44 89 f0 5b 5d 41 5c 41 5d 41 5e c3 <0f> 0b 45 31 f6 e9 62 ff ff ff 66 66 2e 0f 1f 84 00 00 00 00 00 0f
> [   16.136186] RSP: 0018:ffffc900003bb928 EFLAGS: 00010246
> [   16.136201] RAX: 0000000000000000 RBX: ffff88844f392168 RCX: 0000000000000000
> [   16.136216] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff88844f392168
> [   16.136231] RBP: ffff88844f392130 R08: 0000000000000000 R09: 0000000000000001
> [   16.136246] R10: ffff888441e31e40 R11: ffff88845e329c70 R12: ffff88844f796988
> [   16.136261] R13: ffff888441e4fb80 R14: 0000000000000001 R15: ffff88844f790000
> [   16.136388] FS:  00007fecbd208880(0000) GS:ffff88845e380000(0000) knlGS:0000000000000000
> [   16.136405] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   16.136420] CR2: 00007ff3ce748f90 CR3: 0000000457a6a001 CR4: 00000000000606e0
> [   16.136437] Call Trace:
> [   16.136456]  ? try_to_del_timer_sync+0x3a/0x50
> [   16.136529]  intel_wakeref_wait_for_idle+0x87/0xb0 [i915]
> [   16.136606]  ? intel_engines_release+0x68/0xc0 [i915]
> [   16.136680]  intel_engines_release+0x49/0xc0 [i915]
> [   16.136757]  intel_gt_init+0x2f4/0x5e0 [i915]
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>


> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index da5b61085257..c8c14981eb5d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -414,12 +414,12 @@ void intel_engines_release(struct intel_gt *gt)
>  
>  	/* Decouple the backend; but keep the layout for late GPU resets */
>  	for_each_engine(engine, gt, id) {
> -		intel_wakeref_wait_for_idle(&engine->wakeref);
> -		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
> -
>  		if (!engine->release)
>  			continue;
>  
> +		intel_wakeref_wait_for_idle(&engine->wakeref);
> +		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
> +
>  		engine->release(engine);
>  		engine->release = NULL;
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
