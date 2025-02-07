Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4DAA2BB88
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 07:34:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B94210EA2A;
	Fri,  7 Feb 2025 06:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LI0THcFA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E340510EA2A;
 Fri,  7 Feb 2025 06:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738910067; x=1770446067;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Btugg4rmNVEw8MMW4sO/p18TERXjlmFJTd3TF1Ynvls=;
 b=LI0THcFAoeejJXqcKjon9q6J/0vQoHbtoh9eenhmUjJGlUsKovogr844
 VwgCTJ0duh30aG4jMZKxf55xxjnOEXudWhqrVddypSsY+skr+lsvR/QyW
 BzI2OiJPMrcG0Rp+Kc9Jod2FCchKyB8txnTUn1834c1f3AB93HO50yEgZ
 l5ldDRcuiG+7ddsBhMZng5t5NsYuRuHhAZqXfJ16IGRYr8cppy3+qqDHr
 biTLiXEAsGB/dk800AAdOfP3YZ5d3/69dD+J0+3R0PLpmatltw0mp6gs5
 seuglmFKQ75WVp43nLxTw2Uvi3sxDRkvUiUbg114kmJQRBzjdknrf+QVo Q==;
X-CSE-ConnectionGUID: uFPGGIRfRkykkWUo39b92A==
X-CSE-MsgGUID: atg/tn2ySOyFaN00eJBEBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50930765"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="50930765"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 22:34:27 -0800
X-CSE-ConnectionGUID: 3uZ02r4sQKSYnrk1FUinXw==
X-CSE-MsgGUID: deGXXahDRZ+z/K1Az+ssjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111875277"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 22:34:27 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 22:34:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 22:34:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 22:34:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C0v8vAebowmID77cKHWGcIVupXZhusAIGuenB48Z2jKUt9oIyGbf0i8mIoRibw8kymVjBoiJB6IYR/Do4neEUTiqwLfFXHgsoWm2YbnGxGGmEHkxcRR5O5Ae41A6Xu4hQtP3+xT7Hh/OZTdF3CVAyWodFoap257qlTVN5wRbxILjwTevU5eb/yhNSmqv5wtCUTg8fapxoH9UYlKw1lHQCavf4gMyHxVFfgkz5x9Z0IVzUlMorc2ifcstpZxxfH8AVWaGtXfgDsU8AWsXGIOt5AXPAJ1WbxhfMFnuVHhq2kvzXq1gCYrP7/KNNsLW0TlTjBfdZSVxInj0PcCLxr+z+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KdHLF9Rd6EuiIF5KK6q2tpUsPJ1Gvz0tf02qvSZvnFs=;
 b=IoTaBBKhp6FiSyD9w5/i2I+F+MLyZX9TS5SjqdEa2WThtNf3AH+KOpRBHjjqqYsrldeZ/i9jefq61/fvflU25X+wSPuLm+ZNPKyhgPSjxmYog86BOU2lpxroyHD9Ef2bl62QFBQkEM8zjfv70gmBAlO8m7YuGJ/eraIEQklNO8E09fhRV2YPIG+QaYBUbO/IFgPt9iG1c/O08CLEhPlFokjtaGVJBkrYqRMXQwftg0SK9GvGrEbWOmYFa3nvMRghgU0U9N1of+s47mO/advnsiQ2T6EOUo2ae6RVdoqSnchli+tTVWPAOAkmo6Xy9T8t7hxAwAGwfpb+NpSvwUL9+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Fri, 7 Feb
 2025 06:33:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Fri, 7 Feb 2025
 06:33:56 +0000
