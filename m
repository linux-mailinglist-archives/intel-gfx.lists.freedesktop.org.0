Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59895CCF112
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 09:58:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7F610E5A1;
	Fri, 19 Dec 2025 08:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cocVLGai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE3010E3EB;
 Fri, 19 Dec 2025 08:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766134688; x=1797670688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fFcCsbLspGLdFS5QgWGkBZGTYJ7elxcSwTszEU0Vx4E=;
 b=cocVLGaiSlxIvBOFUhWVNUXzha/RCSNGGqz4u/uAb/4bxd6GIQVp0HER
 4txl+AaAcP4bvEa7B3pO4tBHWtdJ/D/aRjeswzRx0mKMg2LSmjjsVmJCb
 qu1OiCFy3dxr+9wuaHtk5h1ePuI6rxITGKXTQRzgjzkNwSZvCjypk3Ia7
 SCjII0zlN84YqFAqrboleSjI6LdYd2S57SvGfiWcfjO8MxEt+3Os15cEY
 oy/Yp6woOjMlzSf1JZGdruxiyojwDKawAG2sRxGzkJHqEGlqHmLWA5VO+
 XmtwiJF5RhSl1mjyYTahNEyaMqez/fXzx8Uqk+wwPrPuiwns6/CLvCnol Q==;
