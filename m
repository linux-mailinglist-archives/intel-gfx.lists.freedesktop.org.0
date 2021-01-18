Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D05F2F9907
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 06:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0BE89DCF;
	Mon, 18 Jan 2021 05:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD70D89DCF
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 05:12:38 +0000 (UTC)
IronPort-SDR: FD+SCGv1UPpznwGfVGLtXLZCOiBvaXO8DsMqQB7QrOWQhk4FPYERlixiYlFNhZFEreKIjMeGLv
 5nDOpnd6Vglg==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="242830303"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="242830303"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 21:12:37 -0800
IronPort-SDR: oBhg4DqE1M5d+/pAltqMR4fDOouaYbKAUL+RGZqAphzvcX76HEOo+0q0VYB18zzwefMapVuHS6
 lLXxwM0CNzpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="466247319"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2021 21:12:37 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 17 Jan 2021 21:12:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 17 Jan 2021 21:12:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 17 Jan 2021 21:12:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lALbLNZ0d7Op7cxu6/avN5WhxzDijFX3ttJUDuIoEcoOgTodExW5Yeh9VgoSwckjcHui7BjVyKBnnlgi30o2XkuE18pjenex3orhGA89cflaYYQZB21YNirzTKcJeqQBAdzwzmyKQRz1+QsXpmykHCygKtKkdBwCsZqYxARVEeAIWtAS97Kp9v+FmUKDUK3+Qqvy/sIRpr+BjSm8TSks4MLVDYYmrqkCKvggFQ8KToCPxu44yoV9wvhtXJTFP7+aRoVCuQvoy/XoxqLn4wZUUtrQ+UjwdbnVmK1kXxdl2ha/E7nqcoR14/4hTbubSFBpE2XtGThW0vIHGdymSA5fvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRDxVUZTKDb8ZlemVPsqn3K8DbOzoIk3hgOW6g1R+ZI=;
 b=CpufnSl4L3B/FJytw+bIau0pQkv59krzRMFiugLQKrSdgQTvBx9X7M7ttAJw6+f2LcIY/Hk44fQEKqsq+SJTP7IRaX/bjFFm1H2yhlbXKU59RFB9fOyjijMBSeL6FfUXqmaKaVYptQ/NGPpFExQe2u4k9x3FFN1Q5agEcmHvbRjnJ5aqDMLBBqA116MYy+vqTGyLcj9haof80qGdUIZFuZETPuEHul0wv0x+hwPiOTAYFhr/vM53aJRZpjWmHZMua7Ri3Ys6d4lAp64a6A7PGKrw5ZE9INrMooRKARNXv8L48sDz0OU4GORcJPyVQTcLUEIhlwtLk4Ff1ks6wG1+Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRDxVUZTKDb8ZlemVPsqn3K8DbOzoIk3hgOW6g1R+ZI=;
 b=kp28QKf6x886CKAP3WcYhoy9Gv78zVyiANeJNemjBSs9PLBeamyYulO2RCY70Biok3HEsFyVybjDlyQzy0ikHl9tafbspjFkS+kJtyet4E++RAmg2/5xdFqanBJFs7xnD/UCMhCCvA1SE1f2ameTzmUPBUgWuYF6EKIaNkxaaeI=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BY5PR11MB4133.namprd11.prod.outlook.com (2603:10b6:a03:18f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Mon, 18 Jan
 2021 05:12:32 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::acc2:bf8b:7d91:491b]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::acc2:bf8b:7d91:491b%5]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 05:12:32 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/gt: Clear CACHE_MODE prior to clearing residuals
Thread-Index: AQHW7LNcWQHqazIb4UWA/Of03TLlZKos149g
Date: Mon, 18 Jan 2021 05:12:31 +0000
Message-ID: <BYAPR11MB3799C7ED8FB555D00C567E31A9A40@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20210116223117.12860-1-chris@chris-wilson.co.uk>
 <20210117093015.29143-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210117093015.29143-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [50.235.73.98]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e2540d1-a59e-4727-2012-08d8bb6fa8d2
