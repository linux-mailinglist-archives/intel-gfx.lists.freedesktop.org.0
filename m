Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1326B03800
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 09:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E489310E411;
	Mon, 14 Jul 2025 07:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8rJhPbA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE72310E40A;
 Mon, 14 Jul 2025 07:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752478224; x=1784014224;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zrripw+2Mk3OGBCmMqY2eJDVxjiMBg0+nqevHF7LTwo=;
 b=m8rJhPbA/u3m0JRHJmGF2nd+YTedUZnSM2XD0HxtmMIRBz5HkpNJT4ic
 cQEODjUql/8TgOddttLndxV/3KZ3ttR5g0/IoEiaJGax8wUznScZKY4ti
 LaLS0VsGNAf2ZtZlSa39WB6404+v5re5rgyYP2pXq3CHhAEy6bfD+Ephd
 S8dv3iFWVbAbA9i8LfudfgTPhVuARQ8wEM0CKOjnBsIUhWstaMbUjRCCq
 7vpEoaQLjFCpg5A/GoViff6yIBGaZDT9bGgsT2k+0DkVM48Df3I54+Nb3
 w3CiYuROroL22xlCS0KvDWfkatf5h5DSAGBH1nznzEyDhMM6qMLAs6utB Q==;
X-CSE-ConnectionGUID: O1jDoyaZTOm30xTh6LOGmQ==
X-CSE-MsgGUID: 1KRbX/m7TeCuaptfh+sp6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="80098677"
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600"; d="scan'208";a="80098677"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 00:30:22 -0700
X-CSE-ConnectionGUID: m4cW2YndSZ28pltPXOf09w==
X-CSE-MsgGUID: 5LpKeRydQeabSMQAAgtf1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600"; d="scan'208";a="156966200"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 00:30:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 00:30:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 00:30:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 00:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C/B37WYCV098VXnRdjdfdQEVQ5L5RPVkN3Pc7d41o3N5buxYo3CDJFmJ9GD1eaDrV3HG6vwwcFwvtoZr5xT0cFyrc84f9hiJhquVuo4YDZRNDKqixq6Duk+Sms14wAO9t5nev0nqtFG8M+Rb8jC3rMxm5usqq3r20jcA2tObUFuWSY/rmytDiwsnNSINqBRIwqosPmx5WfbZ9PMEg3f4WGXDfszN4pn1Zf+enO4nYSkJ7xzbQsE8Yce4WtdAfDi1g3YW5/nm1mY7SXBGVOeUJS1Q5onteDKm2IcuP2UtQQsqrRwiVGNEf2reREkWsXS8CK6Poqhm6jXadhkyUVpB1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9b5s+dj3Y9HdBhj5TTAMKR5FkhUSdp2U6NuIq29OBA=;
 b=WgxQHm4jYv1RGeKnBQQHa8nv9xwrtmMkvmwJASjDBjMWi/gJVPkZ4FLlAL2L55eV3sQnGS9e4EDQxsi/FIN0eKVJHKGnODOl21V5VAgUWdWZM/CCgI7kiDq6VAtrvBKSbzjg8ec7fVRr3MKNWPsK4BwG/0NtQIf2veO0K5M2FT285+aoRe/MjDj7rbKBjImpz/H4cKCccfMkqPc5qEowqMC3FRy+eO8oCgwxrepGTe9zoTCTMm60MA+eNeCBHAR6gJ7ZbBHJHhMEl3ECJlh/cHwipAz6LIJ1jW4uK7h4ENlG92fJIr1CLKwb1ATQrzp7uaf1z7HBafSHa1VLAwv/0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Mon, 14 Jul
 2025 07:30:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8922.028; Mon, 14 Jul 2025
 07:30:11 +0000
Message-ID: <2af54f7d-9d16-4807-9ceb-a661c13b66a1@intel.com>
Date: Mon, 14 Jul 2025 13:00:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/1] Revert patch to reject HBR3 for all eDP panels
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
 <aHEkjiw-7hMTnMKO@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aHEkjiw-7hMTnMKO@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0159.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8172:EE_
