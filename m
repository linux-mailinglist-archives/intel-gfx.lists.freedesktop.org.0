Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOx0Hei4y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:07:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247ED369455
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B48D10E9BF;
	Tue, 31 Mar 2026 12:07:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYakbmud";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0374910E98C;
 Tue, 31 Mar 2026 12:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958821; x=1806494821;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CypItGztI2ynqGc2YY4HRBbkDcj7q6S3VkfBHXQKyZM=;
 b=PYakbmudpZ8iFwGS59it5JtRRURLcmN1iHWrPwxOSYv7q3EY3IpbfsIF
 H5ySziv+PPfN5Qg6jBqInDqLg5VE49+uHt7TMSqczW4rrRFw+daxVe+J1
 tygQi0bKQ8DnIz2j+mViHafhqB0L2V78mN/Zi84wx+b6hW4FhpSUfsOYc
 dK9KjN+cjShJRsUNXuIqtdxlGdOn15qGGXjZtjLH47rDTno/KMcu1e4xH
 HlhWgepvMpPtYmdoXoUL8H5psaW3f/DVFuz015t8OF+vBEuKOULqayKnY
 cCn9nJjL2YMuDmerbaGtjCNvIacuiUIop3+RmIjzkQRy6/fWx75unMEZf w==;
X-CSE-ConnectionGUID: uYgJEZcVR42mTjOZU4Q8Cg==
X-CSE-MsgGUID: 5hVNWevEQoqkONpksRPXMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75986691"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75986691"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:07:01 -0700
X-CSE-ConnectionGUID: 3X/LviZNQ9GdggXTaAqoNw==
X-CSE-MsgGUID: S940zDxHRJSD/xGOPGlyHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231174662"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:07:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:06:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 05:06:59 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:06:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U3ytXuqren+5uheFJped6jsZmnv2+fVO+peg1iandwYQ0ydMrSfvZghIRzjxgjJwAjHVWkWi478jtsIz/ygCXIAH8JmOty9H8S0zcm6idrUucbnEFLXRjDr0hr+MtKRlKiB5cz5JsYKCL3HCzrXVEOR0r4TQaTQTsis0ZVBhNdIRtMbA2Bhr1OYB2/Wg+So7W+Uyx57xug9FSTLtFTxREfuc3oSziK1w+CuXY/Qzxudb7k0ddd6MF6/9fKqCbhQu4NCz1rxcDaENu6phBfdvYUaZPwZoLQIbfCko/sITEAb9ZnjemFaK2K/8f7Tk6jj2g3/KcY/8MnQVAsQGAWtxUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xad/O2PHKAMvHkEpSYbC7gMtmy97iPzjyUkUXE0tDyM=;
 b=gWby3D5WVlDa5vAUYQQbLGSPu2dIMTZHfSlliUBuFY2lN27oBlHhA0s/oInqg+I9/ye4PRCt7A3p87WLNFgRuXrZVVuog7Tj3mH3XEiVG1bXX0cGzKlng6U+8UmNNYZ2cy5HJb/kV7QU++V4BtPtrTskykPOwkwFPGYrgG2gIs2E1Qt5BgPaiEyas2uu1a4bQrGHnLhzLICTrE6Y39BdwmP6aTHkC9MVCJv22ZPEuqsczkBShqCTI7zdhg065rLEFTpHZlJE7dr8LvhjvJ3LrJcndd/bAoi7HRAY8ZGV3KaUUJVkYgGtzrtbLF68CT7DtX+cpZ1B3LpZv8kmTqIOVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 12:06:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 12:06:56 +0000
