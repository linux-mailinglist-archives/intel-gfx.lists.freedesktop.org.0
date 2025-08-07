Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BBFB1D89A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 15:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F2010E841;
	Thu,  7 Aug 2025 13:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyHtQcpg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16E310E841;
 Thu,  7 Aug 2025 13:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754572136; x=1786108136;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t5uJJGV2KRmEp4vGVy9xMpPBZLzxPYeBVj4Am9jGg0o=;
 b=dyHtQcpg7RKlwEpaOXxpx5Qum0sdEbbK2r16G0dAuBz52OAF5jbgrOF+
 YzRZk7Thj35Tdkqwy3Lg0NsdB5ItoGY2p3GUguDnvnY6w4YCZgylgAWEd
 FKMuyex23QaEAxVDewSkGeKM0T9RXAhN68w3UA0daQ971yyUqNrMXeiFf
 j+EQyoBuzSU9rAeeM+3G7fvkEHf2gnugh6VwHgYYZSnKp75Hx2fIcfTby
 u9tmxRiU0Um8VZv27+xzDE9hz5VvS1CBN2QqZXPQvjRzTT8CXuYa+i3T9
 lOsWFG1RfrdSoBfBmv1UzQgGBOs9SwF2h25kg3Sdw8S/Gxj8wsJxoBziD A==;
X-CSE-ConnectionGUID: Gm14yHsQSbSZIElmAmTjLg==
X-CSE-MsgGUID: o18hp9kfSDmWTMxqAmT04Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68279822"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68279822"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:08:55 -0700
X-CSE-ConnectionGUID: 1K6pKhq4RtqZ3ZYGPtv6mw==
X-CSE-MsgGUID: lqGXn7ViR8Gyt7uOfrZQuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165433843"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:08:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 06:08:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 06:08:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.88) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 06:08:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S2VQtmywGiGSGpEh+hXQpx5pYS+x2oT+KjSTNEhFDtp6Aa3BkLmSbUJ4NNgOilGCTmzv1LkKVllR8CV14Glt8Qr7ITsrml5xvq/iCZmSVhOe+QfWZhBbTrnZDvOoMdBuczQiQ7TlsmYVTlBs8AguXpvRwYtx6fU4PGlPoJHWS3QNhTrXT+xprYoPEhf9P5qvNhJxzfuX83rz/qpc8e92FvxnqLUZAdmvf1blA/1+6Hw8cTEJEs420H9ycahdUcY67b2IuEtiNVg6QODVinLNpupOvYzyRXD6vhMegUF5FktlQ9kH27ixBKCeklOnlK+A7UjDTELuQhidy+Sje7Vinw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5uJJGV2KRmEp4vGVy9xMpPBZLzxPYeBVj4Am9jGg0o=;
 b=RL+MaUBM6lSUTzArLDQrdeaw6TmV1C/17WPpt5PgeEnyAt6wIKeMsL1NTu45L2aFiRpk4ZC1HOBndV2Q+iTE4U533RJz2RZxIGVIFoo67Om24cLbbpyihDjqKLnvSHrdK8aIl1TrUA/TD4jzK8L1WYGfJWl2x0iYSthKPNsDf5urV1zxc6eNxJLABxYnQkl9/lTZTQPyVcSCUv4QcemUCqUYzKGHZvgwRI3EY/XOjb4oG8G9LLGBkEloDa0n7hTZCI9ojt4xqWPIywYW/O7fYhs8Trs01DbP9Fhz4yn71JlzqCBJclaMxVqALFuybEN8yzyiuczjl/18Shm3Afa42w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA1PR11MB8810.namprd11.prod.outlook.com
 (2603:10b6:806:468::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.17; Thu, 7 Aug
 2025 13:08:52 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 13:08:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 12/19] drm/i915/tc: Validate the pin assignment on all
 platforms
Thread-Topic: [PATCH 12/19] drm/i915/tc: Validate the pin assignment on all
 platforms
