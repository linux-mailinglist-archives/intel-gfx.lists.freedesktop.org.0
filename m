Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341949BB4E4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 13:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C139D10E051;
	Mon,  4 Nov 2024 12:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPYFul8G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E6210E051
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 12:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730724270; x=1762260270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jelrFogB783vBcF6Ty7pRox6lwviKcDFIfFd2UuRS44=;
 b=VPYFul8Gf976ox4w6HLg6P19x1vY8ro9a7+1RNte2/5IODye1a7fO3cl
 xfiM3RU4yTpftJfk+ADtcEo+xYJKU6otkvXGZmzFm9MH4GLdMlyhsrDVs
 KlejRg3MZmjo4p4SGHqNA/ZluC3PzRmM7d0wYVknbx5M/p9GRiJhFbC9b
 IQzsZxuP16G1yP03N+E5NQ+XhNTc85efl/VBEgmjpGULev3OVIuue2NhE
 hGq75VbdSr6uk/POgfAxLQx52GCzUGdY1ubeCboGhqSDi0FCEzwAe2kAx
 sdbzx6wN+I7MDR0YTqrBjKoW8yE7criAh5dYTzrMlU0F+Daz9ynP7rMPv g==;
X-CSE-ConnectionGUID: sCV7w1kYRPegxJ1U5A1WSQ==
X-CSE-MsgGUID: r5nCZbLXSeyEzSgNmpHrLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41808492"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="41808492"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:44:29 -0800
X-CSE-ConnectionGUID: tH24j8++S5yxYWAVn7d4JQ==
X-CSE-MsgGUID: ZCZoUSTiThiayCOthpLPFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83532216"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 04:44:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 04:44:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 04:44:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 04:44:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=trXskgv7w3l09BT/ZOGmwJB33Pc9s5xBHNHdq0WKbhdCUU50irv8MTNhmGDq7xqXa3z0QdUzxUe153tAreNewFRCPUur95psjS3a9hPLsa8iBwzJIwatwvQ+ZUyd48xdS4qYDzrlsU3nXPLu+SCznKcHKVpNoGFIutLRYKQ7bV1ePufbVQSgToqmvuJJjgoj9j+hpL3nx0wSYb5OuIh9AU/bHbs9Fu7fPmlV5UUJ6qDah80MKt8LlWfhdfJz53OoFDSqsTBdRE5vznO0cXQmS/IG+UWxBr/ebCH/cZOiSqaej/gva66+gT3rZKUXn9X3v4NJVRdRhRPaP75ge9jUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jelrFogB783vBcF6Ty7pRox6lwviKcDFIfFd2UuRS44=;
 b=j6XcnYuzdd3reCXypSyiAzq1yIwekzYsOadV3EWYfWIhfjj9Jl22umj25eMiAAfYGrVO7Dg/igoY9l5VsgLnuSEwWZO1LMCyVL3ouulKB4qulr5tgQctupgZKAV++Lt5gpc7QvwXAHPz3V12pmUraSx/UGj64wVtE+oWhuu80re5E1E8/RlFTGVSqEbeBzAHCG2Khrci1v1qUsb2o1N/Yh/UaRhf64D+J4oF/elWPWAjhkPikHLJHmFIgGXCpJBDVEGHYmKFNNZwbV+29CKMq2vXmRVt5blj69ZL4jU1Io8EawXQBo4LUnevK6eXs+uzww5mJf9Gy5wT58bsjzhUQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 12:44:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Mon, 4 Nov 2024
 12:44:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag"
 <raag.jadav@intel.com>
Subject: RE: [PATCH v4 2/2] drm/i915/display: Use struct intel_display instead
 of struct drm_i915_private
Thread-Topic: [PATCH v4 2/2] drm/i915/display: Use struct intel_display
 instead of struct drm_i915_private
