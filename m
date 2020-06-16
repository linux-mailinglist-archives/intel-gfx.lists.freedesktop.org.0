Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8055B1FC105
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 23:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 728196E1F8;
	Tue, 16 Jun 2020 21:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A296E1F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 21:31:48 +0000 (UTC)
IronPort-SDR: T1fqR9+JbTNEanuRvGCL3lClDaUunK5H25XHPGddn5Cdfk/MwXPUwFQzzs4AKMS9IWBnXvHWB2
 5QdaKG+ys8PQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:31:47 -0700
IronPort-SDR: CN80eXHKAoagjampzPj9GXq3jxzVdRgGQklWE8t9mk37DiGgHHeSNs2WZ8T3zzQE1kq8SpjaCA
 bEmdRNNBupmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="476591366"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2020 14:31:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jun 2020 14:31:47 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 16 Jun 2020 14:31:46 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 16 Jun 2020 14:31:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 16 Jun 2020 14:31:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X0ys/kOT7ykkss8lCO2z4gB12mMY16c+a0PIIl9RWkHE17C01qgSAuynCuswoo0ytNk7XerbyPFyNhiDNCgr6PTZTqeDHs7Be4cg1nnADkOtp0tY9bS7vIj8oZziQehFGQ7BGFwwjPTXtGQEiuVNEFNhJ8xmVmGPnVJqwIuDLiBD8PGGzGfx0C3XQFRlOgTzExh30J5KfAATkEb6uBQilpz/e/rwYps7wQ6L+l4bJFWyiYDu8hMXruaJtdo2K6aKQ5srEnJYDZTNTzg3SH2ZH+NQABPMWVn8DHz4rJJb5qivSNvjT9AAvISUbGH1QlUKeSa5FuMUUU9zvnPpPrcHBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hT8rUCc540/ZNLXr8nbjzcK2kTT5K2ZHJkL/JcCbYEY=;
 b=Ub7EZBY4RiRZsBk62MbuF6J8xgpkBVbeIitypG92lb5x45AGRsBM40Ep4V1r45Io3SXh5MouQ7d0V5m9JcZjTY5OcGvjGoysOcngqpyg0OxZ5GntSsdVT7VtG4FIOGlYkr6S0EqI7+flXWE+5s197pRK1nlO7LVcpTZgDHdds6qtlcz2MCIUNK7AnW0EZThdqk41mnUa0gYg9bZlpqnqtD2rrweLiK2O/0AQvYtzUkst/9daHM5YiTwt4X6/eCzqBpPoRXQZyJkxvMAgZJygRarSEd1tP3UOjruPRg0qzI3/R8S6jvjW4QlPKtbzGZZtztGcfWNXswtUZYyWgJXPgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hT8rUCc540/ZNLXr8nbjzcK2kTT5K2ZHJkL/JcCbYEY=;
 b=cHGk/yfJovxHnsz3FAidaAFguEXkZsbmyJ//0/Dq4G2eOcYUyEVcYq21QvAWUBtH78YtDLBObdhsJyU7j0oDaeddk+4wB+M5BzJKXjq3YIY4PLSE8FX6I77APQmFdA8ezXrnPHhYWq2QU1+YicF77yJ9xQUbGatfp/s0OOG7pO4=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BY5PR11MB3880.namprd11.prod.outlook.com (2603:10b6:a03:184::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 16 Jun
 2020 21:31:45 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::60fb:1a14:be44:9b0b]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::60fb:1a14:be44:9b0b%3]) with mapi id 15.20.3088.029; Tue, 16 Jun 2020
 21:31:45 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Decouple completed requests on
 unwind
