Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4075CB077C9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B3910E086;
	Wed, 16 Jul 2025 14:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hABJU+9e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C01310E086;
 Wed, 16 Jul 2025 14:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752675534; x=1784211534;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rzJNNCCo9AABeaWZBLFH0E0X7ZwG0fZczZZb0adO82s=;
 b=hABJU+9eWkEFjvK08obQiBbuWI1gWimTyzEJWo9Sr5gJT6N84Grku3yK
 RN2I2rcOTcQ637IFw/3SbfVFq8i4RcI0FEJX/Dl5ietdKol17UFyPyPwY
 YlL+Fm0OK7R1GtLqecc18KNmWCK+b8juc9hNkFUAvHvhYp5l/2CDaegjO
 /PviCAQgS9RmBPPBTU188bwEPaiQJmGJcLsqyrDmFXktTe8ZIIIF4jkV6
 vO0E4Q9e+HH45WpQvm/xPFAS2Eu5t5ekqS4s/upukXvbbDucBDTG5vs6o
 H62x2QbeEet15Rj4iLpnnDEoK3+B+n392/YNFhP2GvBjCmZpmsDkv6EeD A==;
X-CSE-ConnectionGUID: rNIfiMb2RPeHbmHwkctUWA==
X-CSE-MsgGUID: GgO+RA4oSjy7xCi1ne5f7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54138455"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="54138455"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:18:54 -0700
X-CSE-ConnectionGUID: ti9cgjk3Rq25ghj63DToXQ==
X-CSE-MsgGUID: lE+jhAAmRiWqrkXFZNz2QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157606069"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:18:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:18:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:18:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:18:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZiJ/1X67TMLAiYBH47rawVWLyJ23Ao0pKjGvJ+f7oYNu3FJdIFcVShjXyF93nxtCRZwlquhheqaqyRV0kwryPx/3YJE8ZmYTeBwfefLXCix48v9rgDFmcbpaVlvR3tVFPVNC5pc8xavsJSAZ5ptFZWuTUY7tQGF+k41Z0dj3Ljf/FrXjRz3whGbgWCcH2kfCQkotEx29oesxINS4UkrNvwg6HaCUzS/7FbGgKtQDxmGTxESaVyYL/8wo9hDJkd/TkfbwpyN0Mv51tIysJfuPLulj/dynuuUuMZbXECAZKvDNFwGIGXSktBh7di9w2d0AJjdB6g3C7EJnoEB1lrPlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Mz9PKComkzqihqEBAYnecj60/2VbtwAvswkwHhxvd0=;
 b=TwA3iaOvdfAz6Il7B8EdGVa/YqqDYFBWT2TTff4fsmmM3f5grLoDWJhYAkxC/9FoYiA/p5oX9+P4/JdGCPAUqbR9Y4SJ5ME/njHUD6hYx6rb82u30cVYqnbdhnjo5Ngh3RrRMHAV+DViw7bCXuSTtMzs7/S+6n+EED7jJb2ttl7beYGSMirM+HMwQa8vop3VZhZrtX7dLCU50axRA+s9fSFm3mYpbKLwmB3ju/CfaWPob2J1fqEQI+H48h3jvQBptF1IiBFjk4jGvIWxy8sixh/wiUCkNNihrHId1FSappvz13cI8aa7PYclJ/EF26YSyUIjrqWii5rr7Gpvf2yotA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6708.namprd11.prod.outlook.com (2603:10b6:510:1c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 14:18:28 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Wed, 16 Jul 2025
 14:18:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250711041901.1607823-2-ankit.k.nautiyal@intel.com>
References: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
 <20250711041901.1607823-2-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <lucas.demarchi@intel.com>,
 <ville.syrjala@linux.intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 16 Jul 2025 11:18:21 -0300
Message-ID: <175267550149.1809.7202419548825467337@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0231.namprd04.prod.outlook.com
 (2603:10b6:303:87::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6708:EE_
X-MS-Office365-Filtering-Correlation-Id: bfde9ef1-ee35-4d8a-9345-08ddc473a291
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHMzQ1FxSHF3NnBNa3I3Z29QR1BQemEwVDYybDJPQ0M3TGI1YjU1NlJmSEpC?=
 =?utf-8?B?Ym0ybWYybllBM3Z3a2ViVUVLa0F0L1dZeFRBWjhJV3F4dytRYnBGdERBaEtx?=
 =?utf-8?B?UkswM3FMbXp3SDZmU2JDVExYS052bVphYUhLU0xnQlRuT2c2cDJleFJ1L3ZU?=
 =?utf-8?B?RHNqQ3BEbE1CdjQzdGhEZkl3OXBLYVAralBsMFdCYTg0aW9XcHkrYWcyZ1VO?=
 =?utf-8?B?UHJQeWx5WkVPZHNsYloxMXNsdVVucFFpa21CNUFGS2NnTTJuWVVwT2dxWjZL?=
 =?utf-8?B?TnpVNEh3WGQ0T2V3ZDAzQzR3VDVDNTZUMzdWejBvdmZ3VWp5bmViZk9EQzJX?=
 =?utf-8?B?U1hGMVI2a0tDVVhyRFNFOXY1djBDOWlqVzE1U3VBUGJWV3dPWGJvOWl3Tm5u?=
 =?utf-8?B?aFY1MTh1QVZ0RGh5VzBkeUowYzJ2NmFHWDY0VXZJYlo4ZGJZeHZnWjk0OW5U?=
 =?utf-8?B?Q2gzbWJsNEFLQ2s1ekVaQkZ3WFIrNUNnMmFvVWdnRlRFa2d6SDlNUUJFb0F5?=
 =?utf-8?B?SGt3OTYwNldBd2hySml5SGtRRFRacEx2N2gwekNqM3ovMjZiUmNVdkRvei9k?=
 =?utf-8?B?bitOWGRPU1dFQ3FzOUpnNC8xdnhRekkrRjdnZmFROUZkNjNlU2RmbVF1U0F2?=
 =?utf-8?B?ZFdBSDRVcytnZGZGODJYQVI5V3p5SnhTQ1V5ay9wQVgzUmtlZ2RDdW1tbU1M?=
 =?utf-8?B?K2llOXdna00rU2ROWmpuanFXS0haaFBySEdVaG92Nlc2cC9NSE5MYzl2WjFZ?=
 =?utf-8?B?amVSZ0diVlB6TzVSNHNleXpUUGVrYnJzOTNJWlc5cWZaTm1PTW1FN0lUY0Zv?=
 =?utf-8?B?VlhidlJ0STRDUC9jS0g5aHBLNmZwYzNuZHBMYXJLUDF0U2VaanNvNys3cEJP?=
 =?utf-8?B?RHNaV1hGNElaZm4ySytsQk5mTHB1VzNNK3BNMFpWT1hZdHcwc1grS1lUKytK?=
 =?utf-8?B?MVgvQk52ejJ5Yk5mbHhQbjhlWkRBNlZVZXFlY3dtL3VxY2wrNzJTL2N4Nzhi?=
 =?utf-8?B?Z25MQVAxOXhLaFNxL0hSZHN2S1VpMWU2K3Z4L0JDSlN4N3Y0eDNQbUJGYkVC?=
 =?utf-8?B?dWNoN2pjaG5ncGNlVVUzem02cklEbmlURDdpV2xHYmIvdExtZENVaExpMTlh?=
 =?utf-8?B?M1pFTmVaZEttb2JxdFcvK3Vld0tFdGpqMk1iK3p1ZHgvN3VXaHVMV0M0QytS?=
 =?utf-8?B?dzJUSzV4bW9wOWs0ZXJFeERXbXV2WFVUN094cGJnOFJFc0dJWVZGYURQOENF?=
 =?utf-8?B?VDkzSk8zd2d1YVBhVjg5WW1OMWpiNm1qME5LMTJGRll5YTlZV1lya1BlOW1s?=
 =?utf-8?B?TnVFTWJGcmVNOEdiV2g3czRaUy9INHlzaXRhRnBiSjRZeHFaVzlNbzg3cGZW?=
 =?utf-8?B?dG9IUnFMeC9oSElzc3pWeXNqYld2WU5WekkvMVQ5bVd5VGVzcnk2Y09kU1Uw?=
 =?utf-8?B?VEYyeDNFN1ZhVHhsQUx3aWh2bEE2YThpa2lwa2FLMjl3K1ltMm45bDRzSklt?=
 =?utf-8?B?SjBhRTMrL3R3c1ExSDBPZUJwLzE3RThTWENKcEtxZWZORmdTZm82MU5iNlZ0?=
 =?utf-8?B?c0M2Q3hoVDJiUnd3ZlVHRS8way9MbmRlS09jRnZGcGZCVjd6UWtWTHRiNFdH?=
 =?utf-8?B?Y1B1b2QxSGtsODVCcnNyMThyVTA3VUIzdHR4TGNVNzlIdGxpdWF5MDFoeWNM?=
 =?utf-8?B?ZE0zU0pScDl4aUZhdVVkNmM0L0I0VHJYTFFXcGlRVkQ0RHNyNVBNSWJtTHNa?=
 =?utf-8?B?WURUVWdNT2djR3VGc3EybUJ5UldTcThDT25wRVhlNzBGWkFWWUJ6RjZ3c1o5?=
 =?utf-8?B?QVJUUjh4UlZQd1p5WXV5OEpRYzlPNHd0VFVyNXgxN2Y3blFVUVd2NVA3SWdx?=
 =?utf-8?B?Yy9uTU1HeVM4MTFyUS9mazhzMmlES3YvOFBFdGZIYWRtazFBOWtZVHVGbm9O?=
 =?utf-8?Q?gsdRjnyY8n0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnBjOGk4VklBMVBWR3lZa2o0amcwNnhybW95TTZCSC9RcmkxMTNKcktaKzA1?=
 =?utf-8?B?dzN4bWRLWmlCb281MWFYclAxdEQ4eWhSZDJLL3RuNW1sa09sNVorVkJjb2py?=
 =?utf-8?B?QWlXamxxTFhBb2NkNjB0VDdUV0VPYjVmQnV2TW5rZnJRblh3U0ZlM3ExY1NC?=
 =?utf-8?B?K0xhMlhUQVBIeVVZcC9iTE9RSUY5eFI1OW43emRnT2xvMndQRVd5VVFjODVW?=
 =?utf-8?B?NVBsWFlXNFp4NkxYWFk0OW9hZUlod3NKYlY1cStleDNaZTVmNDd2amxvNTd5?=
 =?utf-8?B?VklaTmRKNTMybzJHMk9KRnFDUHU0cEJtRTBjMjRFM2hSSld0TTZZMG9uaGRK?=
 =?utf-8?B?TDFBNzhmWkJxN2FCcXAyNk81Y0FDZFdpYmJrRHFkK1ozZGl2M1VlZ055aEJ2?=
 =?utf-8?B?eVpVR0VyNGx6U1VJSytYc2x0K09jMS9lSlVtbCswSzQvT3Z5ejZZZFFzTG1t?=
 =?utf-8?B?cm1MdmFXSjZZNHA5NEpBUU1kNW9TdnJ2NmRIRjVmM1NDa3haUXdHZ2FwRkhI?=
 =?utf-8?B?WlR2bXhlQzZOOC9Qekc2Qnloem9FYUs4OUtFVlFES0MyMDVwT1F2K0dqa2hB?=
 =?utf-8?B?MXpvVkVOVTZrNmk4VmsyNVIzNkR0KzNxaFRybTBhQmN4djJvdE5tZ3ZNZG02?=
 =?utf-8?B?ZHJ0MHJCS2ErK2owaFZUaTQxYnJXQ1ltd0MzdTdIb1UzMEhqRkJJNUZRWmFF?=
 =?utf-8?B?NlZjUEEreC80Y1F3Q2NGVmNDVjBrZ3pXYXdlR1NVcVRXYXV1U1ZMZWtrTjND?=
 =?utf-8?B?SHd6WXI5cFRmWmhaZzlHZTAxRkJQMTAycTQ2cTlaWHg4anFucXVPUG8vbk9Z?=
 =?utf-8?B?K01TM0xxQXRDMkFET1VLZDBpTEsvaE0rMlVHL3JyQnV6V0pFK3lMUzc1cmdj?=
 =?utf-8?B?c0puVURlRlBQa2ZTV1lPU3dIZmx3MGJpTHF6MUNqeUs0SDMrcEVOUDBiQ1Ir?=
 =?utf-8?B?WHVySTF3N0pwZG5DOHBBb05teWQzUmVZMEdPY3Njd2diQ3VweUFXQjRibktv?=
 =?utf-8?B?NHRqYkkySkUwZDFQVjdVOVJFZGtuV3JUWUkxQzJoYW1zaktBL0pjbmpaNXRt?=
 =?utf-8?B?RUQxSEFhSkhzUm5GR3RUcCt0aFJMNUFtc1BqL0FFU1Q2cHVlVHZUYW4zckFq?=
 =?utf-8?B?b0dFL1hmZXZWRVVzOUhISVRMRkVyL1lTZTd3bVlqZWJqenNtN3loQjdoWStF?=
 =?utf-8?B?eFVycFZnNDV4djFpSXhsUFNaV011YUh0Sm1STDk3alNWTWFHTUdFTVBkYWpG?=
 =?utf-8?B?aUJaUDgzQ3RWMXhoY1JONkdlK3FTN0Y1TEpPM2VDcnVKZkNZZlQ3TFFyeUd4?=
 =?utf-8?B?U2dWdHEzNUNVd09LMEl2b3F6RDlMSjcwRzEreTVQc2E2cy9DS1ROdnV0emxW?=
 =?utf-8?B?cG1pM2dTUDA4US82dXNZMWhmbFFTMk5BUzVpSGQ4RllyWUlUcnNoN2xyZ2pt?=
 =?utf-8?B?ZFJrSTRqMUpDUWJjTjNaeE9FaU84bDByTHpBMW40c2dyMW1HZlA1VkkzV0pv?=
 =?utf-8?B?TDFPdHJNMExad0xsRCtwa2dDZk1DWnpvYU4weFVxZlJSMExuczR4WUFDOUxu?=
 =?utf-8?B?dGpjdk1lMUNQaE5McEllWFVrMnAvRDZRek9SUDR0RE8zazhpZ0xwWGdRRklm?=
 =?utf-8?B?T3BQeU9ZTE1pWC9XT2JkclBMcjJZUHphbU5TQVZyakl1L2tIcjhsMEViODBy?=
 =?utf-8?B?MXErVnhDN3BTcmY1NU9vSC9oRThaZzNrbTFUMnR3Uk9vTGxDQzJEODkrTUlQ?=
 =?utf-8?B?UTAvOWw1OXZ0R0poRSt3YmpOMXhEcHJhRGQ1RmJaY0dMT0xkaUhZQVIzaUR0?=
 =?utf-8?B?WFEvL0FFOG9jSWZXb1RlallvYlVEdTYyS0lqVFVWbFZNYjhUMUxSUFRYczFY?=
 =?utf-8?B?SmFTV0RmdERIMHNRZW9JU0pLZjk1T3pxaGorbXYwNFJuYytmdXdrbGlMRm5L?=
 =?utf-8?B?K1NTV1RRNW5LN01IcUdFQkdzNFZxK1dmcGlZOFBubUNUKzdRTWZaQkhMdTdE?=
 =?utf-8?B?am5wVjNwditjOUYyTlpxc2dVR3FKT3VmOHV1SkNnY3NOUi84Z3FjWTNod0xi?=
 =?utf-8?B?bWVXUm42OXRkNFBTall0NC9RWkZCSE1vMThETU9CRXhlc3k2cmRlOHlxQ0s5?=
 =?utf-8?B?d0xnYld2b1ROZi9SMnBJdTdRN0lEaGxWVDFMOE05eVcxUGJ4LzlMOHB2L3hL?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfde9ef1-ee35-4d8a-9345-08ddc473a291
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:18:28.7585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3B33vJ5qpPbRWUzDrR6k2HZYPbMC5txOLdc81MI6pepTGL8ORbPUVsHGA/an0YAwPUsCjA4CmR2iq3UZqMeG/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6708
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

Quoting Ankit Nautiyal (2025-07-11 01:18:59-03:00)
>Introduce a generic helper to check display workarounds using an enum.
>
>Convert Wa_16023588340 to use the new interface, simplifying WA checks
>and making future additions easier.
>
>v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>macro. (Jani)
>v3: Print Missing wa number, instead of enum value. (Gustavo, Jani)
>
>Suggested-by: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
> drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
> drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
> 3 files changed, 25 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index f57280e9d041..32719e2c6025 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -3,6 +3,8 @@
>  * Copyright =C2=A9 2023 Intel Corporation
>  */
>=20
>+#include <drm/drm_print.h>
>+
> #include "i915_reg.h"
> #include "intel_de.h"
> #include "intel_display_core.h"
>@@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *displ=
ay)
>         else if (DISPLAY_VER(display) =3D=3D 11)
>                 gen11_display_wa_apply(display);
> }
>+
>+bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name)
>+{
>+        switch (wa) {
>+        case INTEL_DISPLAY_WA_16023588340:
>+                return intel_display_needs_wa_16023588340(display);
>+        default:
>+                drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name=
);
>+                break;
>+        }
>+
>+        return false;
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index babd9d16603d..8319e16eb460 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(s=
truct intel_display *disp
> bool intel_display_needs_wa_16023588340(struct intel_display *display);
> #endif
>=20
>+enum intel_display_wa {
>+        INTEL_DISPLAY_WA_16023588340,
>+};
>+
>+bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name);
>+
>+#define intel_display_wa(__display, __wa) \
>+        __intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __string=
ify(__wa))
>+
> #endif
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 6e26cb4c5724..e2e03af520b2 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic=
_state *state,
>                 return 0;
>         }
>=20
>-        if (intel_display_needs_wa_16023588340(display)) {
>+        if (intel_display_wa(display, 16023588340)) {
>                 plane_state->no_fbc_reason =3D "Wa_16023588340";
>                 return 0;
>         }
>--=20
>2.45.2
>
