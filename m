Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0526159716F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 16:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C2892C38;
	Wed, 17 Aug 2022 14:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528C51124D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 14:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660747235; x=1692283235;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5HBfI8F8f5cDKXozj+0Qgt1TwmgzGNl1x8lCDHLIe6A=;
 b=RTEfte4mSyUtqB8g2QDlqJhnJ84rbglJQIc4UIHqsUU72TjSkCYFynVK
 JF3IZ09iVg9i5MO6xG5TnOnQibWKHrKAdGpJIfbfMxvCV5fndPK42xa9p
 aY6pKlUqf/kvqfIt9Be3FVw+uZhO8frjrvwiVeLovPXtJiop6hUKUqm7y
 x7u2CRuOIVUhmerVPE4PsiVSbQnx+HDUq0B7ts6NhbwwYCY4bd/yMwbIo
 abPJVV0tcX20oZdaTq+hpxcoTsJQsPG2CIQrifLl3RmReualjIHm6YzZe
 EmHV1MeZo/sZxfuUWFKyn5Cpgpg1NydKyTauo/Ho/zvy7jDsuDEsL9oW6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="275560138"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="275560138"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 07:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="675665746"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 17 Aug 2022 07:40:33 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 07:40:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 07:40:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 07:40:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 07:40:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFn3ZbEb6xf44P0Xhb4uBwCIwstN5FGjWu8fRjoD+n/Ij35qWOnsL9puhVmQ2z5a7P+yfEeOr4Hkfo7BvTZ+tQUUGUerP1BFNgGi/R8EqktrC6C1vYEYB0syRvx6+y1Z9Zt9/j6zZvsZAzyS8aPrThiDp6TWjWrxvq70O18SaQRsM4VfVX3IzeTEDWH07N4KrXPkJhND5pRV7IqlAiEaMp7N3WO7Aj19zlh/nqIUECGB4RYrT6/M2H29JVi4Rxnrk0OKvEqwzeFUwJ4sBIl1ryQuANeQIU/nOuF/jQ03ky/RWuOCfQWZsf/yRpbgmEcrxwKUMOwyddipmpNf/pY3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrLkhR7JQze14JJ+gutDHG35jjXXhARpGjAOtFl/83Q=;
 b=QHFPiVXS5nMQlHrQBhFZydwOJPTdo64800Du+DWS/TOGuqmGyHO/18L6V2/hjdHfR/JZK1USyXpNfPUxKsmFjkqeWKBIUNtRM/tkCvOYoIGJMVsif2d7/wVXgao6ktrWez5d/MTvShaYarBeohn6uPZRZX8cEjw64/71SMfwfPcHtgr26liDrDF+aVb9uRU5IH9jh0Z1GHt6/3ExNAWiOHT7HAQSLbLF74GIdO+KvpS56f5tS+QyXb7xI5Sezkx+j0MtC2HerG/ymoomHsaiH19jhsdaJRhsfjlTCmfc/VUjHEBxWtIxxeh9gDUp4M/1cLKLoBZi0AOb5pcG/TOnag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MWHPR11MB1919.namprd11.prod.outlook.com (2603:10b6:300:106::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 14:40:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::546c:7c07:2286:63b2]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::546c:7c07:2286:63b2%3]) with mapi id 15.20.5504.016; Wed, 17 Aug 2022
 14:40:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Meteorlake and later support DP 2.0
