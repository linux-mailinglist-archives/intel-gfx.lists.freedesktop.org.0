Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21AD9B48CB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F4110E256;
	Tue, 29 Oct 2024 11:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bE8LXRCO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DA610E63B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 11:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730203099; x=1761739099;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+K8t76LbfhQBk1T5W2dXZeB0ypUqWGall5nNAo7vMy4=;
 b=bE8LXRCO6t0htygd5u9xAtuYlEUaoUntvp2EkY5nkIT7FMAnxrTeQwh7
 lTZHQPGylgtb1c1Stx6/nWBsohbp1AxwzLKcRheu4ZvX0llQLBCKEs3Px
 +5oPHhKT/Xyq/1IThNxLNG4P4wxMdMTiflsChVePkN46N4xLWsC6xRIHZ
 zacds1IisnUxJUffd3JBOWW7lXTaCt1lGNkTRiAFInftg+Oeg6t7S1tfJ
 39V7R1wR4iR2fMKFXHMRluQYkLY4SUv2d1wFs3DyJhpfABjbREXBqdaW5
 sCIkcDbeLgi4/zYBnj/To7yhMZUm+ySBp4xoFQz+2FCTwXBjNNun/NHwA A==;
X-CSE-ConnectionGUID: 3jvhXE5NRESKNadHadO9ZA==
X-CSE-MsgGUID: Fqh9CI/oT8eAnhHHhbtTdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47299726"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47299726"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:58:19 -0700
X-CSE-ConnectionGUID: Jh7L3/zoQxK0nZuXOT+1ew==
X-CSE-MsgGUID: upZhegEzR7Ou5ohKKueZrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81847561"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 04:58:17 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 04:58:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 04:58:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 04:58:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RvP8rt9+5IIkseuRNYw6MS8zavzoDSFey9Ne6yYmnP6d7kkLGeeI55ML5Iu1dBbZGLoNdo27UHqInyBXE5ClcyBOOH4l9bLFaGisYx7WaQNPIEWtux5ZSmQsCywXkPihqy3MG7mZfxdxY0pHZlSGDSxIHq1rarGGr+eXRCYmOGma0zxmKYWsnbNk3ty/QoXITfP2hmKQX8fePVod7DuJiZthGs39SbpjKw4D2MaROoSynUrRwq93USXXH33rvEROnh3JjrL/FoHW03ZUx9y2rg0oLs3vs7mdM9fArC1PhkP6OR3+mzhvo4B15xN04JQblb4uPrlxWDNW0WUqOz3kzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+K8t76LbfhQBk1T5W2dXZeB0ypUqWGall5nNAo7vMy4=;
 b=bQDY1CCARjwfsilZ5DYaxJBX1I5CHmwUwXCjiR+EfGil0bmeS4Bor1xsAgoVWXu6YMmyHh3AYHmchnV56MYIrs6VTNUFIp7M5e5TrE9w3AUTWUKsCyy+W4uXQt/uhrLqeer8S4I3Z5G5IPuIUbpmqX+Vh8xyYuAHtPuPhJi+XimLLnP6APG/0oMUah/rJwqbXIz+Z4/q18GjZuz+xUCVJZ/f0Mo8NpfvqXCcAuLKQd/6M+x0U6RJRUFDtHUzuIBLGk1wXLCn/DHmgvoaqWDIHpP5nbdBIDPmQvUHHQaG8+cRGz68DYgXUuOX4YgH8U8+xDqWTa3jweHlF9zSyxFnMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 11:58:08 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Tue, 29 Oct 2024
 11:58:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Index: AQHbKTpVTy+cAygmDEKTn3AmE2m0nLKcT+IAgAFPUKA=
Date: Tue, 29 Oct 2024 11:58:08 +0000
Message-ID: <MW4PR11MB7054BA822DB02614FFF0C354EF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
 <173013065467.3514.124676025383491465@gjsousa-mobl2>
