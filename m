Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54875BE22
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 08:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD0F10E0D7;
	Fri, 21 Jul 2023 06:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6634A10E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 06:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689919288; x=1721455288;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tHhihFwGPp5eWIcIXCqZqTLGUh0zynbGX0/jm9cIQcU=;
 b=R2ognSaHaZpwOasPPKjlXGDJ5gMv16p0mYAL/utLcwzhWqTNAxQq899j
 acccdnjzgcvhTTI/u0Eo+ahYywSaca2o2nL37FhjCqi5leUUvEE9dVVIh
 tWpBVVGUz02R6lU44OomGtLLpPrCABm2AzIcs7foMETdHZHaR9k9LOuSr
 WaFKxr3G/qWoBXaqdgZjP9eFMktWr/yIKFSou8hobI86+tP6r+RdOr0br
 QBCS4wuE6GhGvyJKuiXD3ryHUO9saE/zcUkyr5jzIrHb2eVpBsP6rwxoy
 Dthoev7SRzm0sENKMoEt28gU663uhgUjE7fDpsekaYt3QK51iMo56FE1q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="370545622"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="370545622"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 23:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="674933647"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="674933647"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 20 Jul 2023 23:00:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 23:00:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 23:00:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 23:00:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 23:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLVyahbcZ98w5tF1gJm1PBn/4rw2dXRi7G5wOCsAY3e6Mp+QK8BpnaOAYG8ZHlXVTtYxE/PBrSoel3re19RE/rZLqV2aafNQAdQS8QicciaZK97Vv8ld+OJzgGPoLt2DrdI8LfC6PHnfUGTBAfU62imVpHY683dbxcETuKWiEFKiRuiiFKe+rDYecdc+ta/Eu/ybXoWoQLdOArMwqXhf+UN4AxCuM9LfhccxgFODAjX+F+IpzXyl8/KmtwbLEzdaemaFj17GYVj8svpnXpoFRouyUnBqexzlOI4l+UICgzmOFcveQUoiU0LZlow03sXqoQU/q77JPBjWXDCP9NJfUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDZCY/WR1aKm9TRixs30WRCnCA7nhkDV9smgUO1Cnm4=;
 b=eVUxWZByD0YmZhQM2PcU4TcZLEPTi78RpFhZNpb/V+h1NMwg3FLQKspxOIn6NdcudILD28DP9xODibndjCwQNIQ1oTtqDX0dmDJYVRZ29rTRelymYhgfeAtxd3viYP38PwwATVMkP/t/BhqvxA0u4+cVhKMOzp+CCzsMSs/cGzUzM1NKdf/sfFESUSE7GfTpUPW7nqlvcXveZKUz2XdiJwJnbIjjaZcoCORwr2rGwVKoXmpuZFG78cv2GpXiXZ0RyOSydnvNdyH3pbm5o4gqZmtTggVJTRinzZIMhs4o99CUZ0QXSIbebhI5WGsNOKKYjcqD6Y03VGwOHkn5qROLdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MW4PR11MB6785.namprd11.prod.outlook.com (2603:10b6:303:20c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Fri, 21 Jul
 2023 06:00:53 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6%7]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 06:00:52 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/xe: Fix the runtime_idle call and d3cold.allowed
 decision.
