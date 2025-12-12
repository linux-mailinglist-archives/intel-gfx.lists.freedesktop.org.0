Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D7CCB8FC5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E02E10E8B9;
	Fri, 12 Dec 2025 14:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VD3cYTQ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C0610E248;
 Fri, 12 Dec 2025 14:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765550716; x=1797086716;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=6LPfgYWRAxpk+UPqUJbHPPsgS/Q55FlAS5zh9Y1RGno=;
 b=VD3cYTQ2JKvd9nr54XaQ/HpXmEpFVyZDEmXqweAPyR4KFKME09ZlVo/J
 VryHrDHshefCuDe3ysbPpbjJVNDkaN8+G2gpsEZoOAVOtd/F2haIEyyGL
 QkYzX3JY+HIxv/HS9G/xcMc43shs4b3t7y18lL0Etb2aFDBaY6t9heal9
 2BTaakI//Pewjp1/ArwiKP3HiKX3Oullbe9B4Y8qM3qDaX6DTLg2w1Gu8
 mUy5t1xfKs2Qu/r9fhnlGgXQNok4LmRTMP6d8+jr8vJ36bPqZC4k7Knyw
 YirjvQbYOy4YyBCJ4nLdosiwBN0ENWL0gEKLEpB9vd+drpusTwN8ZjtKN w==;
X-CSE-ConnectionGUID: zKsFzNWuTdyt7IlMbXVOZw==
X-CSE-MsgGUID: XS9P71LIR4yyhZ3FKRFysw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78667829"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78667829"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:45:15 -0800
X-CSE-ConnectionGUID: 2/q1FjC7QUeUnVv8Dd6xJQ==
X-CSE-MsgGUID: M7EKGxqMQoq8ECHGdFi30g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197170135"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:45:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:45:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 06:45:13 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:45:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zCtoBoC7noOzOQsDXeo+BNhBVn0a2sWPAaR68dGAxhWC4hu1QoI5T57xqxFxgbTbyHd2Hey2xt5oSR8hDG0DfQYuaNb8RrH8FPTOzJFQlHWJ8Fe9EhExqU1rooM4vRRZGLvARuSkgo9b5p9Bi97y1iQmBs2R756xVVcYNwfOHr7BZDiwawnIRXVacoCgs/N0fIdESr4X6fkr2LNRx4SWoHXc0fGhiHSAgoeOdcAzXT4U0Ot9y/Esn/aImxDmbUANFEIo5g+hMrMvP9cnxYKOcvKRdL7bnxDwg8Egba/HlgV13QPncqfqugmlCWg/vN/i18EUBJ4Z0c+/Wiu0vnSPKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6LPfgYWRAxpk+UPqUJbHPPsgS/Q55FlAS5zh9Y1RGno=;
 b=FLjZnGIOZ/IB9S521x2sSaC+b8WSdPXwmLCR3h4H2v4U6sf3g0QzqBsRxDFczO4arm0nRTQsPA7aG9I54V0N90nGSb97Lcv3rsugIrF6gNzpkl7N9caG1Whldg0G1ep7BpauetS/kXVRAecDk/wpXi3okb7Sm9oj0JB3IYgXzIxsLuSZiHVaTJFmC+19bdDT9li5IlVK8FW5g7FzbYGxknY6/LY9uSe3RnwqZCo8wOZVwfd/R1oMso7rGZxTC1zdq0eNLKhLpPRb6YJVoFyQx0XVnxJ7fPBbdlFUII5fz4s9U67PsUly+VHwE4nzAhSipwz1Zy0foR2W2xPGsbZLrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA3PR11MB7486.namprd11.prod.outlook.com (2603:10b6:806:314::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 14:45:10 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 14:45:10 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 30/50] drm/i915/dp: Simplify computing DSC BPPs for eDP
