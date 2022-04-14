Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFEA500FC9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 15:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D1610FDB2;
	Thu, 14 Apr 2022 13:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F3910FDB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 13:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649944643; x=1681480643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D2UgEvZljcJFgMkJTS+dgs3UPYKg6fzWIDsKnHJDI6o=;
 b=GZYmmmJiOTwGjaUs+9QO0tiNK3Cm3MKmuxgnG/Js3goKeAvgS9E/5cbi
 lweca+fTgL6teP/B5UdOyr5ULbRag0/LbgCQX3xAKtY4mGHh8TwdpurNN
 0V9Y5kUuarczaXvMBhtNG51GIO8mfilF95hz/TOk6ui4JXLFmLs+T2mqQ
 F2XUQ2ZKOW53wncmcMNz7LQ8vh1mdTcgnqXGQ4skbXh1VpD38Om4747TV
 Lc/wEDJHcB1EBI3d4LXfZ2Ksrkw3BxVUpScMZgyUgCP6dRhXWkQm4KW2k
 0MhFCTwjrJrO8ignuy3R8bSOKeMqhSgImyJvS6iiN/MoafWBvGKHQh0b9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="260529365"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="260529365"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 06:57:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="508412521"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 14 Apr 2022 06:57:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 06:57:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 06:57:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 06:57:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nH8M9GIePEaDUcI6lPghQHCqlyRXCzcJjlawYWO6+BuGFw5dm2675Y1f/znZjqBhsZ+XvzA9dLlDXkUmnCqgsEIvO9z9qum1VSNe2cTSnBZu5Hz6ooeH+kYDQ9IHRUIQJByWuIXT6GZseBehAIkkl5WOzM5Spgjj187syFRObc0ZlHIopFuuNrDK4vS4Ik2s9dot4QQygPa1pqobEQr+nxIHeY76RSddO2Fzpi1dXh12SplawrloPo9fz78ndj5Tr4H9tSgwj/DsXrjygfXzLqAs5WVGY1hJ7+0TFSJeOWCXPrQez3uwfAOQqux2vy7O9K5wBEejbhPkSeD+kzkGsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NBuUqlZLb79obi5jS4AE38RAY4maHaTPJiRPid7peZw=;
 b=cX8sps/HrB2CGE5lVAYEeFXIA4JNlgMVbh17XUZDno2Y8jXsBXnMgbE9PUYgnJMyvu0Y3usEI3sehQsZlxopcQnIel9joL3COG738INPnleENkOnY8Hk9Kd/m52y6PIWvfRv0DgsEVWa9upWLKlru/j0fDAgfVE54K8RKPqmqxrWKHQ9VFtYCGCjXt4CNxjT3SSiiCVhaK5vLSXz2j9d7ynRnIJGC0c8yNqz9WRon6cvpjU6XgXguSU3fRy+4XhHzEzyg5HAlJluTF71zGF+f+xI+XiqZrumcyL4EyM5cPUew1H+p08x6URKDks76ay2Q2+ENdg+jfVI5rwdaySyYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by BY5PR11MB4227.namprd11.prod.outlook.com (2603:10b6:a03:1c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 13:57:20 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::519c:2867:9e5c:7ac3]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::519c:2867:9e5c:7ac3%3]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 13:57:20 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN steppings
