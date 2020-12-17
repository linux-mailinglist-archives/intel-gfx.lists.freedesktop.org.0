Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65112DC9DA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 01:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D9D89AC2;
	Thu, 17 Dec 2020 00:15:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B7189AC2
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 00:15:13 +0000 (UTC)
IronPort-SDR: G7P51My41liWCKNgzFRnVzbgshrTBHgyL5a+gxIaExD1yfU5WfnfxSP56QOcdUbTa7cc2QXGMK
 yDIpkG3q1gMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="239251108"
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="239251108"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 16:15:10 -0800
IronPort-SDR: RV4F1C4JoQQoGYdYKrFtGPSv69XbNd0S5zPj/y3NDw092YKqgTSWlZXz3MqtiM53FKrdyvY+ga
 D3Fq7dfCjGDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,425,1599548400"; d="scan'208";a="342300260"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2020 16:15:10 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 16:15:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 16:15:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 16 Dec 2020 16:15:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 16 Dec 2020 16:15:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQOD0jqyEVb3kF4QGoEPelAFhAlHrYzprlefnHqqR4lG8TKtkWrO3v7LiVyWvXP61zR/qzO4eT/xdLQhHokbdfuT5JFVIqXV07XflfcQs332WZgh/wAgc3w1i2lBk4WKV7v5/XNuRaXy/sd/+tmtD4tdFqzUYmdM0TCdVNONXqhkToF8eQ+62YOPNHc0WyLCV7KRRsagb+mhryTZ8Nk3XsD1+KpPkc4k8V1q/BZkz2vo6wu3KBprzVh2NsOd2QGMKlx05ogrn6go4sWRVZTFBhppqLr3ItBmp490tB1iarzWX7Vm4EwJ7XfRRUxaYiKPRDc70/a5OgSZQ6vvSp2Q7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PK7QSMANFDkWyCuTP1gpi4pwPROLzOb7bPBarRoHjxQ=;
 b=NIdOWxte+dYIbhtQeMrkjfClzH/8veZSwXKkIwwLwcBqUn6gzeHRuLADp2KCqA5ZUfIM8WEMocwnF/7kDfaCTbzf8asfvffec5FCpEzs4jqdDqM2YuHkXMqirQ9DGlQikd/Jz4GiOc3hP4Lj3Q8iok0x7kuLuUgFKTqyBnrMgjV9XsyeSJeK/Tcm7Wt4n9UGzVO//QB/HKst+fcqldfgATDj9su23RgeILW76flAtnWZsOtTfmU82XY73Pp8Q6FD9fpdPBtqVJ9Wf5mVpE0tm1cvPTtTSLo87itrnUgKAPhQdss9abG2pB+B1cWaCM46Q5vKTf2O/Hh3WeDHgfCzjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PK7QSMANFDkWyCuTP1gpi4pwPROLzOb7bPBarRoHjxQ=;
 b=L/vIxq0sng17e25xQjkychUGWfrWo3zFTHJYP8od04Bo0AXu2JRM3vIPIigI8jZPnUY5OZlBSOKz7f6FAzk6azA7P3KK92WEVr1gVF/bKBB1RRxQlHtaBzrtgaZM/SE1afwSSs9It6FFkfGzym9LPjT7qlaCGMlTZVaqiCo7mzk=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR11MB2041.namprd11.prod.outlook.com (2603:10b6:3:d::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3654.19; Thu, 17 Dec 2020 00:15:08 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%7]) with mapi id 15.20.3654.025; Thu, 17 Dec 2020
 00:15:08 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v4 02/21] drm/i915/pxp: set KCR reg init during
 the boot time
Thread-Index: AQHWztCyRboM5+clEkStI3vjw55mCan6dWjg
Date: Thu, 17 Dec 2020 00:15:08 +0000
Message-ID: <DM6PR11MB4531D57A03E996C66B8D471BD9C40@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-3-sean.z.huang@intel.com>
 <160758988075.595.14886274422254861537@build.alporthouse.com>
