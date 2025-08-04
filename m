Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15824B1A33D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42B610E364;
	Mon,  4 Aug 2025 13:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2LNXdKZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBAA210E364
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 13:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314217; x=1785850217;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SwFGxpsyp6anRDPXG7wkKtk3V5Ei6t+S0/nPVBY4u6w=;
 b=J2LNXdKZfwl/EsAv+HVZWNnmEaoi2WGFYS5r9CcHCfugUgUnl6frpok9
 th5lKcyFRtz3WFJtuoTJDznUgLCzsU+IkRzaPgC/l5x+Kd050uwpAHr8X
 Hram/raZLPhiqHRYMCn+NcStMnmv1ZaasZ8VWoScdBu7tvzM/sXFQTeSU
 eqX9WUYxiPEGLtizfmeCS9VXW+Cgq/2mkm/tzn/LOd9/mZZ3FkCobBC7n
 Hhiq16qtL3XibjgcKoAIav7w95pwjyihqOf4XVqRq3Gn++3ceon8z9poy
 ZwhWRY+QAPFHaVKeWW61FFCCWAZBDZ6Z91OF56/N0MQ3VWUghQyazQkjY w==;
X-CSE-ConnectionGUID: 189d1damTPGquZ3rAIIliw==
X-CSE-MsgGUID: A8NWvAUMSgOn3trhtm/IYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56446304"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56446304"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:30:15 -0700
X-CSE-ConnectionGUID: 8hLE92CbQFCA/wrSglDxmA==
X-CSE-MsgGUID: HGXhX3GvQ9S+xtIQ3hmOiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163428589"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:30:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 06:30:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 06:30:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.50)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 06:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJHlkbjRRWTdZctIImI2qvy+ps7mdyTD3CA62fuW0ND5NAcAKqPqOo876mzXUs396sSnh/OdA+fq941VEavN7963nu61xxPIBQnh8ixyTlUH/rflsyAIwWIJmnsE3K7d6+VShZvF5X02Df9ro/992bEslPk51eeET/dTG+mVxRgW14j8PIu6BR8Fl6NTgYOE/vJ98ZKDDgpLkwrNgZkCNfWDu5yYVXrJ7YvzDYZVnPIwU0J27QcZHN5AGqbHsLavMIUeaw6PkZn7trjcsifmuUMsavKruefTMPCGSOlLpSLC8JmS+U/MvlPHIQLv0piDnGhDVBS6acDf4qDqbLkB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ndqf23bIn1fGs9GoWWbU/9CKxRfIsvOFFUKCr34Hmmk=;
 b=ZqRmTfP1shoPMAPvP0Sb2zFGjr9MPIp5urpNrW0KQI3dQh3Q8BZesAVAT08mblbtB+T8rUTr0cpLL/glb993Idf1jYIdsPVpWrHeFpRUbGq/J6eBd2J99FS8EVCp7i2+ifekC4jE0mBikNuy520kKNXFsLXEweFg0YFdxmSrojcrLlMYNXPUuYcI+uKUv3dK5CN4iKGIC0bnKGaSmhu6I/LTly0t6MumWIh5Z2jYvobq+if6upjnDRcYQCRkd3UL+h7jFncctLaAiOu1DS3fnmv+9ZsDsFTp5dPVQ34sdXbaKpPbZDtGvdrPDy6LXXLqckMbdnf0snRABOmbulwA/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7071.namprd11.prod.outlook.com (2603:10b6:510:215::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 4 Aug
 2025 13:30:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 13:30:10 +0000
Date: Mon, 4 Aug 2025 13:30:03 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 0/3] drm/i915/gt: Relocate context-specific workarounds
Message-ID: <ez6ngknmi773xyxxwtmddwmsrkpsyyg6e6xggi2bsqp7wwfka4@iu4uluoncme5>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754041191.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DU2P251CA0022.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7071:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ba04994-ccbc-4466-40ed-08ddd35b094d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rng2NTB2U0NjU3hTR2JzZW1tMjdsTHBLaFoyald6cmZhbm5vNmdoMW4xN2xP?=
 =?utf-8?B?NGRhWTFVRjlORlVNT3Vla1pnOXhYOFJ6czZ2STBUeDVaaHV6MUFYcGNqa1Bn?=
 =?utf-8?B?Z1hlRkc0bXJyZEdsb1dLKytiRDUydWRZWDZ5eFVWUktJOW93dDJ4dVFGQWx0?=
 =?utf-8?B?ZUJ4RFZjQ1JrMFFHaFROYzZHVExiWE4xWmNpMnp3ZDcrUG9aa09VTFIvTzFR?=
 =?utf-8?B?RlpVbVZPMy9GNUZ2dTN5WithNW10Y2kwL0h2RTluR0gxZ2JNQzVWVFltSnUr?=
 =?utf-8?B?M0RmK29UVWkwaTZBR1U2dTdXSGlxZUtsNVA2cVhyMm1QMXBvVVBNbDBmMGFo?=
 =?utf-8?B?WFZ2dHJ5N0tMcEtVZ1J1S3p2cXBSUHUwNzQ0WVN6NlBJc1h4WHA5VHFEbnVC?=
 =?utf-8?B?OXlXR2FCOHVKZ2F3QVdvakI5VldDNVpHRWloblVpQjJtV0tmWlBnMUtPeHBC?=
 =?utf-8?B?OHIxTVZ1T0Y0WGMvRFRzZnFLbldmREZCWG5XZUVWbjh5S1JMVWF6S2RJczhs?=
 =?utf-8?B?akNheURCWEVIaGNFZ0wvR3JhalFXR2F6V09WclU0b1FidnZUOTlQN0Y2THF4?=
 =?utf-8?B?cmo0K3dTUTdhd2l4dlBrRWRxODhmS01hT1NENXhOZmt4VDlINWErcWN1OEpD?=
 =?utf-8?B?QkJvZVA4eVFxcjV1SFhHOVpvRkNqWnFCQmVLaUMvQTdrdW82elRKdGgvVkor?=
 =?utf-8?B?WjZNTmp6eVNCMWtVRUV2Y3p0WEhSUGVOYW1YZ0Zhc1U5YmxRN2tsRmRyWlhK?=
 =?utf-8?B?Q2pkV1pjZm5tT0I3MUV1Tk14bXhPTEJNaWtla0ZGWVp4MmxQQzVmRzJjYTZz?=
 =?utf-8?B?eFFPQjl2akxHdGFwcHBhK3ZRYlVZVWY3eWt4VTZTY2drUW53eEZPdE95d3BJ?=
 =?utf-8?B?clVYaXFld0VhMGpiME1GUjdIaVRRTFpZcmt6dU1FQXB1R2lGZHRlSC9PVEhY?=
 =?utf-8?B?QlhoMDl4MmdjMStSdzJOc3ZTNFp1eWxqY3ZWNnpxZ3QvUGh2Uy8wUStCVUlx?=
 =?utf-8?B?bHlRQ1hvK0s1eWlOU2tFa3lPZk12VjFMU3dObEVtOUthSCtLbm54dCtaS0ZJ?=
 =?utf-8?B?ajhWTXFZRTdZc2xZZW1kSUg1ZWJhTkVROFREeEZjcnJRRTJiVWFRc3F0WUJI?=
 =?utf-8?B?MElJejVnMjdRdmhEWWUzVUwwcGxGSGVGbEtMNVFjSDBGeE9EMDBJRXhrOHhj?=
 =?utf-8?B?bGEyWXRSMSt5N0dsem5mOXpkQ3pCQmFZQ2JjelBldGZEaWltajFnVHNxcFFr?=
 =?utf-8?B?bCtqWlRHNkVObVFJQThVYkE5TG9venJwc2daeFpSQjIzS1hQU0l4bkltM2dJ?=
 =?utf-8?B?c0JoTjQ2eDF1YkJ2ZXdyN29TQ1pINDA3dlBuVi9Ua0VvTU5EbU1EWEgydllo?=
 =?utf-8?B?K25hL25HMWpHS1VlZ1hOeGdBNGxCdERRSUNUaHgyeU1kN1NaMG54N09KVit6?=
 =?utf-8?B?UUoyNEM3TlBqajVKL1UxeUV2aXlEbTlOSFZrSVZqemtZd04xek9wKzZGMDk1?=
 =?utf-8?B?T1NEK2p1bWVucDkxKzVua2RUTGlzNjR3U2ZUQ0tpSkhhZkxvUXUvZVFRNW96?=
 =?utf-8?B?MkF4YzJwR0JzYlJqRTdhOThaVmJiaFJweUNBNjc4ZXp2bHNFMzFSUEM4UVRK?=
 =?utf-8?B?S0dTRjBhaUI3M3hJTXVWQTl1NWNHdmhuMXhKQWFOOTV4eXB4WHZNdTViSUFD?=
 =?utf-8?B?c0NKZStnNzYrdENDVjVJZ0RiOGdXQ3p5TDE2WG00UG1RV2NtSGFlOGFZOHpL?=
 =?utf-8?B?SHJUSzRlUmZoQ0ltWU5UNmNvYUd3RlNQTVBjQjRqd3BBRDc2Y0QySkRrWTUz?=
 =?utf-8?B?RG9Oa1lYMFZ3bmczRThJVFo1SnErOENwcW1rSzQ4b2ZlS2ZxbE5hSGhKTm8r?=
 =?utf-8?B?Z3RhRVZTZ0NhUklkLzdoUG1jWW8xR3RrK0JTM2RPNzU3ZU9ZSk5NOTMvSzds?=
 =?utf-8?Q?/fyDhqM3byA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enpFMzYxNkUzaTg5dXZsUzQwWDR5WElZY1c2VktTK3JVRCs3cFk5LzdUU0pD?=
 =?utf-8?B?aVUvSTVsRE1FTHFoNFgwMHo1allYaStPRDhnNmh4aThvSExhaklqQWhHWEND?=
 =?utf-8?B?eXFkT0lIRHRPNFBzU2lRbXk0S1QrQ0h2ZkJ0ODlyVUlmNEs1VlN3bFFvZGNq?=
 =?utf-8?B?ZUdjQWloaWdiVWU1cFZTeWx6YXhocUNTdXVLSFRjM0Y4djJTR3hkN29tZW9y?=
 =?utf-8?B?dUxmOVZPQ0Z1eG9Va0ozWjlJUUdqcDFpUE1KMVEvVWVTZVpjZlF2ampLOWh5?=
 =?utf-8?B?RE9MRm9tYlQvdGNjbk9iMndBQSsyMXlzekFheTRId3BXbjQ0UnVscEN1N1Rn?=
 =?utf-8?B?ZnhZSUZtcldWcXRJLzZybUlOTVpPWEdtTm1NVS9xbGptdnBOeGFoTGVaeHlU?=
 =?utf-8?B?NFhSSjNaWFUrMldxSkh6OTVKVHFQZjZ5YlhNZ2ZsajlMVDQ4T0xncitHMEZL?=
 =?utf-8?B?OTE0ek40WUZRRTZUZ1B3eGVHcnVpekJzMTI3Y21DVzhIa3ArcmtLK3Nqb0N0?=
 =?utf-8?B?MlN2VVVjRldwNDV0eGovWWxoNTB5cXpiYUQ3eGpkdFBWZ2s1SDgzUFNMZmxu?=
 =?utf-8?B?bUdqRkJ3N1NnVzFiOG1oZm5mSHpjajU3eXhCa3B6dG1NeFNmRjJWQVRwUEMr?=
 =?utf-8?B?d1N3dEt5S3NQbDRJSWQxdUVRTFN2UWp0M256NlorNkNUb2JsU2RqL29qMDVD?=
 =?utf-8?B?b3I4ek9aSWhhejlleXo4enR3T1BXT2JYcFh6TVF6VXNlVEpQVmtJdDRTaEd4?=
 =?utf-8?B?TUV0MDRLOWRiWDR1dUZRV3pNZ2tCRGcwNDVaSldYUHJidW5pYmJUNjdJK0Rj?=
 =?utf-8?B?MEFVSG5jUk1BTnJaZ3RBRFYvclZpVy85SzNjcHduT1FCcm1pbzdRdU5haXJv?=
 =?utf-8?B?ZXcyY2RxTkNHSnVqR1N3Qk1qcFRxL0JHcVJ3WGVSYzB6VTNsME9LNS9yWlNO?=
 =?utf-8?B?N3doVXZPYkxFUlhTUnRKRUZ2YVpnQXg0NUd1bGlJNDZYL0hpVkxGazI0djFG?=
 =?utf-8?B?UndERHBXcHFYQWxNZ1ZsaHE4V08xR2t6NG1rckxYYTdvQTd5TXJOelRvWGFB?=
 =?utf-8?B?WlYxLzhtVXRZc05IcUdTZGdrSloreVdVOHVRMUJ5RVVyTkdNeXN6ZzQvK25H?=
 =?utf-8?B?TVRpR0UrTUdXaFRUM0w5ME9QYjFDTEJHQndoK2JQWlhRN3FnOXNlTDc4Mmh0?=
 =?utf-8?B?S0NvR25LcnNWeGFQbmd2alRFTWJjNWROSFN5aDRaT3lNRi9mOXdFbUhQem05?=
 =?utf-8?B?UDB4c0hpMFpmM0x6S285cFdkZWdCUkJ6aTAveWFiQVJnd3hKTDZzWmp3ekp2?=
 =?utf-8?B?MlBobmtsSDU0QjRvUWlUaVN4V3AxWm9aTXNrb01EMEZ1VStkeXdWKzNGL0JN?=
 =?utf-8?B?YnNxZTBkeWN4Z2lVdUVENmZtd1poamc0eVVLc2IzbkZHeS9SMXdBeEVjZTVF?=
 =?utf-8?B?TmNIK2ZabHBwTDA2Y1NHVDBacTA1ak5yemhycVFqSldtajBmTWNoQ0Jkc1F0?=
 =?utf-8?B?T0IwcnZqK2gyM0l4VmdNZnplMkZPcFM4SExwN2RXWUZhcUZweHJtRXMyRkJD?=
 =?utf-8?B?S1YxNnFHbUd4YkdXWjhiNmI1RzUrdzBnZitONGp0ZTdjSEN5R0tlTkZmNzNt?=
 =?utf-8?B?eDRVWk9GUTJ6K1RRMnR1UHpVcmVqZmxNWTBjNWs3d2ZXMHpLOHAwRDVkTU04?=
 =?utf-8?B?NDFNd09KN21YcmRXZ0NSUWg1WCsrTVpaSFJxcU5Ud1dVYThLd0JCNTBCUDRZ?=
 =?utf-8?B?Z1RyUjhQamNaMklvOWxBdVhiMzI1SEkrNE1mVElhcEtWdHkwbUFucUo0Z1Jl?=
 =?utf-8?B?bGZnS3JtUmh3bkdzRUJzMFBxUERXQVV5a2lpQnduNEZpSjByem9aSUQ3U1Vo?=
 =?utf-8?B?ZDJkWjVCY1Y3RDBWSkdxcEovSjlCaVc3MnpCSkgyUXFkT08vY2hDZjdGcGY2?=
 =?utf-8?B?aGs5NFFrQzJRKzgvVlJycDRnVU80aWl6dEk4bUJuVXk3Y2gxSG9SZUJ5aWJH?=
 =?utf-8?B?OXRDb1ZacStIZSszV2Exb3lZWTBGdjg1U2o2WW9VamdDR3hrNW9RYlFtVHJO?=
 =?utf-8?B?RXFPVm1rVVRJWDBmV2VFckR3MVFwdmtIcmgwZkdvNWZ4Wno5NVAxTkJIVVRi?=
 =?utf-8?B?NkZ5c3BpdW1DN0hoUmtjdUpmdDYzM09zb1U4TWI1eTRyRVhreVdJWnlQZHJS?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ba04994-ccbc-4466-40ed-08ddd35b094d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 13:30:10.9630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 57xf45J29JuH60eQwbMMGRDpNVdct/wwWxcjMty5RQsMFdJUkcKjACJ1k3CLTRZ17+enb0Qi6Ci+A2BKigr+Z44v7r1oik8xZILSg1PlEY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
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

Hi Sebastian,

The series looks good to me, so:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
on all patches.

> This series cleans up the placement of several context-specific workarounds
> in the i915 driver by moving them from rcs_engine_wa_init() to the
> appropriate *_ctx_workarounds_init() functions. This improves clarity and
> ensures that platform-specific workarounds are applied during context
> initialization, as intended.
> 
> It also aligns with the hardware documentation, which mandates that certain
> CACHE_MODE_0 and CACHE_MODE_1 register settings be applied during context
> initialization to ensure correct GPU behavior.
> 
> If some workarounds remain in rcs_engine_wa_init(), it's due to issues
> encountered while attempting to move them, such as the workaround not
> sticking when applied in context, or other platform-specific constraints
> that require further investigation.
> 
> Sebastian Brzezinka (3):
>   drm/i915/gt: Relocate compression repacking WA for JSL/EHL
>   drm/i915/gt: Relocate Gen7 context-specific workarounds
>   drm/i915/gt: Relocate Gen6 context-specific workaround
> 
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 49 +++++++++++----------
>  1 file changed, 25 insertions(+), 24 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
Best Regards,
Krzysztof