X-MS-Office365-Filtering-Correlation-Id: 1064518b-a1c8-4d1e-b0b2-08ddc2a843e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWVTM3UrKzBOdXFRSzMzRjhscHlGM0pLNUgydnJHaUpRYWR4eWMwV3ZnNE1r?=
 =?utf-8?B?RFN5MFpLVTdXOU1rOHdqVW5hRUtucEZXYStwY0dzOGlLL2gwWVRCa1BRcno5?=
 =?utf-8?B?SmVaZHFnclRsL0NXOTVqZ25sQWFKK3h6bXUrazJOQS8vWFF0enc3ZU5WeW9L?=
 =?utf-8?B?SGdVQUh1VGYvV1JJMlFoZ3NlSXVUUHNWSjZCRWw2aHQ5WDhrUVNtb2JVWWVG?=
 =?utf-8?B?T0hCRGdrMEVEYTU2UE42YzEwUnhiazRJLzI2Z3U0a3RGSmNXL21uU3BIV0tW?=
 =?utf-8?B?U21wTDc5QWxwcmtyZXNUMzE0MER6ejBLOGhkVmx5R250ZkRRd2todFQraExz?=
 =?utf-8?B?SlFXMkw4VjRtMkE2aDFmYnFISzlMelhzaDJOZHZQS0kwb3Evenk3WWljOVd6?=
 =?utf-8?B?ci9CQnRMQWM1aVRjTzduTlg5NnduRnJPQ1NwZ2o5RjNJaHdpYm83RXhQSFFJ?=
 =?utf-8?B?ODlVd3pCbmQ5SC94dXh0RmVIV2pYYVYydStKVm90ZmNvM1JLUVBlenVFcHdp?=
 =?utf-8?B?b3EzeTNOMENSVGFjank0R0N2Q2Rwb2JLQ09UaFpQU3R1Z0F2cVp2WEhPeVI4?=
 =?utf-8?B?SXRwWHRtNktwSnczOUNjblVLeU43SDNERnNhWDQ4dkxkbHE3NFFOcVV6a3pC?=
 =?utf-8?B?dzFpN3RrcG1Gd1ptNU1kdTNGRzd6bEllZ1kxUFNnSWVxUWR5SFU2cDh6VXRy?=
 =?utf-8?B?ajBadW1iaUpFZFNnMHlGTUdHdURXL2NPZE5qell0dzBYc3dVdVJmWktaSC9X?=
 =?utf-8?B?a1BmV0JWdHBpbW5CUGNzVExPb1d6NmJKZ2x4aVZPSXpHWjM3Y3hCUzV6RmRM?=
 =?utf-8?B?Y1NGWWh5djc0QjRpNGtkZjg4cFFoM3RQN2M4c05pS3NqeDdISThXTmlzQ0hk?=
 =?utf-8?B?NFlUTHZYK0xRL1pSeFU5b3pScDhqcHdCalRNMnU4MDMrVnJRVHR4K0FpV1Rk?=
 =?utf-8?B?MlF2dUM1ZEZBYmRzNytMOWIrM1NPcHFkcGFZZ3gyL0Zyemt4NHNpMTFIQ29z?=
 =?utf-8?B?U2o0Nk8vd0hXS2J2alZhcVJScFhmcnhIQVF0cUJOYTA0Wk0yV3M2bHd5OGtD?=
 =?utf-8?B?aElSUzlkSkZjVTJMcVVBa3NFRWFDVnY4V25nQm44Nm9HK0RTTTJQRThLVkk5?=
 =?utf-8?B?MDcyUzlHRFFNdDNLU0xvcHd5OUV5MFl6eG5ZNEkxMlhGNE5Jd1NIaGJsblN2?=
 =?utf-8?B?My8vdlZUdzJKM09MOVlubTNPQ2p6dUhMUTNSNm5qQjR0amMyTzdRQ3NQUmM0?=
 =?utf-8?B?U01kQnRDU1Q3N1N4WDJoeDFybTUrTURYcHZVd0FrKzhwc2xGNVNLUWYrU0k5?=
 =?utf-8?B?VG9zS3FzZmxIZlViVnNPdktjc0FENUY0ZFBxbkRWRnBMeFRNN1NKeSt0dld2?=
 =?utf-8?B?dnJ2VlFyQ0lIU2E5Z1FTZGk5dE1QYzdVcXZTNFl2dkNNY01kbGpWYzl0OTRD?=
 =?utf-8?B?c3R1MWtXMHBIVlJDU2NLRUJLcXFEVno5dUxwa1FDV09jL3dldllwaDlha1Zm?=
 =?utf-8?B?VnpoTW9zYUVpYWwvTkZ0NVcwdytVbC9Cc1Z3dWEwK3NUQnpzN1kyeWtXUFUw?=
 =?utf-8?B?VFpMeHphaVJHcGg2OVpRaWZPbDJ3Z1lQUW0rNnBSdEhDQzduK1htdkpXREFn?=
 =?utf-8?B?NU8xckdsaTBTQ2hKYjI4ckdyWEVvR3B0RnBDSGZucE1oTXJJeGFTT09WamI5?=
 =?utf-8?B?K1RFTHc5RUIzQWpHeFZqQ0c5YmRpUEszcloxSGRrSWRFenJOaFVsQjduQlFt?=
 =?utf-8?B?VW5YdjkxY0xrSGkrRmVsTGRRUldnZWsveW1Da1BzdDVUQURJMjlJdVREdldq?=
 =?utf-8?B?eFlxU0NiUGdNR0tUUnh2aGhLSnpvbXdza1pyeXZDcys0ODk4U3Q0TjhmZzVO?=
 =?utf-8?Q?VrZjOn9Je4fUD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emxpNm4wWVBXYXFIWXdlcC85czdXa1RFQUFqMEE2ejFHK1IwY1pGRFZpWU43?=
 =?utf-8?B?WG1aMXJNdkNvbTQ1ZThrS1haMUhVb2M4aW9LQ2lBTEs2L2JOak9BZ2paN1FI?=
 =?utf-8?B?eVNXYjRoL3FxZzJEWS8xNncrbEoyeGlFYkJUc2c4cDBiRjdjRkZBcWg4dmFt?=
 =?utf-8?B?MktiSGFmYktkSDh1K1F3d20vaDdvbzNjRFVOcURaMlRtNE95dzJDSWt4TzdY?=
 =?utf-8?B?VndWR0JvQVFMVi9BeXk3OXFURUJCeG9EL2NMVXU4QWpzemphay9vRDY1aWh6?=
 =?utf-8?B?bFJlVm9jNHpqTnNmN1ZtOFdpNjR3Qy9kVjBoc3RPUG5YOFA0ZG04aFZtT3RN?=
 =?utf-8?B?aWJWcGJSTUY3UnZGM05sV0E1eTQ1NnovekE3KzVmNnFWS3RUMUx5Znptck85?=
 =?utf-8?B?cHo2a1BjTDNSM1JEZUhId0I4S21KbEJwSVZuKzVVRTlCM2N5UFlGdXlRTEgx?=
 =?utf-8?B?bzkrS01LK3hJdEE1REg0WDVJQ2RmV3Yzb3E0NmlKeVFNWHc3M29SaDJuZ3h1?=
 =?utf-8?B?WmJIcjN5bzBJQnZSeWZYQnFaVlgweHc0dGhQM2JSNW5INmF2bjVreU03VTRD?=
 =?utf-8?B?YmY1SUIxMjRCbHJldlpRT2w2Sll3WXkxUTZMaWdTTHpmMVgvVVNqWlFiVTR6?=
 =?utf-8?B?emdtaVZkSmhPY0tOZk9FMUI2TFdQR3lTditIM29jUVNGb1FUZDdmM3ovaGQ3?=
 =?utf-8?B?Sk5CbU9DOFZxc2dXM2UxMEQ3WGZnYlhQQ0xFTmlnNVE1Tk1jZkN1TWZWS0VB?=
 =?utf-8?B?NnRIcEtHcXQvamhsdzRzVCtjTmh5cE51R29NRWd0c2hDNmRLd1ZsT0p0N2dq?=
 =?utf-8?B?RXd6Zy9IS3E3TkxDUzhMYThjNHRic3U4NWowZnA3Q2daZWtHMGt6MnM5UVUx?=
 =?utf-8?B?ZXNQRHBTS2ZEN1JUUXZsNThYYzE0a3h4QXVjakhWcEc2RmtUdENmaG9UNm5h?=
 =?utf-8?B?b3VFOEhMeDA4UzkxU1lwQ3FnYzM2NWFHOWZnaHlrMFM0UmhsSVREVllOelZv?=
 =?utf-8?B?Y0Fya1dOM1hCOGNCbkUweTBjQTdyYjVFQ2pQMEVwREkrM2xyenpEVzJpanlR?=
 =?utf-8?B?V2pyMllCTzdFelRmWmZJSWpoVUZFaG81ZFN3dUs2cnZaR2JMdHpkbDFUMU9V?=
 =?utf-8?B?M0FBdnltRjJ2N0Q4VjJvTzRpaldHVlJxbXNxVm5WNVRaZzBZNWZaQlRvVGhK?=
 =?utf-8?B?VlVxTlB4eTRMdnhHY2xOKzdKNFJNbVB3Qit4bWhkaWwvN2c1eWlQZGwxREdB?=
 =?utf-8?B?TUU4M05YdTI1b29LbjJyS0pFWGpLZFZlbjl0bUVRK0pYYUttZ0Frakh4VEw3?=
 =?utf-8?B?ZzdrNGRUWEZlZ1NqRVVLcWJPaUcyc2doT3ZnbzREZUIrZWtpNk5XUkNIOGxG?=
 =?utf-8?B?bjd0MTA4MEdsSStOdXM5NFUrc1VVNjNYOE9RZkhOYVFlVlJpbjZBWlZLSkFE?=
 =?utf-8?B?eS9sQy9Tdjh4amFSZmxWMHZ4R1cxS2VYR0hQbFV4bDB1SzJTOUFPbEZtc0tN?=
 =?utf-8?B?QWxDbXU2elZRa1dHMWFESEFKSmM0V3ZKQ2N1a1JJSDUxenErNFBzaTBBcGdo?=
 =?utf-8?B?YlJSdEptYjdDMjVsZE53dmtkSFNxelJ0VU0xOURCTEFEZGZqNmNySGIxbFJ6?=
 =?utf-8?B?YXdxbDlMbVI2MWZBa24rQk9ZOWNjcEJ4ZkJWaUJKbDl0eEl4QmNjcm5PYjFE?=
 =?utf-8?B?ME1Jbm1FWkdnTG54bkRFa1ZGUzRxNWFKTUV5OWFYODczWTdHZm9tYjBuZDVS?=
 =?utf-8?B?MWJWY2V0d2xGR3o4VW05anlIRUQ2WllWZkg4OFluUGVWVEl1YTcvR1pXazlK?=
 =?utf-8?B?Q1g0OWMycU91UU41bDJXamxBc0VwVUluOTRKOCtTMFJTdVFNUWgzeEJQcVdt?=
 =?utf-8?B?SkJxUjV3NU5iblRmMkpnVVFiTm1tZmhqYU5lUnc3WEQ4QWRYUHJWUWFjME5I?=
 =?utf-8?B?ZFpNTVd1bHZLbkZqR3FvTFI1RjNIa25oc3NjdWlvM05LRWgzTFdkRk9hc1h6?=
 =?utf-8?B?M0hveFpMN2F5S2ZjWEJNemVtZldCZmZ5akhkQzBHeXhkOGdoamV4K0x0cThL?=
 =?utf-8?B?bm16RjYraDYrZUgwRzJlMGxUbmFDME5FVm5jQ21OTk96Z0V4enNmcjFGbTJX?=
 =?utf-8?B?RUt6aTd2THV0VEtLMEMyckRXVjRERCtvdFVaMDkxeEtDRFRRMVc3d2RxMHFH?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1064518b-a1c8-4d1e-b0b2-08ddc2a843e6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 07:30:11.1966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hXMOqR/K7u+oNVyf80hYOs69i9IkaYkP++ZoD6tfoA3Aq/uC935FCPkslJwFdDhqDbm9U0iNTdeyDeFszm5pQkb1SApH16y2F8r5hs1otg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8172
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


