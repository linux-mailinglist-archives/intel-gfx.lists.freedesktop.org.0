Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30040CB4F06
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 07:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B35D10E0DE;
	Thu, 11 Dec 2025 06:55:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DefhRbEv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE9D10E0DE;
 Thu, 11 Dec 2025 06:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765436106; x=1796972106;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=G2C6UdwPPBWH8VAjSXXwZzL1HDpcoerFc+UG2nT4xl8=;
 b=DefhRbEvF1GOLO8dD0Ukxdxut2oxKp5LJpnovGXwtsk1gQn1bNfOeRQV
 KXoH/+EI48ivIGMOzS2BXFzGCRRPEnpjihBnpp2HTuk4P+wJ/GkmbXya0
 42PtiCaOSqeFIqSlXq7XUR9xA691YjtkQ/0CeZFnF8SBnUgQv4STZSQcj
 aS0ljPvXUfZXpYuj+QA0eD1GLN8z1cvHhFikr9uk/N/JqyGlprsF+pN90
 HwJzcsCF+wrhvtX5TVbIjHrC3AN54YRcGxT6Ue2w2pGfXyMvLuo66gRjx
 tmH/i6VNrVCBrLngsWSeS/OPXF2Fc3ji7HZQ4dlZ/4CbdkQBY0DLaM9Cn Q==;
