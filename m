Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ADE71F16C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 20:12:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0312710E0C1;
	Thu,  1 Jun 2023 18:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC6110E0C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685643173; x=1717179173;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=TrlYDUXAy64Hn2fvwIUx9veZ4acZlSx9VTe7yZUE26o=;
 b=QP6L3xQEaV4QVOLyiF3Y0PniDaBh8VXSSonUmibTElv29BKf6Wgycj41
 9aC7KiumSnrql2ZXZ2Nwk0C690ozS+fryidQrmKLnBx6OjY98u6d/wOe9
 lnKQDYCXfAVoYnuSbA0NHSsfieeYEW5MVskk70r8C5R1EX+Llcis9yLXG
 e71+csXfn/AdRTbDef5kvW4HWhjS2G25lMJ7j/8nXNb+uQAwwmVJfbfHs
 b5oskVgGeJ4f7dqc8aBmxuRpmEA4V9zvmKPZvyflJwU6nMOhk1GHpigQD
 6LMHSv/Dhq7KYjaB1vs9AfNnWdVg26sQ/uxYqtMRSQUOFDqZ8+53BILE8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335262460"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="335262460"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 11:12:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="777326289"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="777326289"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2023 11:12:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:12:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:12:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 11:12:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 11:12:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8wW3bTfZ8i4NlD/vbFvWoA0J0QNXP6TNpy6zfyMGsrwSbYxD2u/xM5E+x5iQYQDoh0izRaQjfwLYWXWGddM1efUFhIkDuV2iG4+4dJvOR54YrBeVOYpwt9IKW7/wavX4o8R3wInHztW5U9JHPAIdGmP9A2q9kPeb3ecbtyj5JJoXL9nfYkmf0mAPMP4W7fAkg/pZJ10a1w9FhM81NCYJUaGdjOEZc+cu+2BdDR1l32VST6ThhRw79OFYgGAQ2mamnZSC9JV0oZYVc4E9ldTC7GG3K1K77B3+Z6kbA0D6sxgTSxRR0kbJvz5zVZ/ugEf+KugnrIwgdSc/wY9nf4YNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCSjo+M3Q8TAw5fIAoUZaP5W0Wp/OBMgSsT5qrKYVmY=;
 b=CALqOsb0Y3U1OAnSVwERNO6FpzMk4o5NRHZzE6m2BUs6+yPBDIwyLePQTae1BkZ+BC8UNQ34RJcmBfwT38hN6hp3g87aKPr7lOzB9PzoVY7olq9J3KjF8LoVc3FZTRgusQUyl+ON++5W4p8GTsoTOoNpC9YvSUq3+1zJfMjC8mB71/NshqwCD1MPfuSVV4e7KL3mTSzInBCM5q3HvgwhbI03w7rRvfdZbJ4XLqJJM7WdICW+fbZzwhbiFyvoEEF86mmoUEIF2zNP6oQRQQjcNOjBEUDPgS7K25dyRAkp4tekbFsPvaq0D+HQfpdb9PMioo5hu8vdz3liBSwprT3n+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Thu, 1 Jun
 2023 18:12:48 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 18:12:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230601173804.557756-1-matthew.d.roper@intel.com>