Thread-Index: AQHYTyctR0KeXgEu3Ea3Y7z6bavZUazvcJvA
Date: Thu, 14 Apr 2022 13:57:20 +0000
Message-ID: <PH7PR11MB5819444FDE0AF083A21E921FDFEF9@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20220413105827.2346571-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220413105827.2346571-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f10cc3e5-991a-459f-9927-08da1e1eb194
x-ms-traffictypediagnostic: BY5PR11MB4227:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4227E360B939A757A8A6661BDFEF9@BY5PR11MB4227.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uoiDecI3ZvEnQIRqcdjmvc1u640dg3HEN2YPLlOS1SOTENL6Nr/Ftw070UaDK/94arfoUjvwWQMef+Lo/Srt77iFG5nyCrZjJMpZpX8zEz5S57hw4nlQQu45ZcDTPCuDjRdFlv/0QAD5sVqCR+CIRDaJjnX2ukNy1DBL9zZ6Q6uDK8F3FCTEI/8aGTYwmz2x0hbI2CnQBgqVuVIZPEEOVchWXm66MXeuQqDgtjLFaahbWHR6pRX56h5fVZ/odvc8HeaALLEb/1ZlRt5kuSwBkYS4nJH22h3BDfuGCbvbjwyLeJKSvel23bNemvxcGhUx3MUPq8hHN0CWotwb5jOqRTrgqk6LaGe7onIJ1ezNUfk6zAz1Nln0zSDvBHODNvdELq7w4KFS9+S0M6aw4yR7yPBe2n7QUHzGMxSKkcsUPpqjuustwCeO2Yohj8LD/XpQQkppaozCalMDLmirTKW6wwrE1fYFFDEki4Xf0h5VyJVO9qyHPvCPv8IWbPj28DZ8T+QredEUoU4Jdjw0EbMFBiFbjZzfTQGvSjDDkWBzBpOzH5ecgzZQPqrzvg6d7NwVtbuRr31jrrsQi9HHGEfdizZjX3F5lkiUeGREbNqPAu8baiWOUAqN6/54V/yV3JhSMvsiaOOMfYE9ivCT96RRH66fGvgNIhR1QfGkYxHtW/LlvTf94gf7MOnypiSWXm2/l8zR0DsTBshrVIALAHOcow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(71200400001)(26005)(9686003)(53546011)(7696005)(6506007)(6916009)(316002)(508600001)(86362001)(33656002)(122000001)(55016003)(66476007)(66556008)(5660300002)(64756008)(8676002)(2906002)(66446008)(66946007)(76116006)(4326008)(52536014)(38100700002)(38070700005)(8936002)(186003)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?teirvTT140lpDraAQ27p9NrKfYABbQfAlb/BTzF8sOJ+xq648ug4R1kcwW8o?=
 =?us-ascii?Q?QkmMR5o/KTa1qk/00kgV+eMKrBNACA1S2U8ebT54o4FoQxFNO7ylKLZiWijm?=
 =?us-ascii?Q?dOZiZhKBvnm7EKyqOTDeVwGNRf9YOGUd9YjPyvPFNaHgNSw/74XAIvAK5los?=
 =?us-ascii?Q?U7J/LLi+tXvOMy6sDSaTNu/rL0XIzLTAt11XVXwnqgSTVHpMN6jCVJmkulFd?=
 =?us-ascii?Q?wMH7ylN4y0ss0Ad/D8tiM77YQdwBS3f0CkEdXVfAu7u4y8VdeYWsUdWfCSfH?=
 =?us-ascii?Q?GVAh6s53zjUw0vYw3wrA+M+sPX9eZGi33hVPqZOavVS6Mg0O5SaqUyDHU/MU?=
 =?us-ascii?Q?RrxffTUy3QuF4sSZH3gwDiiZZbBkrzD85bhjfV6RfIC7kpJ8m15qOCwaHmOw?=
 =?us-ascii?Q?GFxtG9j2TFavR9PYH6hbDlOaA1ZDr/ijwqIsHx1Ldh22DezYzGhslpfVay8w?=
 =?us-ascii?Q?sIEGiTCKzoWBdI+yjKCjXkHSfkUDIhi7Dml33XO2R/IX5xI9qVCsbQQ1fc57?=
 =?us-ascii?Q?1WIiP4+btDTPVElDpiU0Adf8VhXtyGp6LhbYD/4jYWLbCS0Spub+5ZrD34JT?=
 =?us-ascii?Q?9hzvmuAEGc5AO7iHalI4t7tzCV9OxrRjy7rkSr9G6UItkMH79sofVSMcsk3U?=
 =?us-ascii?Q?Ag8UC3L1f8Wi34MujWjhR3mGCA3AABk5jP50miJbQJ7AEJXKD6dpKRVM5AHF?=
 =?us-ascii?Q?/B1QXmHiwxgwRrxRNYIEmxK+VDlJprBJC+6AMtLO14hB3pxNj6GT+a2ZNzhO?=
 =?us-ascii?Q?i1MmJSd0G1ooPGPXKEp81UWSHvHrvrgzTX89eFozvKXZn286CLOb5+h2vR/d?=
 =?us-ascii?Q?kRAHEYn8R9O85IpOyrRNUSjTJnBTKJUgP8VHz4DFmQXPlnejs1/m3uh+JL4V?=
 =?us-ascii?Q?Zo+5RzM13ldJjrzOOpIEVgM16+CBFR/2sqt+t66is5v8DvLK+8E8xzcRs6xH?=
 =?us-ascii?Q?+LOhhAhz41+H2aGh3TdfRbeBfvkAHGf1xYe5GPotW89BmBCT2mWwT4oTK83M?=
 =?us-ascii?Q?NlJ55hOZJMWOxbYYH11Qkkb6+rYbPqgldBIs2seKvNpcPW/5zdEqQhDvx5No?=
 =?us-ascii?Q?3z8TPvYzW7Ig+tZ+qIK+eybbK8kkapuG4tYi75s1ZoalZPNCwEIxT/72JyVK?=
 =?us-ascii?Q?zm8SyMIGscXUfs1/NoUs43Ux2RY8hBK+5CkvqqYZb5ct3kwexcG4zuSAe0aM?=
 =?us-ascii?Q?7ZkgB76ghdv7ozSFIp8ZaDrbwKQTKxli8UY6QDfhf0LJzZ2U+Bx8YcqyeqL4?=
 =?us-ascii?Q?O+l/pyEj4XAv5229sYHD8bu64cNmFDfi7UimHRmn1ibEDETkfqnkw4HVQrfj?=
 =?us-ascii?Q?Y0RqQhBfPl+8BcdTuQOD4ELLOP+FWZQlN4cv5A4eVhqeuawgp1kFcz4Rmju0?=
 =?us-ascii?Q?2MgEBH1SKXQWqT8q3qn0iU1Lp3BFAf5STGm0kG88I/ZlsMATpA2DsztAt8Ah?=
 =?us-ascii?Q?OOcYoBO8/NdQ5zZvpnOmTzLffdlDXx46B4V5RXzjnyYrKvxPoIr9r+SduNJV?=
 =?us-ascii?Q?vve+FzgdZu/Q67vDS3R2eIA0F2QC/qQiI1HmySBYR3eTxd1aw9fgP/4rwLjB?=
 =?us-ascii?Q?L5fNDaC2yv4QNXLgl7WxUc+bTAbvWCHL+sGBfbT79W2OyqyU03Vwqj7UqaIo?=
 =?us-ascii?Q?LQNKGTRlYf69OydCP/YvvxnKUW2VDWodjHHxWFxMJ23dw6JXm6EN1Xh57ebl?=
 =?us-ascii?Q?2PKgNYwRLjgOc2kvkdkiwW9O2FI0PuBZ1TvOmVoiXgNnpteaS4dlckgdOUJs?=
 =?us-ascii?Q?BEquyUg8fRBlFZXJi2Yh6ZLzUPBbiKUoU4wOkBqomt9VZRh5l4/mqXHKdvo/?=
