Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5914A2C74
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jan 2022 08:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC58510F505;
	Sat, 29 Jan 2022 07:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A34610F504
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jan 2022 07:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643441091; x=1674977091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cfyXjA84ATqryTdMxTv0LY8UlDPQedblz4ORrKht/r4=;
 b=UwG7rZd/dklrqa5ubz+oROZe6ottu5eQGEkO3LbajdzHcuWvnTUTHFEQ
 Bae3shazZpcK0r5+YTV1wEvz8stezjfLIu7v5vlt3K3D6v1MuvdEd1aqZ
 pXDFrbsOZqDA+G19kHdKzW/xtKo73iQ5B6jOW58bRrMG8BjwD5mXdMwIn
 1av2eka/qQs5WvKzU6tdsqTK/y/R9Thkx5j7CKstrhOG8hWGp4llG+PAI
 l2oj7NSnndTaQgHIgPV1ukkMRN5Kb0Hq8r1/hMJa7OmtVpSKcf/9R1kQm
 6eLbgkgx9HmsTCshWP8Li53kCpYfpsCECBfMl2RCBWZ75JSWQBK2CZggc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="333606301"
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="333606301"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 23:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="478517980"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 28 Jan 2022 23:24:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:24:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:24:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 23:24:48 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 23:24:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUgb3kBIvj9qgVk4GKkMl0i+ooVoR7nVlTqww/ffDfx7PkF7hg+RUKSxTsQC0hMrd21xOP3+VSDd1RS/OEs4X6440teQg7S7p0fcb87paLv3PHmKLxA9Qr7pn4hTCIceCw3Y4nD8Id09b2HbrLsFHvvrQiRPVJKnMtFOM6JuQU64NRMlXq+yjQbgHkBKxjRDvLRxX701ym0i8mHS1iL2i148tQN0LhRakmIsO56U03xV71I9Kim/lc6/o2sQMaoUsAWrKzTUXzVUb2piLJIOh1DZN5Qo+VaxUPT/0vX3VQIfAgvrxIqfLaZ1hMkvsEmqDhJG3QZou3F+s/NkpJnrOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sc6Bycvu2fKQZGf3exJ1maEF2ShEUgEz2Jn5bGGUw30=;
 b=B10ftcd3cm1/lr59IT2Jspr4Vll4M1OzURbZdXOP8IwY89yqLl7sL4BdKqQPxEk6N8Gyi4u0VE0BjhHuCOcQPCnr8S2h/ro9sOqWrXilrDlStSoaGF32AEYrC5IcTi+jnoaboHWlFtrZjBOdIpDXCsSp1EC8O38A1TIVPyqZ+f9hTFLeCFrjrAxOnFKo4ZnDV3xYsxM4QlEAIdOLG3V0M627Z1Qth4EYmCCSCGBGq0vsFwLQr+6KMAMNz26QJFXZUdEaDAbR7kWrPb3OqRwDga4Swzy+yE4i4aEIEfbUny3Yl82FPxXflItJ8FUNZWji5w6c1ESSGw4bMSgf6Dbmlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sat, 29 Jan
 2022 07:24:38 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e%6]) with mapi id 15.20.4909.017; Sat, 29 Jan 2022
 07:24:38 +0000
