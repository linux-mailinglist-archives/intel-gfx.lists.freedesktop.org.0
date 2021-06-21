Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10DA3AE8D0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 14:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CA789F2A;
	Mon, 21 Jun 2021 12:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A06089F2A;
 Mon, 21 Jun 2021 12:12:34 +0000 (UTC)
IronPort-SDR: eZDKHcVDj9s3TQJ15VOnsmfDxw95mgHQ+HmoxDZtDHa7xSjLF5y3RbD8B0yGYWOdOIT2WKdI7o
 oWuIi9D0Pj7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="194140323"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194140323"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:12:33 -0700
IronPort-SDR: Iiqi//+qtyI57xSv+fZ9/2N7wAhZSKolO+12/bNbJmzJkFZFuhqFcYS35oHfrzpKkkfuUyZrq7
 VbIcIEMsHDFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="453860580"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2021 05:12:33 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 05:12:32 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 05:12:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 05:12:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 05:12:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLKrnkyV2In0uamhSE0urTbDPCx2ayWpLa4/3qL0yxwlFjJfWQPx4ArWlEHZ28txY/NlqanJNz+0nyf4lyLhX6aY/2tmclq/iJS/sxCvYBwDhXMaYHZ1aX5x3zKeFLItlQAwFy8cfOhLl5NGmdPJ6UcfEET9xhdkIeIHzBGbMsIiOTtaulQs3+ldnJq7yG23rnZlvXH9OqZTfyWEdiPg6MalNDrbk3MaBbnlPx35kHpsTYSQ+T4CmK4w6Jt9RDF3+DLUpKlC0yzHMTLe+x/VZhcUEBAzlxL5syJeEOKV/HDBY5VjUIb0tXfM7F3w/84Z9oDBN0nSsFfKLNgHkNuvkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQX22nHAWTydt3CKMqJuvthZ2JnAa1oWMzkLoVe3LIw=;
 b=GZ2ooh5x6lrXvKp3YN7f72F28SR0lpe+xjg26NHqlDvGRkiqLEqKFNCF7Q183SxioYavPiJ7zZAo289YVnXx1W4hl+jlXiCLLdxiNXYrCfwEtsBF1GNrdaQcQkJ4S2zBCisHbOVWkvNAMc3u2/hj0N3lVQk1dkjpDk7szWAN4YqDy4f2ZtL5cnb7Z0tO8lL8AM8MxRFif1NlNEJWiBef9kcWJ1mLZWtXy8OIQhOHn70j5u/FJ/+gUAANQn8PvYlEYSU8m7hC3cT39+p1Wc9ffo/IkeylofRbpN8m0d5KmbUrLCojbKU69kcJ6tEvgJmlZaSBDx3gcNCwqc8ORCpTgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQX22nHAWTydt3CKMqJuvthZ2JnAa1oWMzkLoVe3LIw=;
 b=j+I0cZaFr43vByn/RQYk9p63TVGUL81myhUbRx/Vk+ranOvxjIqMip0Ffn3e4TeLp9V0gjxxqqwwNVY+vyp1v5tUfi0xiOxJpYV2b6YZEoiLY2ujbG8jvaiKBc4n2Gw1pF/Yjra1HiEiJfEj5UKA19q/vS/WV+dRL0qqHLNNsx8=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4257.namprd11.prod.outlook.com (2603:10b6:a03:1ca::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Mon, 21 Jun
 2021 12:12:29 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094%7]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 12:12:29 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest
 invalid-buffer
Thread-Index: AQHXU3vIkT7N7VppbU+WMWYWno0TBKseaWyAgAAc61A=
Date: Mon, 21 Jun 2021 12:12:29 +0000
Message-ID: <BY5PR11MB4372F9795905F5681A318847890A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176367-12608-1-git-send-email-vidya.srinivas@intel.com>
 <YNBp1bQ3YucQAnIs@platvala-desk.ger.corp.intel.com>
