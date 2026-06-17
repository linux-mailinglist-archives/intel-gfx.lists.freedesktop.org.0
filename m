Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c2qjN8wpMmoKwAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:59:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 489C26968EB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 06:59:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Z/ozy+2s";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF15310EDE8;
	Wed, 17 Jun 2026 04:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2861410EDE6;
 Wed, 17 Jun 2026 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781672394; x=1813208394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lnmKjeUGWVaLzGbX3BzZt2kKKAvp9p1YmGJ+KCAjPZA=;
 b=Z/ozy+2sqzoQFj8nXPK+eG6evmYzwGgtup8oEh5pbeYMOm3xmNntbYB4
 VYkxFkmHVivhzbGUyjrRK4EdVa4B9Xeb9eojvYlLz8YS5IY95yiBGbF6Y
 0349SBmKD6tl6umPL5M5cQcy/k2BMVUVaQBbCbUXGaQ8DSAx/hq8L3hDL
 LF1ji+E17aQW99szdSiEONsjbsnq0Y7VRhhBjs86/ke4H2xlZGhemhE9M
 x+JuVdzaudYX+ZdDeP4WXwUGKaA812ZK8Ka4kBJ+7bTQa4Dje9hqv7UFa
 SQBrjzpT5WoHXHtiYyQLwRvBOkldmh/P9EWzVsvdrwCYYjpXqibnZo7sy A==;
X-CSE-ConnectionGUID: bcOg4WIuSVKzQQnuvghxkg==
X-CSE-MsgGUID: 9/BHbDnVSVy8hNaQy7xNBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93945653"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93945653"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 21:59:53 -0700
X-CSE-ConnectionGUID: 2depA0SjRhWOxAl7OOYWWQ==
X-CSE-MsgGUID: HSxrtGZCSCuM3dV05t++3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="248046132"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 21:59:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 21:59:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 21:59:52 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 21:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qnt2CO+GeEkgvHfDvEvs0eYcEEDlmTjWfMkXSH30HTw9XAidyOUCdYh2YLTaJD4nXRbhccStmEc0nGyQ13QpLDHgleGsdq1cAPgUM01641TqyxjhAEz3oLz328Y5B0iFymu8JIzAulBComxsPvNAPL4jhjNEw0hyw/97TCKaUmHHEpPR1A9OMxjUlFMUhjifgdJ2XLEsQIGEPiuMacaBMXNnhH3OFapqMkbBtmorvFZ1ZixzDZmnmdH7S5JHv9A2ls6XqOOqy09jk1ERBuRy6xFUlsUuBD6QcioZoSaEkH8jTH9Kc4jZa64m4ZwdDgK5YqDDO3A0yfYUzPvCOmYoUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ORewpwZ5P0ZsSCcgRJ1mxiT+b5RtbOOQ5I+ujqAAddc=;
 b=Aj4KHOiyR9mNZILegyGs3wtS1mbZCxiDMwa5ktQwHb6t5PzdQ2v0VfL6HpjP2U5JbyzHTzXqfR2cF/sKQZn2FJriM1yP/Dc0iTqB84+G/pEMTjLbEgVQFWcmDUxu4sJYR95h25sKMO7MvR9SQPlY6SNUh4y2WgNb7GQFyCbB3Puh5hj7F6Bcjr5kLmwstIh3+R0AGYbOIthBZg0YFcP1H2C48KutP/sBzZfFneHIp+8Dsm8T5NoGGQz3c2HKu90trSDzvhp127ngweC29TCe8qB0BbqPpid9WhD2Pw50OCXhOKij8p+J1/Z5BSZ3U7hzFAVs3qI5vaN3TYX2+AqsRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by CYXPR11MB8732.namprd11.prod.outlook.com (2603:10b6:930:d6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 04:59:49 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 04:59:49 +0000
Message-ID: <95653067-81ed-450c-82e3-0d226661f553@intel.com>
Date: Wed, 17 Jun 2026 10:29:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/i915/dsb: Use safe window path when VRR TG is
 used
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260608123711.1121908-1-ankit.k.nautiyal@intel.com>
 <20260608123711.1121908-3-ankit.k.nautiyal@intel.com>
 <ajGPqbOB6p3qkdxk@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ajGPqbOB6p3qkdxk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::15) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|CYXPR11MB8732:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ce4fec8-5327-457d-5863-08decc2d420f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007|4143699003;
