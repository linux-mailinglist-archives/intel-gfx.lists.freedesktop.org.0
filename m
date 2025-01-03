Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCE8A008A4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EBF10E88A;
	Fri,  3 Jan 2025 11:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPlRfv+A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A7810E88A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903849; x=1767439849;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xgi+muSLmpg4Lr9/4ZIJ/OrX8z9QxY3nQTT9SO3B/bk=;
 b=MPlRfv+Ar01IRmweNdkvA0s6+FbqY8eq7zJb9Ld8w6LqZfb/dDzTn4KG
 SVXhLp1wxCtUDwgOp84NDRANuFJKBxn04QVRjWQs0KA9VIvAwoo84Wnc7
 SMYY7LC7cUlz5UpzPOl9qtUCj6Ok+3+XcVKm9BXYkmX4GV5hpaFLYezyQ
 wq3Kuz3bCItQYVYoY8sV/wiyHF2MzZrzO+uqM9N6bGM67uxPYPRI27Rta
 qK5tr4qFVwiiaZG+eAJkWjwJ1fTOalpCyXsSDFGNoftRqgUiwIK4v5sen
 nvTakYhiuXfJtMymH1rs90fpIZ/i0/KvYV28fqYgRfwL/GsxzCkGHX9js g==;
X-CSE-ConnectionGUID: aiAfW66iQ9Kap/mrd4GlcQ==
X-CSE-MsgGUID: fqE6FJMLQOKSAGiQT9qK4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36056659"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36056659"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:30:49 -0800
X-CSE-ConnectionGUID: T7RYd3AUSqOEvdHKc5vyKg==
X-CSE-MsgGUID: YJ+/ixBcQLCLg1I5BwhP0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="106747757"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:30:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:30:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:30:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:30:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zg+utaJvnpKnnJo710z/EVvQ+ZlHBh3idud3n8jk41t0dA9/6+oqNID++HeONUmPjC48CiPtAw6EWwXN0efdnF7T0Gjky8Dga1o5srmLoOi1l0svcR+omGmBpno24t/c8e9MeMraJK79XswP1936+if1MHamTo66+m/tyr/oEgKOCmcziZboqpZV9zNG5yMQUyu3hrF6m7towaBEY7D3PKdQhhWs6IhlQO+DG6or7CblnOG0kWKyMbPPsS04udvey3NfSv2iG3bsBkUxU1dbfmk4TB5xJDZ1xH1tFrarM5LlmHh40ECcYE7levvhizAypKiNn2D0UyzneZsCAS0kgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cz2TK+6SyLNgE8/xmt4uwabLhvZ8+PgU8SADLw04XYE=;
 b=n+IIxIeJQ+xNzqoCliTMvMFaozHdnDYhu3ldDw5wkRMotTD8ozPQrelZRmaPeGeBhZV7EgTzboMD9VJdphka6OcCWb7MgoAuGlFe/T+V4pQO31r/8Yk2Z7tOO89bbiXxUHyVrcnB8qoJXG2oQPeWletTmNPt/jn/m3iL43U6AHQE84JCpBoDPF59ZMpIB0qgxZNwZhmayWNnBQCLM+SLIJpJ47cBstYqNcWA05TnUXiW+szh5bMpabv+R+X68c/aUuj1bxdtara27OKepdStVCPyLzI3ZTUaxCJeyIzhdn05/nQqbgiIFWL32fivmx5ZDhh8W8WXOfwX3fVEKhQEQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:30:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:30:43 +0000