On 7/11/2025 8:19 PM, Ville Syrjälä wrote:
> On Thu, Jul 10, 2025 at 10:50:39AM +0530, Ankit Nautiyal wrote:
>> Revert the existing patch that rejects HBR3 for all eDP panels that
>> do not support TPS4. With the patch reverted, the gitlab issue#5969 [1]
>> will get opened again. Add a quirk to limit the rate to HBR2 for the
>> device mentioned in [1] and close the issue.
>>
>> This series is a continuation from [2], and [3].
> Series is
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks Jani and Ville for the suggestions, ack, and review.

Patches pushed to drm-intel-next.

Regards,

Ankit


>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> [2] https://lore.kernel.org/all/1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com/
>> [3] https://lore.kernel.org/all/87y0uzh5tz.fsf@intel.com/
>>
>> Rev2:
>> Instead of revert and add quirk, add a single patch that fixes the
>> commit. (Jani).
>>
>> Rev3:
>> Instead of refining, just revert the patch for now and add quirk for the
>> ICL machine as a separate patch. (Ville)
>>
>> Rev4:
>> Address review comments from Ville.
>>
>> Ankit Nautiyal (2):
>>    Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"
>>    drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2
>>
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 30 ++++++++-------------
>>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++++
>>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>>   3 files changed, 21 insertions(+), 19 deletions(-)
>>
>> -- 
>> 2.45.2
