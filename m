Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D20CA0089D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0800710E886;
	Fri,  3 Jan 2025 11:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgrfEbx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1296D10E886
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903800; x=1767439800;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=y6E6zkzJgQji5rYjlHLdEI6HnYpZAzl1njnUsNdkkqY=;
 b=PgrfEbx3ko5EsKqm4BKHrEGPhDf7srNRCZUc22Ix6QvxF5CKNfn6qGU9
 z8KENh/QHFLIkTE8EIWyVs5hpenxhMWNV6zw7n0EcxF8vB6L1rVzV17vF
 fSUbdBfWJZG3jx8J6UquxPSl9jKatXv6TIwMX46zmVCY2pYlcyjbTajBy
 kDHmHgJVqFk0VBV2X9afbUlMzGRJzzaqfJsiPIFMrUiF7IQNQhcfplFQH
 9eVPNzU9rNzuQoT2xYL83DadUy1i7hQ5rAu1qlRlUUToqNbYRNtHiDy1x
 fqYNhZgtRWUF5vOc6Z5TRw8AawrrAlstJJZKXcxmBhGXyjg3pQH9hXrIW w==;
X-CSE-ConnectionGUID: +R0oDMfiTYCnolvuO4QNqA==
X-CSE-MsgGUID: WKX3kyf/SLKfpGZ4CHR5SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="35853703"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35853703"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:30:00 -0800
X-CSE-ConnectionGUID: OOA9c3QrTfeN3QRiAW4m3g==
X-CSE-MsgGUID: msrkEtPSTHGAd7q/pI7rrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132622673"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:30:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:29:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:29:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:29:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hz1EnY362jn9TBFYLqLwk7ldlLsA3rrDNlLSklQ7Gqlsifi5BDkTUSrzcPLtXHjYxWQM49opjBMipe+Dc7tkPR3yABdpBQnHnC90TqYS3GFDtBnetaRWYSzvRqd49m4QgofGxg0V07CPbhVp9z5b+rXGMzAMfacPshf0GpV/V30VR8ttnbZZqLLssQsraEJMEMtNq9IyfsiwMhmd1Pfc9TMe6LHyWYXhomWyOit3LSnJGUb5oeHxvMJTYUpmaeq0tXoezSmlpyjZloqm2LjOnv7udT32OKtc4HCQnoUiSdNfvL6p4HeQXQoA+EFHiMoGmUHic2pP9Tsvwpfsl/SUIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqAfKmxDWM0pKoAnCAuiWGZt4IXi9QWALNeot112DlU=;
 b=G6OSQKIjzi6KEr2YebERuj4ANDkpvNpwlg9YTSEEtrbjguDBgGKJ66D0GaAJJD/YfCJE2eNEa/nhdiQ9SIG6UeOKsnSRRlVaGi5H4UgHu5RQIpbI2JPUNuaZBfnCroI8Gybr3r60wZFZKmDUpdNkMiXOvYj50k3QLmUGAYRAaHJGV2+ojgg60F3M7jr1sklAqU3I9WOjepXP79SoIe7aciizPNRmv/B+H3puIveTGwqLJo8ZJ0X7wnjdVGoYgy4fFDQuXO69shboDi76v1S1MUSROcbC3JORdaCeKKHySFRFE2bn8pRFLvC5Oivtry0L4C5GeQqF/Owdqlbc+tS8cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:29:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:29:48 +0000