x-ms-exchange-antispam-messagedata-1: 7TvX8iADZmfdRA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f10cc3e5-991a-459f-9927-08da1e1eb194
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 13:57:20.2879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1KXJ8GrcDFvBrfuuTRxC92LlkEx2qK1KpqU1NvckxpiyBT6JCsBTNeBqYHN13XukwdhR664zicf8fGWk8ydYFJFCMx2TedX0DJ6Jijz/WuvfRCE+H1KgsvvhctP9TPjAz8vDAH5ZSPAhg3kQ3Xgu6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN
 steppings
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

Hello,

Can anyone review please? Pre-merge failure is not related to the patch.

Thanks,
Tejas

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Sent: 13 April 2022 16:28
> To: intel-gfx@lists.freedesktop.org
> Cc: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Subject: [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN steppings
>=20
> ADL-N and ADL-P stepping are different, thus we need to add check for ADL=
-
> N in IS_ADLP_DISPLAY_STEP().
>=20
> Signed-off-by: Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 9274417cd87a..51f2a14b0dca
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1167,7 +1167,7 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
>  #define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> -	(IS_ALDERLAKE_P(__i915) && \
> +	(IS_ALDERLAKE_P(__i915) && !IS_ADLP_N(__i915) &&\
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
>  #define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
> --
> 2.34.1