X-Microsoft-Antispam-Message-Info: 7uCfL2sU3UFw83NrTxd8tsb9sKGt3ZrdWF4c9MZY/8eS+ETsRjPiG9PdnpvcjhYdpL+GxpAKhEES/v58O+qh35olYIvBimERNWGyy7XPESt5BF9JmjH/1iIaT1ETidJ7hFgHrx+0werbVBwXEiR0OWEbXkqEEmp0jljGMt7HVWMwR1yBV4GDFrg1yrFS3zjp3LvpVYB6TLB/pe2mkwY3pfpOoMb8I9Y375bEV4Og+26MwNe+HPdPAsMRFmN5fyYOd0STFNw2mG2ZUoaNFWYos9sv54tQXpixLmyQBVyiI0MotCLiADpmWOD9gge0FaxYL4eGs/IezP32tVR1TvZZ3WL76E1NYiW3v4lD4VTUwiMNWFc1grE9FHM2fiIbx5vLxOuujGGAK37+DJlUp9U9HaVW9fFWu7Vazle0KInipVrAf/epfc4xpNbakF6a75Mj7jCh5YfW4TQef8X+oQcF/+LOZUMF7n39bc6DPu2R3Bl5UYY8V43RKRf5xUrqZ4OTQ8/Dp0GzPPEP1jNoBwU4mzjSj4mQRLimvIJgW4+aVJO8sdLytCtLyCdJjoKrdxVU1z1xJeT2MGalTzuoJtdbifaaAPrcDtPtvHgw9iB80MEZamluxG+ZoOnUVa74spOtL5sPVNjwvjp2zSqPgGpWaGGrCo2mGKJdZVNwj6HkJGFzTKY8pPbqSscVuR0FmXHI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkpaNGtCajVDd1A0YUlYWk11RE5Hc0JYbGhNUEI1M3lZOXB5S0Uwak5NbGV3?=
 =?utf-8?B?OHdRQmY5czQwWmxpS0xndXRKdDN2Mm1hQXFMMkdER3NBWjZESWwxSFU2RzFn?=
 =?utf-8?B?Nm1aOHJXTGovVWRzSVN1WUFMZEdoTFlrQUxZR3Q4VzBMbS9aaHlESkdzMitm?=
 =?utf-8?B?dzhLdnFiNXNubGg4UlE2aEFOeVRpWCtCblZYUGYyaWVYNmpablpsZW5mVUx4?=
 =?utf-8?B?bkpiYlE3T0EvL1ZmSnZnRzFWWFVKR09iQlA5MVgvTVN6S3lZbmtvNVRrR1NU?=
 =?utf-8?B?clV6d3U4Z2V6UUF3dDRUaEhQQkE4V1JMQ1dxYTIzeEIyUFl4S0R5cDFRZGR3?=
 =?utf-8?B?RUxGMHpVdFg4ek5UK1p0VEp0WGVJcU9MVHBjTG1iemQvOFdSdG9GZXBiN2dW?=
 =?utf-8?B?T2p3Ni9zZ0hxOGJrYW13SUFtV0tsUHlmdmcvWG82d256YVNoMDFYSlkxN0dZ?=
 =?utf-8?B?ZlpQUm9FNGhwL1J3R2RBUGgraTNka0hkS1JGTjNJR1duWmIwOFBHSFN4RzBG?=
 =?utf-8?B?cUlYVk5FSkFma2xUTDZRTHY3VVJTeVo5cHZ6eWlHNjl5d1VWa01FbXpuME9J?=
 =?utf-8?B?eWl0b0dQaUZ4ZGZTdC84dE5rL2VCOE5WUTFUVElLUkdqY3dnV1dEYUR2L1RH?=
 =?utf-8?B?emtpRVN4bHZoTVlsQis2NG1TREtYajVWYmhLS2ZSY2RiODBRY0htU0xQS3NF?=
 =?utf-8?B?OTRHMHA4Sk1wRENQaUhGZ2w5anVrenJPbHYwaDQ1ZGcwNGYvOTBuNVRncXln?=
 =?utf-8?B?V0NOTTkyQ1JDUFZvYi9lRFIvcnlSSUd1ZUlDclhVZlY1UXp5RWR1WVhLekNJ?=
 =?utf-8?B?WXd4TnNKZEtuNTRHZ0o1TWppRVRseEZma0dnQmUxd281aUhpT0tTd1FqbzJK?=
 =?utf-8?B?YjNzRjlvdmJBbDdFeDJXYmZ0QU5zVDZnOTJsdkhvRWhPbEpCYk1jUHVXTFBX?=
 =?utf-8?B?OUlqYzVTeHNUNnBSNUxWZWhHeFlwMTRONXN3NHdMbWt5WXN0QkdGMWhMN09t?=
 =?utf-8?B?OTd4UnhyUy9yWDFwNCtjVEdWOFR0SlZPeFZDYk4zNXJrb2tRRTA1RHE3d3Ey?=
 =?utf-8?B?aXNvSHpTOE1uendpNFl2UWtwb3FyY1pYVVR5M1pDZFpSV3FWbDBiL0pZUDlo?=
 =?utf-8?B?NzNpMjQ2T0V6VkFqZnVtUHRGK1U0eHY3WGNqNi9PbDBRdDlsWUpBSUNKUGV3?=
 =?utf-8?B?WGNQbldoR3dpbkM5Q2FuWjFqOHh4UEJBb1QzTnUwcjdKM1ZYNEx6ZHF4L1dZ?=
 =?utf-8?B?cmFONFJvN0JSMVIwR1A1MmxrOFpQMTEwY3RJU1RyWUxFSGlyMG1GdG1WODhG?=
 =?utf-8?B?V0ltR3Q0WmtQc3FHdnRTSk82dWp4dWxxVUNqM04vQUg3dUNDUFBJZWF0OWxr?=
 =?utf-8?B?eWlkTU5maWtuMHpaWXZTb0NJTTJMaEdCYy85TnVBL256NXFoeFVCYTd1QUFn?=
 =?utf-8?B?ZmlwaG1KY2ZWeDc0RDNESWtvM2FRVXVWODIxc3RZQWxERlRnbG14V0F4TEl2?=
 =?utf-8?B?SFN6cnpLVEZwQ0RVM0N1NWRUVGF0NElMeHhROFBSeW1BTWtWRkRsSWh0bnI1?=
 =?utf-8?B?MXh6bDNob01Zd1l0WFluTTlJaXF3bzRWclpXNy9nVHhRem5pWjEzaTA4MFk5?=
 =?utf-8?B?cFhoOURZZGw3OEhlV2VFeGVNZEI4WkwxRFFrQXRCUU5UQlozNHc4b3JhN2Jx?=
 =?utf-8?B?OUxsOWlXdGxHWkc5dGMvVFI3cU1PZVVYaEVGVkwvcnBWc1I2MFcrVkpRWlVN?=
 =?utf-8?B?bmR6YngrQ2MyWTBUTCtVdFpWZkdxMm92VWUyeUQyem5lOWRMc3NBVGhTSWNi?=
 =?utf-8?B?cUYwT21hU0FQa1dDOWZ5UWs0akNmOFUxOTQ5Q3NDRlkzZzNWVVUwbUk5RG1m?=
 =?utf-8?B?UnIvRGlPRjRyeUdJbFJQd2ZvT1BLb1Y2RGtkK1dBY2svS0I1RHo5SkpTRERS?=
 =?utf-8?B?SmdHci9WQ3J5b0ZXbFJtWXdIckZsKzRaM0pnTm9BcUNVeERldEgwS0ZMN0w1?=
 =?utf-8?B?WXEwcGFVWCtrOUJsdVgyKzR1azNid0M1N0psS0RSRWtEYmpCR0FWRWFUWGZa?=
 =?utf-8?B?RTBqMnJuMEpjWm5zNjZ1cmEvbENxa0Q2TnZqY1BUbWdSNThlWHFheTI3dVRQ?=
 =?utf-8?B?ejgrMU9JWmIzaXhRNE42eXROYnorKzJBL25JMmZnSlZxb1BFUmEzTmF1SzRQ?=
 =?utf-8?B?S1ZqMGQwVnFzc0VkRU5jQ0EyRmpyYjdrNXJlTHhiTjIxUmthYXU3RmJ2MHBH?=
 =?utf-8?B?WVp6bytuc1FOSXViR0RsUndMbTRscGJIbXpqd0ZpTjYrdW9jamFxZmEvcDBI?=
 =?utf-8?B?dE1UbjRBNWNhdWx6aE13dFpxTm9MY2dZV08rbHUremJ3cHZUNlFDcWJsdlZD?=
 =?utf-8?Q?IRaOUtLGLOU0HEfE=3D?=