Thread-Index: AQHYsjOtSaQ27zC7LkmlUa4ErMdZnq2zKgaw
Date: Wed, 17 Aug 2022 14:40:30 +0000
Message-ID: <DM4PR11MB6360AD3C2F292B8A4A4E05E4F46A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220817121948.180655-1-jani.nikula@intel.com>
In-Reply-To: <20220817121948.180655-1-jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: 8c3e19e2-b3aa-456e-fd53-08da805e6f31
x-ms-traffictypediagnostic: MWHPR11MB1919:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 02eMveoBp3z6Q8VKTQH8wWbRwOI0hQL49f6F2aF7H6DDcw9OfdFUUSt2LB7sqCgCFd9g9jbaUPkSwhbCc8BwVKP4Kb2k4ednn6nQgne7/6YYptPYBU8iyRKKF2d4MRfAK9G55l8vw5AizZhz7RdSOcWuVpSBaUJ/CdNtk2Le4F7uSjJI/UAXwZ1aTqDa6nZXoZCruXOTlZTkYiEstOPj76TixhA9iiHsutIid1H25NQM0xIh+Hfc8ogXDwu4zZ83j9k8GkZt30fTsV+PVl5QtZvtkoypBl+6itlBqoSH9urKPtkM34cw+NpmXq9kL+Xs8jACmrtXErFWETeCUMUk4q0rZdKaaAiYtNop7dP0+S9/as3YUtNsS7Sb4eztF1AMtPpINX1r09JnKo1B6bs3IjC4d0hBH3awwrQVT8G82CNtCDAc1LrCTd//AsHBf6LTrL0VuS9KxIm66fMq6nkRZYSRE4WMH0UVWRBSupG5nl5zEiS1tB3iys2cX+QkCESJu2t3UNUdJXxqN7KRywp2zfQ5TBCU/pSlgmHXIWiLSkyN6Y1qKn/LfRB274z7VOB28z6GQFafisgEUc3mgzaOGJ4D8k86uQmWCfntACerliegvM7nJPle10iJOc61xHx7HXOrLAwt8dI/pherkxCYV1CqpCrxiC5LeJGK6ZyjXch5qboegIN5fnwuF1Ga/t7VsiD6Xh9K/DSH926uQmq/wTxeroSSjtblF4UCSi1kXQ2yAEFjYOGuBDth5pIaewUTRNOXLAuXieDX7jgm1tgTVSzM643Ulz8OFDzFPouc3L8waW2pkuw/uCPuR/lzhAmC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(396003)(376002)(8676002)(55016003)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(186003)(8936002)(52536014)(33656002)(5660300002)(86362001)(316002)(110136005)(2906002)(122000001)(71200400001)(83380400001)(6506007)(9686003)(38070700005)(26005)(82960400001)(41300700001)(53546011)(478600001)(7696005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FRxOG3+5iQBuZHW4oppeE7W7Mpx6M23m2OZQwgrNLdll8LjdRJRvaaZ7unzJ?=
 =?us-ascii?Q?rIIN8aCvMEFTrUAe9A+IaCXBBHxCK/9QoNlmeh/tWDbCuAKhmSq+OhkNoLnq?=
 =?us-ascii?Q?RhgfCGyOVJe0uhqDGTqLyF7hVJ8FO3/S8cbAqQs8yoR/3VjxAVTQKaOXXR8y?=
 =?us-ascii?Q?Ff/Kj+Fw3kN8qA51Gst/ZrOkeNrrULyHfnZTtMilHbRiqiO91Ez8QAxUNT6M?=
 =?us-ascii?Q?mif3WM51vxFsYFbqN8rSFE80bQPP96O9e+0cFZwcpoaoDmYYhCWV2TIXFxPF?=
 =?us-ascii?Q?JlkbStFdkcZjrlOvBCJ6T11xnf9rsK1zdUei9pWYedLfFI9ilE659yWiYS2c?=
 =?us-ascii?Q?hMB6r0i/F9O30yu0mB3HV2sla5uuGVgLBvQUAxxm7ld6Ku5tHq1TVGjvgOl3?=
 =?us-ascii?Q?vvf9uqLXxFOFJEKDxZzom43sIXs2i4qKfOodT2lzZup/ZRszCXUB2PGLIcqy?=
 =?us-ascii?Q?bjR2c+TSx8iUq5X3C6da0qJyQstUz4P7dQvSNPAVXUoiuRrVIVxNcNlIQb0w?=
 =?us-ascii?Q?oLziqIo8CcNDHPypht8uB/PZSYSUPUX1yW/asfRg0ze+dLArZnExS2DU3UB2?=
 =?us-ascii?Q?LOnNeSdM7e7AEtHvRr2DHFe9K548Hg5xScUBBok6+Za2Iz+Eat76Gqmnbyfv?=
 =?us-ascii?Q?BoHgLlfwlYXBG9v8MrzyVMA3x3nIanwv+yBCLVdc42ETKVdxZTShE++u7GHf?=
 =?us-ascii?Q?gG7tOVqe6ITYAqNScY3G3Wt+EBqFi+BHlcNhnivYxTgFVqqATWD3thXNsg2k?=
 =?us-ascii?Q?QQ1hm5itOqcvaAprHXo4hiSp08QEIqLTgk2qDA5WR6d5EahNB2yFaYDs2y54?=
 =?us-ascii?Q?aDVGxqy11Yx0sq0ceqqlsXYRgcw64G7UzWaRWlL8Eyw++Ucl6mJ3D8OcAv+W?=
 =?us-ascii?Q?9v1M7rA3Uy5fs0lemgUGLSInqSEakG2e3BARa10ku+GdhXvtqcoslBgbPRN5?=
 =?us-ascii?Q?zzGf/49f3mSjIyzmbhMN0zaHPWYZnzSeVR2iUVJTR84RgF1trE7jLeGOiKif?=
 =?us-ascii?Q?QOX46YsbUDlRI6cNp4ESdH0yys4dR970vmNcAcb8aBUyP+bOL746/UWvCJmE?=
 =?us-ascii?Q?F32iFaQjsciCEMU9IXrZP+/yk6jOl1nzGR4QfSAdqiKrqC6HjjIcmgfJ7WsZ?=
 =?us-ascii?Q?UekN0+3LRC6Zp2Pxuq33neQiraXNl6bPMxII6lWHwyv542vrZ6weysrO+3t/?=
 =?us-ascii?Q?ln+hfvy9ZD57yhm+33wdmxC33sHrcbarwdUdSwnIB28/I2xLCAAUrWM4IX5i?=
 =?us-ascii?Q?5I3xoVhUSQkQoHIWJ+JbXNY16wHa57EtYPPfWG/iK5/7ov6paytTErq7DY2t?=
 =?us-ascii?Q?ndC+xe2CXurfHoxgEZL/YrHlrE6drjudiJ4jKjWgZFUjrD/X0vupvrkZuAPW?=
 =?us-ascii?Q?8gDXsP7St4TuiNtbUNrLdFnDkrXDwIRzyhgLM68mYZpZ2lv2/SdSrK5E9B3t?=
 =?us-ascii?Q?0vpf/CXKEFcRlGU1jmEHXZkynq30PtXgU/zeUBcjAM5SchhzkNbqBfr1VQuw?=
 =?us-ascii?Q?j7SB+fjFx4egC8pe71MduNxwrBJST4XW9nEk4IWTSuSTlPp2OHFJFOBG8NDG?=
 =?us-ascii?Q?STrmO7x4oEkcMaw8kkh6wrGDKVIsbCngRowEhCaK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c3e19e2-b3aa-456e-fd53-08da805e6f31
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2022 14:40:30.6706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jGDzfgcN5Rw8BF5yUK8K9u+/cckpYuaCe+chGx8t0WhMH9ooy1njPdKBJ7g6SPTqioGAuTIZqoqLBMCqYqSlCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1919
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Meteorlake and later support
 DP 2.0
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, August 17, 2022 5:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma <uma.shankar@intel=
.com>
> Subject: [PATCH] drm/i915/mtl: Meteorlake and later support DP 2.0
>=20
> Meteorlake and newer platforms support DP 2.0.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 086bbe8945d6..b4733c5a01da 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1255,7 +1255,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) ||
> IS_BROADWELL(dev_priv))
>=20
>  #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
> -#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
> +#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv) || DISPLAY_VER(dev_priv) >=
=3D 14)
>=20
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)-
> >display.has_cdclk_crawl)
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
> --
> 2.34.1

