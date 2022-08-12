Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6787590B66
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C992A5681;
	Fri, 12 Aug 2022 04:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DD6A5691
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660280332; x=1691816332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yXVYLxE5BuAZlttsXz6hyRq8HLMeMXMcKg+FHrrhLGw=;
 b=MJzqrz3Yi3yET+tbVodlgNNUIGGLmvBzU8AmsxrLO7Q3QeLu1rEdmkmM
 0+MZtkpvbiYrbYY3iliNm1dTYCKUETOs7Thomq4Kl0ZZqHJWH7XsVS1oX
 SonQZjpaTOfazB4UouXgtEN+NpwM0XIqxMugvkqVG9KlYFgI7CemPlL+9
 jAhp4Mm4epb+CodwcRXnY/lk7LWfBbwyuWjCa/DXIS7YWqvOIB9RlEwm1
 G4RAwcqjRNhIAnUOnzp6RvrF0ek7W7CDiHu4/cFzt36Ksf82d1qZAkhMr
 8Tg90VGGbNJyLPjXcYJQGpmGRvlcAjNo5HyjCdkwwzgBxFJIrmEhmXKZs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274577596"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274577596"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:58:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="695148157"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2022 21:58:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:58:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:58:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaFgYdk/WKZs4C0iNgdcodU1ioirrON4gTlGDkkY+4xARHI7ScbuakP+dIn15isOIwYhQUbU0dmtdmwJsSxzw82Utlhmgu1cdkr+OuEKaCGELC/OrllGetNNDeOqn/A7KnKTHLP1cr0LNNIIEZgTuz7Uv79JcLoHEvsGjX0SrgIlck7MVAIcD32l4AYTJdOZNk/4pTFlCGUW2XBDTnqOtujlbYwOvrI9J6EspAM6B52xyRudiz+4+BKbbnQq7zCB4H2WZPnRb50edIkP0kpBBQzWLM7GgugzrFtI6Eef4P4g3F8PvSyr4/3TEu79YSFcz8UI7OKmSOfLR+x0Zlwc+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KzBaS8eHdUSY/DB+D6gcGohmYduUqxin5RPY0lT2VKs=;
 b=AqHFYnpVBMAymeQKWnTI/50R8TI+/++hz6qoIm+bo0yGXJ6LGfSiXT8dm+VJ0UAyL99KLDLSd5fGmgpJAtf7HWIJVkKZYWrey4goIHQT7BfdddBoP2id8/+O2iaxHRM3majn4fDLcG2zLxpI6HM7xJylbU7VMmBH2D+FAN+ilFFB5vsVX3TXV/epo1fRNRztew1RjYW8dFl2Ge11coX4SMvC2PTcqzse0Xonye6ziqc5zOylkxAVYMStQOcp9j+bcDvQO3seGo9KW8lBJEp55NEZFqi+IKN6rrGdHlVTWZNoHRJC6EPm+rBmW/u6WFNqeqcUk+QErYXiLQgUMynj/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Fri, 12 Aug 2022 04:58:47 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:58:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