Thread-Index: AQHZu024/EYKVXElKUuIUk6wxqBP/6/DsIgA
Date: Fri, 21 Jul 2023 06:00:52 +0000
Message-ID: <CY5PR11MB6211CE473D808409CC5A1196953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <20230720210353.214385-3-rodrigo.vivi@intel.com>
In-Reply-To: <20230720210353.214385-3-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|MW4PR11MB6785:EE_
x-ms-office365-filtering-correlation-id: b7c4130a-385f-43e2-5676-08db89afd71c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T4kupXNfEAANV0sn0Vn19w2yiRr7hP/YyXZ8Fe9kT9f5FG4HHsFmEYEUSwE11icLaY4ySWsK9CyzOCv9LoghJJSk/s/WGHKjZDZW8AVihmdhtjfPrfByjUoc5Od5nvLvOYPIVRL9TVKNWfgovUpbYNZVV3ET3OMOUEkrCbtrFz4Nk5hS+GCul6Fzs8L1ny4mOgTfw4B23LvZ6WbjwJcLr8/TpHrLOxxt8yFoGMCAyV+LY1Zfnr/i8V3R5NgMrFK8Tq5gm9w+3RMygRXp0L0//nHAVcPaT2qOTKEAcQXwpf0UZ9XQYLYZULlLu6PQyQyv+Rzi26a0xxNo4RqqLy3gqgaY3Nhmdp1PiVfhMIvhMy4nHbYYoItFk8JcI7E5ixqrQb0eWztDNMdp2JAELl/rzLMiEW2TyaVdIiBsaeAwi+vRWRCPybbHxetwJ953OWyzFYyYIrOMCxM2Bvr/ma4qf/iLXo2DEkKouFyyZKDT8+nyG5dLsthdv8T/HHO7loZuUnX6dtGCRh0eNpL14gZs4LCHRcUrSyMX+hz4z0DD6rRMIKonVMvdRQrHjRYdVcD42fM48W9O2AfVRBn1fpoRhXSSf12FXAvOCZFqz1jk7ltlN7lg09mLRyb+oEXAla07
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199021)(38070700005)(966005)(66476007)(9686003)(55016003)(53546011)(6506007)(66556008)(2906002)(38100700002)(110136005)(64756008)(76116006)(122000001)(66446008)(52536014)(5660300002)(66946007)(33656002)(316002)(8676002)(8936002)(41300700001)(7696005)(86362001)(71200400001)(478600001)(82960400001)(26005)(83380400001)(186003)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OWbwYACPEYgu6whX2c3MV6H+H8Da73WjjYSXhbGS3o9QKmWp//IfBzvb3wZD?=
 =?us-ascii?Q?/RU28Lq/AMYGU/FUWeZrOiaKS5SEG6Z7PTn5mxUNOFG29PYoiWOwgBTTCWp6?=
 =?us-ascii?Q?2u1wwTnNviBiCARzi1Vzxd/vJn5h+DYvQ3GkyRwSZN3QWVitm+LhVo9VLZdo?=
 =?us-ascii?Q?8YRHeLkqVU+flfe9kux27JO5GQoe3QAeeNtEQjOw1li+xeqTm4/jeI6QwCKX?=
 =?us-ascii?Q?GHz0UJc34c+eJKwrcpwVo+pFqfEIkBZrmzFNS079WrDmXWZ8xMh9hKXuqk5A?=
 =?us-ascii?Q?ZkXggWJ85vQoNPs3cjIl5nQvFUr1toNLS7lFHMdbQGkgh//4M37jYhln30m6?=
 =?us-ascii?Q?f8S2HQPD7KtXyAD52F2f7jAa2iXj/ZBFzaFXW+eR3ZzL2RptV8og0SEdE6aM?=
 =?us-ascii?Q?9pSoFO/BaD8jD/A28S3B5Hw9ylUIUT++vloZ4wBUgAt4HCQ1+mjYLbcMGFBh?=
 =?us-ascii?Q?Ho+aAehw2CeiEk7ku/uvQb5nPYXVfelEht2I+JFjBl6DlovJGsXNJaZfITvW?=
 =?us-ascii?Q?KJR1ONzT+cGx+SjeVnNFh3F0nrDJqzuMZ2cO51mf+JBXdcdjuvfQY9EJ74kL?=
 =?us-ascii?Q?BYcd4Uqz0JnTf3HGdJc73x9+jaxCn0yU1bGtP1iHI94t6OsSseaxquD2B5uf?=
 =?us-ascii?Q?yNIZgvQA1nsNsl7+lM6/4tzCo/D2hxNdoSSoUHi7dZ7J28D/FMwUPNasQ4/D?=
 =?us-ascii?Q?nNdu/E1v3DhE13UHyLOR85XcxKjuKcLPSRsNelp16wrxlnXZzD0ihoZov5Tp?=
 =?us-ascii?Q?f6uVAls1eMMISfcLL5U6UaDD1rw8Tsq7/Iu+7W6lXuq4gNvP5njCLZulHHSZ?=
 =?us-ascii?Q?20cWecDd8DiWUaHZAtos/mQkKUB353UaV28ogz3OlqaUtxh6ruVmLITSi5mV?=
 =?us-ascii?Q?G9y+IYOffnV03GWoPQ54fiQcJhE2cqj+vuK/sZoEDBHPPZAXTs82D5X2XFEj?=
 =?us-ascii?Q?WnerY+xb/ABoeFrf1K9PeybdiPidHHK+/zJxZfp9u0EK+6r0Mah/S9JDj+qu?=
 =?us-ascii?Q?XJ/nAHU4jvp6GS1iqMGxUwgTy78pHlP7LTlnFEC7vnJ71VYM7x+jDiAPuLz0?=
 =?us-ascii?Q?aXcb8cYqU/gka+TU329wjEbuR/JW3kSK23GWIdHzlLEio8G7usm8M/qyIXch?=
 =?us-ascii?Q?U0anEAaJozWwtaefQ+vEODjQw7jjM8D8hhEXpU/tIQloCgic04xABhXRKhEG?=
 =?us-ascii?Q?Jfged98BR5I93debmUzVV3xyIIMPqn/FliBidosGbE/BdprUakCTzLMqgp8O?=
 =?us-ascii?Q?0QDH7ms3y+pJ8qmaunOau3Qzg6WZd9rVLtE3Exqv/hNGCJDEEhzbK2G7nIYX?=
 =?us-ascii?Q?d9wJFWd0wfCwpxQIZk7R7+A9Onb7tefrx8jqhF3KAZzs440XjfEtJoKmzmZu?=
 =?us-ascii?Q?zFP0RM9Thq5XkqANWS7lGfWSKoeZjELkX3JcW3kC8ON+KAXleRGoyRqNFuTT?=
 =?us-ascii?Q?rP1swJRh/QT9cQkJ5GjsvH9cS8kgFCHCalLBIXJcTNgjw8H0TlAz6whvi0jU?=
 =?us-ascii?Q?L7thlhW3n7ZcmVnhl+lEB5+HazWmx5AOFMQhSknmUuc46GVQgxUFkSWbb6Jj?=
 =?us-ascii?Q?xJHihmbEpGMM/n0+0mWVBQ6KP13eJ9h6tketGMW/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7c4130a-385f-43e2-5676-08db89afd71c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 06:00:52.3957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UgVDnxR2DA1iz+wJBGRp+45G6har1upsee2UWXVKGIAEI13TqMEhIxPvIBrvhBgNBh0/LSTeNSM5CFpU9Lqiwt9Q5jw6czayEIAuidfzFOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/xe: Fix the runtime_idle call and
 d3cold.allowed decision.
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



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, July 21, 2023 2:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH 3/4] drm/xe: Fix the runtime_idle call and d3cold.allowed
> decision.
>=20
> According to Documentation/power/runtime_pm.txt:
I tried to fix runtime idle https://patchwork.freedesktop.org/patch/543024/=
?series=3D119467&rev=3D1=20
But forgot to CC to you.
Anyway some comment below,