Message-ID: <5fa0ef71-d61a-4734-bd71-06eb50b82cc3@intel.com>
Date: Fri, 3 Jan 2025 17:00:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/18] drm/i915: Include the vblank delay in the state dump
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-7-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0174.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: f83b4cfa-e583-4f9b-4fb9-08dd2bea0ed6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHpyTFFJd3lZQTA4Zy9mQndVV3BZL2h3UWRqQlFMMDVkTGUyYWFId3J5emFW?=
 =?utf-8?B?UmVmS1F3bTRXTlpMNVpBYWY3T2xGT3hWQzNqQWZSZHA4NTNaa01UbWNYZWZj?=
 =?utf-8?B?ZlNQY1NBN28yZG1lODFiSVdqL1QyTHljLzFMcmlzamNyOEdyMjQwVzdWSnVW?=
 =?utf-8?B?L0NESXpwak9abWNNSHdEMjQ0REkxYkw5NWgzSXRLcXRWZlo0b3NISzRVMUd6?=
 =?utf-8?B?MU8zQXlyL3V5bjd3YXlmS0gvQXFMZkkvSnFiZUQ4ekcxY2hMaFZUTDlFNGxT?=
 =?utf-8?B?N0V6d1BVczJSMmY1Um9oSTRSdzQybDRwVmNBZXkwd3J1Rno5NnlMVHJOcHNQ?=
 =?utf-8?B?RWpjRmVJa1FockorZWhialZQR1NxRUV3TmN2OXZoMTRKelVFeG5MczBqWFAy?=
 =?utf-8?B?WXlIYkF2R1F2RXhGaGpVYWJZTi84VFhDWmRQR0YxYTQ3WWNBb0JrbGVWL05R?=
 =?utf-8?B?MWxFREhQY3hVNVUvV0Fvay94Zk1FMXlJUVdnbFZSejV1bjVzVzhOU3dBMmd1?=
 =?utf-8?B?RHQ4RUM0S3J5OTcwRHkwWEFhZGRJcjhxOCtGZ3V0VGZUaWllUW1JeVhYeXVR?=
 =?utf-8?B?V1FvbWhYNkF5TTc1cjQyVUVvdE5CT1BCUlNsSTI1QTU0alczcmZmekpoRjhG?=
 =?utf-8?B?UXZXUnZIOEM0cnI4REk0SGUyWmlaOXYzcTBHTlo4RXJicy9lNFlxYmZoSlg0?=
 =?utf-8?B?alZ0b3ZIZEJyVk5pTU5PNmpnQkt3ZTRTUGFjcXBMYjlReTVyNVRlZ3NNRmNh?=
 =?utf-8?B?d3RJQ05raU13OXZuY1pTaitmVXZIZEdscUxTYTRacXVyTEFqL0wyUGhpY0VX?=
 =?utf-8?B?SnVIMW8yYmF4MGNEL29SdzVKL3h0VTN2UGEyVDdGTmdZaHdoQTlpMXo2eVg5?=
 =?utf-8?B?ejE5eWg4cDVDNDArQTg0OTlFL09tUGtCRWNvZTRTL0pnVXBteGFqdkhDcWk2?=
 =?utf-8?B?NUNDRml0MTBCRVZCcFMzcFVzN2hka0R4V29EUmsrVTJmOGswUC9pVlJuUUJl?=
 =?utf-8?B?MFhLVXMxSVRoNFhJT0VXZUNsdFhXb29KTTBsanFnMzVmdmFRNVE5YjcwQ1dK?=
 =?utf-8?B?VmxsMk1idkJCTHd2SDFUMDJDbVhlMm11VXlHYUFxWm55Qm9heWpWNTl1RWts?=
 =?utf-8?B?cTZoSTBxZ1VraVlxUWhTS3QvUmF0MENOVEpSQTNWOFhoYlpQOHRNQ3RHOHdr?=
 =?utf-8?B?WjlBRDFoMitrQ2R4NHNndXpVWFZrZjJkc0lFWDNnMmloUW1LY0RrRytSUmhL?=
 =?utf-8?B?Sy9malh3eEdTNkhhMGtQdDVDdjlIWW9rVmtwZHJldjRpTmV6RXdYVnI2RXFY?=
 =?utf-8?B?OGZ6VmcvSnk4ZzRyUm56ODJzOFZNMWJZeHROUm9DcmZtSlVaRkMrVDBTYmRJ?=
 =?utf-8?B?K0tEeTgzcXl4TVk1UzhRT2xQRTdlVjYxMzNPU0dZNm9MaWhMd0FwZUhoamRC?=
 =?utf-8?B?ZDRxZDVGYjFDMkhmMTU3OVppWDdzRDVuWGpqSkhYRkV0T3V1T3Y4NXBwRlN4?=
 =?utf-8?B?ZEE3RUI4Y0dzVm5SWElIVGM0UVVtQUxoc1RyVVpGb09zZGZ2RGV2cWF5Y3Q1?=
 =?utf-8?B?WmxmY3Q2UDZEd2pBNExVUzg5LzB0Q0pGSjV4R1hlNTdrd2YrVWQ3SmVjYnZN?=
 =?utf-8?B?OUdGTXcrNEtzbzVIVC82MWpucTQ3NllIRmJoNzdmZVkvOEVNbzFqc3NaMDQ0?=
 =?utf-8?B?S2Y5ZW5YUXdPeUdUTVlRcElFNFMwNlJrbWsvZUJKNHdpZ292S1RjdHVkM0lx?=
 =?utf-8?B?aDVFY1ZBSDF1WFAvK0QxQjJJQ3haNTdrelViNUE0K0NnMm50Rk1ZbmJUVmFG?=
 =?utf-8?B?MTdwUUMrS0xVMTRaTkorRVY5NHpud1pBNEdTQjl0dmZjU1U3elZDMmFzbWc3?=
 =?utf-8?Q?TAGYgX9Zb0mzK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWQ4MytjZklLbDVWYUdGZVJYSWdZTmRpUmFGaFVIb2p4WWUwYk1NYk1HWlp5?=
 =?utf-8?B?S1A3ZE5sdmNzSEhjcU54WGN4Yzc3Y3dXbVdMb2h6RGNyRFRXck1waGU0aG5p?=
 =?utf-8?B?c2Z5U0JJTlBGQ05jeGVSM3BnMFBrTTRGUVVLenhGa09rdHRCY0RvM1Q1YmRp?=
 =?utf-8?B?RnJ6VmlIb0o1Y2sralRRWlp1cFZjUUErQ2xjSmpiaGN5R1I3SFJHeGpjRTBH?=
 =?utf-8?B?TEVGeVJMbGZOQysxNEZOWk5vcVZIakEwVnh1R0U5TTI5cUpOQXhyOFJUeXVW?=
 =?utf-8?B?dTdSdGtkQlVmRW1HeVRmak5wRkU5OUNNbzUzQTNEWUVEZktVazR0Zk11eXYw?=
 =?utf-8?B?RWd1Q2dKemgxRUNwbER2NmdndXBpRGhXdndwcEs5L2t2RE9hRW9vL1BlSkZs?=
 =?utf-8?B?Wlk4MUlxSUQ3bTZFRXIxZXVzWjRvYTRuNXo0b0lmVU1FR0tQcDNSbm1Pb2kx?=
 =?utf-8?B?RjI5Yi9FaHdUdk5PL1F2ME9LbzZFajROS21uUDhoR2ZmUlZldzBFaFIwVzFR?=
 =?utf-8?B?V3NNMzd0cTJTMEx5bUt4KzV0RTBsNHlISXBWMjdZL0psd01KOTlITE9zbXlQ?=
 =?utf-8?B?UEZJR0orTHRGbnQ0MDZETFJiaXhIUlBSaWlHeFpxOEFoWmpPZHg4RVF2QlQr?=
 =?utf-8?B?NlhRaVJ4K2tmbHpTbVM0Rnhoc2hDaE9DdG5UZjJuWWZCTHFERGFMSDZhTnl5?=
 =?utf-8?B?dUdVMTBRSFV3cEgyWlYzOVFadHcwellUWkpsK3JQbUsram1jQmVzQ2VucXRx?=
 =?utf-8?B?SkdJZTBBeFozY3IvMGs4SGErYTdBTGpjSE5hdkdsM2R0V0ZPQnk2WXd3NWx4?=
 =?utf-8?B?RklhK0lRMEw3TUlvNS9RS0NGckVpMHlZLzNQbmdRbWkwSk9Gc24zbzJnaVZP?=
 =?utf-8?B?WDJqSklRSk96OHlvQlBwbExVd0xPR1JzUUkweWtsbVd1bUZrOHVHMHAxNktN?=
 =?utf-8?B?YW5IYjRRaW96NlpLeERtNFc3ZWVNbFZ0R3RYZFVENlQ4RUx0M2ZZbWdoZHBl?=
 =?utf-8?B?Q1ZrOW9SMEtxNVZzaDlzTUQ5VmVOUnd1dHpOVE92MWQvQU5LQjZ2Wk5tQjFK?=
 =?utf-8?B?S0VlM0c5STB0UnN0N2lSSXc3SlphZXo3U1JBd0pWUzVpN0x0bjNEaDJCSXlS?=
 =?utf-8?B?eDlaN1Awb2VlTnhKNE5MSFRVa2F5U2FGQ0pmQ0M4MG03MUN0WjdlaUgwRmFF?=
 =?utf-8?B?ZGsyRHNvczhCUm5GZUFudjUwSWJVNGZYTGJYMHdrbjF2eG1BR3gyTTNMZklM?=
 =?utf-8?B?K2Q1MmgyNXE1VVh3V0EreUNaMUpoNmhFYmxvNEYzczNZcXlTbVpzcHNCeTFO?=
 =?utf-8?B?MlN0Yjd0QXpNK1l1RzI2OWYxL3oyMTZ1YU5nSVhxb1hsSmJ4YUtML2cxbFph?=
 =?utf-8?B?V3dWbm9yWTRRaGphTmdkSTViM21WTlhtWGNwMFBZbS9PTWNYOFlac0RYamtv?=
 =?utf-8?B?S3UvVWc0WEIvQVFmNzQ1aUlUREhkbDNYQy90U0huazRabEQ1TnNPUDVTNE1Y?=
 =?utf-8?B?RmZ5U0VHVjlWNmlOMXJ5WFhqM3pnVU8xL21JeGo0Q3M4R0QvWkN0UkNhQlh5?=
 =?utf-8?B?RnFLRWZWc2hDcWJ5UytZQ0hHdktIdkJieElKZXIzSVk1YkkyczhPNnBkMlRT?=
 =?utf-8?B?ZUdMQmNYODYyTjErV01pM2dnT3lsYjRyOWl4TVErSWhDVzk1Qmx1TndPVVdL?=
 =?utf-8?B?THBPZDJqd2Rkd2hFeWRpWU9xRWp3M0dlWDRIdldrTit4UisyUVk4U0x2OThI?=
 =?utf-8?B?Y2dYaDFzbUZkK2xONXR1SmlpUTBESVBhWU1LNlVZZGdwMG1rMGlBd3VXZmEz?=
 =?utf-8?B?bjBIcWxNOVRtWm5tNklBdTFUY2lhL0xvcE13NmIxR0dMek9vNGk4SXA0d29P?=
 =?utf-8?B?QWI0SEJvbUcyU1lWQ0ZlWmEzeXR3R1VPcVVSWkNuK01ndDhlTjkyR0ZiN3c2?=
 =?utf-8?B?RGVMZTBUVTY2eUV0aDNYUUdKaWxpeVdpK0FxRnlBcHFjdVY3a0VrcnRscWlT?=
 =?utf-8?B?djA5MlNIK2h0SUpMVmJBMk4xY2pXcFRlNGY1NkwvUFNDN0hsMUNOL0Z1bUlD?=
 =?utf-8?B?czBXQ1h4MzVUSm9wSmxKQWVhL2RKdm0zNHI4UWRRZ2MwbE5aMEVuRHZlMTZm?=
 =?utf-8?B?WHVIN2dnMnM0NFIyU1lsQjlmU3FiNVFQSDhUWDJkY0VXZU9aZlZxRTRQc0Nm?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f83b4cfa-e583-4f9b-4fb9-08dd2bea0ed6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:30:43.1266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8KGN5QrgC+U6139FZ7kkEVGrjJqnRVSJfVbOxF6SZ5LqpIM9/s61Iyvab6Mo8cux/pKlVoKYF4FM7bgM/sisdMoypTsWv++vR7m+WDHwx54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> While one can look at the crtc timings to determine the actual
> vblank dealy, it seems nicer to provide a more human readable
> dump of it to ease our lives.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 9d930ff862cf..27ce34df8482 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -283,7 +283,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
>   				   drm_eld_size(pipe_config->eld));
>   
> -	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
> +	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
> +		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
> +		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
>   		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>   
>   	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
