Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70946A80752
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 14:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F7010E660;
	Tue,  8 Apr 2025 12:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7hdZaYa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F14E10E226;
 Tue,  8 Apr 2025 12:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744115804; x=1775651804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MqzZVR8d35oafV4sGMlc3mf3TjmhpeEDKZ8OE+mSk/o=;
 b=b7hdZaYaPHz6jkGvlb/qv9DdIIHZd6rPtLD051ttilK5/Feit3X5iS1I
 EcQLk7oyoDBeiXJydbD/WSuyS7O5FLyNESxJv/Dcss/g5upkFlFdKQj7g
 wWyiNToBrYKClalreHW27RoT26DaIOOxjzei4vhk839XMruiF7A76HlyV
 dK2im/+m2Fc4pZrX6fxnWjidzPZBkXnqv6DySm++ChTFSK6MsEzT2GOdf
 Ky+ny9NFXn2xCIyC06pPJWI9IDxScEvIrY0vhbhaac8SP+agv5kAc7KeT
 XCy5K+4uSOHgabFM22YjQPHBubcj7hfHRqfN7UwaQyYFnKiwZpddMsgMg A==;
X-CSE-ConnectionGUID: 4d5ggHAITLS5b2XkUWh4og==
X-CSE-MsgGUID: uO5MvlwQSRmPg6YSg4D3DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56525310"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56525310"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:36:39 -0700
X-CSE-ConnectionGUID: 55wBCGH6TkyJagOZ/hUEYw==
X-CSE-MsgGUID: eYkrPtTdSG+Fmnq7RLO3bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="129110989"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:36:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 05:36:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 05:36:38 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 05:36:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WXRet5d0hcgj7r54TvqDNtg+B9fHEn21od9bMKPS+fCyXQlQFX4R4oOjuLJeFXYIOwx+QFo84PKuMgkW4rE9iZJ2B2v1AcHpllddpMBFXuT2UetmXeFwYDfVtxH7NkTfmY9UVmkDQrBtaDoKJOqOWCOz6tMYr7dM4z0s3LBD1d8QnC9yo0xGW5b+7/fUoI8ectmJRk8e3jh8RI/BxKcFgMEdJMi/aOdTtmIHTn1E0V241tPcBLY98z4e4Gwu67KAvIIpqoIfZy+nyY4iZN3hpT4IId0yIbdEuWlRpzWLrrKYV+fmQMb9Oj6azKI+bAQex0OoiQcIXBYst7XwBYKjAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqzZVR8d35oafV4sGMlc3mf3TjmhpeEDKZ8OE+mSk/o=;
 b=f0xerg9HIlfpkfpuC+2YNXHucesjn+6+dE7KK0P/Li5TPwe0OEexNRXPQRyoLzeQVdXWZKOpAT+uNpp4EPDRPxfcS+lju6KonKGGbF2cYbxVV/TBurFTaKWBluj/imkBNV8nniVYZZSnaEzHhlUngzGl/58Fzoo8wDyB3ZVBZXc8urYAbpH2lsMIO4NGjUtYDk8F6mm0a0Nex1K/DqRxrLWZuc/j+r+0NC3f/FR+HcayNCA2+1xavgCHz7hhg7bcncARSwZ5g4rEbQpxxP9VSDpDbdsFulrOvVCcsEfZwLe4dYrVj+qnd2HXhSynl7ckYFAxrfVo+adDmDS6+K9R5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH0PR11MB5142.namprd11.prod.outlook.com (2603:10b6:510:39::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 12:36:36 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8606.029; Tue, 8 Apr 2025
 12:36:36 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/alpm: use variable from intel_crtc_state instead
 of intel_psr
Thread-Topic: [PATCH] drm/i915/alpm: use variable from intel_crtc_state
 instead of intel_psr
Thread-Index: AQHbqExU6ByYutRJXEuqRWZ1jFlDrbOZtPFg
Date: Tue, 8 Apr 2025 12:36:35 +0000
Message-ID: <BL1PR11MB597954DE432864DEEA0E9054F9B52@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250408060539.4167353-1-jouni.hogander@intel.com>
In-Reply-To: <20250408060539.4167353-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH0PR11MB5142:EE_
x-ms-office365-filtering-correlation-id: 065a3558-0218-43ca-8885-08dd769a005d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Y0g0dW9DeXBpd2J5WnJLbTFqSmh6Qi96Q3VUUG9zNDl0UVMwRzg5bE8vRk5S?=
 =?utf-8?B?TVk3eUR4VkUrb1F0VWFFQlZaaUlrdW5QTXJXOStkVXlVWk5laUNkNFB3RERT?=
 =?utf-8?B?UXpDdjhaYUxLUWVWOGo0UHNuSVJHSGhTandKRXFBQjRVTW5oWkhvNGo0TEp6?=
 =?utf-8?B?azg0a294MXN6Ni9YY0dQQ2l1K3dXRlB6UmVXQVpWZUY3RG9CR1JGZWcrdnY5?=
 =?utf-8?B?YmlVcy9uTUlzWjdqS3JlbDZRTXhRSmF2MHRBTngrRzBBTkxHUTJlamo5NnRM?=
 =?utf-8?B?VnpwNWZBV0U4aDgzaS9oNlNBeHgxekJQZE55T3dqeUlsREJycnM4SVpiMU5y?=
 =?utf-8?B?VHFmWTBWSGJBRkdwYjJzNGNiRHNwSDgxR0kvSm5CNSs1MzJqbGVJaUNmOURw?=
 =?utf-8?B?c2pISVpiK2RDaERIVWpQeFo4dmo1U0ZxcTMxWmZNeEtKQ1Jmb0hyN1NpR1JK?=
 =?utf-8?B?blNtOUI2cDdWek1SMjVxQkZVb2g3ZjhKVHNGL3U3U0lOWU54OXIvVlA4ZDBX?=
 =?utf-8?B?VGJZU3BLUmRXNXBHa3FDQUoxd01WUU1WcG9uanNDd3Z3RFFXMGJUQTFoYzZr?=
 =?utf-8?B?VVFsTjNQNTJnNkljTDd5bk9SM3pkVk5GeHBjY2Nqb21QYnQydno2ZytZWDRE?=
 =?utf-8?B?RjNjc25tRUF5aklGNzNMeUtKbDMwUG5NaG9vSGlwdGRHZFJUYk96WVFZZU4v?=
 =?utf-8?B?Rk9CWHluOEFOQnQwcFI1NmJlVDFrWkhDUVZSa2g2OFlBQ2VaNnFsYTJuY0NC?=
 =?utf-8?B?ZFI0VXV1RHNOKzBqU25VUkFXbi9jVW9OMzBINXJ3bUpQd21pcHZEZVYyby9J?=
 =?utf-8?B?b2orNGM1cHRvRHYrQTl1U2lPVUwwc1drTGdHL3RDMy82NFRmUVhuelRwT0k1?=
 =?utf-8?B?N0kraFRlVklNNEVMNFVQZkFiMzBURGdqSlZwaDQ2M052OHFFaU1FL21LSXdZ?=
 =?utf-8?B?dVM3LzBIalpzUG11dTVlZklEU2JnbmI2M0YvSWZJSlhBeVN1d3FSWTVBSUFV?=
 =?utf-8?B?OHdIcXJwS1pCT3JBdHVjdXVOdk8wdkVVOFdoYTBUbkRoZTA3bVUrSGlrbTJI?=
 =?utf-8?B?SHViNCtsY1hTRkIyL0U3WnFWMWtHZmZJRXpId3lCTEcyN2U4Y3JoaU1VdEp6?=
 =?utf-8?B?V0pzVS9FUlQ4SS8yT2tWbnBnUmF5SXFURkl4aDhqdHF2Rnp2NUJ4cTdGNlND?=
 =?utf-8?B?QU5CYzU4QWNnYVU3cE1xbm5xWG8zMUhTblJka0JqZGFjVFdEb0lyb0ozalhH?=
 =?utf-8?B?WlFSeVhJSDUrMFAvV0M0alhtbFNKV2krUUJxRXBocWNjM3dvdDdoRi9iczRP?=
 =?utf-8?B?enV6dkRRdFYyVXdOTDRtbTVUbURHS3JOWTlBMGp1NTNuODF2ZWF0cy91dGlx?=
 =?utf-8?B?SXlwK3UrMzVwT1FiUU90ZFlST25ZZk1YUXY0NTJvcGVFVm04UXMxVzdEMEJV?=
 =?utf-8?B?THlrWHpkWTVqOFhGbnpNcTFiczRadVpuRmZrTllCR2dGYm0xK1VSTURYLzM4?=
 =?utf-8?B?RXBSWjZKam94VnBmdk5CNEZKaHBaaGRMS1Z0MGJESUE3NzZvUG1zbHpqTDVh?=
 =?utf-8?B?V3VkSk1NcUpmSDM5dXFYSHpEZTJ6Y1FtWFFPeDZzSjVwZXFST0FvRDV5VFBq?=
 =?utf-8?B?V3dYU3pNRnExYm9XZUJyYTkzVE9WNURobWFsWTlId1d2YWhpVVZRenNwTUk1?=
 =?utf-8?B?Mi9zM24xWlVFVEFpYnlPRG9qa1BMZTdvZWlIbVRXRUhCUDlsYmZ4OUg4RjhG?=
 =?utf-8?B?RkJRYzIrT1paY0JvY285VjA1bjRKZG9FRE5jRHcxNkladVEyWEtUZE8yUXh3?=
 =?utf-8?B?LzN5Nm5ZR1ozRWkzSU8yUTBoOWU4ajlYZDZmam5oeDZyd1NPelo2VG91TkN4?=
 =?utf-8?B?aFJ0UnVUUUtMbUtUY2wrY3V5aE1oTFhVSXM5SGRRZ1VrUFI4Q3pFMjN4Rkds?=
 =?utf-8?B?dStLekcxNHVveGlHZ0xaOU5XY0N1QVRkT0UzVEttU3lyK0h6Z25ybGROVFhy?=
 =?utf-8?Q?6hauHhjnQO1JTT2Iv0OhPr1vDXAvyQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFdZeHBvMWJDUDlCWUxxenQ0Q1dsTmp2MVJqWUp3dytmMkszM3Z0MUtYN1Vp?=
 =?utf-8?B?aURldUlzZFV3aHZVOWtiR2kxQXZBb1VOU1ZJUFJoOEJWdVk5cVFxZFlWMndN?=
 =?utf-8?B?Q1NZa29jRnZnd290dW54OVdTR2h6UnZydXhiTE9pQm5jV2svRVk4dDdXUGg5?=
 =?utf-8?B?enhwbnZJRzAzNjY2NVdXVUEvazFWRHUxSm1ublg1WnVlR0VKU0VHbEU3bzhn?=
 =?utf-8?B?ek9BU3NYa2JQd1haVGVHWXE0enRDWmdpUHZHV0lGcUVISXZEM2lpWElLYnpE?=
 =?utf-8?B?dDFhTHVQdkZnN2dEcW52VnlqTU5jckpUNS9kMTk5QmN4U1BjL2FGVURZRnlm?=
 =?utf-8?B?aHBZZDNWdmJHUVdzUEt1NGJpYWs5T3lQSUk0N09kNlN5ZlIvazd5bE53Y0Zz?=
 =?utf-8?B?cnMzY09IVXV4cDBES09SNWtkWjVXZlBKdEZNWDdRRTdFVmovemhpNG56ZXdT?=
 =?utf-8?B?YnY3WWxWZ0FjOUpCWC9NRnJqdzJaVjArc2p0N2xSTjNVam1jWU02MDFCVE5s?=
 =?utf-8?B?MEZZRUF1WDBncngzSmZVdEJjcW8xdmZQSGJOaW9oYUVsMmY2aUtWbXA1Y2w5?=
 =?utf-8?B?Z2lPM2RoMXlVcmdXUlg0dEl1clVUTElFWFMxUklQZW9Mb2JsNnZLMTJBVzBx?=
 =?utf-8?B?UWR0WUU5eUFTZTVRZk1KV2dvTTRicjdrTEx0aW9NUVlXR2ViTUVlYTQwQ091?=
 =?utf-8?B?UFBMb3JVK2RtUW1tQmU0UEltOG5ZaHFEMmZDbnBXUDFCRFpTQW1DcnlWMFVC?=
 =?utf-8?B?UCtqamNTaERCTUF0U21qaWxNVmd2NTNrYkxMSkdqbXNsZElaVkFhMUdmcGZs?=
 =?utf-8?B?WEJwVm83ZzQ1WUlFV3FpY0p3NkxpKzZoQmhMZXdEOVk5V3JCM3FoQ05SNVF4?=
 =?utf-8?B?VUxNNzN0WVY4Yi91Tkhndmt0L3hldlorOGI5dlVYazlDWXpydnk0Wk56MDRv?=
 =?utf-8?B?dm04cGNxWUErc0ZvVVZWZHhScFlXeS9kZVlpWTUzc1JzbVhyV2FKeTI2Q1Jz?=
 =?utf-8?B?Rnh2WW1xR0c3Rjh0a0NOeW5zVDUxa0s1Z04yeGhGZ0lYVzBVNWJ6MlZQaTM1?=
 =?utf-8?B?azZkSmpHY3hMVXZPOEtqZ3VTWVQ5Y0NXT3ZiKzNMalg4N2FHUUl2dnNaZlM4?=
 =?utf-8?B?SUU0bTBrU2NUbVRDM3A4RTFsZzZnOW5xVzJkeFRRR2dqdzZSRjY3bHgyc0Iz?=
 =?utf-8?B?R0RYbWNMeGVMTHgzQzY5cVBya2Q4UFBGSmdRSEl1YkpzSkF6WFBybGdIWVBF?=
 =?utf-8?B?aDhkSFU0QlZ0LyswVHdIVExsN1VnS1k5dTF4ZnNZVkxZL2ErTy9kU3JiMTdm?=
 =?utf-8?B?aUc5eVBWRUhSd043UW9WN0xRd0ZmV1lKa3ExYmdpYWJvTnMzbE00RitXWk1l?=
 =?utf-8?B?dzRCZENBZmZySFZwSVgyQ29BNy8wY3lMb2kzNUZvVXltSnhOTFpBZHZJN1RJ?=
 =?utf-8?B?Qzk4dmtVTEc2RDVyRktWcnpVSjhQM0toU0pUcWZwQUVnVHBJZ1FzMVBsa0hr?=
 =?utf-8?B?OERVWTNXdjc3UTVGeVNLZHAxS212SnhBL29tWXgrZmxybThCbkV3bWRNYUxC?=
 =?utf-8?B?MUd0UWtVc1JsemZOb012ZmhSTit1SThhVzVqMDNSSDBubXdjUng2OTdzaCtq?=
 =?utf-8?B?bmMydkNlUk04OWQwNjhnOFdDb1FyV2V2U2M1ZnpmSUV1czB3a3l2aFNvdHlR?=
 =?utf-8?B?Z3dDVUVuQURPallvbW14dkdOeXFPdU83MUg2MFNJZWRySFBrZGhrWWFMOFhx?=
 =?utf-8?B?T2JIYjBwYkpQQ2VqbURzRXU0cHRqUFI4a1NQTHdBOXNxNk0xV3dkVDN0TDhh?=
 =?utf-8?B?VGlOMkYwNThic0N0RWpKYWZoTEtibVJraWRpMFVZc0E0Q2U3cHozUDc1Rm9Y?=
 =?utf-8?B?OFptMU9ZVm1udnBjQUtwWEZwU3dEZWp3NW5PNys2b3VYbURUOHQ2ZXM4L2pv?=
 =?utf-8?B?Sjh1NnNaMUdLanhBNElPaVhmZThvc1MrQmRuL0RNQnJHQjY3U2V2Qk1udTNn?=
 =?utf-8?B?MGMrVHgzVDZpQ0dBQmltMzZaR3RoM1hRODc4TFBjckZ1dGU1Sk9JbllYdGZy?=
 =?utf-8?B?TjFpc2dwdktuSHVReGU3VkVjTWNXTE9STXVXR3gzUHVFem16Z3g5UjNoUG8z?=
 =?utf-8?Q?5xftP8MjO9z3trpEywTDmUJTC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065a3558-0218-43ca-8885-08dd769a005d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 12:36:35.9491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4GmGGsjgv5IPalzRtINKDxYTuX519wjymODq7+bstbxKTgoJSG4Vf6FyLMxynpsjjIaE6fhb0VI5Bpn5edc9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5142
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVHVlc2RheSwgQXByaWwgOCwgMjAyNSAxMTozNiBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9hbHBtOiB1c2UgdmFyaWFibGUgZnJvbSBp
bnRlbF9jcnRjX3N0YXRlIGluc3RlYWQNCj4gb2YgaW50ZWxfcHNyDQo+IA0KPiBDdXJyZW50bHkg
Y29kZSBpcyBtYWtpbmcgYXNzdW1wdGlvbiB0aGF0IFBTUiBpcyBlbmFibGVkIHdoZW4NCj4gaW50
ZWxfYWxwbV9jb25maWd1cmUgaXMgY2FsbGVkLiBUaGlzIGRvZXNuJ3Qgd29yayBpZiBhbHBtIGlz
IGNvbmZpZ3VyZWQgYmVmb3JlDQo+IFBTUiBpcyBlbmFibGVkLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpS
ZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDQgKyst
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4
IGViYTQ5MjYzZTJmYjguLjc0NjQ5NWFjNjc1YmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0zMTcsMTQgKzMxNywxNCBAQCBzdGF0aWMg
dm9pZCBsbmxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
IAl1MzIgYWxwbV9jdGw7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8
DQo+IC0JICAgICghaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgJiYNCj4gIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpKQ0KPiArCSAgICAoIWNydGNfc3RhdGUtPmhhc19zZWxfdXBk
YXRlICYmICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4g
IAkvKg0KPiAgCSAqIFBhbmVsIFJlcGxheSBvbiBlRFAgaXMgYWx3YXlzIHVzaW5nIEFMUE0gYXV4
IGxlc3MuIEkuZS4gbm8gbmVlZCB0bw0KPiAgCSAqIGNoZWNrIHBhbmVsIHN1cHBvcnQgYXQgdGhp
cyBwb2ludC4NCj4gIAkgKi8NCj4gLQlpZiAoKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2Vu
YWJsZWQgJiYNCj4gaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgfHwNCj4gKwlpZiAoKGNydGNf
c3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgJiYgaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgfHwN
Cj4gIAkgICAgKGNydGNfc3RhdGUtPmhhc19sb2JmICYmDQo+IGludGVsX2FscG1fYXV4X2xlc3Nf
d2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKSkgew0KPiAgCQlhbHBtX2N0bCA9IEFMUE1fQ1RMX0FM
UE1fRU5BQkxFIHwNCj4gIAkJCUFMUE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFIHwNCj4gLS0N
Cj4gMi40My4wDQoNCg==
