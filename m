Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13FB8C74F5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 13:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C2910E502;
	Thu, 16 May 2024 11:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LieLy/Ip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32F010E502
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 11:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715857487; x=1747393487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2DpPhs5imc7IrmKX0fkRL+X/vmdSjbHtbz0f/+Z86Sk=;
 b=LieLy/Ip5xNX+wSpvq/kT5sGKf46Ait+RpX6FQXXEnfBvJZA3WabFVqY
 HaBh0i4w/2FBM/GmkBtVjQ/3knyj6vp+T/Wm+yV7yAIwyQgB/2RxhyIMO
 Re+bnAfEGU3tWx6g2iVYBKiA21h97fjL4TFDN84aVuVhOCVC0sn3DgEwV
 wk6tRS7Dw+k2fPlJp+htzY0NiE7QNl/6RJ5kawRlQAJKZVtn8OePY/Aq/
 NlEUBgUUcyZ0EiETaEktp7K8vczIAa3CFQvdutih17E0dWorqNkK2HEVN
 rYAzdef65AVA+e521I0+Lib8f6V46XTOBM9uWmH91yu38DHHx3pNKW0cU w==;
X-CSE-ConnectionGUID: KFz8E39aQVqZwapmRQtNeA==
X-CSE-MsgGUID: 1wrj6vo8SWO93fTiYbUpEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23361538"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="23361538"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 04:04:46 -0700
X-CSE-ConnectionGUID: 6xYTu1OmSumZS1FqRsYuiQ==
X-CSE-MsgGUID: mv9BTeDqTOaAdFsvPut4iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="36124899"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 04:04:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 04:04:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 04:04:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 04:04:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 04:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXlYziOc1hi8qtr+cmYjWhT7zETSUE/JZpJAXBfI5cHDBa2NTWyLrFp/0CdqAwqCX/JMowHZ45sjdsMMKNC40WqtLUO09cLqNeaeUwSe8BoFASvJPLeQq6/ejU3PW9+YYezg6Fyfw/4byL56SLkGoisztvDHvDKRm6rqlsBXLKQNkwV8RDTQhgtdezzq4w5432rFOjCPGd9IPXeunt41ET1W+JM8VXD3N5a1wig5yb856Ya8FDfGUnEwzRfIS6JBPtNQiwi/wWPkc7LAny6qaxM8PRa4VgmTYsT3X/pPGEDV/q+v7N5nolRavz0efp6MgiWuobtgYjzt/yauUdW8Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2DpPhs5imc7IrmKX0fkRL+X/vmdSjbHtbz0f/+Z86Sk=;
 b=ApWeraFwDMZSof1qTNF3ZjnANim8gkAoCw3cgntcUhRVsK+vtqGE5Y2RYdxxLxMzBg2DRplri5eJMWqBmrQjDSqslxDQeR9W9+e4uAJBU2cEh8/ShOdqs7H58Vd1eEC4vBfCVPw42QHyGbjMavEYXS2Ch7endbXxuhRw6MBjLdWmVKDsASFU6LjfrmokqfXocj7DOYAo8nLa7tYYf6m9y57tWfyLO6UKOGZQyy+sXqA28jlTIsdKVOQbjnnR68gB6t4LwWFj4JBnKPoMMmkAjGns+FXaxecZ0Y3V9zoT+8WsAZiPJ5e1wMnejd6uIGaoCEh7zH+M+aOYhKW3KV+77A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB7154.namprd11.prod.outlook.com (2603:10b6:a03:48d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Thu, 16 May
 2024 11:04:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 11:04:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: Regression on linux-next (next-20240506)
Thread-Topic: Regression on linux-next (next-20240506)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NA4sen+AAAF04AAABbFhsAACC+EAAC8L/6A=
Date: Thu, 16 May 2024 11:04:42 +0000
Message-ID: <SJ1PR11MB612947EF5AD68ED8FFDD7AF6B9ED2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129AF1E3865F993278B7047B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <def71e6b-53a0-4da0-8369-b69629d2dfca@suse.de>
 <SJ1PR11MB61298B3FBE1CD57BB6DCD0C9B9EC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <32d604d3-49a8-4a77-b2d4-766895cfe625@suse.de>
In-Reply-To: <32d604d3-49a8-4a77-b2d4-766895cfe625@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB7154:EE_
x-ms-office365-filtering-correlation-id: d7eebee2-322a-4963-3e1d-08dc7597fd1e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?am51RjlralZ2ajRkaE45U1pqL0M5VTdkcy9wYmpZZG1VakI5bUwvSjVUNk1C?=
 =?utf-8?B?R3c3REEzcXlqYi9RM0k2aTJHT0xDZjFDNFYyVWQ5SG1wbnp1cTZ3RTFQUDRT?=
 =?utf-8?B?Ty9zZUJhN3ZZN3V3SGVKa0hXekx4WjlSeFIyZ3hqbEY1T3NOWjdXUCsyZDBI?=
 =?utf-8?B?V2N0UDBjcTdLM1ltTDE4M3U0alVzdXB0ekp4aVlUWVh2MUgxclc4TjAweEQ4?=
 =?utf-8?B?NURCS05mMFlLNGljbUZWNWxoZVM2cjFsbzBPSWxGdEp1a05LUGZrRnI4ZVF2?=
 =?utf-8?B?b3Qvd1VrSDBVRXR0ZEJtaFhjU3MzUmpLZDlaWnhJcFdHczVnRXdPL1B0ZzNW?=
 =?utf-8?B?dVFrNjhnOVU1QzBQM3pseGhranRyTXJFMkZrbnpRMVNkYzVqOU1xd2hDWGx2?=
 =?utf-8?B?dkhSTGFiNkJSbXJSUmFkSEZhWHB1b2lHb2RqMndkWUphSzJVcHdZNXVZQmhW?=
 =?utf-8?B?eTJjdG9hTE1SSnBlc3hkSk9ZcS9taVE0TGdpMUU4OUE0VDU0TE5zbk5kK0JW?=
 =?utf-8?B?cnRrb2JxMUNQYmI5MFowR0p6TnZLdEJzeXBVdVNoYXV5R0dkY1RybnBPcVg4?=
 =?utf-8?B?cHNyaEZ5VGgxU0ZOR29DcFlIVFpvQzRiYzlLdlpVRmVZT2dmYjkybXJFYVd3?=
 =?utf-8?B?S0ZlaUZsZDdNZk9YZ09paVZYaTNvMVU3OEFZcWZwNGpFMzlydTUwSFFxK2ZR?=
 =?utf-8?B?TlJnYlVVeVJDd2E4VTVTQmlmWFByY0ZlWnhIaURlKzZZL052KzJqNWVZV1B1?=
 =?utf-8?B?TDVOVld0cmFMUHdrRkNra3BPQWZLeGZUZXdXUkMwV1E1MmpyTGd6eWxXWlB0?=
 =?utf-8?B?enhVekxkZVVXQjdncjlYV3Y0R2d4RVgvY3JEeHowNnRwWjFMQU9PNlFLYUx4?=
 =?utf-8?B?ajVnZjJUTmZTdkF4SFZqeUJ6WStjOTlZZ01Qdy9VK2JBblBFN3NrNXJpOFJy?=
 =?utf-8?B?NFgxNFJpclc5dlEzbzRUa2VIdnJjVnJvVTdnT1VCUUxCTjBzalR4bWQ5Y3Fh?=
 =?utf-8?B?cXdSTEI2L0tSeklMYzlXY3l5WEtjOWdDQVlMazdlN0FmTVd5c1g1NG01RmxD?=
 =?utf-8?B?OHFFOWFqeFk4cTVHamFNK3I2UGNtbHdIM2pmdm1TTy9IRzN5TlJ5UVIwRFJN?=
 =?utf-8?B?ZktRbDhhOUhLelFtcTdsYkhVOTZ5ck0rM2hSVXRZc3czYU4rWXdKUGpOZEx3?=
 =?utf-8?B?MDJINi80RStOY3RnbW9KSkFSeHFtbmlTcWtRei9NMkpEWVB2Y3p3Unp4Rk5o?=
 =?utf-8?B?ZXdyL3pMcnhUVkRTRjYwSWl2K1lzbUgwdzhJTnNMZG1MeWNSd1FyTThYQzBS?=
 =?utf-8?B?Z1BJVGJMMXJxaVNjaTF1T25PcXZBNHVvZjY1N1F6TWdFNUJhS0NDekh1Wk1I?=
 =?utf-8?B?Yi9qSk8wK3p2NVAvZmh2TElTbjB0Z2ZQbmFIWEhwTTh4VndIVGNrN2oyQnVL?=
 =?utf-8?B?SXFYUENWN3FHYkhlVFFwWldwYkJFbm9NQW5wV0lHU0ZqTjdTLytsdGcvMjlW?=
 =?utf-8?B?Q0k1NVNraUVpeldTZVhZbVZvaHo1SmZ5cm1QMGdjdktWUDJod0xlbmo2cng5?=
 =?utf-8?B?a0p0ZGdjanZmOER5d04rVmFrOERWL2owb0Y2VGdiL0NYS3VvTm9LM2VBdUNN?=
 =?utf-8?B?ODhoellDVUVWMHdhOStGNC8vNTVQYm5KSldmZUo5WlNsMkJ4VTU3bTlHMmtv?=
 =?utf-8?B?Q1F5K0wvWUh4MjBMTkU0S0ttRmxmM3NPN0FudEdDUVplY0I5L0taQk9BPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUduRnZ5MXQ4QkV5b2xVakNoMGFZeVJFU3dBVkhiQ082OFhYTkhyS0JYcU83?=
 =?utf-8?B?TVJWUkg1YTFzTDhnV1FKUktHMUF3KzI2Uit4N3oyd1ZnOEdqTzNtY2NXSkdy?=
 =?utf-8?B?c0pGUFJIcStGWXhObDA5UHE2SmRtc2xRMEEraUd1ZVVMeCtjd09OUGdaUG5m?=
 =?utf-8?B?azVjdjRBaDM0M3BtckdBWWFMSUpqRGFjK2JKNWtPWHZpMkdrb1NEeEFCd1Ju?=
 =?utf-8?B?STIrODI1Y3FCYk9IRWxHOUhRUU9rSFlqZmdqQ2tRQ29hdDFQLzFlYldGaGZQ?=
 =?utf-8?B?YnJQZ0RJUnlmWW42T3N6VFp0OUNydng0bUhBNHg0a0FVVFhHdExJcUY5TG9Y?=
 =?utf-8?B?dGVYTVc4aWZxVjg2dmRZNGZ6RlhvV2s0UEhUVVQzYzRrYXBuUU9iNXM1TlpF?=
 =?utf-8?B?djRVL2ZydGJ1Nlk0Vk1xWnlqYm9QeGZiVUFEd3cvV3NVZWc2NERvUldVeEVU?=
 =?utf-8?B?UG9jWHMxZngrODkyV3VWRUwxVU82bnE2aEE5QU12a0YzcHNhVGM0cnNSU2Nr?=
 =?utf-8?B?cm5wQkkyUTdqMzhoVkZIZVRTOXU3NHRtT1F2djVIaWhMclQxaFlyYllxOHhr?=
 =?utf-8?B?QkdLUWZaUmp1RktUY2NHcStuYUw2M3Jla3B0M01aT21GNStkUmZvSjRHelI5?=
 =?utf-8?B?VFBDT3BURlVtalVwdjhqOGRncXV3L3oydTNNZFFwTFh2U3NkNG8wcnpack1K?=
 =?utf-8?B?QlREU0JEcFNIQ29zaS9zdkpVS2lTaS95V2NaalJ1NzVtZjhSTFdrV3ZYQWND?=
 =?utf-8?B?eXhvQWlsamRGZ1N5U1pxSnF5dzBmbDVaZFdPc2h5OG5hN2drS2Y4d1ZjaElR?=
 =?utf-8?B?NjcvZXRHWk1yNlVYSVNvMGVBZ2w4cXlvS1JUakEyQ3ltcFVoTjFYY1l2S3Rn?=
 =?utf-8?B?WVhHUGE0dmVIY0dUZGh1NEI2aUhXQ1o4MlBWQnlNb0hHbnlScGxBVm9RbTRi?=
 =?utf-8?B?ZUF2a2dnWXh4bG9MZG12YTV2bEt1Y0hnRzlYMWRaTU93aEhlMStUOTJ4NFpH?=
 =?utf-8?B?Y0pvRFV4VDd4L0ozTHRRRUtzbjZJYjFOMks5d0pTWWxkbW83cWZHRDZCWHBL?=
 =?utf-8?B?NTNZeWlzdUF0U0UwdktGekJaSW9wZE1pRFNtYUVJQWtQcmRjN25tVEZiaHpa?=
 =?utf-8?B?aE90U2RKWWNVNkxkbzZPc0RkdmRybmV3M2RWR2pURUY1Q1VGOFdLa08yTjNm?=
 =?utf-8?B?cUtpaUZmcmEvVzVVb3ROZ05BbTBKa0RSa08zLzc3U2g5QmE5RnhzMlkyMEVP?=
 =?utf-8?B?ZHVVY1hZUDQvOVRSQXcwa1hpUnk5Snk2ZG5BeG1weDdMNTNhRU5IcEg5cTNK?=
 =?utf-8?B?UGk1cXAwY1hGZ0EzeCtiOW0xUEllcXJ1Mk51dkN3YytTSzFEQ29WWklCeG52?=
 =?utf-8?B?aHUvTHJiYkZDcDFuUkVjQzJKc3lRSVNiZW53TXJDMUJ3bW9sRUdCZStJb01U?=
 =?utf-8?B?UmNaNS8zUlBEaUNsLzRsanVBV3p6TTJlTGFwK1JwYjl0UzByR0tlQm80R2h2?=
 =?utf-8?B?eHBVVVNNSnpCa0k3Wlp3UHovS00vVGxIOGEyeXJhSDA0WEJ2R2t0NjJLdHpt?=
 =?utf-8?B?UHdEMFY2NW5QbmxaQVV4Q2xzQzFudVNtYWtCaHZLVm0vV2lYbExzODcrSlc0?=
 =?utf-8?B?VmJLbEtEZldreXhLVTZQQ2hZY1Z0cEMydUovMjNWbFZkRjZnU3BRTjV6eU5Y?=
 =?utf-8?B?MUJmcFNTWmQrY2pkRmRVeXV1aEhoc2ZRU2NwMGd0THhkUWdYWmVaZjVMOW0z?=
 =?utf-8?B?STgwdWp2aytnNUFpN3M5R29oN2wranBqNmtHdE5RZFNRYmNwc0puT3ZUMTV3?=
 =?utf-8?B?a290SFd2WkdRV3BiTGZHdE4ycjZZSFZpakcrd2lIWUlybFVOL2dIMUxMSUZt?=
 =?utf-8?B?czNpcFEzeXFNTmozRXdROTY3YUxvQkFBWTNYUXlmL2FmQ2VvSTB1NjZ4Z0Ny?=
 =?utf-8?B?aFd5ajc2aU1hdWt5RTEyUWhZaEVwL1ZUL205UmFKYTRaRklpMXBFYWdTQTFY?=
 =?utf-8?B?dEdWZkVnNWxJNnBsTkc4UHUwV2xGN1NJR1FuSU5NK0ZocDRtZzRvbUhEbmxk?=
 =?utf-8?B?aXpyaTVRMjVrNkRFMHJBU2FlVU8rZTdQeDlaNlQ2RE1JRmszRG1rODNScjhh?=
 =?utf-8?B?VC9mZTg1a1lhRjRqSkd3SDRYdERuY0lBbE80eUFaQWs4bnlKS0dSbDZoUld5?=
 =?utf-8?B?OGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7eebee2-322a-4963-3e1d-08dc7597fd1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2024 11:04:42.6392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vhb6kz0EGe8SHEwJbsJd01JlW78I1g5bxdCiBntFP4mYpurnXuMI5DHU7gOFL7/J1lVUI7SoAKdmbrP3nRwdTuUVY7mXCpSobkSVQ2LNXMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7154
X-OriginatorOrg: intel.com
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

SGkgVGhvbWFzLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFRob21h
cyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBTZW50OiBXZWRuZXNkYXksIE1h
eSAxNSwgMjAyNCA2OjA2IFBNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFu
eWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA8c3VyZXNoLmt1bWFyLmt1cm1pQGludGVs
LmNvbT47IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47DQo+IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogUmVncmVzc2lv
biBvbiBsaW51eC1uZXh0IChuZXh0LTIwMjQwNTA2KQ0KPiANCj4gSGkNCj4gDQo+IEFtIDE1LjA1
LjI0IHVtIDEzOjM4IHNjaHJpZWIgQm9yYWgsIENoYWl0YW55YSBLdW1hcjoNCj4gWy4uLl0NCj4g
Pj4gU29ycnksIEkgZGlkbid0IG5vdGljZSB0aGUgcmVwb3J0IGJlZm9yZS4gVGhlIGNvbW1pdCBp
cyBub3QgcmVsYXRlZCB0byBBQ1BJLg0KPiA+PiBUaGVyZSdzIG5vdyBhc20vdmlkZW8uaCBhbmQg
YWNwaS92aWRlby5oLiBNYXliZSB0aGVyZSdzIGEgY29uZmxpY3QNCj4gPj4gYW1vbmcgaW5jbHVk
ZWQgZmlsZXMuDQo+ID4+DQo+ID4+IERvIHlvdSBoYXZlIGEga2VybmVsIGNvbmZpZyB0byBidWls
ZCB3aXRoPw0KPiA+Pg0KPiA+IH5Tb3JyeSBteSBlbWFpbCBjbGllbnQgbWVzc2VkIHVwIG15IHBy
ZXZpb3VzIHJlcGx5LiBTbyBzZW5kaW5nIGFnYWlufg0KPiA+DQo+ID4gSSBjb3VsZCBub3QgZmlu
ZCBhIHB1YmxpYyBsaW5rIGZvciB0aGUgbGludXgtbmV4dCBjb25maWcgd2UgdXNlIGJ1dCB0aGlz
IHNob3VsZA0KPiBiZSBjbG9zZSBlbm91Z2guDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTQ3NjQva2NvbmZpZy50eHQNCj4gDQo+IEJ1aWxkcyB3
aXRob3V0IHByb2JsZW1zLg0KPiANCj4gQnV0IEkgdGhpbmsgdGhlcmUncyBhIG5hbWUgY29sbGlz
aW9uIGJldHdlZW4gdGhlIHZpZGVvIG1vZHVsZSBpbiBkcml2ZXJzL2FjcGkNCj4gYW5kIHRoZSBu
ZXcgdmlkZW8gbW9kdWxlIGluIGFyY2gvKi92aWRlby4gVGhlIGF0dGFjaGVkIHBhdGNoIHJlbmFt
ZXMgdGhlDQo+IEFDUEkgbW9kdWxlLiBDb3VsZCB5b3UgcGxlYXNlIHRyeSBpdCBhbmQgcmVwb3J0
IGJhY2sgdGhlIHJlc3VsdHM/DQo+IA0KDQpUaGUgcGF0Y2ggaXMgZml4aW5nIHRoZSByZWdyZXNz
aW9uIGZvciB1cyDwn5iKIFdpbGwgeW91IGJlIGZsb2F0aW5nIGl0Pw0KDQpSZWdhcmRzDQoNCkNo
YWl0YW55YQ0KDQo+IEJlc3QgcmVnYXJkcw0KPiBUaG9tYXMNCj4gDQo+IA0KPiA+DQo+ID4gUmVn
YXJkcw0KPiA+IENoYWl0YW55YQ0KPiA+DQo+ID4NCj4gPj4gQmVzdCByZWdhcmRzDQo+ID4+IFRo
b21hcw0KPiA+Pg0KPiA+Pj4+IFRoYW5rIHlvdS4NCj4gPj4+Pg0KPiA+Pj4+IFJlZ2FyZHMNCj4g
Pj4+Pg0KPiA+Pj4+IENoYWl0YW55YQ0KPiA+Pj4+DQo+ID4+Pj4gWzFdIGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2xpbnV4LW5leHQvY29tYmluZWQtYWx0Lmh0bWw/DQo+ID4+Pj4g
WzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQv
bGludXgtDQo+ID4+Pj4gbmV4dC5naXQvY29tbWl0Lz9oPW5leHQtMjAyNDA1MDYNCj4gPj4+PiBb
M10NCj4gPj4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9saW51eC1uZXh0L25l
eHQtMjAyNDA1MDYvYmF0LW10bHAtDQo+ID4+Pj4gOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0
X2NvbnRleHRzLmh0bWwNCj4gPj4+PiBbNF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC0NCj4gPj4+PiBuZXh0LmdpdC9jb21taXQvP2g9
bmV4dC0NCj4gPj4+PiAyMDI0MDUwNiZpZD0yZmQwMDFjZDM2MDA1ODQ2Y2FhNjQ1NmZmZjEwMDhj
NmY1YmFlOWQ0DQo+ID4+IC0tDQo+ID4+IC0tDQo+ID4+IFRob21hcyBaaW1tZXJtYW5uDQo+ID4+
IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINCj4gPj4gU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMg
R2VybWFueSBHbWJIDQo+ID4+IEZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBH
ZXJtYW55DQo+ID4+IEdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxk
LCBCb3VkaWVuIE1vZXJtYW4gSFJCDQo+ID4+IDM2ODA5IChBRyBOdWVybmJlcmcpDQo+IA0KPiAt
LQ0KPiAtLQ0KPiBUaG9tYXMgWmltbWVybWFubg0KPiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVy
DQo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KPiBGcmFua2Vuc3RyYXNz
ZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0KPiBHRjogSXZvIFRvdGV2LCBBbmRyZXcg
TXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuIEhSQg0KPiAzNjgwOSAoQUcg
TnVlcm5iZXJnKQ0K