In-Reply-To: <160758988075.595.14886274422254861537@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36067a3e-c135-40a4-1487-08d8a220cffd
x-ms-traffictypediagnostic: DM5PR11MB2041:
x-microsoft-antispam-prvs: <DM5PR11MB2041DD405A1F02AA21C28765D9C40@DM5PR11MB2041.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VSr7EBoWBhrs+1imptgc2AojpbsfzgHPS1yiaIlCGeK6FSBaKeFtkmtpcKHxDThTWlWqXxdmZGoUd5oXPhI5aR7W0TnRbfodrUUjBm7hVN+GhZDkQOkVxtHgFK/pe2bBLRF5b4ZWq8kYUjcPWoN41NOnA3dKRDEnBZFNSc8N2pcI32hng8bSD6VDtwF7sL1xhD/QYH1EdT36BR0xCaOsyAe29eIhrbzQcT5eWcQz9go6ioOygfCEQzYoo75RiBisaovACuys5owwDdPMlEqmLX5t4cQLR7IPnHw7Mitc7dlRFQDRusmkV3uozEYkANXi/AargeWElXlGrcnEFgdcsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(396003)(366004)(39860400002)(64756008)(26005)(52536014)(8676002)(110136005)(5660300002)(71200400001)(33656002)(66946007)(316002)(6506007)(53546011)(55016002)(4001150100001)(86362001)(66556008)(186003)(66476007)(2906002)(478600001)(9686003)(76116006)(66446008)(8936002)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?U1BjYWNTM0s5L1U5RVFZVjJrRE1hVUd2ejBuaGFhVHJwckVNTVM4c1czYnR3?=
 =?utf-8?B?QWpxTHJKTHVScXRqblhtcEZwek0xMmhsWnYyclVvSDQ5eUhaT3UycXNXSFNh?=
 =?utf-8?B?SmV1K2JSL1JCczRMVEEyZWpreFBaS2w1R0M2OFBTS1krZkNhc0VQMHdWTTNT?=
 =?utf-8?B?VUphZTNBUWN1dkRwbVc3bHh3cFhBM05tY0lod2x6MjFlUTNQUWlIZkNpQ3Bz?=
 =?utf-8?B?SzZwZWwvaWxTS1pHUnhzYk0rYjFKdkhia1hqUXUwbjhSN3A3R0VTVXVGSk1u?=
 =?utf-8?B?d2sxVTZvNG9HZ09vY0pDWEJIVm9wazVPdDR4bFpyaWpLenNCc2VsZHMvV0gr?=
 =?utf-8?B?OU1tUHUzajIyTzVMYkZ0UXlzNDRUQjhob1RTWWpHMTZnLy94bjliTWRlVTkr?=
 =?utf-8?B?WXBnSUMrSGlCQVVqa1hIdHZLeHlITmxkcVQwVVAyWVlLWlRacklKWHU1UWQv?=
 =?utf-8?B?WDh4ZWN4NnZSVy9jNGJ5ZFQ3dGhwamJlRXNSVFQwWS90N2F1Yk5HSy9tRlMz?=
 =?utf-8?B?KzNVaVhmak1lQkpNZlRKVmFKbmszUVo0TisxSGlEZy9zWWZzNWhmTHFvbHBN?=
 =?utf-8?B?QkMyUGhDZ01IeVZId3MvMjVNcUJ6Vmd5WnJLTGhKaEszbXJWTHdLYXZzZkpP?=
 =?utf-8?B?Um55NkVFTlQ3M0VpdW5IZUZnVStCU3FpU1ZsZFdmNkRBT0hrbWQ2blFFd0pn?=
 =?utf-8?B?aHo2TENOQ05UM3ZtbDZ0cUdQRWorL3N1ZUJKUHkvTS9IeVpaYzFSWEJER0xY?=
 =?utf-8?B?azB5ZFIwYUNLTWgrcEhnQWZxbVkwdVpTUTFta0JIRmhPTkNDVTF6Mm1MQXd6?=
 =?utf-8?B?dE84WDB5aVZlZ1hOMlZXWlpTY3lucSt6cHA3dGZTcjFBeW93djdPbytTbzBt?=
 =?utf-8?B?eTA1blNHd2ROTmtDbVlJY1A2R1hTNVZ1eXNrZTkvQWpyRWJvZGQwZ05qYzhz?=
 =?utf-8?B?ZFo2Z0JqZmo3SmlsVzJvTFVUelE2SmxKY2cxL0NEVzlxRko2T1ZCNkVLdVdX?=
 =?utf-8?B?Rjh5U1FXbDVlM01qVi9TK1VMMU9CUDB2TXJGMTNOZFAzcDJQUjNSeDZMdHIw?=
 =?utf-8?B?OUN5c0pSeWlwcEdtMVNzdlhFajRLcWxxWU9OUWlzUXRsLytaK2lCYnNZNkJK?=
 =?utf-8?B?Q21lZXl0aU5XWTNPaG11QjBxOHc5cC9vS0pBaWNyclkxNWZEYy8xWTJkQjkr?=
 =?utf-8?B?ZWNmNUpWMU40dW9vWXZSMTUzbThyVjVGRkdtZFFnZDFNZFB0T244SjVKWkdG?=
 =?utf-8?B?Rml4QVNkcmNkUktzd0FXSlFZeit3d09jL29iTmRiVU5NV3R3aFB5WmxVNU9o?=
 =?utf-8?Q?zAI6J3yXaFUlw=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36067a3e-c135-40a4-1487-08d8a220cffd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2020 00:15:08.3743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gPYBoWrceyCF8uRGsvvpYSBQPWtxF5LY5whne9eVZZv3HPzfK5bwBkxhZOsgURaZWHLUXOqDuGkX9em3NDbn+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v4 02/21] drm/i915/pxp: set KCR reg init
 during the boot time
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

Hi Wilson,

Thanks for bring up this. This is a necessary step during the booting to allow the ME communicate with display but we don't need turn off for unload actually.

Best regards,
Sean

-----Original Message-----
From: Chris Wilson <chris@chris-wilson.co.uk> 
Sent: Thursday, December 10, 2020 12:45 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v4 02/21] drm/i915/pxp: set KCR reg init during the boot time

Quoting Huang, Sean Z (2020-12-10 07:24:16)
> Set the KCR init during the boot time, which is required by hardware, 
> to allow us doing further protection operation such as sending 
> commands to GPU or TEE.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index ba43b2c923c7..c4815950567d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,12 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  
> +/* KCR register definitions */
> +#define KCR_INIT            _MMIO(0x320f0)
> +#define KCR_INIT_MASK_SHIFT (16)
> +/* Setting KCR Init bit is required after system boot */ #define 
> +KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << 
> +KCR_INIT_MASK_SHIFT))
> +
>  int intel_pxp_init(struct intel_pxp *pxp)  {
>         struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp); 
> @@ -16,6 +22,8 @@ int intel_pxp_init(struct intel_pxp *pxp)
>  
>         intel_pxp_ctx_init(&pxp->ctx);
>  
> +       intel_uncore_write(gt->uncore, KCR_INIT, 
> + KCR_INIT_ALLOW_DISPLAY_ME_WRITES);

So this looks dangerous to leave enabled after driver unload?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