Message-ID: <e88f98a8-8002-44de-a1fe-7eecda265cc6@intel.com>
Date: Fri, 7 Feb 2025 12:03:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Compute as_sdp when vrr is enabled
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
References: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6429:EE_
X-MS-Office365-Filtering-Correlation-Id: 04834779-d07b-420d-28a7-08dd4741659a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YU9lWnhEOUUwNkRSZjgyU3pKYm9YVlRHcHhmY2J6MzlydFUybUpzZ2w1ZlJG?=
 =?utf-8?B?R1lxdTRLSUdKUXpjRVc1WUtpcSsxVlFlZ2ExSDB1NGI2b1FoY3RTekxyc0t4?=
 =?utf-8?B?aE5hZEhiMXN2L2NMNjhqNVNhVi9DMnlva1IyN2RVZXR0NXExNG9CS0ZxeTZK?=
 =?utf-8?B?Uk1DWDhxb3k0YTRSVGU3dUZjMUViWDNGVUc2ZE9EN2xXSlBkVjdDamVTd3RY?=
 =?utf-8?B?dHdMa2J1Q1BrN1cyTFc4VmhRajVtVjZYSnkxeU1qc0hJbGVGb2FmSG9ibGFh?=
 =?utf-8?B?ZkQ3dFBCODJybDlDVTBYeU1BL3N3dG91MWpzU0RmZDNlZ0gweVFrTGF6cUxT?=
 =?utf-8?B?L0NRWHFHNVBEdmlFbVJkZnpLemVKK3piNjBSWDNBZkJXU05lNHdKVE12NElG?=
 =?utf-8?B?MFVBVmhBTkppSlpnWHYrMXRiaWRLeWxzQVE4T3owaEhEL3JlamRuQ1AvUWhI?=
 =?utf-8?B?UXo2T3dYektuZHY1QXNNZXdXY1E1bmxZSWNyck93Q2UzaEZoLzlSeGljTUNO?=
 =?utf-8?B?YTgvTVhmRlIvUk1jS2tQdU1zMU03Y3NlSzh6TWUvS2ZzWnNwSEJtVEF4MWlT?=
 =?utf-8?B?Mng5U0Y3NXdIeTVpSitaRDErSHo2QWhMaFk4OFdDRUU1QU1CRWRmRnVOSUdS?=
 =?utf-8?B?UGErWWpUNUZrbU8wSjgzTHBlZzlCd0dYWDlPcFQ3azM3ZFJhdElwcEQraXRs?=
 =?utf-8?B?Y0NCUmZ3UTFIQk1sQVpZcTJYSjlsU1c2RFJ1clVFMHQzWUxrRTRFTStnTmtL?=
 =?utf-8?B?VUd0bUIwSEZVMnpLRUNTYjRKMjlPWldDOEd2OTYyNHNrRjRQYWZuMUJMU0dJ?=
 =?utf-8?B?bE5mWmFNOVNLN0NheGpwd0lpRU9wbDcwMmRBT2ZZM1J2MTAzMHl3bGZRR0Zu?=
 =?utf-8?B?SThVTTdmZ3MvQjNNalpqeGs2VlkyS0RIVng1VzF6NXRXWWlBNXBiSnJpK3p4?=
 =?utf-8?B?N0ZSVUhMZkNtbHIwSVFXeGl5YnhMNldXWitLclFZV0tvb1FKWTlDOHh3Zk1k?=
 =?utf-8?B?LzVEZWlwSStzZGZ6cURWSGt2Q0tnYXV1Q3RnaDZOaHQ3YjBzeWdUQllrMWNZ?=
 =?utf-8?B?ejU3ZFdhWU5xeDJJSVFIcmwxT1NHMFNuQUduWEJEQUx3Y1VrOUxienZCRW42?=
 =?utf-8?B?Z0tyVUMyS3VITFhzczQrVGdvRmhzeHpwZy94aXgvMzNrWnlOZzd1cDBSRit5?=
 =?utf-8?B?UHdQMDBpOWtIN1Z2VjBYVlR4MjFiZ2ZTbXZkOWk2SGg3YmxxTkVuYzZJbkw2?=
 =?utf-8?B?aE9CcjBMYnByZ3htajl0QWY3T2xvMkV6ME1GelJidHQwQVFnNVBCR3dWSWtG?=
 =?utf-8?B?M1d5YmFMVGlqcXdrOS9Teng2RkFyY3ZJdHYxR081eWNUM2p5MzJJOXoxc295?=
 =?utf-8?B?eGVXcjg5OVl5WlNndGZobGF3TzJEcE1ORTl6UDdTTUJMVWl0ZDlnU1R6TzhG?=
 =?utf-8?B?KzFxUTZwVVc1aENpVVREamxGNWtDZ2VrNFo5b28zNEorZndJaW03ZG5LaTFG?=
 =?utf-8?B?akZCTlZ6Mmwyd1FZNFFERUtDYmhuZkRNRmJ0ZUlwV3ZsSDFBUllKTUhvSXhV?=
 =?utf-8?B?eXZaZlpNWUtKNmRWeURoYjVJaE5qSDJNUlhyUkk1MlhDY0F5SnJQOVFib3F3?=
 =?utf-8?B?cFFPbjJqQzhxNkpSSExjTUhtZFV5V21RcnlSejloK3dsTHFsYUVCeGRZWEc3?=
 =?utf-8?B?VEdyWEgyWjhDSHlHZU5jSFRDWTI5RjNqN3hhZ2F5WUx5YmlOS3RoMktISjVU?=
 =?utf-8?B?S0RDT1FaYXFLcnlMNGUrUDI3eVBKcHZkYUo2aUZtbTNSdWdJU01JaVZXcFky?=
 =?utf-8?B?blRLTEtxQkc0ckZsTm9Ga0VEcU1aTS9lb0NUSGtoOGFFZCtkY2RVdDdxTU9q?=
 =?utf-8?Q?xQMEw31PJfM07?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzgyOGVSdUNsRm45bzByZGp5V2RhdzZCUmRibi9IVVRyN2g4UEJQbmVNM2l1?=
 =?utf-8?B?Zm9FbmRWT2dIYXlIMHpPREk0MStwS200eVUxdEhTNG95U2c0UGtRaHdTZVAz?=
 =?utf-8?B?UFpzSW5TQTMxQmh3NmRsbVBUSEF6MUpLSjlLVENVZUo3Q3VQaldJbllYcXRu?=
 =?utf-8?B?VGRkMURoa0FENVl0cmhSeDZvK0hzdFJvV2gveVVXeFhHaTZUc3k5R1ZZTW1j?=
 =?utf-8?B?WUhUSnFNajFRMWdyazVQMUJUUVJxR0ova2NjY0x1T1RBbCtGUkpTT09XOWxF?=
 =?utf-8?B?WFcvNEVJNjZXVlZVQzRXRkVIVm1iUTJwNWJxYTJwSUgrQ0owREh3b3lVa1pT?=
 =?utf-8?B?UXUwYWNUU0RORGJxeVFmajl1UkNNSFZLMDVmMlNhVmYzclc4bWgrSEFBalU2?=
 =?utf-8?B?MDlFN3NwOGNFaTk4bEg2M1E2UFNMN2Jmb3FxU0hkczY0SGxvdXo0NkoyNzQr?=
 =?utf-8?B?WG9FelJsWGRpZ25FNkRqTE5WTk9KdEhzMVRDODU0Mkg0Qk5xSFhhSmMxY3E3?=
 =?utf-8?B?U1dXM2lyMlRHaTY5U21QOEZLZ3RJbVFuTjNZc21COThoMHBrSmVCLzNLUlBV?=
 =?utf-8?B?eFl1ZmdlZkVwL2hNcjZQY0tSNWtoUmZ0blhRTXpqQUQzczZjQWI3TEN0S2xr?=
 =?utf-8?B?bDNpSTBFZ2grUWNFdmxBTWNYRE93VmdvcmdjOVJxTllZMDVPejZubUlIeTcy?=
 =?utf-8?B?dzNWTUZOY09hMzV6a1Z0U0hJR3hHZExHcks1eVlBZTFkVHhPeDJHTWpSdWw2?=
 =?utf-8?B?R2piMjVRMk9GR0NDcUVVM1g5WHYrRUpCbzdmMEt6cjBHK3lZU00xNS9xd3hq?=
 =?utf-8?B?cHZxbHlQT3RSaDlnWkwvSU9VdnV1RUJIOStPVTJKVVRob01TRkdvZXZrM2No?=
 =?utf-8?B?YnQvQ2NNSEM5QkZkaGcvZUZSTXVhRzJFT3RkYjZacm1CRm9LQ3FTMnNsVjlY?=
 =?utf-8?B?UUgzWmxBWnJkY1BFT0xuOWxMR09Nay9mRVR2U0JheERPaElQamNtUWNuQmho?=
 =?utf-8?B?K1RYYXl0RUxEdGF4OE8zMjFBT0tOdEdQbStSSGhvRHgyenB0eEdXSmVOcjRa?=
 =?utf-8?B?SFU0V3ltWk5KVGU3eGNRb0svczNvK2tKTWk0OVNWQlJvbWNwemR2ZVRMRnI2?=
 =?utf-8?B?UGZSSGlIeHF1SVFkUFJ0eGQ2ZjBicXhLczNBeEZ6RzlpWDBUWU9tZjdlMHhO?=
 =?utf-8?B?REs5ZHI1VlJIMFlWWGVZOHp5bU90bDJESTRqWUJ4L1JTbVdia2lzM3I1NkJG?=
 =?utf-8?B?ZklyNmphRWQ3bE0vakozN3ZKQTZBTXpTZnlieEJiWTZJWXNzQnJha1FWemZi?=
 =?utf-8?B?Yms4TGZQZHZSS1RzMzYzYjkyaW9KUXIrNXA5KzhBYjQzbE1ZMFdTQlkveVBk?=
 =?utf-8?B?OXYwZUVyYVFaL2Zxdlc0TlhTSHZsY1Y4MWZnWXFwYmp2Q3YrU2tQWTNYSWli?=
 =?utf-8?B?citrTDhVMDNITjk4Z0dtYUdLWFd2SS9zZHdYbG4xNDRTNXEydysxbW1oSzZO?=
 =?utf-8?B?SjUzbWRYU1ZTVHBSRFpsVmczZGNmSFQzdFNsT0dMdGMrV1pVbDBOM2hqNWs3?=
 =?utf-8?B?NEo2Z0szRCtpNzhRaGh5MkFFaWhCQm8vL0JucXEreVhwSmhkZkdvZnNCcU8w?=
 =?utf-8?B?cTNJeWg4N2U2OTc0SEdEZXBmVzVSUFVCNkcvZk1jb3gxa01pN01vc2FhcnBZ?=
 =?utf-8?B?YXRjZ3Y1SnNyWkIwTVl1RE1TNnJvRW9CQkc4VCtMcDZiTHRwSE1zM1k0bWJW?=
 =?utf-8?B?cDE0MDlXZDdocDc4TmpOMWdXMGl3WDRrSnBtNDNaa1RWQUNUT2tjZFZkbUUx?=
 =?utf-8?B?WDMwVWFLM251Sm52azM4c3ZOdmFhTlFtRllmTm42cllROFFwRkx0NDc3M2ZO?=
 =?utf-8?B?V2s2RnpsRzZzZzQyQ0dIY3lCQUFTU0graGgwbGV1blJJeWJmZk55bVBtQXdQ?=
 =?utf-8?B?MWVncUY0VFRJV1hGbTgyOE5JRzEycTEraE5IdjY3eHJEcGdvOVZkNzFRaWRY?=
 =?utf-8?B?d29oRzNlNm51TlBBRmVCdWFIdmMwKzBaRkEzWitWenJ3U0cxM1V1UHRyV3o2?=
 =?utf-8?B?TTdoaThjNEl3V01BK1FiY2swZEpLZnFTb0RhK3dUWTU2bFJSaG5KVGE5cklq?=
 =?utf-8?B?NXQ3cCtSWlR1K3ltOWJCOU53Z0ZYWlhUK0tpWmdBejl0eG1ER2NzNWVGcmZK?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04834779-d07b-420d-28a7-08dd4741659a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2025 06:33:56.0897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c9D2q08cHmQrA+h0eQSSWcngRvG3QEbyL1Nlprnnw/rNEmDu59cQ0MHLkDdJ5T9n0CrRBnXIMw77AaH7M4F1/9xzmXZ5tEY8VdmxIGNvRM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
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


On 2/6/2025 10:19 AM, Mitul Golani wrote:
> Compute as sdp when vrr.enable is set, also Skip
> infoframe.enable check to avoid full modeset during
> as_sdp toggle.
>
> Mitul Golani (2):
>    drm/i915/display: Skip state checker for AS SDP infoframe enable
>    Revert "drm/i915/dp: Compute as_sdp based on if vrr possible"


Thanks for the patches and reviews, these are pushed to drm-intel-next.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>   drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>   2 files changed, 7 insertions(+), 5 deletions(-)
>