Thread-Index: AQHWRBDEvweiw71+MUiPdAzRQhejZqjbwfhw
Date: Tue, 16 Jun 2020 21:31:45 +0000
Message-ID: <BYAPR11MB379930B74EC336F26E655B0FA99D0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20200616190136.19905-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200616190136.19905-1-chris@chris-wilson.co.uk>
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
x-originating-ip: [192.55.52.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a62d75e2-44c3-4554-28c4-08d8123cab6d
x-ms-traffictypediagnostic: BY5PR11MB3880:
x-microsoft-antispam-prvs: <BY5PR11MB38805667CA9DBEB14F194FC9A99D0@BY5PR11MB3880.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P0bhu92V5WJeQkSrKAErUMyn1k2UrtbyMi6z8itWx59FyxlzRu3ATujSB2S4lTnS16VIimYO9k1Vv9+Y6YoXI+F7RoEuZ9+A9ASoGy8/RkhF/wg8YRsNV8rQzQV/wwlo9PHMaU4I+p40C6Y0khbgiEx9S7AL82XxCQVFcW1psCSsdxUjKTRqJgaNwVD3ePFDqaoaDEHEZMQShG+al62QM/cJ26gTSLhXRBvw9wox+l/W3Bm1GcnLdqIpqXO9rJY08rD1fiAUhsqx1pX3/StSG/jQWoMGgNhEXrQD5Quvr8gwm4bmFmmXgGvz6QXT/OH9mN8cpBMObK+mC+CIvmTcyEJq0Gl7sWD/ex3RwRXr1iswzWT6QiLTY009Z8eUmaisUJ/z6zkVfCWdTqk7ztvMZqa9Jqle3X1sDqJKoLO4FpY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(2906002)(52536014)(9686003)(966005)(55016002)(26005)(5660300002)(6506007)(53546011)(478600001)(110136005)(86362001)(8676002)(8936002)(7696005)(316002)(66476007)(66946007)(186003)(76116006)(66556008)(33656002)(64756008)(66446008)(71200400001)(83380400001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1LKiyN1Vg7qAxvOex5fPqfW3UYFtbysHUSuE6EAlN1GX7QSxmxAL4SGOielK50ijTG51GSCPhJsDvqpXGMDRnGRDkU546tRAHseL76yFvpql4VveqW5pIv6mOldoevdOQoEECMtKS69zrw9PUJ4e1FywzagN8cf2Ud0w7kQCTRUytNsWXjsaRD1cu1ytvwYnw9gJuJmfimnSRFd85REjC8GXdDmYh0uw1sTe28Kuly257LmW9iFbAVojS6wFqxyYKimpc40ZvQ2AG+Vl6Hyb6Y16WFpnqgGHaGtmhTILijaIaUovXN6q2dbwxVixsMJdPky8P8FhlxI7o9AIHSwTL+V+mJT+JUJCIninLvofXWdgBoXdaBQY5YpT6O5dVkeI72l8jxF80ju4PeZYUGQzTk0BTShwF7BSzWzo6hS2tqBeRJwzEIdYnTr6PzEfJMQTvHQdIr4w86N4f676ewAl0iG1Dx7C9f1FBCe1jzNKX6A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a62d75e2-44c3-4554-28c4-08d8123cab6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 21:31:45.5191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n5TQu+1EYA52nwvmFyGyTPSp5nkPJxME8p/iSiKKhzlQOaewQykxsh3hbhATAqpWFoEmSo3PTBHxkvI+CPtOKKvS3sP52NEHa9+8tOOXHWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Decouple completed requests on
 unwind
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
> Sent: Tuesday, June 16, 2020 12:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Subject: [Intel-gfx] [PATCH] drm/i915/gt: Decouple completed requests on
> unwind
> 
> Since the introduction of preempt-to-busy, requests can complete in the
> background, even while they are not on the engine->active.requests list.
> As such, the engine->active.request list itself is not in strict retirement order,
> and we have to scan the entire list while unwinding to not miss any.
> However, if the request is completed we currently leave it on the list [until
> retirement], but we could just as simply remove it and stop treating it as
> active. We would only have to then traverse it once while unwinding in quick
> succession.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e866b8d721ed..4eb397b0e14d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1114,8 +1114,10 @@ __unwind_incomplete_requests(struct
> intel_engine_cs *engine)
>  	list_for_each_entry_safe_reverse(rq, rn,
>  					 &engine->active.requests,
>  					 sched.link) {
> -		if (i915_request_completed(rq))
> -			continue; /* XXX */
> +		if (i915_request_completed(rq)) {
> +			list_del_init(&rq->sched.link);

Albeit this seems like a valid approach to resolve inconsistence in the list of requests that are active or retired, but we can't just delete completed requests from the list until full retirement is done - otherwise we stand the risk of out-of-the-order list, and could lead to inconsistence (which is the original problem you intend to resolve). Have you thought about locking mechanism?

Regards,
~Akeem
> +			continue;
> +		}
> 
>  		__i915_request_unsubmit(rq);
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