Message-ID: <c91ab5a2-657c-482b-a0b6-c9dba0aa5e24@intel.com>
Date: Fri, 3 Jan 2025 16:59:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/18] drm/i915: Move framestart/etc. state dump to a
 better spot
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: af1e26c7-c2b4-4535-a1c0-08dd2be9ee2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0t3YmQySEduWnNkYWRZZHp3ODYzSkpqR1dvWi9aK1Jta3ExQVlVMEZWL25K?=
 =?utf-8?B?VkpFbW14SjNLTXhTSG5YVXpoUm9kZkc0YjZRa2JNbEpWZGo1LzdUUzVSbVpt?=
 =?utf-8?B?eDlRKzZCMi93WmhOeU8zWEI0RmR6MlZDeUZ1WldITlpjaVUyNW1ELzhHaGdl?=
 =?utf-8?B?UGw4Mng4dldQTkhhOUxRcnpMZWpBSmwyWHJSNi8vN0dubjdnTDMxOFIwdVNT?=
 =?utf-8?B?OFFmNUovT29yV0hzZ2xxRE5aZ1QvaWUvNzRmbE5ucHBwVFhWQTBIbWlCMWl2?=
 =?utf-8?B?OVF3SXdubklveHNTUXVySnZPb2RheUsyR2RlWHhoUjRzeTNGMDVDOTJ0MkpH?=
 =?utf-8?B?TVZHbnlvTUY5V2draGhYTnlqekJIbFZOemVsaDJ3Nk5PdmV2ajdRQ0dXMDhl?=
 =?utf-8?B?TkJWREFhc1VJTmszV2VBUDRjYWxiTUhmaHkrRCsybWwvbkh0WUhENjlENVdT?=
 =?utf-8?B?bEttaFIxNkJBWCtXS3htMFhiS2Q1ZnFZcGdGWVd0cDdrS2FDM2c1TUJzbHNy?=
 =?utf-8?B?azZ2b1U1cUVLRU84enRvaG1qOE9ZVDRyWDAwQ2VSaHl3SVh4UHRodFAybTlS?=
 =?utf-8?B?UEE2NUt6cHhVMmdRZjgrbVdFYVZiM2NyT29kY0dCdTh5L3hPZmpTWG9GYVEr?=
 =?utf-8?B?NlNUR2VHaXNtaDBOTk5zU1RQdTJXYWtxVUZVdCthbk9odmR4UTNWRHJDMkY0?=
 =?utf-8?B?b0ZRMjF2ejRLZDduNzZ5WStqdzgvcksrV3IwdG01S0pwb2tRWTlLRVA3NEJt?=
 =?utf-8?B?VzcrVnE3TFdPVVFvdUNYUHFMbTdZTHlwRFpGWXBqTVA4OWFaMVEzTkgrVEN1?=
 =?utf-8?B?V1hxWk0ya2JBN0dDVGxEVWlvc2pjOHZhbzhvV3dRZ0JpdjVWdlVGSUlBVzgv?=
 =?utf-8?B?SWNGbklCU2taZ3VZWUJrUGVKUmM4TFRRaW1XaWRtUEh2QTBVT1RuV21LcjY1?=
 =?utf-8?B?WlNBNnQxdmc3VWYrUVNaOE01WlFsTTBtbVJjZVh0Y2MzS0RNMGNabDIzYUtP?=
 =?utf-8?B?enVJT041YXcxajd2WVg1RDVBSldjRk5QZ1ozQ2tUZWsvM3loeHFHYmNNVXVL?=
 =?utf-8?B?VDgyWElKTHdlQSthN1RuTnJ5VWdGTTJ2N2xUQkdVdi91ekNzZHFINnZGcCtm?=
 =?utf-8?B?dXE5b2xJUmRsUGJ4bmZTWGlweHUvb0VFUEpaMGdnU1ljeDladk1uM3dTWFdV?=
 =?utf-8?B?dHBJZDRWZVZRWksvWm1UY0ovcGp1dGw2TkN3Qjl2S01qVXdJZGxydWZ0RVlF?=
 =?utf-8?B?VS9yTXcyY1hDRXZTZ1ZibW1LUDlPZ2dNSUN2Q0lPRWVJQ3ZUdVQvY0REb2F6?=
 =?utf-8?B?NGdlem01dHo2Y2kvRnJhRWticENuTWIxMDB3aHM0OFhRMmkzN2J5cmdnYWVB?=
 =?utf-8?B?RVIyK3FhelhEQ3laOVMyMkQ5aEVrOHRZMHJudDU1VmsvdGJQUlpWQzNpR3NE?=
 =?utf-8?B?T3BTV1pMM0ttN1hBQ0o3Q1BGZTEveU10YnRTcDlabEJrT1YyWXNaZ0U0enda?=
 =?utf-8?B?YzVxOWxhRy8zSzJWTjBIaE9jWDEvRnNqZ3A4aEJSYnJ6REl1Y1lVNVFPaG55?=
 =?utf-8?B?dk92cGJPcDcrSG5vcDRoVTNsWDRiV1NNekhyVTlNWkdsNWI0dWlYTUpuMTl3?=
 =?utf-8?B?ODhnMURBUU5CcWQ4MzFvb2FhbFNxVmR2N3U2akJEMElDTmZFUTFMQ04rU0Jx?=
 =?utf-8?B?WWEyT1pLRkNhSk11dHlOdDQ2YVdMemh0U29PWXorWTBMVC9Ua1h4SmlQOHdr?=
 =?utf-8?B?SW1LQ2YzYmFKOUZzU2lkakUycnBKVisrZ245Y3hBbG1PSERZTHZabkZwNHhR?=
 =?utf-8?B?MEJqWW9rTGZJakhtekhYd2NQb3oxYnd4T1ZUYlNrQmFCV3Z1RGZJMUFjcHpB?=
 =?utf-8?Q?rD74SanHp5vlB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a28yRS91bXVrWTAzQVZVQUZYM0xhVFZHY2dpZlByNGRuT1Y3cXZMcVRCa2E1?=
 =?utf-8?B?MGtPWE0xTE0xV2NrWjBBc1BTbG9FQ3NwdzgwZy81bVFOOWhrK0JaRWRSSlRl?=
 =?utf-8?B?M2FGRys3NWVLMm9hazEyakpWZ3YwRHArWkkybmZ6ZlVkZDlzSUsyUjgvbHVy?=
 =?utf-8?B?Wm5KUmZqOHhYeGUwMEFKTVo1YVhCK3ZnQWtRM3RzdEVoVHVqTlFFUHhmaG9D?=
 =?utf-8?B?RU0wZFN1UDVyY1ZJeVBmSnduN2xBbjRDNGhyczF2L2N5NEpTRTlFaCs4bE92?=
 =?utf-8?B?SjA5bFExQ1NuYVpXdjFVS0FDVWZ4RnJJc1BJUXNLb2Z5OUhvOUJNYVlURTN1?=
 =?utf-8?B?amJSM3FBdjBLb09uTUFrSE5TNEl0cU5ScDBHMkxLVkZYQmdNOEJMTVU2cEVu?=
 =?utf-8?B?Q1FhYzJoZ3NCM3pWVmladytBUTVmRjZZczdvTFZaMTVuVlBqYlF5TW96MCsr?=
 =?utf-8?B?U1haSGxZcDZkRmhwTnRsci81aWxCYW1reldEc3VtY0FUL010R3FrR0tYMGN3?=
 =?utf-8?B?V0VxY0VVS0VwR3Y4clpMRWtaWlp3MzlMNEdRT1owbXpiajkyMVhZV0xvSG5k?=
 =?utf-8?B?WkE5OXltalFDNmJRQldXR1FzQUhVNzZrRys5N3hNRVgvcXpabXNMQnR3bjB1?=
 =?utf-8?B?WWhmamo0a0ZTY2xJbFFWZjFYd3E5blVldjRzMGQ1WGpEUFFsU1BrYThod3l3?=
 =?utf-8?B?Q1lPMUo4K05yNTZmTHllTC9FKzdBd1NVTVBqdUg5Qll2VndlcFVkQ1ZsemtJ?=
 =?utf-8?B?cGsvaXJFWml2Z2Q2eG1GSHV1TGR5K3JCY29QM3l6K05jbW5FcExuS2pUZjZT?=
 =?utf-8?B?cTMyM1FZNGVoZzJHVUEzMlQrNkowT2d4U3pjY2dkWENPVTYvY1JPTFQxa280?=
 =?utf-8?B?R0RiSjRnaDZhMVpkWnowRUJWSEJSNXBQUjdVdG02dU5IWWhqUExFRVNNV09q?=
 =?utf-8?B?d0RPRTZiRTF5UFhOZUUxcHRuUTRZZXpqeXlKbFgyalBVN0RIZHRsdS82Und5?=
 =?utf-8?B?bVJnejdvbTlURU41NExua1VZTnM4QmZUVjk0ZjhaV0dLcmJFbkVDNjhFU1RI?=
 =?utf-8?B?RjNjY2U4RVVhVW1pT1R3bmxMSVFqb2RNYTdlc3BKQjMxVW9ycTJ1R0VyN2F2?=
 =?utf-8?B?Z2RFOUR6MjNReHUxZExQL2hrajQrRXpYS0VUVVh2YmRxTCtiQ2RScW1WQ2VS?=
 =?utf-8?B?MzJlN2lOdzgxUVBTdm5OQzlTalJpd0wxeDBvWlpaK3pyTEdhdVAzVnljZk9t?=
 =?utf-8?B?d1RlbGd5K2hwc3E2K1JRWUVvdzdqMmk1M2s0K2hyUmc0UzNwRjVhb3Z3RzBS?=
 =?utf-8?B?TVF4TWFtc1BYaVBaczV3NXBXbkJ3WVI5aXhsRjRlRTd1OHY5VVV2ZFA5YjB4?=
 =?utf-8?B?SkkxU05pZFZzLzh5SVRIeEh6dU1wL1paTXZzQWpyc29YNDVuT3pSS044YU04?=
 =?utf-8?B?MzlmdC9FZGc1Y1hvQjBHSHVDamV2clowSDYxZGxRQ1pvbjR3VWpkNHVRUUFZ?=
 =?utf-8?B?RG94U1hYSWpVSVZEeTRwdmxsVzBZQVI1VG1hUTVrTUhsSm5yRTdqQmxENExp?=
 =?utf-8?B?TTVxbmpQRHBkaEJBcHJIYzFnWnRFM2pvNzBhdFh4QWFkNEkyZmdvcWkvdVNs?=
 =?utf-8?B?R3ZBbWVuVllnK2kxbXIrVUlQRUlLcWRLUDhINGE4WUt0VTNseUEvS1dkVFJm?=
 =?utf-8?B?dkF2MEEvZFFhTThJTy9zUGpwNW9rS1hrclJTV1hxR0thQjJLY2p3b2tFeTQ2?=
 =?utf-8?B?ajBCZWZ6cURPN1pWWEhaOEhjQjc5UUpHcmptVmdMd2NmZmVmcDJIdE5mZ2U5?=
 =?utf-8?B?MG5LUFNvSTBKK3ZOdTY4TkI2SEFtRDNXSXFHWSs0REIvV2JPYVhvaS9uK0Ix?=
 =?utf-8?B?NmtTK09qdFNpVXVXWGpZRVM4SmJ5N3BBcWlKd3BOeFNrblpobzdIc2ZweWtQ?=
 =?utf-8?B?ZW9iWTlXS3dXbE9aUXhBVm5CVWxPbTFpdHdQYldCS0tRVnBEdEJaNkc2L21P?=
 =?utf-8?B?YXJ1d1E1QURwQllXL1JTTWc0QlVKalNxZVZXbU9CMDVHMGlHODJ2SytRbHBC?=
 =?utf-8?B?dHQ2RlhtR0ZLdGJtY1ZVMHRqS3hIemo0NUpZSXg5QjB6dGxLWTl0UmdCbVg0?=
 =?utf-8?B?RkU4MDBySjlkdWxmTnRCY3ZtcGpRZW1CcUlOdGRFVXpNYVRDYnlTVThYMFFI?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af1e26c7-c2b4-4535-a1c0-08dd2be9ee2c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:29:48.3387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AyV130YLPQNrQpGJnM08A2qbOwDl8osjpa4wXbIUJaCSwWLymZ/LNhq3b6Jy9JMR7IVgAC+p/KPRNLj9uNJWYS5J8ilu5/L8YXHFH/EaiyM=
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
> Try to dump all the important stuff relating to the display timings
> in one spot.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 1faef60be472..9d930ff862cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -250,9 +250,6 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
>   	}
>   
> -	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
> -		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
> -
>   	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
>   		   pipe_config->has_audio, pipe_config->has_infoframe,
>   		   pipe_config->infoframes.enable);
> @@ -286,6 +283,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
>   				   drm_eld_size(pipe_config->eld));
>   
> +	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
> +		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
> +
>   	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
>   		   str_yes_no(pipe_config->vrr.enable),
>   		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
