Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B371BC77A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5C789711;
	Tue, 28 Apr 2020 18:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33CFF6E8CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:06:21 +0000 (UTC)
IronPort-SDR: BGwkkdDPLSuu6iQl0Nb/XZ0XrNoeLIiuDmMvji/uFc2NE2kobB5y5HMuROy6X27+xo9wQTt5XM
 XpODVCOyE3DQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 11:06:20 -0700
IronPort-SDR: 0a4SH8uzvE3Qd/Cf3gWDnpm/bF3UiXuuLGP3Egxl2LdCw4A7zE5pNMDyeb5QpUXtfzbDE+Iwws
 WDHh1iOWmNRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="275920462"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 28 Apr 2020 11:06:20 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Apr 2020 11:06:20 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Apr 2020 11:06:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 28 Apr 2020 11:06:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dqDVfEA7u1Wpc3d7FbtMCsMKNEglIYSOHS+xEMiVfzW1dlcbDOGEHe4P7MMD7Ooony279m0rlWrtSY9vDWCI0vdPJtZDaX7JjplzcCmlAhB/JPp++gtt5CiIaE/Vm4THiUJ4gbb+UssDJ/Z1750iQ4TWJSID6UEirTQIgv2z6lfqBCfy7aUYnjFaPe/+xh08Vg3XGjuf24c4HZe3vmI4RTIK17kh1zoabGM9ZvIlhbyzCvWnHT0Dvxvybq9RnUCfQhHioUg6QIFHeJCw/tRoHSasTlvUSuVOyUW8Mp/IgktS1MC+dDSIeBVFTaxvvTSHpXnh/5m0/eESiX+3aC+/dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TB9idbAYTg+vgA+PaRsGNO1Lxdpu3K9PWUbp5QKsShE=;
 b=d+2s2qXJgEyW4o9jWxNMQYZpnfyU2lYIPcxRhTuYMkrFWITXVE5JFIwFLik6AYMRXGZ6AaDteunVijji8jRfIxOCOrVu2dSWHedD/tbRs480krM+6dh5qSHRcR2R45i8ag/UNcbRe2CKY3cfYbk6j6TolsMokYjSkis9kE2W9JA/nYhOJGAOccAfg69UOrbIkOY4oFROUKdXY1KJGeNgLoeEHSwwjDRC4XaiHLWUw1sA4dw6NEay4ZJxHUCbWzne6dS+6o8K25V84U8W1zorhPjBoflOJieF5Qp7vMBLBB2efKQtdoLsR//ol9RtTNbm/gZijuvaPfzXY2RxC3Zgbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TB9idbAYTg+vgA+PaRsGNO1Lxdpu3K9PWUbp5QKsShE=;
 b=oHgf1Tbwp6kKPSzThheOGQ8SYbH/ywSMUjHri1/0Z2FxSk57XTTjXgMfW1/lwvCZMI7A4bjRxHjrLxWS6Op8yBDz/FLSM83czK81/VNqiq45bQ+DQukwC2trcmkcu36207ygRdAIfK4SMiZL42mY+1aeP/KMAjULgkd8IVwsEbY=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYASPR01MB0075.namprd11.prod.outlook.com (2603:10b6:a03:129::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Tue, 28 Apr
 2020 18:06:18 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6%3]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 18:06:18 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Avoid dereferencing a dead context