In-Reply-To: <YNBp1bQ3YucQAnIs@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.217]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d432a3b0-1a68-4a84-4b78-08d934add759
x-ms-traffictypediagnostic: BY5PR11MB4257:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42575EAD643D494D101CEAE1890A9@BY5PR11MB4257.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HPXn6PTgVkt/uytUvS58lTwrUDsAcTIIVdPWEld12m7j3VBZNlrr8bOnz6lP+P9YfdinH5iy0ZnsWYPzUr4wxByPFqrUWn1wztfG775hm/wNboq/Vjj7p+tlxr7gFXbE9A8nAYDun/xdzoo9cRNbjXgyKsr+7o9wmesLeqVcx750soEuQGA62MDxIJMEdAlVVa4g0vfpaXJmipxHG0r6cORzPGqmjmdorY16559A0TrDUJvH/E6eH13ZdWmPCCEDarIKhZHCxdJrfE/w8V3gkWarwxvivD3AkO7qBeJLQN7OgCTvKimMjB3J/tCUD5/Ac0i3Kb0QKXfNbBmw6plNBmLef5MC08TxQwRCCi6u3BPdfSfaKnUZBfg+Kj26Wwk1ow0hNuWcP+kOb8kkM8SYbKDWgwYDU+BW572n7Z7r1YXNYL0/eOckMdQvxeIUNZNh0Z4VW31OwlD6kOr3H3bbVFPi1ygNDAQqiiBFUG9Tau0u4N15r4LpXrOJTptrYKJvjm0FPiuJwbG4H/3GP7A/6yHGc6luC3rTFBlRvYvU+aVvWvTz7AdiyvDEOtzhb4zDuQ/dvxQA7utLHvB0ZZTLtn8joFoJiJ/qER6D7K/IlhE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(396003)(366004)(376002)(136003)(76116006)(8936002)(52536014)(6636002)(5660300002)(66556008)(64756008)(54906003)(66476007)(83380400001)(66446008)(66946007)(7696005)(122000001)(33656002)(53546011)(55016002)(71200400001)(6506007)(316002)(107886003)(478600001)(86362001)(186003)(8676002)(6862004)(26005)(9686003)(4326008)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SVbSeD2u4EbvmQApIa4Ntxpc8CncvvnKH/hcVJOc/0VQnsz/u4aRrQheJtrD?=
 =?us-ascii?Q?0B5+4HKC5yOL3kayprabQ2CyPIsnWDI1+clIlLK9s0Nh1N71i4HAA8y3Ve4v?=
 =?us-ascii?Q?PoPvmJ4koU4adrtSqIeHb2cbKxrYnJEfVx8niqgezwDTzEiV0H1/q+DP4vM3?=
 =?us-ascii?Q?dcjGNfHEIwvZT+6J/P3SC9vworCOFSlP0Cu/TxN0H5l/8ghnzJFiMUQa386r?=
 =?us-ascii?Q?Re91p1A2dmwqMxIiKnCG5EeUHS49e97k48v+Rx+n1/Gl+IDScJCr/qUkPPV6?=
 =?us-ascii?Q?54bdF1TPPZcryoWJHyUYjC3dd/eQsJyMt+VcntAJoBYnJkxNWLrSEDhFjm3I?=
 =?us-ascii?Q?oOfWEDDAA00gdZW7JXvNUH/rEHsi0xjJ2kESFS1qojLCxBwW+EMP7JdEUu/i?=
 =?us-ascii?Q?DW+EImf3Acr4b9qg/vkMZ1Fg33nywy09hZfRWJZ07fFp8nVwhxcq18Ztc9Kp?=
 =?us-ascii?Q?8Hwos1khezB1Qu3CBbaiZz+fxfuaj0+FNXm6PS/BBEmdG/r3H86U/5BjVBTp?=
 =?us-ascii?Q?FJFnq08l/fcHRQK7ImgYsYVnMyJJTmxm/CdsY9CDINWABd7QeWgwx1FcoIkd?=
 =?us-ascii?Q?FSGb+v9ylVm/WLH6dOBFslLAEKJcnN1zZYcztf+ygM4xnYsPbnJwU7DGcxI2?=
 =?us-ascii?Q?DC7tNjiZNHcvm5BIh0mm4VsQAmSuD5I66J183cpSMWp6Q83QhskuyxuGePBn?=
 =?us-ascii?Q?i1T7L9O+LweWaaHbnLoXZo/37JeQAVWkQ8aAaF+EnilC+6iOG8ARuP/mJT2D?=
 =?us-ascii?Q?BoIPg64qFr0+UMoibjt8LPxTdJhfZH/GcguTNhiPgkNk8iA/5QOqOl42vSoK?=
 =?us-ascii?Q?uJ8IY/BD0nLMC0aa1nM9OMHb1OllZtNYjvJ+9W3MnEJ3qrUCnPIaSE2I7yMp?=
 =?us-ascii?Q?SI6zZEdglZMwrVghntK70kYKXY845xeoJJYXmJysSYuRRGISEPLLesa+cESr?=
 =?us-ascii?Q?ljk01ps6ozc5WB9uXTJjT2g4fbg0gRdXbSJ29jXpz/fWoIxVm6sIbW5IDqiV?=
 =?us-ascii?Q?7N+mfLfybpnmjOydOSAn+yvBNiigpC/vUdSWcBX9IWqDjFl2IALEkrWF38Wv?=
 =?us-ascii?Q?16lmQgG8owIoP3uBnbBs9rchwzka4MA6eeA5+bZ9Vs1CNT4leaMHWzaDco3u?=
 =?us-ascii?Q?xUK7+KQ4G1tUf1lrznSm7aFe6fp52ppunjPic9E5L54zHAg5r9kmrzqIp1vf?=
 =?us-ascii?Q?U1/v2kiDoK2kpcreYOVc031M+mFTA+EeE1Z8PNIvB5zq28s/nI3ihztXquD6?=
 =?us-ascii?Q?dlcuVe8pgQxAy+/0qDHlXDpKAft7Pu/6cXy6ZHd6rYEX+AQBUSDfPSDmJYzs?=
 =?us-ascii?Q?MiA4S/6R76gdo4PfI1E+ynx3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d432a3b0-1a68-4a84-4b78-08d934add759
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 12:12:29.5566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cVbZeDjYKhRHWNf2mou8CYH9KRnY+5fasu+LSbHjcrZs31rclMoh+WZifoOaUHAusCcCADYbxcXNgVqDhw2eTpTo3ZMq9v2FPWJFCDIlzCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest
 invalid-buffer
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "markyacoub@chromium.org" <markyacoub@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you so much Petri.