>=20
> int pm_runtime_put(struct device *dev);
>     - decrement the device's usage counter; if the result is 0 then run
>       pm_request_idle(dev) and return its result
>=20
> int pm_runtime_put_autosuspend(struct device *dev);
>     - decrement the device's usage counter; if the result is 0 then run
>       pm_request_autosuspend(dev) and return its result
>=20
> We need to ensure that the idle function is called before suspending so w=
e
> take the right d3cold.allowed decision and respect the values set on
> vram_d3cold_threshold sysfs. So we need pm_runtime_put() instead of
> pm_runtime_put_autosuspend().
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index a6459df2599e..73bcb76c2d42 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -144,7 +144,7 @@ static void xe_pm_runtime_init(struct xe_device *xe)
>  	pm_runtime_set_active(dev);
>  	pm_runtime_allow(dev);
>  	pm_runtime_mark_last_busy(dev);
I have not thought of using last_busy() here in _put().
If we mark last_busy during _put then pm core auto-suspend timer will start=
 ticking from _put().
Theoretically  that can lead to idle() and runtime_suspend() call to race w=
ith each other ? [1]
[1] Documentation/power/runtime_pm.txt
(1) The callbacks are mutually exclusive (e.g. it is forbidden to execute
    ->runtime_suspend() in parallel with ->runtime_resume() or with another
    instance of ->runtime_suspend() for the same device) with the exception=
 that
    ->runtime_suspend() or ->runtime_resume() can be executed in parallel w=
ith
    ->runtime_idle() (although ->runtime_idle() will not be started while a=
ny
    of the other callbacks is being executed for the same device).
Thanks,
Anshuman Gupta.
> -	pm_runtime_put_autosuspend(dev);
> +	pm_runtime_put(dev);
We need to fix this in intel_runtime_pm_put()  compat-i915-headers as well.
>  }
>=20
>  void xe_pm_init(struct xe_device *xe)
> @@ -273,7 +273,7 @@ int xe_pm_runtime_get(struct xe_device *xe)  int
> xe_pm_runtime_put(struct xe_device *xe)  {
>  	pm_runtime_mark_last_busy(xe->drm.dev);
> -	return pm_runtime_put_autosuspend(xe->drm.dev);
> +	return pm_runtime_put(xe->drm.dev);
>  }
>=20
>  int xe_pm_runtime_get_if_active(struct xe_device *xe)
> --
> 2.41.0