Thread-Index: AQHbLGS4UJeV/g44y0yOQU3jEL4MYLKm8PEAgAAjzeA=
Date: Mon, 4 Nov 2024 12:44:26 +0000
Message-ID: <MW4PR11MB7054EEBBA5895A50A86995E3EF512@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241101133924.245817-1-mika.kahola@intel.com>
 <20241101133924.245817-3-mika.kahola@intel.com> <87msifi917.fsf@intel.com>
In-Reply-To: <87msifi917.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB4934:EE_
x-ms-office365-filtering-correlation-id: 6ac30361-16ae-422f-6bff-08dcfcce6a93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dUdkb0I5dEFsSi82cDJlU252YUtOdktDNFd2TXlWOUw2RTN0S0xhbk5UY1VV?=
 =?utf-8?B?Y2ZVWDUyZjR6M21Jc2ZPbXc0R0EveDFGQVdjcndNZmVRMXgyeEVpMWRTSklq?=
 =?utf-8?B?OVhoYlFobWtCdjBTS0JCWFhWTUZ4bkV2N3N0d3B2N0RkaWJoVHFpZ0hJRlAr?=
 =?utf-8?B?TXZEU2o2Ylg5Nm1HQXBIVzlubUl5L29GMHR4SDZmeVlZc0l2dEdTRi91aHZW?=
 =?utf-8?B?bE5qOU5YYzkzSnBMSW5oL3d3ZHVvV2hjallOeEhWalpHU0tkdTFVZXd1NXpV?=
 =?utf-8?B?NEFSSlMxTUhFdllta2FkVk8zTU8wN1BvNG1uZ21PZHJZMW5sUU9aVkdjeVUv?=
 =?utf-8?B?emg0Zkt3dE1VMDhYQmtxbVRORnlZb1NpVWd4SlRiYTZLTnljMC95VHoxZzJa?=
 =?utf-8?B?eThvYWdaN2NWdGF4Q3UwcXcwTzhxcEk4MG1FVUFoOG16RDlqMVE0MS9IM3JM?=
 =?utf-8?B?ZjZDY3llcHpiSWEraE9YN1ZFaWc0TjVxMElzUVUrQXhmYjVkWDViZndGenZQ?=
 =?utf-8?B?Ym50Y0E1MVhEZ01tcm0vNm80ZmtHZE9Gajg3bFRaN3lqSGFyYTFrMzVaeEZS?=
 =?utf-8?B?K3hMaFZhVE1RcG50MmtCRUdaOVlKamIyaExUTFNDWWVLWFY4eHJWYyt0QStM?=
 =?utf-8?B?T3A5ekc4TnNiNGV3eW9kUVZlR3Nlc3hzTWExN0x1b2xmcTVhSEcxd0NUcGpW?=
 =?utf-8?B?SzJRNkVUN2dDMWE3b3pYY2t6aksyUDg4cDdKSW14WVUrKzZFWVhXTlBTdXAr?=
 =?utf-8?B?QTlrWlFYVkFpSWFDZmg3SDE2NkJKODJxQmd6YVZxMXkrRk5Oc050S1BoT3dS?=
 =?utf-8?B?ZzIzRkJvUGNYYm5YanZzSzJIam9zZW1nN3FVekUxTkZhVnQrMHVZbHBiMG90?=
 =?utf-8?B?b2x4SURFd1NvK3VYZXNDSjJWa3F5VTJLZXNVY3R3d0xKeGZqRFZtNVJNRTlL?=
 =?utf-8?B?VVhPWDRFM2JjbEtKeHdiY1UyOWNJbG1PaG5jR0YwU3dxU2swc2E0OHpoU1dW?=
 =?utf-8?B?Zm04alQ0SldiendkTVJXcVA1UjlIWlpKblpiUTh2Y0pCeEc2RS84ZXlNQk5S?=
 =?utf-8?B?cTNKcDRxeUZ0dlMrRXZNSEkzWHFhV2RmbEp1cDJsLzhtYS93ZWg4OCt5Z2No?=
 =?utf-8?B?b2JJa1ZpTzJpUlRDVDB6bEExRlJ0RUM1MDBuYU52Y3diZmhRQ091NGliOWNh?=
 =?utf-8?B?bnVxUk1pSmRjMVc1amVpMmZaaEdpQzRZbzhzWit0NXF0TzN3eGdQV3p2T0xz?=
 =?utf-8?B?bE4vcHorcUtBTi9uVExIVjRZNGlVeVBGY3pUYUU2SUQrMXlHVERxSkQ5Sngw?=
 =?utf-8?B?K1R4bWp1N05pNDhKcW02YmEzckU5ZWRQVW5pNjFwd0hLVGpjUFBqYVM5cEll?=
 =?utf-8?B?WVJSVFhGdGhjdnB2enNYOW1SUTlBRFNraFNQYXU0TEpoWmZYUk9IQm9PS2Yr?=
 =?utf-8?B?OUR1RG9KYy9jLzZzQmN5YmpnZG1GNHpQeFdFdWtaYktHR05NNHNuOVZUckpx?=
 =?utf-8?B?dkJHYzJNemhDUFRhVnJJanpCYlk0NVAzU2d0WmU1NytueDNZMnc1OEF0ay9C?=
 =?utf-8?B?S0NFZW1yWVh5MXRLYlF0WHgwV293VzVPcnM3ay8vSWJHT0tPSHE3ZVlFVTFQ?=
 =?utf-8?B?VjRGWGRtU1QzS3Qwc2hwSTVCRlNuUHhmQUJXZ2RGUjJOUitTMjRPa2JYa3g2?=
 =?utf-8?B?cGJIbXgvSDJuT2FDL3hZN1lNeFBjUnFSY3pBckdqZ09WNlVFZXllYUYyRG83?=
 =?utf-8?B?Ny8yYmxBR0xTUDJGSmhCbEkxenJqM2NwQ3JkTk9pMm9peWRJeE5xUDZHU1F6?=
 =?utf-8?Q?wDAX4U0Q01zNOsooeno2EW/D+qoNnhXB1Ea6s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnVDVFYyTHBpdmZiMW1kZEIvb3VoWktLNWQxU1pzSUdQS1ZXd2lzUEdJZjVz?=
 =?utf-8?B?STR4TmR4elMwYnhMd1MxdHNWS2FSMnBBdVYwSWtCOTlNWXZabmVxdys2b016?=
 =?utf-8?B?cUk2K1V1bFQySkdsUGo2T1lsV05DSitEQWNReExMRm1BdjlWV0dHWlA4MHJi?=
 =?utf-8?B?bmMzcTNJTkdIanZHd0NsdlVvU2pHb1BUUFVXT1JXUmZkdGJFRWNiS3EzMG9U?=
 =?utf-8?B?dmZ6TUU3eWl4dmVVeGVFSDZYRDJDQWprOW14ZEE2VjI3OUwvdTBSWElGVHJl?=
 =?utf-8?B?Y0c3dXdRT3ByRkhQYmdkZ1VpUjNGMFhFTzBCMC9WTlRyazZSd1J1YkU2anRC?=
 =?utf-8?B?cXlGQmRhN0J0aGt3b3JsZjMrTjhHdkhFTE5Jc213aU13ZlovY3l5MlVwM2lW?=
 =?utf-8?B?TWxXaFV3MmNPOS8wTGVvU2Y3MzFFOStCcmRMN1pBZHR3dnRxUWc2dzdzZXl1?=
 =?utf-8?B?Uk41NkZUZ2RzUjEvZmlvNk1POTNyblVxSlljdHVaRUFqWkl5ZTB0cWRiN1hv?=
 =?utf-8?B?VU5zcU5Ed3NCeUo3NC9BVThWei9WdlplMVJNc3dOdHFja2xsTFBhbEFYRjhr?=
 =?utf-8?B?K3poS3NnQVhhb3I4WEM2VFJCR204RExEZ2JPaE10YWJXdm1NTksyTTVLQTBy?=
 =?utf-8?B?V1NWRzZlcjRHdjZ4VmhBbU1KM2R6aTFCeFI2N0trYVdkTDR3c0xNOUd2N1dH?=
 =?utf-8?B?UHFKUnJnUGFYQjlDZTZ1VE1GMkxrSGZFRFlKRSs3Wm55a2hUZkRvQmRsaHFY?=
 =?utf-8?B?SjlISm1ndjNJdWJUclZHWHZPZHIvV0xVYWhvL0gwSGc5V1gyclh3N0pkUVpK?=
 =?utf-8?B?R2xBYmpLOTl6WEpGejBkQUNHalJ1WnhpVW1sN2NnY2NNMUQvOTBQaTJrWTk1?=
 =?utf-8?B?VVlFUXJyOURCTlNtN0t6UzlCcjJMVXhrMExIQ014REFWL2ZMSGdmazNXZnl5?=
 =?utf-8?B?RHVwZDlQZVRNVS9CbmJOcXorMFU1d3F5STJLaTFIVUIrV2VDdklDL1BIYjZX?=
 =?utf-8?B?VG9ITlNFbmFwM1B2NURkRytRQjR3S3ltN2M5b3hXRlNwZE8zMzhXcFdtME9T?=
 =?utf-8?B?amx5N1hJMzlqbWRLbmlYcW4ydTdneWhkSVdvdU5UNXFHL0ZoOTlCb3UwWW91?=
 =?utf-8?B?c2FmQ0lGMDltUlBFYXJTbDNKSjZOS0pmcE5wbjB2dFF3NkxDNHNQZUJoZXly?=
 =?utf-8?B?TlltOG9yVTlYaWpSTUNZR2hmQ3dCdDhxcGU3V0FxQXRvQ2RtV2FUOHZENXUw?=
 =?utf-8?B?OGZQVnV3d2U5cG5pZmZRM25FbjduU0RyRU1wY3p4S0ZnUjRqeXpOaUN4b3F2?=
 =?utf-8?B?QVFIeUV3cythRE5zeVplNE5TaDlEMGNrV3RDT1pWL0ExZS9jM0ZCdUYzUytx?=
 =?utf-8?B?TnhRa2tMV253Qmk3bm9mQWlmdEYrUUo5QnluSVdaTndZMGM1RDBoVkVBS2dV?=
 =?utf-8?B?OWo5emFZcEdieEM5emNKWS93TGUwUkk1Z1d0N1JyOVNhZW5xY0tRL0x0bS9D?=
 =?utf-8?B?b2g1QWVhelVtcmN0Wlg5b011SjRhTTBaRmdqampSQXVjSkhkTkc5cjJqUUZn?=
 =?utf-8?B?cU1Ob2tweWtSdHg1NG1VNG5KNDU5RFlzSDFMQWhmYkR3cHRSb0tSclJ4QWFU?=
 =?utf-8?B?M1pndEU3RHJ5ZjVGcUxuR0Z6alhPYjdYSkpzays2SldkcHJCa01PNDhRK2Vt?=
 =?utf-8?B?SUl4d0FpZ0N0UzlXaVZrT2pWY3hwY2o0SFZtSkNuYW50NERuTWFMWlI5Zmp1?=
 =?utf-8?B?TUxWZ01uUFVDOXR3Zm5pcDNDa2c0WWpsd09lMmd4SFVnSndYWmpUaWdBdmUw?=
 =?utf-8?B?UDgzbzErUC9yQ2FMSWprNDlmQThFSklkc0VEcWY3SjAveTJ3WnczbStSOGFB?=
 =?utf-8?B?TGZFTTRlekFHcVNscmtKOW1GVkxFeHhRUWhJaEpyekIxUHBROVFHb1ZDTGZJ?=
 =?utf-8?B?U2RNb0lsM0dnNEpZSTdmdjJsTTNWUy9qN0Y1aHJ6ekVEaG5BUjZIaG4veG1O?=
 =?utf-8?B?bTV0eDV4cFhnanNyV0NFVDE3eHlxVzhwZzM2UjZEZWZ1QjBLbG9rVTBFa1Iw?=
 =?utf-8?B?U0NMWVpQbk5xTkhrSWs2SFBXcHNtOGRXdmVjcWsxL2JEY3JmdmFEaWhtNlFV?=
 =?utf-8?Q?rVP73Ipn4g2hZ9/WnUZOndPXn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac30361-16ae-422f-6bff-08dcfcce6a93
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 12:44:26.1152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0pS/BRvdjhRIvN+sbQ6SfKHtsofJqrYA0Z0LkPJnCrkdW2YKu7XtmE66L9dstkdyshZuHy5V8lGJW9RlrYxCkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDQgTm92ZW1iZXIgMjAyNCAx
Mi4zMw0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTb3VzYSwgR3VzdGF2byA8Z3VzdGF2by5z
b3VzYUBpbnRlbC5jb20+OyBKYWRhdiwgUmFhZw0KPiA8cmFhZy5qYWRhdkBpbnRlbC5jb20+OyBL
YWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRD
SCB2NCAyLzJdIGRybS9pOTE1L2Rpc3BsYXk6IFVzZSBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBpbnN0
ZWFkIG9mDQo+IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+IA0KPiBPbiBGcmksIDAxIE5vdiAy
MDI0LCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBMZXQn
cyBzdGFydCB1c2luZyBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBpbnN0ZWFkIG9mIHN0cnVjdA0KPiA+
IGRybV9pOTE1X3ByaXZhdGUgd2hlbiBpbnRyb2R1Y2luZyBuZXcgY29kZS4gTm8gZnVuY3Rpb25h
bCBjaGFuZ2VzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jIHwgMTcgKysrKysrKysrKystLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBpbmRleCBlNDBkNTVmNGMwYzQuLjM4
NWM4MzhlZTk5NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gPiBAQCAtOTcsNiArOTcsMTEgQEAgc3RhdGljIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICp0Y190b19pOTE1KHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YykNCj4gPiAgCXJldHVy
biB0b19pOTE1KHRjLT5kaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7DQo+ID4gIH0NCj4gPg0KPiA+
ICtzdGF0aWMgc3RydWN0IGludGVsX2Rpc3BsYXkgKnRjX3RvX2ludGVsX2Rpc3BsYXkoc3RydWN0
IGludGVsX3RjX3BvcnQNCj4gPiArKnRjKSB7DQo+ID4gKwlyZXR1cm4gdG9faW50ZWxfZGlzcGxh
eSh0Yy0+ZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiA+ICt9DQo+ID4gKw0KPiANCj4gdG9f
aW50ZWxfZGlzcGxheSh0Yy0+ZGlnX3BvcnQpIGlzIHN1ZmZpY2llbnQgaGVyZS4NCj4gDQo+IEFu
ZCB0aGF0IGJlZ3MgdGhlIHF1ZXN0aW9uLCBkbyB3ZSBuZWVkIHRoZSBoZWxwZXI/IE1heWJlIGp1
c3QgdXNlIHRoYXQgZGlyZWN0bHkNCj4gaW5saW5lPw0KPiANCg0KV2UgaGF2ZSB0aGlzIGhlbHBl
ciBmb3IgdGNfdG9faTkxNSgpIHNvIEkgdGhvdWdodCB3aHkgbm90IGZvciB0Y190b19pbnRlbF9k
aXNwbGF5KCkuDQoNClNpbmNlIHRoZSBoZWxwZXIgcmVhbGx5IGlzIG9ubHkgb25lIGxpbmVyLCBJ
IGNhbiBkcm9wLg0KDQpUaGFua3MhDQpNaWthICANCg0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0K
PiA+ICBzdGF0aWMgYm9vbCBpbnRlbF90Y19wb3J0X2luX21vZGUoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQsDQo+ID4gIAkJCQkgIGVudW0gdGNfcG9ydF9tb2RlIG1vZGUpDQo+
ID4gIHsNCj4gPiBAQCAtMTAzOSw5ICsxMDQ0LDkgQEAgc3RhdGljIHZvaWQgd2FfMTQwMjA5MDg1
OTAoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiAqZGlzcGxheSwgYm9vbCBlbmFibGUpDQo+ID4N
Cj4gPiAgc3RhdGljIHZvaWQgX194ZWxwZHBfdGNfcGh5X2VuYWJsZV90Y3NzX3Bvd2VyKHN0cnVj
dCBpbnRlbF90Y19wb3J0DQo+ID4gKnRjLCBib29sIGVuYWJsZSkgIHsNCj4gPiAtCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7DQo+ID4gKwlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRjX3RvX2ludGVsX2Rpc3BsYXkodGMpOw0KPiA+ICAJZW51
bSBwb3J0IHBvcnQgPSB0Yy0+ZGlnX3BvcnQtPmJhc2UucG9ydDsNCj4gPiAtCWk5MTVfcmVnX3Qg
cmVnID0gWEVMUERQX1BPUlRfQlVGX0NUTDEoaTkxNSwgcG9ydCk7DQo+ID4gKwlpOTE1X3JlZ190
IHJlZyA9IFhFTFBEUF9QT1JUX0JVRl9DVEwxKGRpc3BsYXksIHBvcnQpOw0KPiA+ICAJdTMyIHZh
bDsNCj4gPg0KPiA+ICAJYXNzZXJ0X3RjX2NvbGRfYmxvY2tlZCh0Yyk7DQo+ID4gQEAgLTEwNTAs
MTUgKzEwNTUsMTUgQEAgc3RhdGljIHZvaWQNCj4gX194ZWxwZHBfdGNfcGh5X2VuYWJsZV90Y3Nz
X3Bvd2VyKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgYm9vbCBlbmENCj4gPiAgCSAqIEdmeCBk
cml2ZXIgV0EgMTQwMjA5MDg1OTAgZm9yIFBUTCB0Y3NzX3J4ZGV0ZWN0X2Nsa3N3Yl9yZXEvYWNr
DQo+ID4gIAkgKiBoYW5kc2hha2UgdmlvbGF0aW9uIHdoZW4gcHd3cmVxPSAwLT4xIGR1cmluZyBU
QzcvMTAgZW50cnkNCj4gPiAgCSAqLw0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDMw
KQ0KPiA+IC0JCXdhXzE0MDIwOTA4NTkwKCZpOTE1LT5kaXNwbGF5LCBlbmFibGUpOw0KPiA+ICsJ
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDMwKQ0KPiA+ICsJCXdhXzE0MDIwOTA4NTkwKGRp
c3BsYXksIGVuYWJsZSk7DQo+ID4NCj4gPiAtCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgcmVn
KTsNCj4gPiArCXZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgcmVnKTsNCj4gPiAgCWlmIChl
bmFibGUpDQo+ID4gIAkJdmFsIHw9IFhFTFBEUF9UQ1NTX1BPV0VSX1JFUVVFU1Q7DQo+ID4gIAll
bHNlDQo+ID4gIAkJdmFsICY9IH5YRUxQRFBfVENTU19QT1dFUl9SRVFVRVNUOw0KPiA+IC0JaW50
ZWxfZGVfd3JpdGUoaTkxNSwgcmVnLCB2YWwpOw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxh
eSwgcmVnLCB2YWwpOw0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGJvb2wgeGVscGRwX3RjX3Bo
eV9lbmFibGVfdGNzc19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+ID4gYm9vbCBl
bmFibGUpDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