X-CSE-ConnectionGUID: YbDJQ19TQE2b5O9O+c3Q1w==
X-CSE-MsgGUID: p4nVSxV1QKKIeMZHl+W55g==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="85021506"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="85021506"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:55:06 -0800
X-CSE-ConnectionGUID: clQAitVFSQuS5op49GHZRw==
X-CSE-MsgGUID: doRIgtppRqqQefLVmHV9zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="234137140"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:55:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:55:05 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 22:55:05 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:55:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxwdfdmrQ+JxLy0QF95v6/AD+SnebWtdrBj4LvaNWABJSHQWr5xCiS4SKfFBekm6yQzwa4SuNhYAytheUhrG+0MeoBTwebfemn8RF4L7guUUSa7o9sNHTMphwG4ARBDq+vJlswUVSTDD2r9vxVVq6daowktA9SOZMkutUQECrjMgZ9w+JAHxRQHLUOHRCaO1fXz47GPF6Y0fDA932i/byT4fM3ah8o0z87jY+ZfikqJb6hipD9d76UKlCsEW61qyGaQ/1e4uLcgoAcsg5v6b8ejjwqXOzlkHmMvw0e9IJ79ay3SkFM3VdDfC07F9dpBnN4kFD5WCAEimkPcQ3ByCvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2C6UdwPPBWH8VAjSXXwZzL1HDpcoerFc+UG2nT4xl8=;
 b=yDb7qDozyvcMW4/16bzR0JYe911nShyXz9bm+VV2mKTsq1Id0pgnVLgsJu6eNy9xmcYdj0MAQkrl99gD+b8ut4W7ILoKWyTKcD5WR2lK3EPA3PQeCGK60XPqknsubFlYMEEeuUFp5YM7faheLlBySDVCVoVCfBM9+AvQ6swx+2dMpZZy/u1Je4gUBpW7icHkqW/OpoNeRJwP1/cDlbxvF9Xxkrx5NKzHYj5ooiuBS5KyOxvKon0RPXSKtUDNXBue8KZIoWxVrSSGGBylqH4eRtMbgPRKzsAYGvypKX9Bw874eOPDUslEpyS049MaKeZRbatmk+2ekzloxmyf36+48g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5138.namprd11.prod.outlook.com (2603:10b6:303:94::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.7; Thu, 11 Dec 2025 06:55:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 06:55:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Thread-Topic: [PATCH 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Thread-Index: AQHcX+7CjrJJD0JRikebMTfLhojLNbUcFkcA
Date: Thu, 11 Dec 2025 06:55:03 +0000
Message-ID: <235d747093d37d07308eaadc08c12ad357b98915.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-50-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-50-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5138:EE_
x-ms-office365-filtering-correlation-id: 8ba44fd6-a6ca-48f6-88f7-08de388235fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VHhSS1BtSDl1QkFaekNDK2JDd1A5VzhtTlVKTzMrbStnenQvakgvNGhYMTJI?=
 =?utf-8?B?RHFDRVhKcEFiTXQwb2hmUFQvS0lhSGRHV3pQaXJtSWpmd0h6bVAwQnlhVkYw?=
 =?utf-8?B?b2FqeUdUOTVpR2hQN1ppM2xaSW9Dd1NYTUxMVStxaVBWeFhjL2FkY0pnZUdZ?=
 =?utf-8?B?MThXRGZSeTFJUENXdDEwbk5RMWlhd0paUHk1UVV2NVplMHBwKzFrUExHaU9F?=
 =?utf-8?B?cmVBTXRmaGVSRlpZVDdDRDgrc0l0bm9rZnVEY1VsOWlEeVNSNk1XY2tYM1ow?=
 =?utf-8?B?OEtHeGR2Rk80ZzQ2UmpBcjZmSklBS2JVcnE1Vm5pVk8rNmtTTSsvamViZmNS?=
 =?utf-8?B?KzJ2bDVtRVlhTjUrU20ramErT1Vja1hDcGxIeXJzSUtIMDhqeEUxMWpZMzJn?=
 =?utf-8?B?a0pBM3hraE01SE5VQzhRK0hkRUhra1lrKzBIOHVjN2RkOWE0UVc4bGVmdEdm?=
 =?utf-8?B?R29xK0RCY1o2ODdMVXlCTG1YK0xFSlQ3QXFaMGp5N1FETWtubURVcXd1Rnk5?=
 =?utf-8?B?cGlmMWJXakgwamE1K3BldnFPOXBXWC9DQmdmZmNnUjlZUnY5cGlsYlBOOGcy?=
 =?utf-8?B?b0dPVFRPZTZGNkNWL1doVThxUnJKL09NWnN2UW5iY0VSNjFsK2x1amwrRTZ4?=
 =?utf-8?B?STFZUGNxK3pVdlZtUmVJTlVVS040Zy9tM2dXYi9rTEJYMDBabmNJUFJCRWwv?=
 =?utf-8?B?TjQ1NUFKOHZtbkZWdHVCWDRReTJrTnNnVFVNWmJIZS9ZZHQ5OTYySE9rQzRG?=
 =?utf-8?B?eHNMRU90bDloNEoxRXVYdW14WEJCNGNNZkpxT0JhL1NqRmQ5VXk1K09IdnBt?=
 =?utf-8?B?RnlaZElycXk0N1lHb0MvM0orSm5BQ0tGT2EwTUtCblI0aWRnN3EwWTRSMmNS?=
 =?utf-8?B?MFlKTTM0dGRESFg3K2JGZEY5Mjh5ZWVwY3ZVSFl3Q3E5Ti9tUXp4VTJkcHRU?=
 =?utf-8?B?MWpMYmtpNnVrUGRZaXRCRE5FclNFNFppcVhSRzBDYmdQM21Yc2tiMlVRMUJQ?=
 =?utf-8?B?QmFlUnJTRU5tU3VyMHFDTHMzZmhGUGhMMW12REoxRk8xZkl5cHlXZ29oWjI4?=
 =?utf-8?B?Rm0waFRVbHRvcmtrb21QMXBOanNpSHkyVzB5dXZKZnhRUEtWdDZwZTE2S2hD?=
 =?utf-8?B?TzRHeVMwdkh5Yk1zY1c4U1BQYXpJZ2JEK1BvVERBWm9jOU5tT1N6bE53aTgw?=
 =?utf-8?B?eW91VUdrdTZ0b2VLdVdZTkRwU3BxOFB0cHdWL1VqUWtlcjJyYmE2a05vUzlD?=
 =?utf-8?B?RVp5SmI0TnlTNDN4dmNVNXBkZDBGMXlXdzB2RUV0SHFIYWduTXkxajdCcHNj?=
 =?utf-8?B?cFdpSkZueE12WVJuUFhucUtWb1owOFkzeWlPMk4reDVRYTRmR1dVOTJaZTNR?=
 =?utf-8?B?L3o0Y3A3YUpzK2lydmhqN1pIb3JvVnV6OXc4ank1OUY2ajBwMXI0aTNvNWRU?=
 =?utf-8?B?SmwycHp2Qnc1Nzg1RkdqendpZDMrN0JrVnJyTis5aFd1SnRjVEFYL1NtakY1?=
 =?utf-8?B?Tm1Lc1FoeVpCOWFSSHErWWRsbHJRUlovQzNxSWFUbzFDK0lFK2pYZzhkQW5a?=
 =?utf-8?B?RnVoVm1ZMlJld2Mvd0VyWlIvVXVYZm5acGpMTXkzSW94Tml6dGtMWVJUZ0du?=
 =?utf-8?B?MFpLSkxoaERMbmRMVlhxMG9xalcvN09nNFRlRFZLeWNoM21zR1lPWGNSNFl0?=
 =?utf-8?B?dThKai8rK2cwTHRlUnFQbldMblh2YTkvTEgzcFFDdzNNd1dQVUppMTduOFpI?=
 =?utf-8?B?aWVXakVxKytWTGtUaXZTVW1pTGF6dE5QRlB1VWdJQWFhdGFKYitsYXo1WkI3?=
 =?utf-8?B?RDNDc25NbjRkTUppUzVQQm1nZ0E5enNmMnhOUzhSNE1zbnhzeTNZY08yNUdR?=
 =?utf-8?B?VmpyYU9yaEJBcEF2ZkdjSWFnT250OWhmem54aGJXVnRhT2EzckVkNUVuN0dh?=
 =?utf-8?B?VnVTcDY0QUpTUDZoTEhEaExaa1lVNmNCeDFzL3QybHBkY2xOMWlwN3I5REZK?=
 =?utf-8?B?WGZuQzlBenYvRU1MWFRpQU9HUHl4SStyTkQ4eDhXQUFpM3M5Z0FWUUY1c05S?=
 =?utf-8?Q?xJiwFL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTBhcG83UHNaVXdFeXEwQ0E5V0tvUk95VnF2dklhTTVXMDVudTg2MEhVQ1NQ?=
 =?utf-8?B?UnZrVE5sc2dNU0VzMDY0dkFSMHQ5L1JZaGMzZUNnbHNRUEZKNW1JbEI5bFBs?=
 =?utf-8?B?SWVBOHptWHhlTGppZnBpNWM0WGczQUhvaWFlbzc0RHVOS2Z6bHJibXh2ckJp?=
 =?utf-8?B?YmNsNWhqUVF1K3pBVE9NUXB0Si81MnVmK3NiZXpINUQ2Y25pcEtKRHJsM3Qr?=
 =?utf-8?B?Y005M2w1TEU1MFNrNlFyYnZ0cFA4OXVjZVN4WWtZOWxlNEF3VjR0bElzb1Ro?=
 =?utf-8?B?L3NqdU9DbnZNMjVzWTVJSUlBQmNCK3R4b2owdXlMeGtIUG94N2JnemZxbkZ5?=
 =?utf-8?B?aStKNkRETEdoNWlOcVMrQThPMTg5blVFVm1qU3BzclpuS0l4NUFGK1pwUXFP?=
 =?utf-8?B?NzYza3FvRkZlV25zT2RabUMyMHZob0xyVFNtYzdOMXZqYkxCc25mdkpYaS9P?=
 =?utf-8?B?MnIvYlBCKzVUREtNamxJRjRVaVBVNmk4dFZNQjB2ZjdxNWFHTDExdEp6TVlh?=
 =?utf-8?B?aVhKaEFoalRmSU1oWUxXa1pQUHU2NFFrc0VTazBONmdCd3VjNTFJMGxoSXNm?=
 =?utf-8?B?YUp4S3dyVk4xK1NkWmNpS3lTUWNETjJmQ1hDUFV5VTZxeEh0SWhTUjQ2NFJV?=
 =?utf-8?B?bkMxaEVaYzVwVk9QR0RJekNKZEViZmNLVTZoQXhRMkRNUytPYWZrdE5SSllJ?=
 =?utf-8?B?N0xtUkU5cHN6L0ZubjN1dFRpcVJBd3J0cFRvOHNPQkZkdnQxS3pucUh3cG1D?=
 =?utf-8?B?Um9IWE9QcEtxU3Vsd1B2and5dEVIdGx2b1JaWGNQV0hOOXVCb1pwTG83aHEw?=
 =?utf-8?B?dHdkekNDM0RmaUZkbWNoU3NSbXJYTlFxR1RXZXJWKzAyZFMyaHlyb2xZVy8r?=
 =?utf-8?B?bUZYVU5vLzFTTWlNOURJRE1wdHlBSGExQ3Z4cTJUVCtRMXZtY1VSck5vR0pT?=
 =?utf-8?B?NU4vUGxHS0laeHFTSkxsb2swMHZ1VHpLUDNhOVN1SjRPMGN6Y1ZnL0xiNkl6?=
 =?utf-8?B?SHFZMWtGZ0dZeTRiMG5ER0hYS3piZktUT040V1R3QjcyZnc5YUtOWUR2ck83?=
 =?utf-8?B?NDRGL3A2WkJEYWpybzM5QlFkbVJpeGZ1R3hlV2tBWG94MjNoekxId3dRK25B?=
 =?utf-8?B?NldMR2RnUkdkNHJMaUNMb2ZncHZBSTVxL2F5WURXWThjMzREMzk4aUU1TC82?=
 =?utf-8?B?d1B2NlJiTk9ZeUZzTXdlWjVkdXJYSlBjN1ZSaFMrVmdSdzVGZ3hsVjRaYjVC?=
 =?utf-8?B?VXdzU29BWVRQYmczeGhMY0E1djBMVHIrZzB3c2NzSm1BOFlhV2lVMmFyNFkr?=
 =?utf-8?B?Ly9nenVFNlRmd2xSNjh0dDFHcEdHSE5FVXJxL2VMSGliazl4WXY0NTJocm5z?=
 =?utf-8?B?R3VOZnN2aVFjdGxSWWlCMm5qRU50WFBycnVtZ1g3WGtaaUdWZnh0ZkhVRTgw?=
 =?utf-8?B?Qkdna0RCZlcyWWtzSVY3allXc1c2SUQ5OHhhSkdheG9BV3pMZEFxS2hrbTQ1?=
 =?utf-8?B?amVkNldxMnlHQ2RGRTFjd3pibHdoVU0xL25qcjY5eTk1aFBsb2VtcWFFZW9a?=
 =?utf-8?B?QW82T1lsc05PS0ZkMmxUajFvNGhwdm0zS2t6MHlYd3RoNXJveVAvalRUY3hE?=
 =?utf-8?B?NEUrTllmSzM5ejFrTG9Dd3JlRldVOTE2RU1tdDNyR1VydzNkLzJUbGlSWHc0?=
 =?utf-8?B?ZC8yYTZ6cUhBd2duS0ZIWWREdWY5OXpMNWU1Q0RvejdhSEkzeUluQlpkek9O?=
 =?utf-8?B?cXQxdVhyNWpCMFREYkt5RkJEMnQ0a0wxWjZzekJ4VGJ6SjdCamdmdnU2VEVB?=
 =?utf-8?B?Z0lkZThzR0JxcXBVWUZabS9LQWhDK1BZWllHMzNjQVhmQ25pWXA4ZHhQSHVz?=
 =?utf-8?B?TzNSaU1RY2EwOE1LTmpXZzI0WFNFTnBvWUIvUnIwc1g3NkdyZkJzM2lhZS9y?=
 =?utf-8?B?STBtVDdGN0FLYVc5OEsyeWwyVnpzTnhDdWFQQXJpendOMjFJS25pWDY4SjBs?=
 =?utf-8?B?YytmVmdQSlVXbkE5cURabklVTUxqdVA4S1BVTStSWkhOekZ4ZlQvc1BoVVVq?=
 =?utf-8?B?ditsUEN6QkEzWjF2ZzRiN3hFNVVYc1VZNFNXWWlFeTFkcnVZNXMvUGo4L2dF?=
 =?utf-8?B?TmprZ2hUd21NeG5YVzc4WTBDNFFUTXBZd2dsZU5UaU90TDJhZ0JlTnNuNmZM?=
 =?utf-8?B?UERFMWZxa3E0Y2JwNFRvbHVhalVqM0VTNTMyZGdFczJONTNrVG9qLzRhRG5E?=
 =?utf-8?B?ZFZFK24rOTIxSm4rWGtpTHpIVWN3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <206B0614A631F247B905365499A161F2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba44fd6-a6ca-48f6-88f7-08de388235fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 06:55:03.5863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SgqiFsjkOYFML36aICK1YObenJmQUudDMOOgT1NEjJPBDyeyvjhW57pUE1m/6RrCw1z478L8SXvTFr9zbo/eldpHS1ozIzjKnvjaBGidI7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5138
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvbmZpZygpIHRvIGNvbXB1dGUgdGhlIGRldGFpbGVk
IHNsaWNlDQo+IGNvbmZpZ3VyYXRpb24gYW5kIGRldGVybWluZSB0aGUgc2xpY2VzLXBlci1saW5l
IHZhbHVlIChyZXR1cm5lZCBieQ0KPiBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KCkpIHVz
aW5nIHRoaXMgZnVuY3Rpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDM3ICsrKysrKysrKysrKysrKysrKystLS0tDQo+IC0tDQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDBkYjQwMWVjMDE1NmYu
LjAwM2Y0YjE4YzExNzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gQEAgLTk3MSwxMCArOTcxLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZHNjX21p
bl9zbGljZV9jb3VudChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Is
DQo+IMKgCSAqLw0KPiDCoAlpZiAobW9kZV9jbG9jayA+IG1heChjb25uZWN0b3ItDQo+ID5kcC5k
c2NfYnJhbmNoX2NhcHMub3ZlcmFsbF90aHJvdWdocHV0LnJnYl95dXY0NDQsDQo+IMKgCQkJwqDC
oMKgwqAgY29ubmVjdG9yLQ0KPiA+ZHAuZHNjX2JyYW5jaF9jYXBzLm92ZXJhbGxfdGhyb3VnaHB1
dC55dXY0MjJfNDIwKSkNCj4gLQkJcmV0dXJuIDA7DQo+ICsJCXJldHVybiBmYWxzZTsNCg0KV2h5
IHlvdSBhcmUgY2hhbmdpbmcgdGhlc2UgdG8gcmV0dXJuIGZhbHNlPyBPdGhlcndpc2UgbG9va3Mg
b2suDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiDCoA0KPiDCoAlpZiAobW9kZV9oZGlz
cGxheSA+IGNvbm5lY3Rvci0NCj4gPmRwLmRzY19icmFuY2hfY2Fwcy5tYXhfbGluZV93aWR0aCkN
Cj4gLQkJcmV0dXJuIDA7DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gwqAJLyoNCj4gwqAJ
ICogVE9ETzogUGFzcyB0aGUgdG90YWwgcGl4ZWwgcmF0ZSBvZiBhbGwgdGhlIHN0cmVhbXMNCj4g
dHJhbnNmZXJyZWQgdG8NCj4gQEAgLTEwMDksNyArMTAwOSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZHBfZHNjX21pbl9zbGljZV9jb3VudChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IsDQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKg
ICJVbnN1cHBvcnRlZCBzbGljZSB3aWR0aCAlZCBieSBEUCBEU0MNCj4gU2luayBkZXZpY2VcbiIs
DQo+IMKgCQkJwqDCoMKgIG1heF9zbGljZV93aWR0aCk7DQo+IC0JCXJldHVybiAwOw0KPiArCQly
ZXR1cm4gZmFsc2U7DQo+IMKgCX0NCj4gwqAJLyogQWxzbyB0YWtlIGludG8gYWNjb3VudCBtYXgg
c2xpY2Ugd2lkdGggKi8NCj4gwqAJbWluX3NsaWNlX2NvdW50ID0gbWF4KG1pbl9zbGljZV9jb3Vu
dCwNCj4gQEAgLTEwMTgsOSArMTAxOCwxMSBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19taW5f
c2xpY2VfY291bnQoY29uc3QNCj4gc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0K
PiDCoAlyZXR1cm4gbWluX3NsaWNlX2NvdW50Ow0KPiDCoH0NCj4gwqANCj4gLXU4IGludGVsX2Rw
X2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29u
bmVjdG9yLA0KPiAtCQkJCWludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9oZGlzcGxheSwNCj4gLQkJ
CQlpbnQgbnVtX2pvaW5lZF9waXBlcykNCj4gK3N0YXRpYyBib29sDQo+ICtpbnRlbF9kcF9kc2Nf
Z2V0X3NsaWNlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0
b3IsDQo+ICsJCQnCoMKgwqDCoMKgIGludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9oZGlzcGxheSwN
Cj4gKwkJCcKgwqDCoMKgwqAgaW50IG51bV9qb2luZWRfcGlwZXMsDQo+ICsJCQnCoMKgwqDCoMKg
IHN0cnVjdCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnDQo+ICpjb25maWdfcmV0KQ0KPiDCoHsNCj4g
wqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNvbm5l
Y3Rvcik7DQo+IMKgCWludCBtaW5fc2xpY2VfY291bnQgPQ0KPiBAQCAtMTA1Nyw4ICsxMDU5LDEx
IEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkJaWYgKG1vZGVfaGRpc3BsYXkgJSBzbGljZXNf
cGVyX2xpbmUpDQo+IMKgCQkJY29udGludWU7DQo+IMKgDQo+IC0JCWlmIChtaW5fc2xpY2VfY291
bnQgPD0gc2xpY2VzX3Blcl9saW5lKQ0KPiAtCQkJcmV0dXJuIHNsaWNlc19wZXJfbGluZTsNCj4g
KwkJaWYgKG1pbl9zbGljZV9jb3VudCA8PSBzbGljZXNfcGVyX2xpbmUpIHsNCj4gKwkJCSpjb25m
aWdfcmV0ID0gY29uZmlnOw0KPiArDQo+ICsJCQlyZXR1cm4gdHJ1ZTsNCj4gKwkJfQ0KPiDCoAl9
DQo+IMKgDQo+IMKgCS8qIFByaW50IHNsaWNlIGNvdW50IDEsMiw0LC4uMjQgaWYgYml0IzAsMSwz
LC4uMjMgaXMgc2V0IGluDQo+IHRoZSBtYXNrLiAqLw0KPiBAQCAtMTA2OSw3ICsxMDc0LDIxIEBA
IHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkJwqDCoMKgIG1pbl9zbGljZV9jb3VudCwNCj4gwqAJ
CcKgwqDCoCAoaW50KUJJVFNfUEVSX1RZUEUoc2lua19zbGljZV9jb3VudF9tYXNrKSwNCj4gJnNp
bmtfc2xpY2VfY291bnRfbWFzayk7DQo+IMKgDQo+IC0JcmV0dXJuIDA7DQo+ICsJcmV0dXJuIGZh
bHNlOw0KPiArfQ0KPiArDQo+ICt1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0
IHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gKwkJCQlpbnQgbW9kZV9j
bG9jaywgaW50IG1vZGVfaGRpc3BsYXksDQo+ICsJCQkJaW50IG51bV9qb2luZWRfcGlwZXMpDQo+
ICt7DQo+ICsJc3RydWN0IGludGVsX2RzY19zbGljZV9jb25maWcgY29uZmlnOw0KPiArDQo+ICsJ
aWYgKCFpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvbmZpZyhjb25uZWN0b3IsDQo+ICsJCQkJCcKg
wqAgbW9kZV9jbG9jaywNCj4gbW9kZV9oZGlzcGxheSwNCj4gKwkJCQkJwqDCoCBudW1fam9pbmVk
X3BpcGVzLA0KPiAmY29uZmlnKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlyZXR1cm4gaW50
ZWxfZHNjX2xpbmVfc2xpY2VfY291bnQoJmNvbmZpZyk7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRp
YyBib29sIHNvdXJjZV9jYW5fb3V0cHV0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQoNCg==