Message-ID: <ac9b9de8-f575-4994-8f9f-4d8ec6850a1e@intel.com>
Date: Tue, 31 Mar 2026 17:36:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/19] drm/i915/dp: Always enable AS SDP if supported by
 source + sink
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-20-ankit.k.nautiyal@intel.com>
 <acrUAfRP4nLXSBMD@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrUAfRP4nLXSBMD@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: 485a86a3-4447-4f68-0683-08de8f1e00f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: +3u+JhYPUTEksyvwqzztYgNKP79hK4zTV+OSWPy9FWPNJLoNJEw8GzwLr1SwDLqw+oMgnYxn+hewqGEmPiS9ve9qt+c4iYP5qxljWgKo55KzVGKadXurJrWG1OFD7HrU1+6SFvz3jA0czPwjbnOgmMRIuhsl6llh1lWA2nV5C01LyuFImNrbO5B9AnQ7io7y+LbzqfJb2DHKRhOizTsF5ZhjPuBufvEmzY5RqLksn1SBdDZ6vY/et+qKaWXzqy1tHnT6vyFj0ABd9mmRnnRl3p423IqJlhEZlktyR4frFh81HkaA1QIa+UIGaYoKCC8GR6lvzNHY7XPs4I/ZcQepQeoIuVgKLaaLzyH9TESTQkuTEVa3bLhVfAiWPZUevXwziV+jCDSENBJjHkDA6lf7E1FJ02ohHt2Qstql9pwa0W9lN/hGEjahsKWohuaZ91c0rOI71C8w9tdBDiXG5xCrxGT5fSoUQUwOdJ0NjNB0HTgjd0H3wAC50voDKIiq7mAAGGDhXgPraAiUN6EEA1T7ldp77tQs3k/WjQVvl6OeahIqiIvxFced82WPAWN53qPeUTqupdvd8vg/iAlBoFXd0/j1wOa5JckOKeXtfBqGPet9+B+4MsFHOgsHYl7GSLIBBcGTVGIyUbIjsTuYPMDxJ2gnWx4n3J7GD5+/wMQDZsGPMrsZaDRmvNZmn181R1xQ7NobPd3uZ7jjXu4o5RaZsL5O65EinrwXSPf4Ze5u0z4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3pkMzR3UW1hVjV6N3JOeEFqOFBDRzNFTW8yOHgwV01wTU1TZkdKMmtHSHpB?=
 =?utf-8?B?THVhUHhIVnI2bTREcUgzMFNZZ0kvU20xVWpMZ0czR1ZvSzdHL292b3dJRVpm?=
 =?utf-8?B?QS9nVGxhcU95WG9qZG00VHNHanVCcDc4emNPRWpOd1hoanB4TVgxQ2dQdDVZ?=
 =?utf-8?B?akVtT2ZJWlowc3pFeENjMS8zY2NOY0J4dXVFcUVVd1ExTklEWHNaQ3BId1JI?=
 =?utf-8?B?ZExEQU1yeEl4U29CWndXTTBSd0MxakNVYTRJaWtOejgyYTdxSkRXekNrbDYz?=
 =?utf-8?B?R01IMmlxM2w1RCtpTnB0T3lXeWtxR2dKZWJ5ZG1abVoxTmQzV0RiL3lJakFT?=
 =?utf-8?B?cHJ5VThMaTBhbzU3dVBLMU15aFBUemd1N3lNUDhEN3pBVW9KY0JYcGlsc3Nq?=
 =?utf-8?B?K2xGSjZ5NUVMb2grUkhLdXg3bWIxZWR4a3N0YnQ5YVp3cEl0VVF1dHhEaWN0?=
 =?utf-8?B?ZmhBbmJOWjFvOWNMZHlQOFU5WHlhNkR4QVIzN2tKR2JYY3U5UnU3NnZJSjhK?=
 =?utf-8?B?MWEva3J1WEdUOW1vMU5KRHFVVWIzWTBqb0RobVlzcDVsSlpQMWhSdW55ekUr?=
 =?utf-8?B?ZzRpQjdJNTdmUXlRem1MWWsyUW9TdU5WNld4SUJRVHlsUmxYNThvM3FxUjhL?=
 =?utf-8?B?NE1wU1lDM0MrZnJPcDU4N0h1M2wvM1g5RExreXRvVEltMis5NWtlZVJ5ZW16?=
 =?utf-8?B?Q0ZHcmY4WG5SVnZvSXFoN2t1WE1pZjlvOG5LRlBLYnd2UUZwRWhNNVViNUZK?=
 =?utf-8?B?bXpKYXd0aFQxOTlaT3p4cEVFb3BIc1NEc0l3RmI4cGpaaFEyMlowcDNITys1?=
 =?utf-8?B?cll5YlZVSm5NS1NraHpjUzBOVFZvSHlZMTEyS2ZLWGtZMlJlNGNLZ0NyN25S?=
 =?utf-8?B?Rk1rWjVZRzFmNkdtRlgwMitGYnU0N1kzRVN5ZFJVWFpOMDVnNUJ2YjZ4ZjJZ?=
 =?utf-8?B?NW10TVNBb2ZSUUR2Y0hSYXZBd1FUV09tNHBqNjhXZCtza3RtNW1HaGNJN3A0?=
 =?utf-8?B?Z3ZoMFVTK1VMMmdQTVYwNWVsU3J4bnNYTWhwa05TekVZVHc4c3JUWTFsTXlo?=
 =?utf-8?B?eW5xSHo0QzhoSW9yQVllRjV3citQU2h4ellvajhBVnpiTDZVeE14Ti9ZN1Q0?=
 =?utf-8?B?K21tRm8yV2JUMWVRejZrL3BxdkU0R3V3UDRnNUxYUWltanFKbDFoblRramlU?=
 =?utf-8?B?MGxYU3FhaGNudGhkOW13NHNKZndSZXk2aU1zRG9tUmdidlRTVmtiNnlXdTIv?=
 =?utf-8?B?VDM5eDd1bVFCWnp4ODU5Z0M5eDFiSmZ5VUF1OVQxMi9raWZPS2VvRjYzNUFh?=
 =?utf-8?B?UVNNWUw5WnRXNllSeUU4NU4vdzJjK0NCZkh5dWNPdU45SU5pRW9kYmY0azlC?=
 =?utf-8?B?RG9wbnlTdjN0bDNEcGZla1lYbDJyK0FjeTNaWGdlQURIWFpNQ3dQZGNaYjd2?=
 =?utf-8?B?Zlg1dE01UUEvMU9neGhBMUhmZS8zWnNVOFNrMVlvN21UOHc0NzlGWjlkR00w?=
 =?utf-8?B?Ry9kQUVxMTRRRW9ZNzRiaHVVVzJNRklmTTR1Y0ZSUHlka2JkVVpEbngzUlVG?=
 =?utf-8?B?c2VPV3U5bFJjUWNQcFBjZStNTFZVaW5pUmt2UTdrcVpzTWZZOGVCZjBTMHg1?=
 =?utf-8?B?K0hGL0tsY3JEeTVFaWQ5b29lQWx1d0xyM2RhcnVhQ1BBU2E5S3RzQURuZlcr?=
 =?utf-8?B?L2d3amhTREd2a3FidCsxMU1SVm9DZnRFWVBhME1qQktTSjlUWlh4Q3hwSk04?=
 =?utf-8?B?NVd6bWpaVFJQSlpFUGJUanQwaTAwZHRsdEhzczRwY2tNRWtvZnB3ajZBeWp1?=
 =?utf-8?B?clhxeXdReGI5U0FYR05EdXkzaVRWRDFRZ2d1aXRQTDBxUU9lWkQ4a0JQZENW?=
 =?utf-8?B?U2M3VFRaVjVnL1VNZUo4WTh1ZVBHWVpXN0lNSUhRWEljTndHSFNmUXA5ZU52?=
 =?utf-8?B?ODRpOTh0NkZLeUFQTVZqdGVtM0RJN2xDa2plaTlXdHVQcUk1aDhvaVNpYmQx?=
 =?utf-8?B?b2pzazFyd1dTR25jNDBpTXUwZ1kxc21JK212dGJxNW5wQ0dRK0ZxZmQ2eDFm?=
 =?utf-8?B?Nnc5VlBQbTF6cjBvdjFJZmpNZ2ZOSGlPUUg1U1dkUTVpTlMydmxMdXFRaFdk?=
 =?utf-8?B?cS9aSE1vOVhTbFF2UkQvR2JnajJSQjVtU1ZURlpVeXBBM3JSUHpPUHFkelF3?=
 =?utf-8?B?VlRrWnZaS2RpRVUwaWdOTEVnWHZ0Rnk1SVdlRlU0ZU1EeDF1MHB4MXZ4emFw?=
 =?utf-8?B?ZTFvcDBSOWRwcmpUY1dxTHNDbjZ2M3ZRNXM3M0s2Y2xKMC9lZVFkYWU5UDVJ?=
 =?utf-8?B?dGNic3hUK0M4TEFEbjR0cU8zNHdiYk5JVEtZdUN4T3lHYmVzMUJHZnNRdGIy?=
 =?utf-8?Q?xqyVfLqqUH0e6+78=3D?=