Thread-Topic: [PATCH 30/50] drm/i915/dp: Simplify computing DSC BPPs for eDP
Thread-Index: AQHcX8vSB5NBxNUUD0GY4+0DbWHaWrUeLDoA
Date: Fri, 12 Dec 2025 14:45:09 +0000
Message-ID: <3eaf06cc44381169b9819b327cabc5f1b4768be7.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-31-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-31-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA3PR11MB7486:EE_
x-ms-office365-filtering-correlation-id: c56587fb-a5e6-46fe-9521-08de398d0cbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b3c3cm1MaXE0WGRyUTRKYjN6Z2JuMnhqLzNEcFhONW40aWtHZmhBcWpTcEU1?=
 =?utf-8?B?Q3hHUWdKMmV0STE5NzROUHdXaGlmTTFUUEh4Y1VYUzI3blJzT2xQUU5COWhU?=
 =?utf-8?B?UTdGVml2TUNnV3VzUnBiaHY3THY2SzFSN2VDQVdkanRKQ3pOVGlCU1B4dHJ2?=
 =?utf-8?B?ZlM0dG9zRWEzTHdUM3c4alErcVA4dExORTVrZUlSQ1hwdk1RTkxERjBTdkpE?=
 =?utf-8?B?Y1JJbkxLb3UxNUNPMm5tY2wweUZwNlovR0lUNDZiRi9NeHVTeStxKzZmcUI0?=
 =?utf-8?B?MzRVS3pWUldtd21yTVc3SjNLVVo1QnRxRHAwL2xiTldFYll3KzJNQUNpd3BN?=
 =?utf-8?B?cU5zSjNCdndybnNOS2R0NGVFV2tMaWJvR2U4cDAwbi9ibTNEZFlTYy9oQjc5?=
 =?utf-8?B?aFJTZXVuTEZLbHNzb3MvN0JTZUg1VlpkVFV3OVYrTXMvMzU0SVpLZ0pEVzQr?=
 =?utf-8?B?Mzc5aFA1YTd6RjEyTjlaRXFnK295VS9JRTJIMlNyOU1OUWRTUWFZREJvQ3M4?=
 =?utf-8?B?ZzFPelIxSDlLOHJCRHd2VEpEVklCQm9YU1dSUUh0eElqcElzUUdMVnlCQXRn?=
 =?utf-8?B?cTBISit0T3ZUbG1scHRlU3kzOGJlK0lqT0ZPcDRXU2VXQVd5Qk0xK2xQa2Nr?=
 =?utf-8?B?ZUdidjhTODdvK3hjT3RFaVRYN21DQTFudGtCTk9ZbDFLWkVjS2xURnd1NFMw?=
 =?utf-8?B?VCtja1NQNmswTjRYVkhYc3IvQVkxQ3UzRVJlallNdzZBMGMzYUNYQm5YUHhw?=
 =?utf-8?B?aGhaUk1XejFQZHBxLzFUN0NYaFE3RFppNHNiUHdxdE1YZGovOEpCblJOV1Ri?=
 =?utf-8?B?dkM1SUY3TkpmMEhKRmxmeWQyZWtLeXdIc25aUHlUVnZhWHp1TThzRERGWjl1?=
 =?utf-8?B?dFFwcTNSNG1ZeDVqVkZva0xWLzduTDR3WDBuSnI5WDY4bE85TWNEYnZ4Mjda?=
 =?utf-8?B?YTFvUldjd3ZNVytvdi93cVlVMVVpVnpCdFpXZnBPak42Yy91MG9xQnpVNXg1?=
 =?utf-8?B?bUJJMnJWcDBKbU11cjR4eHRWK3lIMk5vU2F2Y29uWU4xL3Q3QUZEVUZXUy91?=
 =?utf-8?B?M0s1UWJLNTVHRTUyS2o2R1I2ZlN0RG9sKzFtTmxnc1pyRlBEdW9pZkxCcmlC?=
 =?utf-8?B?SHp1NlJMQ1dwWVNnQmFwMXNXUTB0R0ljWEJzUU1heUdZL0d5Z2tidGo3NlhE?=
 =?utf-8?B?UVgzdVNGclQweU9aT2FHKzZmRnZVT0syeGtKV1pFTEFiaTdWTS9GVHA3NCsz?=
 =?utf-8?B?VEZUbnFRd25YbHR3bUREcURRbGx2RXpHblpJSnZtN0ZzMWZkTldzVDlIclJx?=
 =?utf-8?B?c2VmNFRZMXFSVzJNeGV1Vm9wekdROHBSemI4bFJmSVpaS3VubHNhV3BEZ3hl?=
 =?utf-8?B?S1NXZURjcmxNQVFTenVxOGphMG1FTWh3SnhUVGo0MFl6RkVjakI1eThGNHJM?=
 =?utf-8?B?TGlSeVlnanlpdzdDejQvNW9BUFhrRExYNm1QUkRsZW5YdjJ4ZFlLMkFYbGph?=
 =?utf-8?B?RUY4bVVIV0JGN1d5NXlXMUVoUFR2aXZrd3VjMHpQTDZWak1VV2hwSnNoVmhP?=
 =?utf-8?B?MkFnL0U2cHJFUGdBL1ZCQlRZb09HTjJ1czJCTEpzOHVoNmdXaHFXS05pVmYy?=
 =?utf-8?B?K0lpYnBHV1pZckVHK296WTFGMlJmdE94MzN5djdlVVV2QWhPVTFkQ29VcnJl?=
 =?utf-8?B?clpwM20yS3dkNG1zbXVFMlhxY0xoNWdkczdsUlJEb1VTQnExeEphYktPLzQ4?=
 =?utf-8?B?QUpXa2o2Z3hDbEdZSVlNOXBtRk5TL1dNTWl0WXpEcXZvZXRXMHVFbzIwdnNq?=
 =?utf-8?B?YituL0V3aStLVSt2V0djc3JvMVlQTTV4OTJUbGRaZERxY3hDYjgyZEN0WERD?=
 =?utf-8?B?dURWd3ByUEZWbStobURqWEFjeWZYYlZPeXdXYjNtOUEwU2l1TnA0YlRCdklK?=
 =?utf-8?B?bHkwSmVWNmU2d1BPNzVLcEYwdXAwUXROdlhyRkVPZnJybDZ5anlScVVNa1g5?=
 =?utf-8?B?YVJzRkVGOXorQjhGRmZFdWNnS3NsUjBXKzJKckdESkVTeDloQ1JnTzJ6ZE1v?=
 =?utf-8?Q?/NaiJC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVdrbXR4K1E4VlQ1MFhzZFB4cGtUL00vaTJaODZOVFlpeTVGRFlnbkR2UG1Q?=
 =?utf-8?B?ejJSQUJGaUpFUGIyalRXN2Q5bldkOUp1WnBpZnNOcnpyQzRjY0R4TDIvTUty?=
 =?utf-8?B?eWRPNHRCLy9vbkI0YmhadTdYam9PQ0dkYVZvTTRCQm5GMDdaSmtQVFB3ZzFN?=
 =?utf-8?B?Z2xCR0hIVmM2NFBZVmFNa1RURVpRZ05ZZ0E1QnNXMkZyOHVpclFFekhlUU14?=
 =?utf-8?B?S0JadjRoTzdGMFVmMVNNUEx4MEhlKzhyT2QrbmpSYWN2eGJZVkdidFFsSjFF?=
 =?utf-8?B?bGtQMG84UTk3alQra08rMWJpa3VxYkk0RnRuOG1WVFNkWDZCak1ROWs3azRw?=
 =?utf-8?B?ZXhDVTVMRjRBM25heVpyTEU3UXhXbm02TVI5Q0c5d2RnUHEvdjlUbjVxU0pT?=
 =?utf-8?B?MUZzeTVrRUhGajIwWngxTjVkWlo5WTFXL0I2V3o0d1hCQ1laaVBGWE9UT0hS?=
 =?utf-8?B?MEVyYlVyemNkWjE0MVRnTU9qczB6U0hvRWU4VjRVck9TUnNVdlVDazZCN3Vt?=
 =?utf-8?B?d0dGQ29QZ2o2Vm5sZFlWVUE4WGZUSnRESThJdUNxTTA0MXMwNzcycDBGeXdR?=
 =?utf-8?B?LzZrMkJtblUwTWtvZlByd1ZCb0V0a2pUNzFQMlRmbnNlNDl1MndFbXN2OGoy?=
 =?utf-8?B?bzRsbGNHMmt4KzBnbjJUa2srbnFZN3RKQlltVWFhRHVWcUdNOGRWUjFNdlZo?=
 =?utf-8?B?N1VQeVRtNjQySFdodW52UlFCdmU0em5QTUFFZzVobGx2MElqMXRRVjl6WG05?=
 =?utf-8?B?K2xhZUhtVUQrL1VJbXpxYjhUbDZSd2p0RDRUUm95NXRsRmNTOHBRVW9HSGg1?=
 =?utf-8?B?UlBxcXY5RXdZak50dkhYbmhqd1NuUTFIQ01YS1hnd0NKemxKYTJuaHovWVNU?=
 =?utf-8?B?ODVCdDVvL09yc21HcWd4MXBEQ1dCWlF3dVZkc2dvM2FBZ25QZExLMjFwUm1R?=
 =?utf-8?B?Q3U3Rk41LzV2V3hxQ3VNdEhjMjgrZVpCOU9JZWxsMlZQcnZpOXF2OU9OTUhI?=
 =?utf-8?B?OHJOUzI2ZGZPZG1wUGgxaEQ5V1BLNGVkR1VWNlRuZmNxd21XSFlJNEZTT24x?=
 =?utf-8?B?djh1TWU1VFFoMy9lUXZqdkVId3NKa2xYdVZvV0NvSldIU0toc3NMcVRIeGxn?=
 =?utf-8?B?VFFqNFRVbzJHSXNlOHNGMms3MFQ1NGZjWU5JNG9HMXA1aGVzVTlCVVV6ZXJW?=
 =?utf-8?B?VEEremJIY20wZ3JkNnJ5bStBM3ZMZzA1UVBZVnBOR3hFamFaNE5vQzVCejU4?=
 =?utf-8?B?NDBUdWd2cVdJM0lxUUpCcFF5VTdzc1dmeG5VK05oYnlBMUtMZldNY3hadGlK?=
 =?utf-8?B?c0VYWktWS2RjZm5ZbzI1SnV5UzNtQ1VVY1lBQ21ZMENyZVczb244QXR4WnJN?=
 =?utf-8?B?a2hnLzNHVlpiRzhPcWhTYmlTUndrZUczSlUzWFlZNjBVMzJYUnNHeVczZFU2?=
 =?utf-8?B?NWZxSzdUZDc1YWFqejgwWU5Hai83L3BWQlFIY3JjaEVjN0ZBc1loSFgwaXZT?=
 =?utf-8?B?RnBnUHlCMkd2MTFzMUh1NUo2eENZaTlHTjVpR0F3MGtIVXRQOVNSYmtFRTJI?=
 =?utf-8?B?UWpZcDBUQVBXKy9EeTZKR2w3TTE1WG5xR0EzRHBTWVVHYU5JRWx0NUdqSTZv?=
 =?utf-8?B?S1dWY0dVaURBNjRlL0hwYzl4c2RKRXZlM2xCdUxnNExCT2UyNWlvRDZaUzRn?=
 =?utf-8?B?TkdLWUNXTE1vMGowM2NkazRUOUFWNUdUYjVlcTBoRkd6c3BITkJ4alU1Wi9Q?=
 =?utf-8?B?V2w1UG50OVl5OWZ5cGxXWDVISzBKVDBHdXdTVGdTNmV6Y3NpMVdiV0dSU3RF?=
 =?utf-8?B?c05HV0srdVp3dnU4UEVxOXNoeWtPcjdFS1BkSWZBeTRmenZLclhmVUJKZ24v?=
 =?utf-8?B?cVpKRUJGSnBKRE15RGFTY2JrcE9MOUJnQjhzYm1HYTRxOTVqcHZELzFlLzBD?=
 =?utf-8?B?M3pwRnlaOFpzc1BITFFGYVJVYXRDSloxN1FjRFIwY0JWSC9TcHhHd3M4emk2?=
 =?utf-8?B?bG5kMUl6NlFVMkE1aDZCSUUybHVPUndzbUtpc1czVlR1MUE1dXVkM1FOQzJn?=
 =?utf-8?B?anc5RE4vMlYrOFQ5RlpCN2JOU0d1VHRhUEtIYXNPQTlncDlCZm5OL2tFQUxh?=
 =?utf-8?B?VzRDWUpxUlJxazZnUGtVSU8xQVIyNUZRRm5ESjJ6VFUvVFBpbktib3ZkQytm?=
 =?utf-8?Q?2SykYSO7PbvIopD8oVXqn+4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E129F1CB7EC7745A85C5DC17CB96010@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c56587fb-a5e6-46fe-9521-08de398d0cbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 14:45:09.9933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RgDAPCZrrz4CbAAxuzBmGFVRKQh/ayMoymo80Cg7pl4Qw7KVV+5yIh7n6rutwxjb7Q1jyA2vYXDHBqc4wQF3fMTLLGfmPcbIyIJmy+cDtdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7486
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBtYXhpbXVtIHBpcGUgQlBQIHZhbHVlICh1c2VkIGFzIHRoZSBEU0MgaW5wdXQgQlBQKSBoYXMg
YmVlbg0KPiBhbGlnbmVkDQo+IGFscmVhZHkgdG8gdGhlIGNvcnJlc3BvbmRpbmcgc291cmNlL3Np
bmsgaW5wdXQgQlBQIGNhcGFiaWxpdGllcyBpbg0KPiBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19s
aW1pdHMoKS4gU28gaXQgaXNuJ3QgbmVlZGVkIHRvIHBlcmZvcm0gdGhlDQo+IHNhbWUNCj4gYWxp
Z25tZW50IGFnYWluIGluIGludGVsX2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcCgpIGNhbGxlZCBs
YXRlciwNCj4gdGhpcw0KPiBmdW5jdGlvbiBjYW4gc2ltcGx5IHVzZSB0aGUgYWxyZWFkeSBhbGln
bmVkIG1heGltdW0gcGlwZSBCUFAgdmFsdWUsDQo+IGRvDQo+IHRoYXQuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE2ICsrKy0tLS0tLS0tLS0tLS0N
Cj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4g
DQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGluZGV4IGUzNTE3NzRmNTA4ZGIuLmVlMzM3NTlhMmY1ZDcgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIzMzcsMjYgKzIzMzcsMTYgQEAg
c3RhdGljIGludA0KPiBpbnRlbF9lZHBfZHNjX2NvbXB1dGVfcGlwZV9icHAoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJCQkJCcKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+
ICpjb25uX3N0YXRlLA0KPiDCoAkJCQkJwqAgY29uc3Qgc3RydWN0DQo+IGxpbmtfY29uZmlnX2xp
bWl0cyAqbGltaXRzKQ0KPiDCoHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IgPQ0KPiDCoAkJdG9faW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNvbm5l
Y3Rvcik7DQo+IMKgCWludCBwaXBlX2JwcCwgZm9yY2VkX2JwcDsNCj4gwqANCj4gwqAJZm9yY2Vk
X2JwcCA9IGludGVsX2RwX2ZvcmNlX2RzY19waXBlX2JwcChpbnRlbF9kcCwgbGltaXRzKTsNCj4g
LQ0KPiAtCWlmIChmb3JjZWRfYnBwKSB7DQo+ICsJaWYgKGZvcmNlZF9icHApDQo+IMKgCQlwaXBl
X2JwcCA9IGZvcmNlZF9icHA7DQo+IC0JfSBlbHNlIHsNCj4gLQkJaW50IG1heF9icGMgPSBsaW1p
dHMtPnBpcGUubWF4X2JwcCAvIDM7DQo+ICsJZWxzZQ0KPiArCQlwaXBlX2JwcCA9IGxpbWl0cy0+
cGlwZS5tYXhfYnBwOw0KPiDCoA0KPiAtCQkvKiBGb3IgZURQIHVzZSBtYXggYnBwIHRoYXQgY2Fu
IGJlIHN1cHBvcnRlZCB3aXRoDQo+IERTQy4gKi8NCj4gLQkJcGlwZV9icHAgPSBpbnRlbF9kcF9k
c2NfY29tcHV0ZV9tYXhfYnBwKGNvbm5lY3RvciwNCj4gbWF4X2JwYyk7DQo+IC0JCWlmICghaXNf
ZHNjX3BpcGVfYnBwX3N1ZmZpY2llbnQobGltaXRzLCBwaXBlX2JwcCkpIHsNCj4gLQkJCWRybV9k
Ymdfa21zKGRpc3BsYXktPmRybSwNCj4gLQkJCQnCoMKgwqAgIkNvbXB1dGVkIEJQQyBpcyBub3Qg
aW4gRFNDIEJQQw0KPiBsaW1pdHNcbiIpOw0KPiAtCQkJcmV0dXJuIC1FSU5WQUw7DQo+IC0JCX0N
Cj4gLQl9DQo+IMKgCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gbGltaXRzLT5tYXhfcmF0ZTsN
Cj4gwqAJcGlwZV9jb25maWctPmxhbmVfY291bnQgPSBsaW1pdHMtPm1heF9sYW5lX2NvdW50Ow0K
PiDCoA0KDQo=