X-CSE-ConnectionGUID: l+dFLQ0SSj6cUkQHVZZqqQ==
X-CSE-MsgGUID: N6VyvtK1T2OUuURyapMHbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67972801"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="67972801"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 00:58:05 -0800
X-CSE-ConnectionGUID: NrDcfTHgQCqbP9ivuMZBGw==
X-CSE-MsgGUID: LRbZRuA7TD6v2rXn8/tH4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="198408458"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 00:58:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 00:58:03 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 00:58:03 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 00:58:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G5pJ1AnGpg3skCQ2UtBX7RDQ+zvjpI6jIE8tZyT7lKbGD2ozYEE8Ga6RcjwtGZCA+haWcBN/nlLZ6Qv6l4n3bw4v/Za3Ss1cmVbYwYYm1vj991Hm2Tsi8xovCg5nCWxsdrAFzG8doLxOxbA5grm8ywZHjpvCaHLcnsA6hBuTu9iRts9XlGWlZWib/igIhGzqHOH3XhAciHrhLASK+2b9qpXWl9NsEOSMPlobku5ToL/O9GHRUNmnVcVCI51Jx6clUF2C6AKaDaEiH6uUV/6Xafu4kWCG1GIp5zYxBq7LVZLYIX2ZjYxUO7xM4KFeeBBiwLya+kn5u6Wx7xqr2jtkDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MfOIMYr2dsNtGQZUFBVafmhAENA+bHkryqk57NYYT8E=;
 b=Hb8kYNhEdRVDlHGK5cDSXV03tA96V/1xeaAQICOxTiImaB/V+4u3wqVaNZD1diTRYa2xdLTQQJDKcM5Skce/ZN3UT08PsDPH+WxJYCV8b/yhjlvVmUyzAA9hUHsOv7FhDZxmH5C/62ThKf8l2HuUWE2wRdEOsiQxH/kRWT0W46djcGNTdYhkEUw4A8U02IXnFSDcdbNsrjWqVL0lh03E9I9JgtqsDGmkyWAZv2nCc3/2TREOG2Lp15VugDmmtPh48Dj2kFG21qrhT0vXJJqTAFf75QDQY1phpVBEgj7tJ0XVIA1uZEdV9IkhgJSc0d3TlCoJEYUSkSR1Uav2ImV80w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7258.namprd11.prod.outlook.com (2603:10b6:208:43d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 08:57:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 08:57:55 +0000
Message-ID: <84e05c7b-726c-416f-a1c3-c7e8d0c255f5@intel.com>
Date: Fri, 19 Dec 2025 14:27:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 <Borah@freedesktop.org>, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>,
 Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 RavitejaX Veesam <ravitejax.veesam@intel.com>, "Rafael J . Wysocki"
 <rafael.j.wysocki@intel.com>
References: <20251218135904.2276976-1-mika.kahola@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251218135904.2276976-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0193.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7258:EE_
X-MS-Office365-Filtering-Correlation-Id: c7fba309-cb58-46cc-62ac-08de3edcb330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzR5MDlHUW85ZWhnVnd0aUdTY1JMajAwWTduMktBQWlLTnZwcnRoaytuOWdU?=
 =?utf-8?B?YllPaUlqU01IL0pIN0lyY0M0ajhVVXFWSXVIMmxscDBNQW1lcThEN0ErM05Z?=
 =?utf-8?B?YUV1cFN3QWljcDhRMSsvaUlGVHdRNGxXUDlXY2FlZlViYTFydWJGeWJNN3ho?=
 =?utf-8?B?dDI3Mlg4aWtDL1k4Y2svNWdDQld4ZFJ3bU5RZVZDbE9md3dITHJqWVRzclFx?=
 =?utf-8?B?SzlqTXRjM0tFeWI5VHRreitGZXIrQmViZzY1c1owcVpwQzBSdmQzN21WbURv?=
 =?utf-8?B?SW1VNmxKTGdVc1VUOVhWb2hOeXR1dERUVk9BR05QR21FZTJVOU8zeHRXK3VC?=
 =?utf-8?B?ckllK25IQ095OUdzNDlKa05vVUpHL2Y1QzB0T3RUdWVkczBqZG5vbWo5aDln?=
 =?utf-8?B?a3cxdlVOd0lyTVorTUM3b3RzZHN0ekRQWTc0TWZFQ0JGd2xRRFNXVktkQVI4?=
 =?utf-8?B?NGluTjF1Ky9pcmx1RDR2cVlNby9tanhkSVlJaDFrN0xXdWpmRXFBa2VsWHhj?=
 =?utf-8?B?YWFmUWlKTzZORXEyTS9GcEx5bjNXbHprbjZjbVpvb0JrZlV6QnlOT2FJaEp4?=
 =?utf-8?B?YkVvdVM3UWs4YVQ1R1NKNG1IT0pSMHYvZFVzM215SEpyQzlwSWRRcFZyNlZx?=
 =?utf-8?B?WVBpbHdrYUc0UmE2TDNPcTdkWlJlZUI0ekRkdUFmNXpqNkxyQTVwcXEvKzdl?=
 =?utf-8?B?d2lzM1R3ZW0rS3NEUHpHc1JPSjRGQUFPMEtKOFBjNGwycFA5ekNzMldjaHgr?=
 =?utf-8?B?ZmJ0VDdQYWN6Q2Ivd243MzlXeEcvSG9wMEl4UTFhL2hCM1kwOTFaNzE3VzBI?=
 =?utf-8?B?SzJ2TytybysyMjJMZi9hNkUxck03M090WUw5dW05bnFncVBCem44ZzdFd0Nv?=
 =?utf-8?B?N09EeDhodFJIdlVWNzk4UCtwSUE3SWZIdTczbkdzK3dMYXJWY09ZOVVWb1Br?=
 =?utf-8?B?a2NqYUk4ZFM2VlVOU1QrMkJueHR1VW50T252M2RYd2MxbWdJTUMvN0Y3aVow?=
 =?utf-8?B?anNnV3QrQlUyRzZMbU9xdkFjLzEyMVIyVUpMR2pBOEJ3ekZXTTd5dG9OTytO?=
 =?utf-8?B?cGNTSUFjWXp6aGR0UnU2aWhmemtaZGR6eE5EcHZFbXZRL2l1MzV3dWVZMEVZ?=
 =?utf-8?B?UUk2YlkwLzN1V29qdHFVKy9aS0E0K0ZiOHNoUUZTdXVhQ0F2WUZEUXQvTmVK?=
 =?utf-8?B?OXFIbFVETFpFZGNGUCsrY1FjTVZmY2RUeTliUFd0M1ZYNFRGcW1ZNkF0RmlO?=
 =?utf-8?B?QkRURVRzSm5UN0ZIYlM4SGthTmR4Ujd5a0p3SE1ubmpvakpia3hyR09HMUZ4?=
 =?utf-8?B?cU1rWjdTQ2l2VEY3NXdFWHJFeWVzOHY0S1d5QmtyNjA0ZmZSMVpNVTh6Y2o5?=
 =?utf-8?B?QUVwcDQweFRYbmt6ZDNWc0NkR0oyd2JnWDV5QUJjQ21YdjZFcGNVeEFVNkFk?=
 =?utf-8?B?WDU1VG45RFBORHNNNGYxZ2R0UmpvYTl2dFNzTXIzR1F4ckFtbVdJTVZ3aW02?=
 =?utf-8?B?WElRVytEY09xaWZQdUg1VG96a2VsajVObnIwdHEvNU9FVDR2Ym1wbWhYcUpT?=
 =?utf-8?B?MlJycktWKzVsdFdNdVJ5TjhZOXViQjV4S0x3MmljZkpiZG9CV3hpY3YyQVBj?=
 =?utf-8?B?bW85c2p2L3ZqSEtqT25jNU10V21kcUhDZzY0OUNWaU5vcWF1TGpBcllNaWkw?=
 =?utf-8?B?dVR5dXdMdWRybjVvM2ZRcTNnUTQ0WUlLZ1RjQWRnNmo4dm5HZWhjNVlFSDhZ?=
 =?utf-8?B?VzJRRGo5T09idEJIcmUwS1NKY2JiZmxLZHloVU1jTlpRTEZpMmFLUTNEU2VN?=
 =?utf-8?B?emw2UzloWEtRMWd3RU5zUWIrcmFTeWM0S3p3SGxCSEQwTUplQ0JDU1RFMW5E?=
 =?utf-8?B?eTZidTR3SWtucXBaNUlpdHkzK0dPR3VEbXRJSk1zK1RHSEdSaWVEbXZraGFQ?=
 =?utf-8?Q?Z2cJr0aOYiM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjZqWnB0OWV2enAxclZBdXhXdDVaSUQ4YnBJakF4aXcvOUw1ZStsYlFORUJv?=
 =?utf-8?B?M282NDdVVUxucy9qekczN1hrRGtXRW16Y2NRWVZBUlozcmI2UUdtVS9IYmlH?=
 =?utf-8?B?TkYweGlUV3NWZG5GUS9Ba2xOYWRDNGVmMzgyc0V3eExCK1E4Q0U1QVZJeWJM?=
 =?utf-8?B?Ym5NZ1UwUno0M3hkNmVuUG9GdVVqNWw5SXRKaEJwKzNONTRUNXlzN3lOSXQz?=
 =?utf-8?B?YVJvZW5jblFzc2N0RWEydStkbjhUT0tQUFlnVXBiQ3RWa2JpVVBMQVQ3VEhs?=
 =?utf-8?B?T2I2U3ljRDFVYklPOWwydUJhUlVrQVpUWVhkOUlDL0FneVE0aTQ5NW1XVUUr?=
 =?utf-8?B?L1J0bTBTenp4cFYwQVF4blg4UUNBeHpoaXBKaXlFb1BaejBWQjlSSFBmVzlz?=
 =?utf-8?B?VWFzRm4xQUdyOHVENUY4dkhwclJFM241aVBYT1FTUXBrRjErTmE0bkJVZG92?=
 =?utf-8?B?TGxWQTU5cWx0UDc3YnNIS2Q0dGp2eWFDNUhheENVdFpXNWovdktYV3FUK1J3?=
 =?utf-8?B?K3VyYlQxVmxzaGk1djRXNnA1RGRSUFZNM2x6N2tvZkJMRTVBN2t6MTNDVTRK?=
 =?utf-8?B?TjByL1k1RjZaTE9HOHZXMUdOcHhzQ29lN24xcEpyRE9VWmQrSUNHZXpQSWJH?=
 =?utf-8?B?QWhZNitDME11dWFLb0V6MkpHNUtUKzRkaUVESUhhMlFud1FhaUduRjdxTlRq?=
 =?utf-8?B?SElqdEs4dEgrV1VOd3VENmRZTHNLSmVESTkyd2wyQ25XTXdEM2pxbzJGeTZ5?=
 =?utf-8?B?SmRxT2pyZnFCRzJtK0g0TXVkcC9iYTR5QitvTHRQVjRRRHdKQTRGRjNnVk0x?=
 =?utf-8?B?OTUxQlQwZHVTQmFXS09FSGJZMG1FVTlic3VWOWVGek9YRlQ3TlRsL1hlQ082?=
 =?utf-8?B?Q2M4UWxsUUJ2bXNwbWQxMStFY2ZtNTdWQVlFZVE3N1lkRmJFK2lkaHpJYVQy?=
 =?utf-8?B?M214Q2QvNngvVGVZSmkrSUVIQ1p2MzJ1QkZCSjQ1WitIUlpXTnd5ZGlZcHFX?=
 =?utf-8?B?OHVaUTRFRnlJb2orcHMzaEVrUUhTQnRtNjRlSm5rQy85Y0xiUEhzYkcyN1Y3?=
 =?utf-8?B?YjVhZzFFNVVhQzBJcXRvTzYrdUZsNkU5MEVZVTR2U09qWmR0ckowengzdlVw?=
 =?utf-8?B?c1IxSU1IWmgyNWRjaUp5UVU3bWN2cFJhVzUveWFEWlVycjJsVURpOVhtTERB?=
 =?utf-8?B?aVBJVFVyK25zVElDSkRRSERIWVNuaG9qR3Jxalc1NlRsWUY4OHVWZ0J5UGdX?=
 =?utf-8?B?U05LZjBFWGFSelhKdHZkK3hFYldoL1B2aWpDeHgxMVVZaE1GQXRWWStwU2E1?=
 =?utf-8?B?MkhPcnpVcXVZMmxsR2NvdUlOQUNVd0hKRWllTWdXS2JGV1JyZ2pQN3hsbml2?=
 =?utf-8?B?cjN5USt2R1B5YkdSbWhYYVBFMGVyc0dxRHFRTU92Uk9TN0JKS2hhOFJVN1hK?=
 =?utf-8?B?ell3UFJ3bkVVOVQ1bnVMRjkwMmNCVzVIWkVVUzVESnlJWTRtUEwwNXVwZDVE?=
 =?utf-8?B?RlVjSXJsY0E0ZUYwaDZkMjFkSDJRWUtacm9tQTMxMXVaZzRBQTArenliRXRH?=
 =?utf-8?B?dnRBUnlraTVqczY2ZUd6SmdET3o2T3p3YWkxcEs4ek9acUhYNCtqclVKbk5Z?=
 =?utf-8?B?VFB0OXE3N0xHOWpvcHBic3FTckwvNjcwSys5UXJxUDdjaHd0akNnS0VUYnUv?=
 =?utf-8?B?WGc2NVVlVHBIR0cxYmc2YmVrM2lSd1E3V0l5Z0lpVklJY2VFOWZCR09GajhL?=
 =?utf-8?B?RlQ3S2N5c0tTMXIyT1p6TC9oWm5HYWdVMzNKRVNlR0h3WTh1aENwaUtpQ3hG?=
 =?utf-8?B?N1phU2ZCOEFNdzVVUDNZK3duSFMxMjN3Nk9ncHNTQkV5SkFOblNETVpMWlBw?=
 =?utf-8?B?emFLVmY1RkpOd0FXdUxpRnAwTWN2dDMxa1hLdEtieXQzelo5TitHeUVBd1dZ?=
 =?utf-8?B?cE15RzJYRlpyazZreFBSZWFFeGtid21OREkvcS9jYkNzemNDN1ZQRXU1TWpt?=
 =?utf-8?B?dGdzQ2xyV1pCbTZCc1QwempaVGdEZHpJelM2K0dOZTE0K2xBWGxTaW5sWWlj?=
 =?utf-8?B?d2lzV2lRR3BNaDFIamdFQjNMUmF2V204V0RXa05JOUtWdUVOMHZuOEhaQkMv?=
 =?utf-8?B?U0hQbkJwNkJjdEljMURpNFZ0Vno5MnoydkJJNU1EVkUrWHRydzBydkxWaW5O?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7fba309-cb58-46cc-62ac-08de3edcb330
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 08:57:55.8572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fbsI2oHHBzR6jX6wizhNSWDlqD+/mUSrPHHzc7noxxKlsqq4i8LUOAic2q+IxTMsZy7W84JwUiq++OoxehND53Ys1cMyDa8gVAHVG65PLMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7258
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


On 12/18/2025 7:29 PM, Mika Kahola wrote:
> From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
>
> With the RAPL PMU addition, there is a recursive locking when CPU online
> callback function calls rapl_package_add_pmu(). Here cpu_hotplug_lock
> is already acquired by cpuhp_thread_fun() and rapl_package_add_pmu()
> tries to acquire again.
>
> <4>[ 8.197433] ============================================
> <4>[ 8.197437] WARNING: possible recursive locking detected
> <4>[ 8.197440] 6.19.0-rc1-lgci-xe-xe-4242-05b7c58b3367dca84+ #1 Not tainted
> <4>[ 8.197444] --------------------------------------------
> <4>[ 8.197447] cpuhp/0/20 is trying to acquire lock:
> <4>[ 8.197450] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197463]
> but task is already holding lock:
> <4>[ 8.197466] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197477]
> other info that might help us debug this:
> <4>[ 8.197480] Possible unsafe locking scenario:
>
> <4>[ 8.197483] CPU0
> <4>[ 8.197485] ----
> <4>[ 8.197487] lock(cpu_hotplug_lock);
> <4>[ 8.197490] lock(cpu_hotplug_lock);
> <4>[ 8.197493]
> *** DEADLOCK ***
> ..
> ..
> <4>[ 8.197542] __lock_acquire+0x146e/0x2790
> <4>[ 8.197548] lock_acquire+0xc4/0x2c0
> <4>[ 8.197550] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197556] cpus_read_lock+0x41/0x110
> <4>[ 8.197558] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197561] rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197565] rapl_cpu_online+0x85/0x87 [intel_rapl_msr]
> <4>[ 8.197568] ? __pfx_rapl_cpu_online+0x10/0x10 [intel_rapl_msr]
> <4>[ 8.197570] cpuhp_invoke_callback+0x41f/0x6c0
> <4>[ 8.197573] ? cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197575] cpuhp_thread_fun+0x1e2/0x290
> <4>[ 8.197578] ? smpboot_thread_fn+0x26/0x290
> <4>[ 8.197581] smpboot_thread_fn+0x12f/0x290
> <4>[ 8.197584] ? __pfx_smpboot_thread_fn+0x10/0x10
> <4>[ 8.197586] kthread+0x11f/0x250
> <4>[ 8.197589] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197592] ret_from_fork+0x344/0x3a0
> <4>[ 8.197595] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197597] ret_from_fork_asm+0x1a/0x30
> <4>[ 8.197604] </TASK>
>
> Fix this issue in the same way as rapl powercap package domain is added
> from the same CPU online callback by introducing another interface which
> doesn't call cpus_read_lock(). Add rapl_package_add_pmu_locked() and
> rapl_package_remove_pmu_locked() which don't call cpus_read_lock().
>
> Fixes: 748d6ba43afd ("powercap: intel_rapl: Enable MSR-based RAPL PMU support")
> Reported-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/linux-pm/5427ede1-57a0-43d1-99f3-8ca4b0643e82@intel.com/T/#u
> Tested-by: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
> Tested-by: RavitejaX Veesam <ravitejax.veesam@intel.com>
> Signed-off-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> Link: https://patch.msgid.link/20251217153455.3560176-1-srinivas.pandruvada@linux.intel.com
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/powercap/intel_rapl_common.c | 24 ++++++++++++++++++------
>   drivers/powercap/intel_rapl_msr.c    |  4 ++--
>   include/linux/intel_rapl.h           |  4 ++++
>   3 files changed, 24 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
> index b9d87e56cbbc..3ff6da3bf4e6 100644
> --- a/drivers/powercap/intel_rapl_common.c
> +++ b/drivers/powercap/intel_rapl_common.c
> @@ -2032,7 +2032,7 @@ static int rapl_pmu_update(struct rapl_package *rp)
>   	return ret;
>   }
>   
> -int rapl_package_add_pmu(struct rapl_package *rp)
> +int rapl_package_add_pmu_locked(struct rapl_package *rp)
>   {
>   	struct rapl_package_pmu_data *data = &rp->pmu_data;
>   	int idx;
> @@ -2040,8 +2040,6 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   	if (rp->has_pmu)
>   		return -EEXIST;
>   
> -	guard(cpus_read_lock)();
> -
>   	for (idx = 0; idx < rp->nr_domains; idx++) {
>   		struct rapl_domain *rd = &rp->domains[idx];
>   		int domain = rd->id;
> @@ -2091,17 +2089,23 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   
>   	return rapl_pmu_update(rp);
>   }
> +EXPORT_SYMBOL_GPL(rapl_package_add_pmu_locked);
> +
> +int rapl_package_add_pmu(struct rapl_package *rp)
> +{
> +	guard(cpus_read_lock)();
> +
> +	return rapl_package_add_pmu_locked(rp);
> +}
>   EXPORT_SYMBOL_GPL(rapl_package_add_pmu);
>   
> -void rapl_package_remove_pmu(struct rapl_package *rp)
> +void rapl_package_remove_pmu_locked(struct rapl_package *rp)
>   {
>   	struct rapl_package *pos;
>   
>   	if (!rp->has_pmu)
>   		return;
>   
> -	guard(cpus_read_lock)();
> -
>   	list_for_each_entry(pos, &rapl_packages, plist) {
>   		/* PMU is still needed */
>   		if (pos->has_pmu && pos != rp)
> @@ -2111,6 +2115,14 @@ void rapl_package_remove_pmu(struct rapl_package *rp)
>   	perf_pmu_unregister(&rapl_pmu.pmu);
>   	memset(&rapl_pmu, 0, sizeof(struct rapl_pmu));
>   }
> +EXPORT_SYMBOL_GPL(rapl_package_remove_pmu_locked);
> +
> +void rapl_package_remove_pmu(struct rapl_package *rp)
> +{
> +	guard(cpus_read_lock)();
> +
> +	rapl_package_remove_pmu_locked(rp);
> +}
>   EXPORT_SYMBOL_GPL(rapl_package_remove_pmu);
>   #endif
>   
> diff --git a/drivers/powercap/intel_rapl_msr.c b/drivers/powercap/intel_rapl_msr.c
> index 0ce1096b6314..9a7e150b3536 100644
> --- a/drivers/powercap/intel_rapl_msr.c
> +++ b/drivers/powercap/intel_rapl_msr.c
> @@ -82,7 +82,7 @@ static int rapl_cpu_online(unsigned int cpu)
>   		if (IS_ERR(rp))
>   			return PTR_ERR(rp);
>   		if (rapl_msr_pmu)
> -			rapl_package_add_pmu(rp);
> +			rapl_package_add_pmu_locked(rp);
>   	}
>   	cpumask_set_cpu(cpu, &rp->cpumask);
>   	return 0;
> @@ -101,7 +101,7 @@ static int rapl_cpu_down_prep(unsigned int cpu)
>   	lead_cpu = cpumask_first(&rp->cpumask);
>   	if (lead_cpu >= nr_cpu_ids) {
>   		if (rapl_msr_pmu)
> -			rapl_package_remove_pmu(rp);
> +			rapl_package_remove_pmu_locked(rp);
>   		rapl_remove_package_cpuslocked(rp);
>   	} else if (rp->lead_cpu == cpu) {
>   		rp->lead_cpu = lead_cpu;
> diff --git a/include/linux/intel_rapl.h b/include/linux/intel_rapl.h
> index e9ade2ff4af6..f479ef5b3341 100644
> --- a/include/linux/intel_rapl.h
> +++ b/include/linux/intel_rapl.h
> @@ -214,10 +214,14 @@ void rapl_remove_package(struct rapl_package *rp);
>   
>   #ifdef CONFIG_PERF_EVENTS
>   int rapl_package_add_pmu(struct rapl_package *rp);
> +int rapl_package_add_pmu_locked(struct rapl_package *rp);
>   void rapl_package_remove_pmu(struct rapl_package *rp);
> +void rapl_package_remove_pmu_locked(struct rapl_package *rp);
>   #else
>   static inline int rapl_package_add_pmu(struct rapl_package *rp) { return 0; }
> +static inline int rapl_package_add_pmu_locked(struct rapl_package *rp) { return 0; }
>   static inline void rapl_package_remove_pmu(struct rapl_package *rp) { }
> +static inline void rapl_package_remove_pmu_locked(struct rapl_package *rp) { }
>   #endif
>   
>   #endif /* __INTEL_RAPL_H__ */