Regards
Vidya

-----Original Message-----
From: Latvala, Petri <petri.latvala@intel.com> 
Sent: Monday, June 21, 2021 3:59 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest invalid-buffer

On Fri, May 28, 2021 at 10:02:47AM +0530, Vidya Srinivas wrote:
> Using (void *)-1 directly in read is aborting on chrome systems.
> Following message is seen.
> 
> Starting subtest: invalid-buffer
> *** buffer overflow detected ***: terminated Received signal SIGABRT.
> Stack trace:
> Aborted (core dumped)
> 
> Patch just adds a pointer variable and uses it in read.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/drm_read.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/drm_read.c b/tests/drm_read.c index 
> ccf9d822fd8d..2fdec5be4078 100644
> --- a/tests/drm_read.c
> +++ b/tests/drm_read.c
> @@ -103,10 +103,11 @@ static void teardown(int fd)  static void 
> test_invalid_buffer(int in)  {
>  	int fd = setup(in, 0);
> +	void *add = (void *)-1;
>  
>  	alarm(1);
>  
> -	igt_assert_eq(read(fd, (void *)-1, 4096), -1);
> +	igt_assert_eq(read(fd, add, 4096), -1);
>  	igt_assert_eq(errno, EFAULT);
>  
>  	teardown(fd);

This looked weird but then I checked what glibc is actually doing. This is FORTIFY_SOURCE in action, and read() checks the buffer with __builtin_object_size() that it has room for the read. Which it can only do here if the address is a literal.

Reviewed-by: Petri Latvala <petri.latvala@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