In-Reply-To: <173013065467.3514.124676025383491465@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: 2bd0ea85-1ad4-4ec9-95a4-08dcf810f443
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TkJ4UFF5ajhhbTdmZGptYVQ1S28vK2lxbTg0YTNDTzNYTHJpWmNVcTRzTTBT?=
 =?utf-8?B?Z1UvVHdnL1p6ZzZNV2t1b3RQYkwwekJsY3dHOGE5QnBHSWdLeHpZemx6YVlq?=
 =?utf-8?B?RVpKVHRyR2RBVXJqbkhmeFlNSi9WT2JjbE1jWlRHZXRzRG5GS0kyL1Y2dmRm?=
 =?utf-8?B?L2lReGJ5am9oVGlPRW1sWVNUeU42ZXBjQ09BWTZpSmRIWUM2eW1XOCt0bzNw?=
 =?utf-8?B?YjgwNFQ2NVRvQkt3TkticFVHb0Jtb0JwbWdScTNBRlJFNTFKa29DZkN3ZzNB?=
 =?utf-8?B?L0xVUi9ITUZFZ1lqWlBSZVB6cUZPSkVXblJRa3pKc2o5dkZnRTcvdUFQWWQ4?=
 =?utf-8?B?aTV2aXk5YkM1N1pSWDJpYWJPalBYNHRqZktKZkY0eXFOTkxuK0F3Y2E2bWNp?=
 =?utf-8?B?WHRPOGZFeE1sVHo1K0ozSEFma3VzajNWaGhBVTVQZWdnelFIaDB3WEJaaTgv?=
 =?utf-8?B?OVVwWHBTK28xaDJuMFB6NklFS2RTZ1BvTHNZZWVTa1ljNjMrWG0vTlBIVzZ0?=
 =?utf-8?B?TkROZG9FdDV5NS9lT2pDWVllT3haK0dnUTRLeUN2eTFWQ3hEcDhraW9qTS9u?=
 =?utf-8?B?dkVBRXhUM29zTXBNcGZWWEV1ZGdhUDZ5dHVudm81V053NWJkdjNOaXdYaS9H?=
 =?utf-8?B?OENBcVVpMWZnT1NKWGNWQlhhM1A3NlErWXQ3RWdlUXZabEREQm1mWjQ0RUF0?=
 =?utf-8?B?TVMxTVpGVUF3Zm9KZk9OczNHRFVrRHNKREZMOStFK1d2ejc4MDlySFhkU0h2?=
 =?utf-8?B?WUtESGZPT21WZVNpM3dvWjl4b0cvZVg5UStTYnpnaEtBWlhoOStHaC9rZlFX?=
 =?utf-8?B?cGlmaTR3aTI1S2JUblNLVUpZQnNudmsxUnRvY1VTMkYrckliWTNqN2hUSnF1?=
 =?utf-8?B?SkdYWFVkU1RueVdMcHdkdWhiYzNENTJQRWRPTksyeU4wOHJLeFBGYS9qUkVK?=
 =?utf-8?B?bzJqakZqcm5idUtMSWVRSm1KME5DM1RTY05yMWFGR0k1WFFTSVd4KzdqeG5w?=
 =?utf-8?B?bEhybmpTcUdhTVN0b1lXVWtKMFdtc255ZjBBUUFCY2VKU1JpOFlzNHpuT0NO?=
 =?utf-8?B?bWVKZEZ6dHlNcVA2YmpJRDZEaVpSSmJraksrZzJNc0NTTzl4MHRQSlMrNTJm?=
 =?utf-8?B?SkV3RTdmSkIxS29EOGtKdzhxTDZNMDJUUmFtL2dHUEJIRS9BSytTS2NFcGM0?=
 =?utf-8?B?TkhSSElsRVdIYjJtK0JTWUN2bnJNZnFzS2RISmRBc3UydDlSbjdVaEhFSVQ1?=
 =?utf-8?B?U21zcGJqU3NiVmdibEdrSWhTejhTaVdENGFJaXFTMmNWWSt4Yjk2czVtc0xH?=
 =?utf-8?B?dDBmdSs0Rjc5WFVPQjIwZUNnT1BSYUswZXZDQ0Zmd05NTVdGVTI1T1NxYUo5?=
 =?utf-8?B?cVgvTVNnVVNaRGNtVTNQNmpuQzJYMVBBV0NGOURnUUlsNE5hUXpNOWJGSEJC?=
 =?utf-8?B?enZrRUVkY0hjdE03T3EyYXp5MjlCSkpMdFlzeTI0VHFBZy9DVUZMNlN5U0U5?=
 =?utf-8?B?aElCQ2ZIWGxBZjh6WmIrS3BDaFNrOWJHMVdQSVc4Mk1jU0hFZTZwYlZtQlVi?=
 =?utf-8?B?M0dWRTBSRlNBVE9JNGVIYWRQMk9tRktjWFpML0ErTHZXUVB0bXdxb283VnRa?=
 =?utf-8?B?emVsenpLNGFsbi8xa3dZV2J3NHZTN3lNZ0NkUmlQQnptckpnVFc1aVpxNWdt?=
 =?utf-8?B?ZVVOeFpoZXhCR0ZJbnJuVks5empPT3ZxZHZ1bHh0Z1lsc2JabXVNaXYvRTNw?=
 =?utf-8?B?NUQxcWJFOGFUOHlFNG9wazBDOWVtVVpoZTVLeGl6RGtkd3BGckRldWQ4b1Vx?=
 =?utf-8?Q?FOmevFeOpORIQDnAXYq26vDwtI96uaU7/J5IM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWltR1kxNCt2M0t6bkZMWDdveXp4NjdMMVNSeWVGMTByR3NOdXJjZGsxdnhR?=
 =?utf-8?B?Q1hEbzc4L05tUUpRa1hYeHhUVWtSbEFiWkFrUit5blJMeE1UVERNMHlVS1dh?=
 =?utf-8?B?eGR1TEpXTSs0WkR3c2RRaHZRMTdIZUpLS2N6SGNkc2MxU0t1cXJPcWVIczBD?=
 =?utf-8?B?MTNxZjh3NEFYamk3MnZTbGMva0F5dTdPTDFsZGhhY05HWE94UHp3OTJmYm9N?=
 =?utf-8?B?S1gxaUMyYktnNmpuTlFxWFZZZ1B5aWxjYkVCZlkxdEVJZE1FZ0J1NDBNSFF2?=
 =?utf-8?B?S29rM3VIMnRLUWJua0U2Q2o1ZWxNL2ozN0FFUi92OWV1UWorczBwa25oTDdy?=
 =?utf-8?B?ZEFjSm82U3FTeXh6SEtvK2tGUVIzL0gzcmlrSkxZQUJLLzJHdVUyWWdRZG5N?=
 =?utf-8?B?T0lqMkZVaXljS0sxM1Nodm15NVRMeVdNc29GbHoyYm56aXl6UnQwS1hJUzlV?=
 =?utf-8?B?NThkak55TDlFMzdESU92YVBJbG92KzloZ0FDTzl1YW9KRUhDTUZIUnk2ZWMz?=
 =?utf-8?B?aWgyRm5PNk5YM0lnUDBqZGhGNVNQTzFWd0pLMXNaQVgwdE9OV3pZVmNJd1dp?=
 =?utf-8?B?WVo3MFRMcHpNTFFNN2wxRU1kNXZZRWpvbzhFem1NS1BQT1JRUjNxcU5SM0pZ?=
 =?utf-8?B?RVZ4WWhMZzd6aHNxYklkNzlpTFVORVAyNStsS1RCdE00S21FTy9pYlVCMWpz?=
 =?utf-8?B?SXdDcEhLUDlHbSt5SlVYR2RVVjQrR0FTbEhyVnZOUU50V3l4ZSt6K0Z0N21F?=
 =?utf-8?B?SUNxa1F0T0lmN0UyZGJwSDVlVWhRR3dBUUxaK3RudVlGeXkyYlJUOXhYZHho?=
 =?utf-8?B?N3o5Y0RQVDlCNjB3a3dwNVI0T0N5OWxaRFUxajZSUlF6RmVwUW1wMTFQOWNX?=
 =?utf-8?B?aXFEOGI3QmlnMUthUjJBUWRhL0t0cFQzcSswNFhXaDhzRUpLL29NczM1ck8z?=
 =?utf-8?B?b1IwV0dJL3NWRm1zNXhEMnd2NGtWYkZQSTNGUEhaSGVvbm55YWlFQXRnK0NV?=
 =?utf-8?B?MXpncnpFMUtRZWx2Rkd6WW1xUlJKcE9iQXU2S0JHYUFvamVSU1d0c3hiVUZs?=
 =?utf-8?B?V0p5aGJPWTZTR3NhNVZ2cnh6NGZyM0wzcUozUkdHcnFYRkFRcmd4UU1lZTVR?=
 =?utf-8?B?MHdFSXMvVkFwY2NTYkdNc2R5R25QZE8rL0I4UlVNdG8vbDFkTnVicVp3ZDhz?=
 =?utf-8?B?Sll1RzBZNDdmVFpuS01LNDdJTjBWY1B3b2VUZVIyb3lraFBrcng3bG5XS3c2?=
 =?utf-8?B?OEJScHQ3WmRKZTAvZW9OZHdNczBHRWgvdVJENzI1ekxqRm1qbVVzTVlGMmhi?=
 =?utf-8?B?ZzFMZFdXTG11RlNXTWZWdDVkUFhSb2NkMmFBSWNPSEZXS2gyNUhRMjIxVGhN?=
 =?utf-8?B?RWhLRmtSOFVsMCtKcUlnRDVCb2J0RnVwYUNuc2lBay9Gbk0zcm9LVHoyUXBW?=
 =?utf-8?B?QnpTcjN5SEpORittUERpQzJiTGhsUCtrbnowM2Iyb3NiQTFHQ1NJR3dRYXAx?=
 =?utf-8?B?cXFYNkFsRGJQaEFtZ0IreHI1YlJRcGpTY1ZjVStlWUxsZ1o2Q3RtckJjZDZF?=
 =?utf-8?B?YVBOb21rSzdvZWhxZHEzNDlnc1hSMWYxQ21LcTg0UHBNRm01YVFTeVJqNll2?=
 =?utf-8?B?OGU4TzQvSE5NMmtIQmZuQTNFU3ZLakR1UnMxTjdBSUNBOUpkS3pQNW5Ib1Zn?=
 =?utf-8?B?TTZQOXdNM09XVzN1K2lGYXdyTTBNNTF5NCtZd0gwQ0Z2N0xOQTRCZk1sakw4?=
 =?utf-8?B?aFZCV3JHUjZGUll1em5lVHZpb0RsUEFqZUxaaEthVzJQaitLRkY1TDdhZjAx?=
 =?utf-8?B?RE01S1NMRkg4d2RwMm8vOHQydjdySlBFNDErWkxQSlJyU3E1b3Zqa0prNG9i?=
 =?utf-8?B?d3IzUXlUcnVMQUNlbTQ0MWtza1FIVDM4MWh6K2FHazdwTVU5MGxKOXZhaUNW?=
 =?utf-8?B?UnlqODkwMXhyUll1Z1k5cy9PSDhMcEVWUGpWWWI4WWJNeFBUN05FYWtrM2dI?=
 =?utf-8?B?NUVTWXFXTStjamwwMEFqUFFvSnFUaTFwYlN4Sjk1alRabG5aSHZ5OWJjWFY0?=
 =?utf-8?B?cDhpd2dPOEE0eEpjZXAvK3dsRE5ITkloeitYOHp2K3RzdzRUMzk5TWR6SFBi?=
 =?utf-8?Q?3y4z7yKsQN/CvgqpzSpNQhk3m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd0ea85-1ad4-4ec9-95a4-08dcf810f443
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 11:58:08.0400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bDLtTVdsG40plZnEblB6y9PyDBFipKcLsqbWvu0nQ70u++t7MjfcgpKXI1nj8fzlzgTrYMHD228DLoURYOhKhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgMjggT2N0b2JlciAyMDI0IDE3
LjUxDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS94ZTNscGQ6IFBvd2Vy
IHJlcXVlc3QgYXNzZXJ0aW5nL2RlYXNzZXJ0aW5nDQo+IA0KPiBRdW90aW5nIE1pa2EgS2Fob2xh
ICgyMDI0LTEwLTI4IDA5OjU4OjM1LTAzOjAwKQ0KPiA+VGhlcmUgaXMgYSBIVyBpc3N1ZSB0aGF0
IGFyaXNlcyB3aGVuIHRoZXJlIGFyZSByYWNlIGNvbmRpdGlvbnMgYmV0d2Vlbg0KPiA+VENTUyBl
bnRlcmluZy9leGl0aW5nIFRDNyBvciBUQzEwIHN0YXRlcyB3aGlsZSB0aGUgZHJpdmVyIGlzDQo+
ID5hc3NlcnRpbmcvZGVhc3NlcnRpbmcgVENTUyBwb3dlciByZXF1ZXN0LiBBcyBhIHdvcmthcm91
bmQsIERpc3BsYXkNCj4gPmRyaXZlciB3aWxsIGltcGxlbWVudCBhIG1haWxib3ggc2VxdWVuY2Ug
dG8gZW5zdXJlIHRoYXQgdGhlIFRDU1MgaXMgaW4NCj4gPlRDMCB3aGVuIFRDU1MgcG93ZXIgcmVx
dWVzdCBpcyBhc3NlcnRlZC9kZWFzc2VydGVkLg0KPiA+DQo+ID5UaGUgc2VxdWVuY2UgaXMgdGhl
IGZvbGxvd2luZw0KPiA+DQo+ID4xLiBSZWFkIG1haWxib3ggY29tbWFuZCBzdGF0dXMgYW5kIHdh
aXQgdW50aWwgcnVuL2J1c3kgYml0IGlzDQo+ID4gICBjbGVhcg0KPiA+Mi4gV3JpdGUgbWFpbGJv
eCBkYXRhIHZhbHVlICcxJyBmb3IgcG93ZXIgcmVxdWVzdCBhc3NlcnRpbmcNCj4gPiAgIGFuZCAn
MCcgZm9yIHBvd2VyIHJlcXVlc3QgZGVhc3NlcnRpbmcgMy4gV3JpdGUgbWFpbGJveCBjb21tYW5k
DQo+ID5ydW4vYnVzeSBiaXQgYW5kIGNvbW1hbmQgdmFsdWUgd2l0aCAweDEgNC4gUmVhZCBtYWls
Ym94IGNvbW1hbmQgYW5kDQo+ID53YWl0IHVudGlsIHJ1bi9idXN5IGJpdCBpcyBjbGVhcg0KPiA+
ICAgYmVmb3JlIGNvbnRpbnVpbmcgcG93ZXIgcmVxdWVzdC4NCj4gPg0KPiA+djI6IFJlbmFtZSBX
QSBmdW5jdGlvbiAoR3VzdGF2bykNCj4gPiAgICBMaW1pdCBXQSBvbmx5IGZvciBQVEwgcGxhdGZv
cm0gd2l0aCBhIFRPRE8gbm90ZSAoR3VzdGF2bykNCj4gPiAgICBBZGQgVENTU19ESVNQX01BSUxC
T1hfSU5fQ01EX1JVTl9CVVNZIGZvciBjbGFyaXR5IHdoZW4gd3JpdGluZw0KPiA+ICAgIHJlZ2lz
dGVyIGRhdGEgKEd1c3Rhdm8pDQo+ID4gICAgTW92ZSByZWdpc3RlciBkZWZzIGZyb20gaTkxNV9y
ZWcuaCB0byBpbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+KEd1c3Rhdm8pDQo+ID4NCj4gPlNpZ25l
ZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4tLS0NCj4g
PiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmggfCAgNyArKysN
Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAgfCA0NiAr
KysrKysrKysrKysrKysrKysrDQo+ID4gMiBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHlfcmVncy5oDQo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeV9yZWdzLmgNCj4gPmluZGV4IGFiM2FlMTEwYjY4Zi4uZTQ2YzA3Y2QyMGUwIDEwMDY0
NA0KPiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3Jl
Z3MuaA0KPiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
X3JlZ3MuaA0KPiA+QEAgLTM2Myw0ICszNjMsMTEgQEANCj4gPiAjZGVmaW5lIEhETUlfRElWX01B
U0sgICAgICAgICAgICAgICAgUkVHX0dFTk1BU0sxNigyLCAwKQ0KPiA+ICNkZWZpbmUgSERNSV9E
SVYodmFsKSAgICAgICAgICAgICAgICBSRUdfRklFTERfUFJFUDE2KEhETUlfRElWX01BU0ssIHZh
bCkNCj4gPg0KPiA+KyNkZWZpbmUgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EICAgICAgICAgICAg
ICAgIF9NTUlPKDB4MTYxMzAwKQ0KPiANCj4gVGhpcyBwYXJ0IG9mIHRoZSBoZWFkZXIgY29udGFp
bnMgZGVmaW5pdGlvbnMgc3BlY2lmaWMgdG8gdGhlIFBIWSBjb21wb25lbnRzIHRoYXQNCj4gYXJl
IG5vdCBtZW1vcnkgbWFwcGVkIGJ5IG91ciBkcml2ZXIsIGJ1dCByYXRoZXIgYWNjZXNzZWQgdmlh
IG1lc3NhZ2UgYnVzLiBBcw0KPiBzdWNoLCBJIHRoaW5rIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NN
RCBhbmQgVENTU19ESVNQX01BSUxCT1hfSU5fREFUQQ0KPiBhcmUgYmV0dGVyIGRlZmluZWQgYXQg
dGhlIGVuZCBvZiB0aGUgTU1JTyByZWdpc3RlciBkZWZpbml0aW9ucyAoaS5lLiBiZWZvcmUgdGhl
ICIvKg0KPiBDMTAgVmVuZG9yIFJlZ2lzdGVycyAqLyINCj4gbGluZSkuDQoNCk9rLiBJIHdpbGwg
bW92ZSB0aGVzZSBsaW5lcyB1cHdhcmRzIGluIHRoZSBmaWxlLg0KDQo+IA0KPiA+KyNkZWZpbmUg
ICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1kgICAgICAgIFJFR19CSVQoMzEpDQo+
ID4rI2RlZmluZSAgIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9DTURfTUFTSyAgICAgICAgUkVH
X0dFTk1BU0soNywgMCkNCj4gPisjZGVmaW5lICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0RB
VEEoeCkNCj4gVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwgXA0KPiA+Kw0KPiA+
K1JFR19GSUVMRF9QUkVQKFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9DTURfTUFTSywgKHgpKQ0K
PiANCj4gTWlzc2luZyBibGFuayBsaW5lIGhlcmUuDQpPaw0KDQo+IA0KPiA+KyNkZWZpbmUgVENT
U19ESVNQX01BSUxCT1hfSU5fREFUQSAgICAgICAgICAgICAgICBfTU1JTygweDE2MTMwNCkNCj4g
PisNCj4gPiAjZW5kaWYgLyogX19JTlRFTF9DWDBfUkVHX0RFRlNfSF9fICovDQo+ID5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID5iL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+aW5kZXggNmYyZWU3ZGJjNDNi
Li45MjRjM2ZmMDRlYjYgMTAwNjQ0DQo+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYw0KPiA+QEAgLTEwMTMsNiArMTAxMyw0NSBAQCB4ZWxwZHBfdGNfcGh5X3dhaXRfZm9y
X3Rjc3NfcG93ZXIoc3RydWN0DQo+IGludGVsX3RjX3BvcnQgKnRjLCBib29sIGVuYWJsZWQpDQo+
ID4gICAgICAgICByZXR1cm4gdHJ1ZTsNCj4gPiB9DQo+ID4NCj4gPitzdGF0aWMgYm9vbCB3YV90
Y3NzX3Bvd2VyX3JlcXVlc3RfYXNzZXJ0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiA+KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBlbmFibGUp
DQo+IA0KPiBJIHRoaW5rIHdlIHNob3VsZCBlaXRoZXIgbmFtZSB0aGlzIGZ1bmN0aW9uIHdhXzE0
MDIwOTA4NTkwIG9yIGFkZCBhIC8qDQo+IFdhXzE0MDIwOTA4NTkwICovIGNvbW1lbnQgYWJvdmUg
aXQuIEkgd291bGQgZ28gd2l0aCB0aGUgZm9ybWVyLCBidXQgSSdtIG9rYXkNCj4gd2l0aCB0aGUg
bGF0dGVyIGlmIHlvdSBwcmVmZXIuDQoNCkkgd2lsbCByZW5hbWUgdGhpcyBmdW5jdGlvbiBhcyB3
YV8xNDAyMDkwODU5MCgpLiBBZnRlciBhbGwgaXQgaXMgYSB3b3JrYXJvdW5kLg0KPiANCj4gPit7
DQo+ID4rICAgICAgICAvKg0KPiA+KyAgICAgICAgICogTGltaXQgdG8gUFRMIG9ubHkNCj4gPisg
ICAgICAgICAqIFRPRE86IEFkZCBjaGVjayBmb3IgUElDQSBJUCBhbmQgdXNlIHRoYXQgaW5zdGVh
ZCBsaW1pdGluZyBXQSBmb3INCj4gPisgICAgICAgICAqIHBsYXRmb3JtDQo+ID4rICAgICAgICAg
Ki8NCj4gPisgICAgICAgIGlmIChESVNQTEFZX1ZFUihpOTE1KSAhPSAzMCkNCj4gPisgICAgICAg
ICAgICAgICAgcmV0dXJuIHRydWU7DQo+ID4rDQo+ID4rICAgICAgICAvKiBjaGVjayBpZiBtYWls
Ym94IGlzIHJ1bm5pbmcgYnVzeSAqLw0KPiA+KyAgICAgICAgaWYgKGludGVsX2RlX3dhaXRfZm9y
X2NsZWFyKGk5MTUsIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRCwNCj4gPisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1ks
IDEwKSkgew0KPiA+KyAgICAgICAgICAgICAgICBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUG93ZXIgcmVxdWVzdCBhc3NlcnQgV0EgdGlt
ZW91dCB3YWl0aW5nIGZvciBUQ1NTIG1haWxib3gNCj4gcnVuL2J1c3kgYml0IHRvIGNsZWFyXG4i
KTsNCj4gPisgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiA+KyAgICAgICAgfQ0KPiA+
Kw0KPiA+KyAgICAgICAgaWYgKGVuYWJsZSkNCj4gPisgICAgICAgICAgICAgICAgaW50ZWxfZGVf
d3JpdGUoaTkxNSwgVENTU19ESVNQX01BSUxCT1hfSU5fREFUQSwgMSk7DQo+ID4rICAgICAgICBl
bHNlDQo+ID4rICAgICAgICAgICAgICAgIGludGVsX2RlX3dyaXRlKGk5MTUsIFRDU1NfRElTUF9N
QUlMQk9YX0lOX0RBVEEsIDApOw0KPiA+Kw0KPiA+KyAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkx
NSwgVENTU19ESVNQX01BSUxCT1hfSU5fQ01ELA0KPiA+KyAgICAgICAgICAgICAgICAgICAgICAg
VENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwNCj4gPisgICAgICAgICAgICAgICAg
ICAgICAgIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9EQVRBKDB4MSkpOw0KPiA+Kw0KPiA+KyAg
ICAgICAgLyogd2FpdCB0byBjbGVhciBtYWlsYm94IHJ1bm5pbmcgYnVzeSBiaXQgYmVmb3JlIGNv
bnRpbnVpbmcgKi8NCj4gPisgICAgICAgIGlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihpOTE1
LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4rICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZLCAxMCkpIHsNCj4g
PisgICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIlBvd2VyIHJlcXVlc3QgYXNzZXJ0IFdBIHRpbWVvdXQgd2FpdGlu
Zw0KPiA+KyBmb3IgVENTUyBtYWlsYm94IHJ1bi9idXN5IGJpdCB0byBjbGVhclxuIik7DQo+IA0K
PiBIbS4gSSB0aGluayBJIG1pc3NlZCB0byBnZXQgbXkgcG9pbnQgYWNjcm9zcyB3aXRoIG15IGVh
cmxpZXIgY29tbWVudCwgc29ycnkuDQo+IA0KPiBXaGF0IEkgbWVhbnQgd2FzIHRoYXQgSSB0aGlu
ayBpdCB3b3VsZCBiZSBnb29kIGlmIHRoZSBmaXJzdCBhbmQgc2Vjb25kIGRlYnVnDQo+IG1lc3Nh
Z2VzIHdlcmUgZGlmZmVyZW50LiBUaGF0IHdheSBpdCBpcyBlYXN5IHRvIHNwb3QgdGhlIHBvaW50
IG9mIGZhaWx1cmUgKHdhaXRpbmcNCj4gdG8gdXNlIHRoZSBtYWlsYm94IHZzIHdhaXRpbmcgZm9y
IG91ciBtZXNzYWdlIHRvIGJlDQo+IGhhbmRsZWQpIGluIGNhc2UgYW55IGhhcHBlbnMuDQoNCk9r
IGdvdCBpdC4gRXZlbiB0aG91Z2ggaXQgaXMgdGhlIHNhbWUgYml0IHRoYXQgd2UgYXJlIHdhaXRp
bmcgZm9yIHRvIGJlIGNsZWFyZWQgaXQncyBmaXJzdCBjaGVja2VkIHRoYXQgdGhlIG1haWxib3gg
aXMgYXZhaWxhYmxlIGFuZCB0aGUgc2Vjb25kIHRpbWUgYWZ0ZXIgd2UgaGF2ZSB3cml0dGVuIGEg
Y29tbWFuZCB0byB0aGUgbWFpbGJveCBhbmQgd2FpdCBmb3IgaXQgdG8gYmVjb21lIGF2YWlsYWJs
ZSBhZ2Fpbi4gSSB3aWxsIHJld29yZCB0aGUgZGVidWcgbWVzc2FnZS4NCg0KPiANCj4gPisgICAg
ICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiA+KyAgICAgICAgfQ0KPiA+Kw0KPiA+KyAgICAg
ICAgcmV0dXJuIHRydWU7DQo+ID4rfQ0KPiA+Kw0KPiA+IHN0YXRpYyB2b2lkIF9feGVscGRwX3Rj
X3BoeV9lbmFibGVfdGNzc19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiA+KnRjLCBib29s
IGVuYWJsZSkgIHsNCj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
dGNfdG9faTkxNSh0Yyk7IEBAIC0xMDIyLDYNCj4gPisxMDYxLDEzIEBAIHN0YXRpYyB2b2lkIF9f
eGVscGRwX3RjX3BoeV9lbmFibGVfdGNzc19wb3dlcihzdHJ1Y3QNCj4gPmludGVsX3RjX3BvcnQg
KnRjLCBib29sIGVuYQ0KPiA+DQo+ID4gICAgICAgICBhc3NlcnRfdGNfY29sZF9ibG9ja2VkKHRj
KTsNCj4gPg0KPiA+KyAgICAgICAgLyoNCj4gPisgICAgICAgICAqIEdmeCBkcml2ZXIgd29ya2Fy
b3VuZCBmb3IgUFRMIHRjc3NfcnhkZXRlY3RfY2xrc3diX3JlcS9hY2sgaGFuZHNoYWtlDQo+ID4r
ICAgICAgICAgKiB2aW9sYXRpb24gd2hlbiBwd3dyZXE9IDAtPjEgZHVyaW5nIFRDNy8xMCBlbnRy
eQ0KPiA+KyAgICAgICAgICovDQo+ID4rICAgICAgICBkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLA0K
PiA+KyAgICAgICAgICAgICAgICAgICAgIXdhX3Rjc3NfcG93ZXJfcmVxdWVzdF9hc3NlcnQoaTkx
NSwgZW5hYmxlKSk7DQo+IA0KPiBBcyBtZW50aW9uZWQgaW4gYW5vdGhlciBtZXNzYWdlLCBtYXli
ZSB3ZSBjb3VsZCBoYXZlIHRoaXMgd2FybmluZyBkb25lIGluc2lkZQ0KPiB0aGUgZnVuY3Rpb24g
dG8gbWFrZSB0aGluZ3Mgc2VsZi1jb250YWluaW5lZCBhbmQgbm90IHJlbHkgb24gdGhlIGNhbGxl
ciB0byBkbyBpdC4NCkkgd2lsbCBtb3ZlIHRoaXMgaW5zaWRlIHRoZSB3YSBmdW5jdGlvbiBhcyB3
ZWxsLg0KDQpUaGFua3MgZm9yIHRoZSBjb21tZW50cyENCg0KLU1pa2EtDQo+IA0KPiAtLQ0KPiBH
dXN0YXZvIFNvdXNhDQo+IA0KPiA+Kw0KPiA+ICAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChp
OTE1LCByZWcpOw0KPiA+ICAgICAgICAgaWYgKGVuYWJsZSkNCj4gPiAgICAgICAgICAgICAgICAg
dmFsIHw9IFhFTFBEUF9UQ1NTX1BPV0VSX1JFUVVFU1Q7DQo+ID4tLQ0KPiA+Mi40My4wDQo+ID4N
Cg==