Thread-Index: AQHWHTv0v8VFsq6I60uGq8fkE3sMIqiO1IfQ
Date: Tue, 28 Apr 2020 18:06:17 +0000
Message-ID: <BYAPR11MB37993473E14C7E6A5AACB4B4A9AC0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20200428090255.10035-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428090255.10035-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [192.55.52.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a67a726-5cca-4e3f-055b-08d7eb9ed975
x-ms-traffictypediagnostic: BYASPR01MB0075:
x-microsoft-antispam-prvs: <BYASPR01MB0075603F32317F0CFBF8E5F9A9AC0@BYASPR01MB0075.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0387D64A71
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4FDJfxgre2LWAc3sXciRp98I9fM9sdjAo//Ogqxhlk/7Jzk0cdZ3yKWg5N2VAwcu2udEwTiR12YjEPfYSAMictOlKDgMoXeXRqQvcRhMX4BIfCrdpjLnsTE8r6W5pOstQ/j7G8H2gKlRhzInP/vnZc7l9jtXRI1oYFzF1hOS38+Y0i27HdKEbRddEB20zkeo9LFCIOUnYE0T8sxIuFarZvsMLa3QhCVMgRnXGlGH4cRFhbuyZMRxT2wKxLS809/JPL9BjqPz2zDUG3sJDxL8XTqGxHsSQ9mNO8LBnb9IC1GWgQRGRN6Llho7UNT5XVdiJaF9EuXhHgKKU6S5XJhGjfFD6w+hGo5fDgOC1vcwmk8EqoTQ918KwZZ79UCGKSsakrKObEcFK+i6HcN3vPl9r4kDEg/0t236+kJIe3KOHDLqWDC8I6HXmAcAw5buQe4/UYoayWbxeFYuwRnYYRGXcgLxYNRjfRGyui+T8PCPMrc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(346002)(376002)(39860400002)(136003)(478600001)(8676002)(5660300002)(966005)(316002)(2906002)(110136005)(186003)(33656002)(8936002)(71200400001)(64756008)(66476007)(66946007)(66446008)(76116006)(9686003)(66556008)(26005)(86362001)(7696005)(6506007)(53546011)(52536014)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1gwJq8cbubqpvcWRLQ53Dd0nae61mgfrAl0h9B6rVV/n1R/IcP5LZT/nSKKmwxFi5e2tSPtC73kIpiUpEPenNArqA7pMXM99oXxod3wOLnlMEAmxUwPL7ykponK1myt5xx58jugYPmtZDokFpyqLn2dBNeM9M5HnYpbRjbuhBYm4IeWHJPf+3VBlVed70pq15hhMeP2QdNNftf0sv//qvu9x5cMHw3lbt499EU3vihw83CylYEV6QDf2OvBOG20aAVgjeixjKLwzpeyA+3qWoWvB3/86g0voL069MZL0vUyxvkpJ85O3jCPCr1CfBwxy/Id0S1u430UsDmDQPYZQ1/VWEcipt7uFn9o9gw5t90Ml/JiaXLO6vs27s3PZqY+AofoBgSn2XfvzwZBZcIJA+kI3X2OvnAjK++g9u7X7bHIqtFl5LTdTtQP4j3CxJsErKv9KTNxcBKy6u232Db9tQTzS5QUkcDK8HPF7duLYW3Jv7gCtaIt56mUVS+nE4RjPWBtHWkNLEOzSyITn9cnYSY8it6owKenbv9vdWgokSxbNHex0DgdA+ECxi3992rlfsclBDpfP4Gy/Edm1ssq7uNN5S+mbJdZ6LAIONpTrv9U2FLER8eKHIW1plnqbelp8RXm0emfR+EzcLhK1NnvXVHxs/yTCcThIEsrHX2DbWgnllbBooSKGHxxj/MzOEdLS60C9l2rE2S45es9i/07LT0geYAcm0D6Zvq2Gbz8eSeMDameF51OGEa+lmBU4fFTkcvmOkCGQADU+bF1JVM6OAwogPfJws5Cw2e1psUoK7BE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a67a726-5cca-4e3f-055b-08d7eb9ed975
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 18:06:18.0350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPkN2BAKeXgdU6HqmQOzpevA02jm+7Y7sxZ0rjAZKRxza7Pg+d7PnReF7gIG+hgwDvf5rgP1R+fmBtoK+Twbqxc1dItWbTYapzC7BZHwUps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB0075
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid dereferencing a dead context
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> Wilson
> Sent: Tuesday, April 28, 2020 2:03 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Subject: [Intel-gfx] [PATCH] drm/i915: Avoid dereferencing a dead context
> 
> Once the intel_context is closed, the GEM context may be freed and so the
> link from intel_context.gem_context is invalid.
> 
> <3>[  219.782944] BUG: KASAN: use-after-free in
> intel_engine_coredump_alloc+0x1bc3/0x2250 [i915] <3>[  219.782996] Read
> of size 8 at addr ffff8881d7dff0b8 by task kworker/0:1/12
> 
> <4>[  219.783052] CPU: 0 PID: 12 Comm: kworker/0:1 Tainted: G     U
> 5.7.0-rc2-g1f3ffd7683d54-kasan_118+ #1
> <4>[  219.783055] Hardware name: System manufacturer System Product
> Name/Z170 PRO GAMING, BIOS 3402 04/26/2017 <4>[  219.783105]
> Workqueue: events heartbeat [i915] <4>[  219.783109] Call Trace:
> <4>[  219.783113]  <IRQ>
> <4>[  219.783119]  dump_stack+0x96/0xdb
> <4>[  219.783177]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> <4>[  219.783182]  print_address_description.constprop.6+0x16/0x310
> <4>[  219.783239]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> <4>[  219.783295]  ? intel_engine_coredump_alloc+0x1bc3/0x2250 [i915]
> <4>[  219.783300]  __kasan_report+0x137/0x190 <4>[  219.783359]  ?
> intel_engine_coredump_alloc+0x1bc3/0x2250 [i915] <4>[  219.783366]
> kasan_report+0x32/0x50 <4>[  219.783426]
> intel_engine_coredump_alloc+0x1bc3/0x2250 [i915] <4>[  219.783481]
> execlists_reset+0x39c/0x13d0 [i915] <4>[  219.783494]  ?
> mark_held_locks+0x9e/0xe0 <4>[  219.783546]  ? execlists_hold+0xfc0/0xfc0
> [i915] <4>[  219.783551]  ? lockdep_hardirqs_on+0x348/0x5f0 <4>[
> 219.783557]  ? _raw_spin_unlock_irqrestore+0x34/0x60
> <4>[  219.783606]  ? execlists_submission_tasklet+0x118/0x3a0 [i915] <4>[
> 219.783615]  tasklet_action_common.isra.14+0x13b/0x410
> <4>[  219.783623]  ? __do_softirq+0x1e4/0x9a7 <4>[  219.783630]
> __do_softirq+0x226/0x9a7 <4>[  219.783643]
> do_softirq_own_stack+0x2a/0x40 <4>[  219.783647]  </IRQ> <4>[
> 219.783692]  ? heartbeat+0x3e2/0x10f0 [i915] <4>[  219.783696]
> do_softirq.part.13+0x49/0x50 <4>[  219.783700]
> __local_bh_enable_ip+0x1a2/0x1e0 <4>[  219.783748]
> heartbeat+0x409/0x10f0 [i915] <4>[  219.783801]  ?
> __live_idle_pulse+0x9f0/0x9f0 [i915] <4>[  219.783806]  ?
> lock_acquire+0x1ac/0x8a0 <4>[  219.783811]  ?
> process_one_work+0x811/0x1870 <4>[  219.783827]  ?
> rcu_read_lock_sched_held+0x9c/0xd0
> <4>[  219.783832]  ? rcu_read_lock_bh_held+0xb0/0xb0 <4>[  219.783836]  ?
> _raw_spin_unlock_irq+0x1f/0x40 <4>[  219.783845]
> process_one_work+0x8ca/0x1870 <4>[  219.783848]  ?
> lock_acquire+0x1ac/0x8a0 <4>[  219.783852]  ? worker_thread+0x1d0/0xb80
> <4>[  219.783864]  ? pwq_dec_nr_in_flight+0x2c0/0x2c0 <4>[  219.783870]  ?
> do_raw_spin_lock+0x129/0x290 <4>[  219.783886]
> worker_thread+0x82/0xb80 <4>[  219.783895]  ?
> __kthread_parkme+0xaf/0x1b0 <4>[  219.783902]  ?
> process_one_work+0x1870/0x1870 <4>[  219.783906]  kthread+0x34e/0x420
> <4>[  219.783911]  ? kthread_create_on_node+0xc0/0xc0 <4>[  219.783918]
> ret_from_fork+0x3a/0x50
> 
> <3>[  219.783950] Allocated by task 1264:
> <4>[  219.783975]  save_stack+0x19/0x40
> <4>[  219.783978]  __kasan_kmalloc.constprop.3+0xa0/0xd0
> <4>[  219.784029]  i915_gem_create_context+0xa2/0xab8 [i915] <4>[
> 219.784081]  i915_gem_context_create_ioctl+0x1fa/0x450 [i915] <4>[
> 219.784085]  drm_ioctl_kernel+0x1d8/0x270 <4>[  219.784088]
> drm_ioctl+0x676/0x930 <4>[  219.784092]  ksys_ioctl+0xb7/0xe0 <4>[
> 219.784096]  __x64_sys_ioctl+0x6a/0xb0 <4>[  219.784100]
> do_syscall_64+0x94/0x530 <4>[  219.784103]
> entry_SYSCALL_64_after_hwframe+0x49/0xb3
> 
> <3>[  219.784120] Freed by task 12:
> <4>[  219.784141]  save_stack+0x19/0x40
> <4>[  219.784145]  __kasan_slab_free+0x130/0x180 <4>[  219.784148]
> kmem_cache_free_bulk+0x1bd/0x500 <4>[  219.784152]
> kfree_rcu_work+0x1d8/0x890 <4>[  219.784155]
> process_one_work+0x8ca/0x1870 <4>[  219.784158]
> worker_thread+0x82/0xb80 <4>[  219.784162]  kthread+0x34e/0x420 <4>[
> 219.784165]  ret_from_fork+0x3a/0x50
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
> b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 4d54dba35302..a976cd67b3b3 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1207,8 +1207,6 @@ static void engine_record_registers(struct
> intel_engine_coredump *ee)  static void record_request(const struct
> i915_request *request,
>  			   struct i915_request_coredump *erq)  {
> -	const struct i915_gem_context *ctx;
> -
>  	erq->flags = request->fence.flags;
>  	erq->context = request->fence.context;
>  	erq->seqno = request->fence.seqno;
> @@ -1218,9 +1216,13 @@ static void record_request(const struct
> i915_request *request,
> 
>  	erq->pid = 0;
>  	rcu_read_lock();
> -	ctx = rcu_dereference(request->context->gem_context);
> -	if (ctx)
> -		erq->pid = pid_nr(ctx->pid);
> +	if (!intel_context_is_closed(request->context)) {
> +		const struct i915_gem_context *ctx;
> +
> +		ctx = rcu_dereference(request->context->gem_context);
> +		if (ctx)
> +			erq->pid = pid_nr(ctx->pid);
> +	}
>  	rcu_read_unlock();
>  }

Fix the checkpatch warnings - the patch itself looks okay...
Acked-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

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