Thread-Index: AQHcBd+6+Co4jAHVN0+z0haLo+k/4LRXLQNg
Date: Thu, 7 Aug 2025 13:08:52 +0000
Message-ID: <DS4PPF69154114FBE4DD170963F75188AC9EF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-13-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA1PR11MB8810:EE_
x-ms-office365-filtering-correlation-id: 81a10d85-a0ba-4520-0fc6-08ddd5b38ebc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Uy9ETG15dyt0V0VQRE5yL2dSM1FMT3pxaGJyV3RKL3RwbGdld0p6a0U0OGpS?=
 =?utf-8?B?bHJxSVBuTWtrT1lsV3hVSDF5NlhOTTd6NkFMVkQyQlZoL3cxQWpSaFBqNlVC?=
 =?utf-8?B?ZmpiTVZvT2NKNDRoa2syT3NlanBBRUhDU0owczIwY0htNEcwMy9DVjZob2dU?=
 =?utf-8?B?V0phTHEzSXZSUUJBbDJKeDZyNW1lbTQrbm5WenJ6RjZ5SWdlTGVhanN3V0Ns?=
 =?utf-8?B?MDkrUlRjd0Q3bVZIL0xTcnBzTlFXZW41N2RtK2p2SlJKSXY1L3BrWURFU0ZJ?=
 =?utf-8?B?dUx2aHltZ0ZpYnh0b0xocG1zbVZoNE94dWl1TURkU0NnbkxXdzR3djZsd1Vn?=
 =?utf-8?B?T044emQ2eEVjV09oNVpFalA3em03L2pXbVNDUWhrd2dHZDdqVXV0VXB1RnFo?=
 =?utf-8?B?WWxzRmFJalFNV3V0NTZ1S1E0RWNuZ1hIc3BBMFdxVURBdjlxdU1URlZJZG9H?=
 =?utf-8?B?ay9FR0hzN1JpVk1MNTRBa0JvZDljRk5nWUIrWmt4WWJDbXQzWmdmWjBjZUFP?=
 =?utf-8?B?ZFpubk1NR2hnQzNFczVqNTR1VE52amVCMEtFQmVOLzlGdGpsRFRvR0IrRHZs?=
 =?utf-8?B?WkROR0VPUmk4MFc1ODNwMWZlTWs1MzBmaEg0SXNBTDd3RjhyV29GSTBMMWpB?=
 =?utf-8?B?TVUwTEorbHpmdjMyT1pWTFRNMVhXeWJwZDczUGFVZ05kcVVrWHJZakgyY3I3?=
 =?utf-8?B?Y3lKSUlOYk1ycGsweG1CNFhtd1lCd1NkbnFnN0EvM2JyMGZSbjNVZmRndVdx?=
 =?utf-8?B?OVZtenlQaVJLNUtVdzFkREdKd1h5Zm91T1E4YVhBZVpqNTNleTdCaS9sM1dz?=
 =?utf-8?B?eklVQ0psUW9NT1R4UnRUT0VKdTJ2NlFPclArR3BObWRQRWIwbGlJMWVSZTUv?=
 =?utf-8?B?MXh6SlRGMVVnN29sTkVTc2dQS3lGcHhyVk9mL0I3NGdKektJdGxxN3lWMWJB?=
 =?utf-8?B?dVVwVW1UVm5EdkovbVFhakRoRzZCMmp0MzZhUS9kRUhMOUxrQjcydGdnRE41?=
 =?utf-8?B?d2ovcmhlM09VK0R5MndtMjFxSnVHUjY3eXp6cW9CVTBzZWNxUk03NXYwa2pX?=
 =?utf-8?B?NC9Nc20zbmpoRmJXRlJMeGRYR1JDc1dGeEVTUTR1RXlUTlkzMXFObVNibkZy?=
 =?utf-8?B?d0ZobHFVSkRlbXVBcVFyM3R5UmFNM21YNzVCNUY3NTlLcFNHMFVpOVU0TXV3?=
 =?utf-8?B?bWNnUWlUbXZHV090ZE5VcXhnSU5DelFlaERDNFJHcklWU0dyV01SRDlwdDJz?=
 =?utf-8?B?d3BwWmVUajR4K1J4eFlSWjdZdlM0R3ZnNTBIbFA0RmZNNU0wS2RLZ0xqYU93?=
 =?utf-8?B?RFJQak53OTJmNFlyTkFmWXVFUWRsVkxCSkVIU0JVVjJ2WDM3cmJ4cTdZcXZL?=
 =?utf-8?B?K2RqNTFtY0E2TnpiUzhIRFllK1phSlNuODd0SlhwRlFIRVVTUzB2TmMxVys4?=
 =?utf-8?B?VkwvU1FOeWxWMHNzUGFMcm5HU1Q1clhOVXMxZFU5ckFjZSs0Mjdic3RyeGls?=
 =?utf-8?B?c0tZa0hxUDZYVEgvWFJabVB1eDJTVjNRZzJtaG0wMnB3KyswUzJBQldOeXAw?=
 =?utf-8?B?ait6TUdoTzhoaDdQU0J3ZEVya2VnSUozVG1vSE4rNDBtN0xjdWVydTFSbTBB?=
 =?utf-8?B?UXVJTGt2VGo2djNTNVRKYUxEcVFhaUI5ckpuejVpanozSkFXaUJFeEtiaDdL?=
 =?utf-8?B?V1dFM0tpVkFNNG41SjRYTTdUMUVvdVdMOWZXVkE5emZRU29zZWdaVGRmanFo?=
 =?utf-8?B?bk1RdXI3ZXIrWDRVWitpaFRNeWtQMUNOQ1E4L2ZRdi9HUjNqWU5rRTFsVHlL?=
 =?utf-8?B?bTBhWU95NmlhRStUM3lnbEx0NnhDcWlLQXBDeVd4VnJ0SjN1dWJTUkhJVVlk?=
 =?utf-8?B?c1BEdWRrcmtQTW96aGFRS3d1UDNielpaMG9vQUNBRklFcUkvK0wwVDNSN25G?=
 =?utf-8?B?a0VNN3lwZnRFS1ZmWHRLakZCcW1Seks0TGdOVG1hdzFDdm1YWmdCZmt1NTgv?=
 =?utf-8?B?QnpTTjlxQjN3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXFhcXdhM3RTWVY3dDltejNFNXVjbEZpMmsxTEoyVHlkYWo5a1BJWXNucWNw?=
 =?utf-8?B?aHpuKzMxNUZaV2l2QU83N0Y0VlY1YnJXaWRuT1BSMDZObndNam5CRVQvaVNI?=
 =?utf-8?B?WFNkT0o1V2xjQWdORWNSSm1YYXFwYmw0d3hveGlpd1B2L1c4cUpaMlVITEta?=
 =?utf-8?B?NmI2dzJCTXVGb2k3bVk1VGlqNlNsb1FVTFM1alorL2NreVlKUGJQRjJFTjZv?=
 =?utf-8?B?N2pYUTRlVFp3SnZnS2Zrb21hQWdxRXdwaWdzZzVOd09vd3J5OWUyMHFmSi9Y?=
 =?utf-8?B?cHVuYTdMZkxtZmd0WEx4UWExV2FRL3JUOTQ1YzlmMUIvZ1BzcVJ2dENDbENn?=
 =?utf-8?B?WEc0dWwrVmFWMHpFemlEd3lKWEcrY0xERHJWSzRKRUxiOXZPUktFdW10THA2?=
 =?utf-8?B?eTNZU3NuSE5qdk9lajVtaWQ4NTdqUE5TTWRTeVlnYTlQdHljNzJhaWh0RFdv?=
 =?utf-8?B?Q1dGTVhzeE9yZGo0NVFvTWorMjUrbHlMd1o3Nnp1YkJYQjJnSXRuenFFNVk4?=
 =?utf-8?B?WDE3UFdSSWVXSkQvUzF4dnl6MTlEcXRkeHdPTFZOUFpuSWVyb2FtZ0tub2x3?=
 =?utf-8?B?T0NXK2V5UGk3eFpFc2RCVEh3UUJoVUNCL1ZFcmFhcm1xcnM3bW5zNE5RN3Fw?=
 =?utf-8?B?SE5HdzBrN2JkRE1DYi95RkN4QW52YkgzTTlENi9LWHJiMlUxcDhPOXliS1lM?=
 =?utf-8?B?SU1CdVN6Z1dwbHJsTGpIc0d3eElQeUZWNDVENEtUaVNXWmJ3a2hvTmZMNGE5?=
 =?utf-8?B?TzhhRjgrczFUZnVkem9XL1d3eVFaOXJudk5Xa2I0KzVuY2xNaTh6NnF5YllV?=
 =?utf-8?B?ZXFaWmZ4SksrV1ZNcGh6YUU0azJlWHRJQTVITGtxV21IN0dUSHJjdHREbXdw?=
 =?utf-8?B?UkdMTG1ONWtCb212a2oweXNUNGpxN3hyaWxpTFJmRDdiUU92VFUwQWZZYW9n?=
 =?utf-8?B?VGlzMEx5MVVHZXkyVm5Ya3hTMU9PblRXeVpkM2c1cDNGS1FHNEdGYVNhUHJo?=
 =?utf-8?B?ZWJOcjkxZ21UcmNBNitHWUJBVEt5OUp2Q0FURUZHNlFSV0w3OHYzNmJsbktw?=
 =?utf-8?B?S1RrRVdOaHpQOVdTTG5qTHNlZXJKaEVLUW5vdWY2RHBVWGdqL0JMMzRTYno0?=
 =?utf-8?B?WWhYd0htQTJEcXVEaDA2eXZZM3ZNSmphaEdHanJwbngvaDAxMUx6YmNTVWR3?=
 =?utf-8?B?VTE2cWxYS1UzK05iZHpCc0ZQVzJFcDFrTS96WjNFT2NqVTkzR1d6TXhLMTY3?=
 =?utf-8?B?RlU0TzJUdWZmMkU4dGVia0RWVHZ2NVEvUU9SWXgvd3BjMzRCL1E3N2dVVVZJ?=
 =?utf-8?B?M2pRNm9TdEY1ZExHSFZJM0tnWTEvRkNWUkJNaW1RODV0a1h4amN4VnI0VVhN?=
 =?utf-8?B?VHB3dVI1dzJvanJpK2RRNkV1NmExVTdJMEJxdk1ncTZYRnBCSDh3bmxOem9P?=
 =?utf-8?B?a1kyUWc3N2c1ZzNKVERqYjBNSkFON1ZHVkZuUm1EQ2N1aFZtZWxFWDYzYVUw?=
 =?utf-8?B?Vi9HVldKQUZ2MWNDMkJXTStHQStad0VhbG1XR0RlL3JjTng2eTNTMzh1R3pw?=
 =?utf-8?B?OHRsZVY1TWdIMFEvSTdqbURyWEFRelltNnI2TzVkYTJmSDltKzd5ODVmalRl?=
 =?utf-8?B?NkZHQ0cveDBncnBFdWVoM3VjSU1oTE5WbENGNGpNOWJ1MUxRYTRRL3U3UzVa?=
 =?utf-8?B?ZHRMN3h6bnFsY0R2RmNTazJycjh1SVVDTVI5QWVJblE4MnlBWVhBZCs0K25C?=
 =?utf-8?B?ZFZZWGQrWStoT0k3OHk5SllKNHRMRVVzamhtQ3NwWVpqNDFwR0YwcU1wL1ln?=
 =?utf-8?B?eVNsNFM5bkhTbEU5TTVITEFYbGN6Myt6c29ZM2FiakViSmtqU3ptOHZaR2Y2?=
 =?utf-8?B?cUh1dlMzTzQwbDA5OWFYSHUzNkZRc2t4Mm9EV2l0RHRVN050clIyQ1NlY0lE?=
 =?utf-8?B?dkp5dWxYb0w3QkxYaWF0TUpVSjlzNkFBeCtGZTJrQ1F1ZzdyS01MN2lBK1BV?=
 =?utf-8?B?emw2T20xRkh3WVpJQmUxL0E2NGl3ZDZSM09ndUpITTFkYWdxdVNhaWo2UWYz?=
 =?utf-8?B?OUJwZ2ZYRW5vTDF5QXk5bVBGQ21OaGIvQlpnMkJtUi9ubUFPSW00aTVnQlBy?=
 =?utf-8?Q?bUWjvukxmLsU5XRZS+DxMn3o0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81a10d85-a0ba-4520-0fc6-08ddd5b38ebc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 13:08:52.6622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V7nQUtJIlyoHJO8E7uOeYzGpAVep+7SXV/CdWAoZ+FR/nmAKyu/tBjONmNsFHUkmRNUJqHcPoBt547D+TwximA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8810
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxMi8xOV0gZHJtL2k5MTUvdGM6IFZhbGlkYXRlIHRoZSBwaW4gYXNzaWdubWVu
dCBvbiBhbGwgcGxhdGZvcm1zDQo+IA0KPiBWYWxpZGF0ZSB0aGUgcGluIGFzc2lnbm1lbnQgb24g
SUNMLVRHTCwgc2ltaWxhcmx5IHRvIGhvdyB0aGlzIGlzIGRvbmUgb24NCj4gTVRMKy4gSUNMIHN1
cHBvcnRzIGFsbCB0aGUgcGluIGFzc2lnbm1lbnRzLCB3aGlsZSBUR0wrIHN1cHBvcnRzIG9ubHkg
dGhlDQo+IE5PTkUsIEMsIEQsIEUgcGluIGFzc2lnbm1lbnRzLg0KPiANCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCBkY2FkYmY3
YjNkNDBkLi4yMGQwYmM4MjU3ODYwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+IEBAIC0yODIsMTcgKzI4MiwzNSBAQCBpbnRlbF90Y19wb3J0X2dldF9w
aW5fYXNzaWdubWVudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZGlnX3Bv
cnQpOw0KPiAgCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQp
Ow0KPiArCWVudW0gaW50ZWxfdGNfcGluX2Fzc2lnbm1lbnQgcGluX2Fzc2lnbm1lbnQ7DQo+ICAJ
aW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+IC0JdTMyIHBpbl9tYXNrOw0KPiArCXUzMiB2YWw7
DQo+IA0KPiAgCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihkaXNwbGF5LCBQT1dFUl9ET01BSU5f
RElTUExBWV9DT1JFLCB3YWtlcmVmKQ0KPiAtCQlwaW5fbWFzayA9IGludGVsX2RlX3JlYWQoZGlz
cGxheSwgUE9SVF9UWF9ERkxFWFBBMSh0Yy0+cGh5X2ZpYSkpOw0KPiArCQl2YWwgPSBpbnRlbF9k
ZV9yZWFkKGRpc3BsYXksIFBPUlRfVFhfREZMRVhQQTEodGMtPnBoeV9maWEpKTsNCj4gDQo+IC0J
ZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBwaW5fbWFzayA9PSAweGZmZmZmZmZmKTsNCj4gKwlk
cm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHZhbCA9PSAweGZmZmZmZmZmKTsNCj4gIAlhc3NlcnRf
dGNfY29sZF9ibG9ja2VkKHRjKTsNCj4gDQo+IC0JcmV0dXJuIChwaW5fbWFzayAmIERQX1BJTl9B
U1NJR05NRU5UX01BU0sodGMtPnBoeV9maWFfaWR4KSkgPj4NCj4gLQkgICAgICAgRFBfUElOX0FT
U0lHTk1FTlRfU0hJRlQodGMtPnBoeV9maWFfaWR4KTsNCj4gKwlwaW5fYXNzaWdubWVudCA9ICh2
YWwgJiBEUF9QSU5fQVNTSUdOTUVOVF9NQVNLKHRjLT5waHlfZmlhX2lkeCkpID4+DQo+ICsJCQkg
RFBfUElOX0FTU0lHTk1FTlRfU0hJRlQodGMtPnBoeV9maWFfaWR4KTsNCj4gKw0KPiArCXN3aXRj
aCAocGluX2Fzc2lnbm1lbnQpIHsNCj4gKwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX0E6
DQo+ICsJY2FzZSBJTlRFTF9UQ19QSU5fQVNTSUdOTUVOVF9COg0KPiArCWNhc2UgSU5URUxfVENf
UElOX0FTU0lHTk1FTlRfRjoNCj4gKwkJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+IDExKTsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBJTlRFTF9UQ19QSU5f
QVNTSUdOTUVOVF9OT05FOg0KPiArCWNhc2UgSU5URUxfVENfUElOX0FTU0lHTk1FTlRfQzoNCj4g
KwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX0Q6DQo+ICsJY2FzZSBJTlRFTF9UQ19QSU5f
QVNTSUdOTUVOVF9FOg0KPiArCQlicmVhazsNCj4gKwlkZWZhdWx0Og0KPiArCQlNSVNTSU5HX0NB
U0UocGluX2Fzc2lnbm1lbnQpOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiBwaW5fYXNzaWdubWVu
dDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IGxubF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gLS0NCj4gMi40OS4xDQoN
Cg==