x-ms-traffictypediagnostic: BY5PR11MB4133:
x-microsoft-antispam-prvs: <BY5PR11MB4133468A9651ED5AD8D0DF33A9A40@BY5PR11MB4133.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:227;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4tHORmVz7u7tF9C4ezZ/AnDUvn9yUucT1tEuSyOxtx2ODsxSka1u+bkCpAsVs/jGAUMpQqPqeQAWqBp5YUwMqJ1qhJ8p8cnn/Qr6BgATZz5fMMU/958whljuUb6uqJN8VD/CDno8xWP3owONQ7g7LkG2ac9cEoWWOPypJK2HWMSVfPZh1x62gCkvohJm7s0kCq0JIB32YZgsR5NX5m6M01+FpXMEF9IHTLIGyQqwlpVoSWUms4Ri/qBcJG8cUPRbu7u5Zm/P3zZT3IdwL0YwpFYWKHpE3bxpENZX+bpipEZglUtB4/bWi5Ad388LewhY9wdMxlZjYwr0XNgZF6K5YiHnmpyNvbCJ0LWDXIF8kih1tD+EKoC27G/Y7rZBqCfVgAp3Ebnq0XUnZsiUiwJT8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(8936002)(33656002)(66446008)(83380400001)(2906002)(76116006)(5660300002)(186003)(26005)(66946007)(9686003)(64756008)(52536014)(478600001)(66476007)(4326008)(86362001)(66556008)(8676002)(7696005)(71200400001)(316002)(53546011)(55016002)(110136005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?WoWCqBS+WYTigGg537Xz7hcCM9vII7wL/cYwoyzkmS+IgjEe1hFiXKWS/s7X?=
 =?us-ascii?Q?s+ld+QL3RpEVvdXOqR+3T+fof8FJUgk0y1Byi7l07hgiWzfOMrEWzs/opLVz?=
 =?us-ascii?Q?ut4fKtpYFgg+Kwf0CWA02oxYWd5FUB6xpIYxy8UGWWx51H+cTEIBSpXm+3Rw?=
 =?us-ascii?Q?EYKXeT+NuXFRfhMCJIuNkQKqjFEBxIG8nHenKZs4je1Ua9vlkgcJEmKl75le?=
 =?us-ascii?Q?9DZCQuD6Iz5iGS6o+3ZspEC5L1woR6+CLtcNU2hsqbhS+kUF3elcyL+OpHsa?=
 =?us-ascii?Q?c59TdKW4EgiCIS4uPh4X8Fw13kbjD4MiYiU/c7Yo9XPE0fCHJm0rXN1Y9Lhc?=
 =?us-ascii?Q?5CNLwMQO6qTqU3c0Xl6ohBxhcDYBQkzfFO0WzhYtMBsKCpvxM2DTqSuTFwnm?=
 =?us-ascii?Q?Sfvz9mUPXkQuh379PyiGJOHi8f28ivQhk0VVfx4XPMHWjbc3XxaXYT5e0t8l?=
 =?us-ascii?Q?SPH0A0xSqSCHwnK0ChfXswCJTm1ydpMDweXe/lL5qwaoSciwKKu9vZBbYNAq?=
 =?us-ascii?Q?Fa8muIvTjcBod9P9+kaII2D9KL589kyIrYWIu9JoCeWF4yf6+7juZ1w2Cr84?=
 =?us-ascii?Q?S6aopK9F0BF2UveXquPBwefVg66beJTxtWPody91p0eE10uWoSfQO18hebhq?=
 =?us-ascii?Q?WRwMNKEn42xY2DSxBg0S1beIzu+dUDRDnMQTlPAPNJSsRlmHNd0lYPBNakSJ?=
 =?us-ascii?Q?zFKENPVCfo8S4I5L85ycmVLx7RTUISkViXAhSvky/zbz8NxNXZlOqsPia0/q?=
 =?us-ascii?Q?E6ggv2uL8uqjtaiNtP/1PNipM/HgAdqk/UJAx1BuAlifJIx6SX0SsoDEG0nW?=
 =?us-ascii?Q?FDfbFJIWPXtv372F7FUkjpjXm0GLqm+dHkLNiDgLUqxOI4IbfbAAcxjxcEOA?=
 =?us-ascii?Q?afTLj3tGdTpa3JKeYNNQPR2aw9kGITahsBebWKztvLlAYwe0AJhWN4am46Qa?=
 =?us-ascii?Q?cIUZ7NoJtHnGCH6C2N7M5SfzNGNAwl0UO0zvKULR9c8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3799.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e2540d1-a59e-4727-2012-08d8bb6fa8d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2021 05:12:32.0112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pICfRbUI/6pOxlLcYHhP6nZg9Zu98UewVYQBuX0NY6HI3IjxGrVhKpBF5vZ7GkVRQ6Fa6TleFujsJoVMRajve/6K3qznLU0oBvRCGxiAyaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear CACHE_MODE prior to
 clearing residuals
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
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Sunday, January 17, 2021 1:30 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Mika Kuoppala
> <mika.kuoppala@linux.intel.com>; Abodunrin, Akeem G
> <akeem.g.abodunrin@intel.com>
> Subject: [PATCH] drm/i915/gt: Clear CACHE_MODE prior to clearing residuals
> 
> Since we do a bare context switch with no restore, the clear residual kernel
> runs on dirty state, and we must be careful to avoid executing bad state from
> context registers inherited from a malicious client.
> 
> Fixes: 008ead6ef8f5 ("drm/i915/gt: Restore clear-residual mitigations for
> Ivybridge, Baytrail")
> Fixes: 09aa9e45863e ("drm/i915/gt: Restore clear-residual mitigations for
> Ivybridge, Baytrail")
> Testcase: igt/gem_ctx_isolation # ivb,vlv
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index 56bdcdaa9a88..0490c29788d7 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -390,6 +390,14 @@ static void emit_batch(struct i915_vma * const
> vma,
>  						     &cb_kernel_ivb,
>  						     desc_count);
> 
> +	gen7_emit_pipeline_invalidate(&cmds);
> +	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
> +	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> +	batch_add(&cmds, 0xffff0000);
> +	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
> +	batch_add(&cmds, 0xffff0000 |
> PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> +	gen7_emit_pipeline_flush(&cmds);
> +
>  	gen7_emit_pipeline_invalidate(&cmds);
>  	batch_add(&cmds, PIPELINE_SELECT | PIPELINE_SELECT_MEDIA);
>  	batch_add(&cmds, MI_NOOP);
> --
> 2.20.1

Reviewed-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Thanks,
~Akeem

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