Thread-Index: AQHYrZV9kf3Lkx+pZEeodEXIa1wJUq2qtEnA
Date: Fri, 12 Aug 2022 04:58:47 +0000
Message-ID: <DM6PR11MB31771C8CACC002848EF68748BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <034fed72ccfe9c25bfd7543991344a57340ceb43.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <034fed72ccfe9c25bfd7543991344a57340ceb43.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26114151-54b4-4f06-f005-08da7c1f5754
x-ms-traffictypediagnostic: BYAPR11MB3255:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zKuiLsHxEKIGpH7iC7ZLmh/3BRHjc5fAibT/JsPi3aEtgvaXMgRR1HO1kCR6trei3JCQdg4qPkcoHdR25w6OoAVWyEqFFdfvBAYnD1njzTU6M9r5z5xgAkA4vzQt8yvmBhBX86QsHbYYWmWLpH3sBel9/it7IaRpwDa9XDxRYOPYBAjbMzI4MfGJItL6+y9xqveO0HHOPTFysmZVIbKoJ5lIO4ZY/WFzqxGXmE8ryh5JlNDZOTEPHVwgSNieRVC2bx5OYnXfWXvrvhwO0nhcp0LWGKhOq3tqMg7DkIIxhmzzuqU2r6kc8JpbawT0isKurDCzUuwwBgOdVT1KEGp1uFK/ulQew9dlAvqUKNIS+adW5GWFmvDI34epXBJ354qrdschdcP6o7JGoLHaSOPjbf9d9y3E+zHNXymsU/b4VKkCVGlEt6FhGSxWEtgUeUY+2XjpV9Fn8Rbz2jSJYcZKTQ48qQZtCM45F43tgdD9xJFW9pcAJZIVTYV/ZMeXAljta7adZozczSx2c90oCqJEnU+vrZP/56p+0T+NO1QuM/FgVzbyAhvWZkCYGVsx6A6LIz7N0BAjLYqyk9TtyNXxRO4Mo74CUg2kAT+uSf/7GJVZJCSQHNNDELA58AChxd9Qog5REr5IXGifUI6euuzZcm0M/3/fDMfbjIhAatKvYyJwOW2IdPxFniirID6AMA4HkfXt+s4S+sEw88u4qKYmnQB9X+oOSJdiZ41/RJlcHpc4i0F211CvNjZeLHS5HJIE1lLwBoIkchDIRAamM0j+Zvsg1UeiI3abknwg1Sl+N1CsrTMFp7gAsAouO5a50OOJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(376002)(346002)(83380400001)(55016003)(33656002)(55236004)(66946007)(6506007)(8676002)(53546011)(66556008)(2906002)(38070700005)(82960400001)(8936002)(4326008)(316002)(7696005)(66476007)(54906003)(64756008)(52536014)(122000001)(26005)(66446008)(76116006)(110136005)(478600001)(5660300002)(41300700001)(71200400001)(9686003)(38100700002)(107886003)(186003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rnYxNUQZ0YG+nvQxDP29KCXYbzEPvOiFdKNjHQ5iGGi3HVJfjBO/PmuA9SDr?=
 =?us-ascii?Q?lqy7llz4BzdjE5hw6dotJ54X/QaMCSyrRpCchGQIsLkPVH20i6xcdyUnOwli?=
 =?us-ascii?Q?pQKKP90sWp3ht3oRFpFvNklLL0oDlm9VxPmwuAV8OY6cLltgkIbjw4X/icBa?=
 =?us-ascii?Q?K9Y8V9a9LWXW7JlTMeLPbhgK4DKZmNZngTOBHTpMoExs5mi4D/oJfgIM3KzU?=
 =?us-ascii?Q?QOXyl7mrweYffMjl7wfecn8aXo7h2MOfTvMbXdYSx6QlarIwREEG9vPT4vrl?=
 =?us-ascii?Q?Jg3YfYBESSjpl9dSj30BzsBKnFWPflgC362MfWzAFiuyGe8an3q+UwBPjIgz?=
 =?us-ascii?Q?YQNiSMSKCGOQKnXjpzCRbvJKTUNNCEQCm2Pr+OOh9V37740e9BuhTqhT1fPy?=
 =?us-ascii?Q?oCn+leS6jUq+5GONTfMH9Ptfel4QNzuz2gxiAmDcMLmXV+aRAs7iV1sIBi06?=
 =?us-ascii?Q?W8Sx6XinSi1aYC2sXBWbxW69zSDRDFw0j2gykGGCzZWQjLeWlv7FVPWvi2GW?=
 =?us-ascii?Q?UuzZ2nltSACsaQKwhLSyIxhbVhH7aNEXG5vpsDa2wuzAI+yePnOAQA+8zsLu?=
 =?us-ascii?Q?WjntCnABvqrOasBJ74cZCzzbiiJZ3Iyh3vu7qBZbO72tmXgEHcWhsdF9afMy?=
 =?us-ascii?Q?JI90ppj5YxZOMkTeLV2eSJH/DsqJ5NP1a4wTP6s2HgBAqPNzm0cxA/ww8acd?=
 =?us-ascii?Q?ftrian5x1npCqI+mKPwrUVU1eTYwznTRVY/JCKkvAw2KFn/KKxZYJ1Krz/Jc?=
 =?us-ascii?Q?1ghTBCWeUju3AbErztezA0AepP5ZWIZLQGtsWD2ygxTiCtIKP4b73SvCphFB?=
 =?us-ascii?Q?njiHI5vdomeczsNI/VGNVLopbvgwsKcJSNgskIlr6EGilg7N0m1ENjUt7JaD?=
 =?us-ascii?Q?7oJuwzRLG9wkWvQxZBpdU/2drw4q/tfcOW2NcyYOFIaaz2UdQUN7jNeuROmT?=
 =?us-ascii?Q?oVPilSdfU41C+QUMg0pPD1kmXTUwaENxqfVqJoQMAs+EB9AgyQqCa4KNAdSH?=
 =?us-ascii?Q?YFCcH3yP56Ns/kiwQ8JOSOiFPYKeD8bPTJnLLkMnjOfORhjWmdP+4cAqQsFq?=
 =?us-ascii?Q?eBTSDATk1qhy1kPaxFUHgweWawuURCW6uQ0RE/YM+9KT/Ouuvp5knrvIIQP0?=
 =?us-ascii?Q?8GCdJjLPqC8FV35IR2jeiusf6JRWF3YpSNYXxDcEW2zynUSmDG92M5JPUHcx?=
 =?us-ascii?Q?4OUAbto0LIpOgGZbd+WR/Q3CaAXbsiDaXfT6whVwfuDwiFxptpvPGr7fgAT3?=
 =?us-ascii?Q?3E8Z5mpedLc517tBcGOcwplAPcD9TY12CAwI+37ZGcy3wFiqn0Xd42LHIQUS?=
 =?us-ascii?Q?4FuL9ejMWHKcHGiDT8B/ageJ4pFDfylgEm5TWaHc68rhNkyAKIk9c0XVfVaU?=
 =?us-ascii?Q?LWa06Hc93A9q9SMoj9bcJ8azjcHngriAjneFhQf1bozpKe7RMDFXQzlOXd5W?=
 =?us-ascii?Q?iwiLS2rtt83XSlYt3JIQT7BHf1keqnf16uvn0uCXSpsUrqLzN2IYcRFOWtki?=
 =?us-ascii?Q?WxbVEF6SZj9IrH+2+XQqOIh8FSWCxHXTUsbcey5Uwj4OFOuw2MPgCA3ll6WM?=
 =?us-ascii?Q?iqsC73K9ee1ZgLDmUtRLKqXACX6MRm9CZeiZ4hUh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26114151-54b4-4f06-f005-08da7c1f5754
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:58:47.7048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hr9NZG6N0XosfSes8lnj9xPY1R16jPvvh2x7JIQw8BwsKZLY36xcWJmp12cmrFLMJLEE+KhQBxlypG+A8Lm5Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> FIXME: dmc really needs to be abstracted and hidden inside intel_dmc.c wi=
th
> display.dmc turned into a pointer
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>  .../drm/i915/display/intel_display_power.c    | 18 +++----
>  .../i915/display/intel_display_power_well.c   | 18 +++----
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 52 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  3 --
>  6 files changed, 49 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 030ced4068bb..ca22706e11e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -10,6 +10,7 @@
>  #include <linux/types.h>
>  #include <linux/wait.h>
>=20
> +#include "intel_dmc.h"
>  #include "intel_gmbus.h"
>=20
>  struct drm_i915_private;
> @@ -108,6 +109,9 @@ struct intel_display {
>  		/* protects panel power sequencer state */
>  		struct mutex mutex;
>  	} pps;
> +
> +	/* Grouping using named structs. Keep sorted. */
> +	struct intel_dmc dmc;
Wouldn't it be better to skip this patch for now?=20
Anyway the patch has a FIXME so can up with a proper patch later and avoid =
double work.

Thanks and Regards,
Arun R Murthy
--------------------