From: "Bowman, Casey G" <casey.g.bowman@intel.com>
To: "Cheng, Michael" <michael.cheng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
Thread-Index: AQHYFJPlx228miESFky710qelNtW1Kx5mVaQ
Date: Sat, 29 Jan 2022 07:24:37 +0000
Message-ID: <BYAPR11MB2936002E95B28FAEA1C44127DD239@BYAPR11MB2936.namprd11.prod.outlook.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
In-Reply-To: <20220128221020.188253-5-michael.cheng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccb48d08-97cb-4c3d-2815-08d9e2f86863
x-ms-traffictypediagnostic: MN2PR11MB3776:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB37764572C029072D137581F0DD239@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GDjCrY4GxhQ5mhEUXodOS6UUa1tvtPnxkaj3BoVSklFUJTPYahfuWBN4wKnWPvStxumYYjlJszV6zP8SZjxBq9qCn79EBgJCX4qQ0BqY7Tq+0AcbsR2QeYSdFjAbYWsAw3eH3VpF4k5HJ01EBfZgJbd3u1mJ7Mg8pvHz+yrr7VrnF2+pbsrKVd9rNI60FjwWS7DwrnQgWHx52lgHjz50VR5GzIfIwdIOIOhXY4+ArfA69GJszYRFPy8Vaa3PHBO8s+cIrbKpJS+EdYv1nQHyHX3JneRgiNtA+wl+oANlyvrnGYQ7QkKaTRw9n89DZE9Pz93K/N7zR3TrG7R7PmZptR6Psc8IIbmc3aFbQ2mVR0maNvjGYIonUcFbgiUsTn1mAjvhUf9IirjgVCdgdyM182i5cb2pW8T2wYe4MkEa0cwosxFRmG0FPlGtUUu12c6CJb/10L11YDGBDI9s/uAsOGPA39YpUmIDoCkVo7lXhdAwMqgTCKG1FVtKzzJFTMEtvmCDlbdKJ8LwzW97c+dWtwujHRqpPLPWfisWjGSw+4uAJVIxJhsZ+dAzVEDnxqjxTxXxUH86tuNzF0SFfUBuovln6kFR0XRs1xOYsM5ffcBaOjAxCQiFnYfOoK8QUX3Jv+SRU6zxfclirQXH9lqCVkIUNGbVRE0joI9BSB8j3mafsyYuzdQRMwjHtFr8NRMjR7VoMmD065dn+pNWiTvQFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(86362001)(38070700005)(38100700002)(122000001)(66946007)(76116006)(66556008)(66476007)(4326008)(8676002)(66446008)(64756008)(8936002)(110136005)(54906003)(316002)(55016003)(2906002)(52536014)(5660300002)(71200400001)(186003)(26005)(83380400001)(508600001)(53546011)(9686003)(7696005)(6506007)(33656002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?srmHbSvUkRF83uqizXzt+braJKP9Sc/H/LYcnie0rUVntU21zh4WxpeVthvi?=
 =?us-ascii?Q?/UOrBzZrnUpsuyGKEBO6MpvVmXTp5jmKFlqf4vzec3lSnK8OWiRzhB1bwMqX?=
 =?us-ascii?Q?eHxwj25LF8bVRXW4orpoDp9+IwZ3ePjvtwARtnH3ZLZk7TQ4S8xE72uP/LKW?=
 =?us-ascii?Q?oszczVEarDAmKhwC0UY710uWfm3rO5PBhlhgHQ404DiiN0YNXdEx327HnXHN?=
 =?us-ascii?Q?FpnTBv3qnpingUVn5vWsgTB4eK5UrUr3eXvKroyHu9Hl9jLwtVV3E0NxXtQW?=
 =?us-ascii?Q?FUrFhTAHlI32+2VIiQzyfFthv7hC8JxTaqsJfd+lz1tr0tqXnC0G7HyFiq8n?=
 =?us-ascii?Q?CzKERLuh4dC80DjVN1q9x0aSBxByEvivQMZntNiJ6YsKM7a5QRFlo9IQAceF?=
 =?us-ascii?Q?r9la9tWbOd89t4kui1EsJbza5gxySiryPF5as1VyCISUROUTdgj6uFiRajL1?=
 =?us-ascii?Q?/K6LSFOmhhG/rd7RHTweKm9P34SdAA9Ol3/BL03cT6sQ/GTFbWYqC4gt9IZ7?=
 =?us-ascii?Q?exbOD4UDl2QJzNhnMGEuh6gOtZIP7trP6qzEwIqirZGZLcNQN3tW+EDJJ6n8?=
 =?us-ascii?Q?cvtgw04TwD+sJ1PfWMEUYv5H4yjXdy0Tpru+f8dPpfVVF8UhWSV0ltEHLb4o?=
 =?us-ascii?Q?GKxOAhtTZiQvlbwEykBBUuqXZRt/rL/VrT2UcXrqIdri7VqQTjGQIs9kpqDg?=
 =?us-ascii?Q?P1NNvJJFI3NuH1rCo56fJE4YQjoJk3iWONMzQcNL6NyA4Myia0o1lRdVaNiG?=
 =?us-ascii?Q?yn3nQxLFMNXWzyDjPvNl/AdkGJt5jllK3O8LoC4nuxN4s4RPNd0Ec335qzIE?=
 =?us-ascii?Q?sUgHiEjHO4wxsCyINmNvsXqNXXpa48uJefGFMxdUjhS/J58iDHOR3IyZ4zI+?=
 =?us-ascii?Q?tTXqxmDcPOnA9CXXUrKZQbuwqAbTaOR3SRC0PyCM0crsMkdrqQycoC3wAhKD?=
 =?us-ascii?Q?XrF6xWM4a8f8xUBBVSS5WMMPecvo9uA9sX6vrdbIpDz6QG3VbdBq1zURs7P0?=
 =?us-ascii?Q?ojC8/rJ/TThXuGbcbHOqTaPfetwDgMjMr1347uyR0oRfSx7Tx5alflAvNvjZ?=
 =?us-ascii?Q?KBnyf5u4NHWSW3+ITF4sHBukNHzTvrrQ+31EyVapSM7HWrCteG+2FXwy+hkv?=
 =?us-ascii?Q?Ik7hMt2Fo2tkUids1gVITlDY0Pg9fzi5FUJbQKEBvzHl+hcNJB04xcg/My1+?=
 =?us-ascii?Q?nl5DU402od/w10EF8SLQ7xnhyTxV9PP5juJF5XcErsDGokeiRzA6ppxQTcot?=
 =?us-ascii?Q?7lcLQK8R2kjhHrP6JGfBstuSppNUzgc0retr1km7vZUE2CfHSoMT9wnuQaC2?=
 =?us-ascii?Q?LIP6iUfwHMmsIhhW+CydE1YhgtRhv7MG1xIdmdZuYuBgR0xj29SJsf9aPVbj?=
 =?us-ascii?Q?QTtzpEOIFOUsKX5BTLm/hCHyKAoGvk4SQvJmpdKRwLeFvLMQA961R5Gdv3zq?=
 =?us-ascii?Q?Ya+m8ojo//+7AeYTGgIpTAqEoZEZMHZVksA4krSgVQ9WFqTlzSyw4UqlP5fs?=
 =?us-ascii?Q?6BPrxXQdhfpFhb2FgA67TOZS5/DkaMZNJNcHvOw+Jhld9pk1T29UQ+kjI0Sl?=
 =?us-ascii?Q?kINm8W3O/oWRY17PdHzNVzk62ysiyEHuNmG3bsWvjFKPYvATjB9wbX96gnem?=
 =?us-ascii?Q?ob1YyWr3q/1Be4fmVl5wWGQvrxZRhkGal3iWfRmasjnNvsUWYpBOQEF1DjJl?=
 =?us-ascii?Q?MT9OQQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccb48d08-97cb-4c3d-2815-08d9e2f86863
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 07:24:37.9169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xW/32vPqMteif8S/noLVHOJYtGkQPOkCRAR1aQvMCwowYvOOm5V7x6Je8+Jyak1DFUE1EV+rJcpIE9Ea35pInmscqxGqd5UYQ2iNk2UvkRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: "Kuoppala, Mika" <mika.kuoppala@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Cheng, Michael <michael.cheng@intel.com>
> Sent: Friday, January 28, 2022 2:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Cheng, Michael <michael.cheng@intel.com>; Bowman, Casey G
> <casey.g.bowman@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Boyer, Wayne <wayne.boyer@intel.com>;
> ville.syrjala@linux.intel.com; Kuoppala, Mika <mika.kuoppala@intel.com>;
> Auld, Matthew <matthew.auld@intel.com>
> Subject: [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
>=20
> Use drm_clflush_virt_range instead of clflushopt and remove the memory
> barrier, since drm_clflush_virt_range takes care of that.
>=20
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>

Reviewed-by: Casey Bowman <casey.g.bowman@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 498b458fd784..0854276ff7ba 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
> static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)  =
{
>  	if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
> -		if (flushes & CLFLUSH_BEFORE) {
> -			clflushopt(addr);
> -			mb();
> -		}
> +		if (flushes & CLFLUSH_BEFORE)
> +			drm_clflush_virt_range(addr, sizeof(addr));
>=20
>  		*addr =3D value;
>=20
> @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 value,
> unsigned int flushes)
>  		 * to ensure ordering of clflush wrt to the system.
>  		 */
>  		if (flushes & CLFLUSH_AFTER)
> -			clflushopt(addr);
> +			drm_clflush_virt_range(addr, sizeof(addr));
>  	} else
>  		*addr =3D value;
>  }
> --
> 2.25.1