X-Exchange-RoutingPolicyChecked: mv2Isz8xWM8FZ7i8gUlqLeDodUyIm7MaB0dCU9Rhc3i1Wd/Mua0yCjQabUaxfi/VUbL5rZgjrDT4gpETFSBAjxvzCDckgRXXj3lyu6zm4T3gZ4YFgN/sS13TcCsYKl6ZhO05oQSd2GaWVQhVa4GS8n0W1kvc+4OdJRQsoEZoiHA6WkJAVhpPozm/Qxt3WMn+3YehMota3eHEO5hWZsaZlTxcSYOwY1kXf7F4N2Rc0Or7o1S+qq3BcUgf03Nb8kWzTpuiPnBPlVz6DsANnYpUuEI8Yv+eu37Cv2SqaOGUKVjHfPunsRE/+US3kaY+02yz9LmHdsEy3UY0wJHo1ovMqA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce4fec8-5327-457d-5863-08decc2d420f
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 04:59:49.1266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T0PmCRkZE+6HVGCaM514/GrpI0XdEmA+stRRddgR1+0XGhaB7m2d/76AvVQ9Z4shbsYre7zMzbPhzs2HiX+SdW22pCewQ0kaZ6hPmQGv2IA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8732
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 489C26968EB


On 6/16/2026 11:32 PM, Ville Syrjälä wrote:
> On Mon, Jun 08, 2026 at 06:07:10PM +0530, Ankit Nautiyal wrote:
>> When the VRR timing generator is always used, the hardware behaves
>> as VRR-active regardless of crtc_state->vrr.enable.
>>
>> The DSB paths that depend on the VRR safe window therefore need to follow
>> the VRR code paths in that case too:
>> - dsb_chicken(): program the SAFE_WINDOW chicken bits,
>> - intel_dsb_vblank_evade(): use vmin/vmax vblank starts for the
>>    wait window,
>> - intel_dsb_wait_for_delayed_vblank(): wait inside the vmin safe window
>>    before the scanline-based delayed vblank wait.
>>
>> Introduce helper pre_commit_use_safe_window() and use it in the three sites
>>
>> v2: Instead of modifying pre_commit_is_vrr_active() use a new helper and
>> use it only in the required places. (Ville).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 20 ++++++++++++++++----
>>   1 file changed, 16 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 07dd6318d9cc..d1441a86d1cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -210,6 +210,18 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
>>   	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
>>   }
>>   
>> +static
>> +bool pre_commit_use_safe_window(struct intel_atomic_state *state,
>> +				struct intel_crtc *crtc)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc->base.dev);
>> +
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		return true;
>> +
>> +	return pre_commit_is_vrr_active(state, crtc);
>> +}
>> +
>>   /*
>>    * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
>>    * different from what is explained in Bspec on how flip is considered being
>> @@ -229,7 +241,7 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
>>   	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
>>   		DSB_SKIP_WAITS_EN : 0;
>>   
>> -	if (pre_commit_is_vrr_active(state, crtc))
>> +	if (pre_commit_use_safe_window(state, crtc))
>>   		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
>>   			DSB_CTRL_NO_WAIT_VBLANK |
>>   			DSB_INST_WAIT_SAFE_WINDOW |
>> @@ -759,7 +771,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   	if (crtc_state->has_psr)
>>   		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>>   
>> -	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
>> +	if (pre_commit_use_safe_window(state, crtc) && crtc_state->vrr.dc_balance.enable) {
> This one I think should keep using pre_commit_is_vrr_active().

Yes you are right DC balance is always with VRR so 
pre_commit_is_vrr_active() makes sense.


>
>>   		int vblank_delay = crtc_state->set_context_latency;
>>   		int vmin_vblank_start, vmax_vblank_start;
>>   
>> @@ -788,7 +800,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		end = vmax_vblank_start;
>>   		start = end - vblank_delay - latency;
>>   		intel_dsb_wait_scanline_out(state, dsb, start, end);
>> -	} else if (pre_commit_is_vrr_active(state, crtc)) {
>> +	} else if (pre_commit_use_safe_window(state, crtc)) {
>>   		int vblank_delay = crtc_state->set_context_latency;
>>   
>>   		end = intel_vrr_vmin_vblank_start(crtc_state);
> This will now emit two WAIT_DSL commands, which may be a bit confusing.
> Might be better to add a completely separate branch to the if ladder
> for this situation. And for consistency it should perhaps use
> intel_mode_vblank_start() rather than intel_vrr_*_vblank_start()
> since we're dealing with fixed refresh rate timings here.


Oh ok. Right.

I will add one more branches as suggested.

This will now have 4 branches:

-DC Balance + VRR [Needs pre_commit_is_vrr_active()]

-VRR without DC Balance [Needs pre_commit_is_vrr_active()]

-Fixed RR (always use VRR TG, NA for other platforms) [ Needs 
pre_commit_use_safe_window()]

-Fixed RR (for other platforms (not always  using VRR TG)  [else]

I will fix this and re-send this patch.


Thanks for the guidance here. Its clearer to me now.

Regards,

Ankit

>
>> @@ -891,7 +903,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>>   		&crtc_state->hw.adjusted_mode;
>>   	int wait_scanlines;
>>   
>> -	if (pre_commit_is_vrr_active(state, crtc)) {
>> +	if (pre_commit_use_safe_window(state, crtc)) {
>>   		/*
>>   		 * If the push happened before the vmin decision boundary
>>   		 * we don't know how far we are from the undelayed vblank.
>> -- 
>> 2.45.2