References: <20230601173804.557756-1-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 1 Jun 2023 15:12:42 -0300
Message-ID: <168564316213.3435.14518020856766715012@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0213.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c8c6eba-3f1c-46f8-45b4-08db62cbce0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W65YSvgyTWi8+aqx0ju229P8GAtIrI4kqsJfrHaLQeKJ/cg8C3bIJBQPzLkjtzyfBjcmzS8DtLtIMgfG24AynBdn1bHsOzdH/6cG4zr3Dny5hVA43fdJLrJHEzIPTnfE7KijoDgEsNKaFk71yxZ0lKty0aJn45GFBINjI/erGzLIpYMv3hLusjHB9Rd5gVD8Q5ljrW97H0eSuLieG6n6NsFG2u4hNPuFbqEoxHRa9C/j3jVbKayQ8PIT/NpRdr1JcUtzhHobMz2nkX9urjIFg8SW8/tpZcmZVP9nbQPHFzxp1J3tNTSFYElrHgAUjnuAJLH8TyE0KYzBRuCsCzaFQXFkCniFTbDivj5Aye5wzjY86wpcOOJiHfS5K4eH/AX3qkzr2TecCYSO1nMrvvjm00ptcFoSvB9ENdrdI5XX15O1byJehWKsurlrzZ6yZnPsCMG/J4ACkA9o0rrgJb2ro6kvESprgXsij9gOWufVjaENMWV8P1efkqbhkCT7o3E7vPOPfH5Ryy6YfxrZZKa10ay+Go4hCXa22eYuF3tA05K+3JLzHnwyWSE4xiwmfgwW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199021)(5660300002)(38100700002)(33716001)(8676002)(8936002)(6486002)(478600001)(6666004)(316002)(41300700001)(66946007)(66476007)(4326008)(82960400001)(66556008)(186003)(83380400001)(26005)(9686003)(44832011)(2906002)(86362001)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnhqeEM4ejUwT1dacDdlam91VTRwUXJOcDR3MFZtSGN0aXBseHV5NE53ZGlx?=
 =?utf-8?B?RGdJa2kwVEw0Y0tBdmMxRjJsUTJFaEdmN1hHbHNyZkp4OXNNVDFoRzZMRm1V?=
 =?utf-8?B?bU5Hc3J4NWlqOGIybUpkdmkxV0ZScTF0Q2haemd2RmR0czVReENaSzdOMno5?=
 =?utf-8?B?ZFRDWlZrR3ZmVW9WdVhVYm0xVlloSGNYYmFXWVJYMGRCb3FvYXlldklzQVZO?=
 =?utf-8?B?MFVVWUFlejhudEp4cHlIRzkrL0ZISGdhMmhBcklYcDdYQWxKZnl0cGdOMFIz?=
 =?utf-8?B?K2RPaElXc3ZKc0Vrc2NmOUsxOFdFZ0tLM01WK2RhemV1MGtJMnY4dGcrb1Uy?=
 =?utf-8?B?N2kzRDZVQ2JQWG5tVHJzWWZoMTRjZVJWRW9aU2RzMWNIVlFSSFhhYmJ3UVo2?=
 =?utf-8?B?YlA0aXEzY2NLSlIyd2pXa2VJUFBaRzR6RkJnbXRPOVloSzFVcGVDUUhCN0pw?=
 =?utf-8?B?ZWJ3TGtoY0I5WHo1RG1CUngzU1htL1pNSkdsRDBOZ1hWcEN1RjlRRzljT0Jx?=
 =?utf-8?B?U1BIdHR3c1RqM1h0UGUzemVhOGRVOXJUblUxTllqS3NZWXJpZW9tNVZlWFdR?=
 =?utf-8?B?V013cXloOW5ZZ2w5bUswY25VbmtwR2lsRCsrcktxV0ZHSGFJSkF0a2FxdHlU?=
 =?utf-8?B?SWczY00wTWpDYk1GY0ZhZmRHbVQxMDFZZmxyKzZjNEQ4VEVMWnZRaktnVDRM?=
 =?utf-8?B?VVpyWlFMWFh1cWpXVlBWSWJrU1dBK2FPRVpkSkVYandDZ0VJcnRJZnVrY0JV?=
 =?utf-8?B?UE9zV3RibkpOb3BwajNGUmtJNUtiMldTNnJZRXZwYTVpUkhLQ0dmS0xKUk9v?=
 =?utf-8?B?YS9GSmQwbmxGTVJ6Z05lQ2RyTlBpZHpiYm5HVzhQdlNkc0xtQjVPUjFKTDJ4?=
 =?utf-8?B?MWxOTlFhU0F1SXpVaEhWdlBtVHZVbzNoWnViWjJtVnY3ZSs2eVBGeFFrclVW?=
 =?utf-8?B?SGNPRVhwVHhnNW5rSzBvais0U0p5ZXNpTEZTeHEwbTQ0Rm0rb3lNYW5OUTlD?=
 =?utf-8?B?a2dsM3I5M3dkQ0RpeURwajQvSlBSeFFsMlBzZ1hibXhRbC9qQW8raThTdkRn?=
 =?utf-8?B?bkdCYmZGeUVqSm9ERTU4T3FGT3p5Uk82WnF2aVZzaXI5VldyeVptL3ZybURh?=
 =?utf-8?B?VTRiTEdNaXVVNWM5MDA3YVBSdWF5c0VTVWxqY0x2TDZKTEptMnc1NU96bFV2?=
 =?utf-8?B?U0pwa0ZtVjBrUXZSTnhXbEVXNlBUVGNWb1JSL2RZNzhrb2dyS2d1WlRVWUFh?=
 =?utf-8?B?YzMyaHFpdEZka1NzNWU3cjJuVWM1TTBxRGFHYXkrSXB6VDV2WE5YQitBVmly?=
 =?utf-8?B?MFhESU5IcWNSMVlOckV2Mmp0VWNDdmZ0OEF2bUd6RWs0dEIybVRMTlIvWnJq?=
 =?utf-8?B?TXlLRThadW9SNkF2STFaZzYxUEFhKzN6Vk1rYkdSLytOSHg2NlFWS2k0QUZO?=
 =?utf-8?B?S0NzZDZUbGs1K1VpVFlnZ0d2ZlpUYWEwRzYxNTF2SG5taFFLa0ZkdHA5N0RZ?=
 =?utf-8?B?a3JVOFFLMUdIWE5EV3o4QXFjZXl0cWtoaUw2YzI2WlAxZm1Bbll2ZlFVc0Ja?=
 =?utf-8?B?SWtUaDd3a0FHc3hkdnJINUlSSHI5bjdoYzdqTHgxSDJTTEMrRE9zYjZNTTBS?=
 =?utf-8?B?YlAxMHJhMDJRWncrRkN1ZWpBL3BaYmlPdmxrNk9JeUttZnpWb0NqdlN6V0k4?=
 =?utf-8?B?TWEzdjNQbHdpcnd3M09CdS9wWFpPZnJhSFRVakxyeFRTWkNNeVN3aklSNkNQ?=
 =?utf-8?B?ZlBER1B3MkxHY2VOMjhndTNWUXFDZE9xSW9XRkN2d1o3K1JzWENBaHJISUxM?=
 =?utf-8?B?a2lUN0pudFJxbmV2czJCdFB0bWx3MnFDSWZLNFV2U0Z4MHdCZDl5dWk5bm5x?=
 =?utf-8?B?UHp1OE9qaW0xNHNFdUFSMjFkTXo5TldiVzU2aEVKOXQrOEwvRDcwUGFkMDI0?=
 =?utf-8?B?L2k5WkhSL1hPL0thTm9RNUJ1OHQ5dTJXb0E5N0luU2VBYTd1V3NreXFmdGlR?=
 =?utf-8?B?Q0ZhYVF6Tm5YNDBibUVPdVJ1MlF3ZmJZUXpWQmVxekYwSFlhQjBXWWFodFly?=
 =?utf-8?B?M0lXOU5lb0k2ekh6bjc0UUw2UlRDWjBBMHRhUHpxUVBRZHp1bXpDT0ZGY3NT?=
 =?utf-8?B?cVRNaG5EcEpYdWYrUjFEWGRYQ055MDJGZ1hPdlZpdGVra0VvUVQ3eW9UN01h?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c8c6eba-3f1c-46f8-45b4-08db62cbce0f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 18:12:48.0275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdcwJHowpxNz36Os2YHscgVVyFQ5oCQul8izR1ROu6GimW/88HhB2ElwW62IjsCIBQN+jq7iqHWQbqVuk8hgCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error handling if driver
 creation fails during probe
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
Cc: matthew.d.roper@intel.com, Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-06-01 14:38:04-03:00)
>If i915_driver_create() fails to create a valid 'i915' object, we
>should just disable the PCI device and return immediately without trying
>to call i915_probe_error() that relies on a valid i915 pointer.
>
>Fixes: 12e6f6dc78e4 ("drm/i915/display: Handle GMD_ID identification in di=
splay code")
>Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_driver.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i91=
5_driver.c
>index c3ab5c32d492..5c3fc57cc4fe 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -762,8 +762,8 @@ int i915_driver_probe(struct pci_dev *pdev, const stru=
ct pci_device_id *ent)
>=20
>         i915 =3D i915_driver_create(pdev, ent);
>         if (IS_ERR(i915)) {
>-                ret =3D PTR_ERR(i915);
>-                goto out_pci_disable;
>+                pci_disable_device(pdev);
>+                return PTR_ERR(i915);
>         }
>=20
>         ret =3D i915_driver_early_probe(i915);
>--=20
>2.40.1
>