X-Exchange-RoutingPolicyChecked: OtbYPNBR3nCplwGUwMtSxulycB892jPSvEjytLqpckm7P+U85s+mH2mFggvhTSSx3tcSSa1fUOrrvcGQWZiCmxBdRzwxjh07SdB0ll3m25uoo/J9dxy8e7HZF7udMKlbDd8cjeAhzAqPkMqx3KY6EQ4/Mit6WshjwjPuIKBvALuacS+F1+tqRyxNXl4XDd5Ssb5xdBFGg/0j5C4PsYkvNsOxDqTpHIf06Gueo4+J5rdoCvpRR7iY1ETv7hnWkbmyYngKxiWa2wPmUV843ew15h1ccoJYYnjjp9H44p6FxGSCRjTXv70GrbUqMhEzYENiZD17et4E0aHTF0OHx2hAYQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 485a86a3-4447-4f68-0683-08de8f1e00f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 12:06:56.4444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ml5uHUQo9NUAttqaHHVtuvQInhhFey4zUUlbXC9faVsqtjh85VpMl0yJoenYUxNaoGU4ASsVGFelyvw7ZMMpDgdgdkjWQOkckf6R/G5D5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 247ED369455
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 1:20 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:56AM +0530, Ankit Nautiyal wrote:
>> Currently AS SDP is only configured when VRR is enabled. However, other
>> use cases like CMRR, Panel Replay, etc. also send information to the sink
>> via AS SDPs.
>>
>> With optimized guardband, we also need to account for wakeup time and other
>> relevant details that depend on the AS SDP position whenever AS SDP is
>> enabled. If a feature enabling AS SDP gets turned on later (after modeset),
>> the guardband might not be sufficient and may need to increase, triggering
>> a full modeset.
>>
>> To avoid this, always send AS SDP whenever the source and sink both
>> support it.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 7da3dee226a0..81be0767927e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3136,7 +3136,7 @@ static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>>   	if (drm_dp_is_branch(intel_dp->dpcd))
>>   		return false;
>>   
>> -	return crtc_state->vrr.enable;
>> +	return true;
> I think what we actually want is something like
>
> ...
> 	if (pr_auxless_alpm &&
> 	    DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR)
> 		return true;
> 	return intel_vrr_possible();
> }
>
> That way non-VRR PR panels that don't need the AS SDP to maintain
> the synchronization can avoid the AS SDP, and thus potentially use
> a smaller guardband.


Hmm.. makes sense. I will change this as suggested.


Thanks,

Ankit


>>   }
>>   
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
