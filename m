Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49228C33F51
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAF210E6B6;
	Wed,  5 Nov 2025 04:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GopHewE0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B7B10E6B4;
 Wed,  5 Nov 2025 04:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762318618; x=1793854618;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GnLqYRnFZKEi6qnDqW8HuFIvLrnRIL4NBZilrllLmfc=;
 b=GopHewE0cdgx+6s+JRIVxW6p1HkSq8bfNugoHyiZX23oJjhbmfnoSEE3
 yPOptaPCkS3o41sfT2Hj61m1x9ryhXnZE257z1CXsH508g6k18XkeKHXD
 YiVEXhZB4ShVHYyPpLf2p+eH9eeAZKmEAaB+rNiZ8U8XRtFa8RMtvEA+A
 ErctT98czGYZ1WSGMkS4HlnpaAGNW19XKOGoe6BADQHlELJ8y5QJg9Or5
 JX5b4IXhDhNiqiNBdmsI/Frxmn4HL/QZRPUBNNJKMkNrqFvKiujxDfm44
 dljwvrf2XYs+5Mx1nJlaA02gX+bQITwrGh48nFRG2QSwZ+VoZOEsfwj+Y Q==;
X-CSE-ConnectionGUID: NQWjqlSIQgGGGK8VBaLsGA==
X-CSE-MsgGUID: 2IYHvJbdRkmSqbpZe17BTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="51994590"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="51994590"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:56:58 -0800
X-CSE-ConnectionGUID: 97axtBl4SOK6lN7Jjfq9CA==
X-CSE-MsgGUID: ltQBdid8RPiH3FLWDpH6LA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:56:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:56:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:56:57 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:56:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F8DHl1B16orifUeP24F6lkm3y853/xXA0xpowwu2lvh/Hl3sTx8sY1RlqFV7IxMoFOzDvzIZvdbF2z5DiLF0hwcPb5hMXFJZjLl2eSQkUKLzFDAzsZ0lfnBeLsmyQk9GlV0uLanatY5n2bFmOGfHvsiGzwyWb2H3ajuvii1zRn7jbBOZCDbphHMJapZrzp0i/LpLHf9J4dEB3kt8h62KcIj+3SorodctmtoefXpCkbsSBCatFIFmK+dsl57UHTKb0qGGRazP4ewmpsVJ6ImuEDJaOaS6aqJOY7g/k5x6Demi5SlqrnP6/ZSmtWR/Q57ae0O0wjwQiBngpCIfDSUVug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSr14Jo/yEzJut1iwnUFvbrQCQQQEJyXsaRYUoFBv9o=;
 b=xL6MbD6NW6fX5U6GdbSKEhYNV2zbC3+uSjLj9XZLkApjvkoh8VANRNVjonOHADbNFHpwssFybfgPsnQxhO/23RhQDHbgX5SLKd3fpcgVSZD7ySRxTgfp0xnjrO39PGLBSYyWzk5hlyRMX2tT2MMmSEY1c1vAwLXpJTEpCswJhy3zW8SzkHRU3I3TaCpoAuXhWr/H0863zBJ0CCD7yWSHVBAAZk13T9yIXtx5EKg2RvZqP2wofZJIe/T8jXRq3VqPZyCZmnu09imWhxGJcxzF3N1AHJlqkyP2FnKUmMZea2ZPuZncqFgGLk0Nc5xvGgQo4Ej7K7gxO2KNxcTY0Hti+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 04:56:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:56:50 +0000
Message-ID: <c2a4b46c-1596-4019-b2c1-864536bfd5fc@intel.com>
Date: Wed, 5 Nov 2025 10:26:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 12/22] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-13-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-13-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5832:EE_
X-MS-Office365-Filtering-Correlation-Id: b105e300-9dc7-40a9-b7ab-08de1c27bb09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2tQckpHRjVtSFhUY3d3KzBOSFVuclNkTi8xMEY1VHlXZm5nL1FOS3NHZXhC?=
 =?utf-8?B?UWxYRWVrZEtXMGxybUFPTVlreW5KZEZ0THhHTmk4UUdRcVhTVHhpY3U0aWdx?=
 =?utf-8?B?YTNvclRkKzFvSUYwbVg4VlJqVHNuRkRIaXo5U0FiQ1A0d1E3MzRJcGhacnNJ?=
 =?utf-8?B?c3FEbGZwNjN0ZnZDSTFjekgwR3dEQTFwYXRubnAyc3NGS2d1VEFQRllWZ0NO?=
 =?utf-8?B?VzJNU1pweWwxdEQxSUZhdUpEZTJ1d1FkQjE3eUNTYVFidjI5K1RFaENPT2pB?=
 =?utf-8?B?dEhERFFTWVpBQXJIVXgzdWZaaFhOVmN6L1Fua1poWHFwYzhZUzBBdG9UL2J1?=
 =?utf-8?B?UEltbDFSQUFhUnRjaVVENVY1aTBBb0tvZnFUbWVnZkFUeHlRK2c1QUF3Vk1y?=
 =?utf-8?B?RGYxNWhpRUV3clhQblZ0QlJvcmNiVjNhMmdJTFdINVNHVnduUnJLYlVQUHBH?=
 =?utf-8?B?dzVEelkweU9ZdHB5ZTd4TC9wTFZEV3BDZlRYcW9jcHB5cnVQdlNmMFo1Skdw?=
 =?utf-8?B?TmpVYU9TR0NFTlgvcG5KS2F3S0N1NFdVa080bEk5cGltM1hKZFNteWd0WU9z?=
 =?utf-8?B?dWdsZ2E4WDM4Q2Z2M2MveXMyR2JJTUFvZUdvUzZMQXFzZE9xZUhxWTJaMFhs?=
 =?utf-8?B?M0NTNW1pNm0zUUpkeUZlbVhWR21tVTNnb0xZSXh2STI3bXpHSGRZWUwzcnd3?=
 =?utf-8?B?QmVTN2lKZFlUVHRHQzA0NVhmcG1YYjdMNDRyODhNeEJmeWhuTklUckNHT3g5?=
 =?utf-8?B?TlVGWFhtdkFsam0zYVJvSU1vcXZZaU53djhaNUM2N3ZmZW9mZzVUNkJuMXps?=
 =?utf-8?B?L2p4bXZ1WkNBZURmdVpIQTFXMW9ORFFwcEVYYklkMjdMT215V0pwQVFrRG5v?=
 =?utf-8?B?V1ZVYWhFYmwwczlSSlR6LzlQRTVTV0p3T0FwOHFkUCtMSmJOUVNod29aRDE1?=
 =?utf-8?B?ZXM1TW1SS2hnWHJOMm1kUHRCKzJESCs2MVIvVFN5RUxRNGo1UU0xejFKNWgr?=
 =?utf-8?B?cmlRbDVZbnNPNlpDL1dzN3RzMlZGMW9jOEdnS1BNdm0xNC9EMTAzQTRPbkZY?=
 =?utf-8?B?TW1DMzlxNVlqcUllTEVPcGxvZHlxajlVNE9KS052S0lpbWxKWEs1TjF2by9L?=
 =?utf-8?B?R082Q2RhdUZ0TnVHZUFVK2tBUWZEVnU2VnZVd09yYWtFcEk5VWhmY3FaK01u?=
 =?utf-8?B?Y3VNcU56NEZxWVBqQ2FmVW9pZ0l6ZkZreFBkdXVzb3U1TnlhRnVuZktkWUVO?=
 =?utf-8?B?QzZtNVJVb1Jxc0RsbnFBUlJmalVHbDlzbnR5ajY1ZGV1MDBhVU1od09UM2Iz?=
 =?utf-8?B?QjYwUTAwcndtQWIxNm1Pai9LazFLRmdvZ0dQOWpyTGF1aE10ZTk0eVcvU3p6?=
 =?utf-8?B?bXRROUZCbGVDaWtsL0NqZlVGYTRWeWxYL2Mwa1U2ZGVmUEh0Q1NvcnhTVHN3?=
 =?utf-8?B?eFEwTHlUTWxaM3NFV2RJZnd6ZG9vTFc2NHc2TW80K3YvL2tROEk2R1lqM1Y2?=
 =?utf-8?B?Z0NJTjZuQXdDb01TeXJac1N3SGRaNUFjamxZSU9sSkEyeWNUNkErQk9UL2Jm?=
 =?utf-8?B?V3A4cjh2RTBDd2VJQmJkc3lXZU1MTUxHQkVKNWorQndlK1RZZFN5WUZ2WTRs?=
 =?utf-8?B?dnBRZXhCY2V0OVBhbGZsY0tLajE4NnJvMUpLdWwzUW9zcVRHd0VWNnZ1VXFZ?=
 =?utf-8?B?MnV5a1hkSVphci9uVm1WVnZuQXhzVWRpa2ppRFJ6bzFxa1hpQWZXSGJDWG5O?=
 =?utf-8?B?T2Y2T1RRZ211VWhvaWJ1ek9WeXdYV2NKOG1vNWNwcTF5QVppZ3pvZ0tGaTY4?=
 =?utf-8?B?S0hDQWE0OFRHQnRVY2FjamREbERKY0l6Rlp6WVk4Tm1lYmgxTUdKM1RTRklU?=
 =?utf-8?B?UVlxYnp2Wncrd0g4KzBxMzZ2c3owQWpCZ3N0WUVJUU1NNFpRT0Q1cHpqSzRw?=
 =?utf-8?Q?O5D5ZodF6OCSFjAiYxbzDRIF2xvX5HOn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1hLSDZXdXpHODBHb0Y2WmgyV0wyckZqdEZMQUtwWmxjUlk5SjhpZm5kM1JC?=
 =?utf-8?B?YUJMWkRsQitrUy83SGhleEtUdFA1NVRtVWVYQk9CNGhsNXJReHd5OHU0dUJD?=
 =?utf-8?B?M2RtNU9HTE5qWUZ0cVBsVHF1a0dYYlFRUXV1a3M1aGE0b0xqV2lSNUlzN1lh?=
 =?utf-8?B?SjR4VzNoVFhkQmxBUzdTVGt6aTh3RlJSaTJSSHZ0Tk92RUV2RC9TdWhDQ08w?=
 =?utf-8?B?b1l0UW16K2Rrb3dQdzJoUXBRd0ZOQ3VrV3VqeUdQenhzL1NxUVRSelJ2NUtV?=
 =?utf-8?B?VUpXdE95QlUzc09UNXo5Mk9vYU85eVlkekJ0cHd6UXdiR3R1LzZIT0RnUVA0?=
 =?utf-8?B?RmRHUFg2d3pZeWhtVHF1bWlsTFpLYTMrWFZOWnY3dGtJMk04Y2V2azRobjlm?=
 =?utf-8?B?UDlxalNHODNXbGoreUVzdUtUQXRBeDNoOUVoWFZnM0VQUTk2SVJ4TXA2VTN2?=
 =?utf-8?B?Q2htTjFTay9yOUZLalFNOE9OVlgwZm9lTnM3MEdEWHRSeEIwRXJnYjBMYUR3?=
 =?utf-8?B?K1hFQUNKSUZ0cUFBUGk1Mk5kNWwvMXhjaFhFT1Q1UmJ5Qi85SDJpNi92dGRJ?=
 =?utf-8?B?TXZtQnNQbkFVMzh4U3hJd0JJZmFRV3R2dnpHZGtXZ3F1dHBBdGRvWFB1d2dI?=
 =?utf-8?B?MEh3UDNDWjVzUi92NUZna3RYVzdxb0I3WTZRL21PVTJZdWJsaWJ4ZTZlbEFj?=
 =?utf-8?B?OXFNN0xzMmFTNEVkd1VOMnN4M01hZFVWUGE3Yzl1U25jcVUza2hPeWgvcVdE?=
 =?utf-8?B?aVpUOUh3bzdKOWM3NkV1cEFXT1A0N3lNRHdub2JGdWhIM3psL3I1M01zUU5K?=
 =?utf-8?B?ZHhlOGo4cE5ENkFRWWlmUnNZdFZnS1lPRUU2Q1VPVlBhejAyblJHckVZdUZ4?=
 =?utf-8?B?cTBTeG1kZSt3eGtBdlYrTlZWcHRZZ0FReEhzWW9ndjBaS2Z3U05uakNpVjNV?=
 =?utf-8?B?aGpDNkc5ZVhuWVQ0RmdVMEV1WDlvWVgvMEFnZTBxNXVyN0ZTWFQ2UUNZWmFP?=
 =?utf-8?B?dExobW1ST0VqTmVhOFozeTU1elZ5dTBRd0sydm9kMnhaQ2JDejJhSjlYRjJR?=
 =?utf-8?B?OFJFdzRUNkFwQlNFOXdzNWlvWmRRWldzdUJzak1vcUF5S1A1aG5rVFJVemRF?=
 =?utf-8?B?VmEwbVE0RXhSSUtOZHd2QkdDb0JJWHRRRUxPRFJ1WGU0TlY3aHh6YTNndmda?=
 =?utf-8?B?cXhGZEp5YWRXekg1UnVNRk9rMm9nN0JhdDhlZ1MyT3RJVjM5Y2kvWDRNaDFP?=
 =?utf-8?B?SGNzU2FTdzFCUWRVUkdOWjh1ZkZEc1hhcnlMa1pjZ1U4ZnE2WFF3Q0JoVWdk?=
 =?utf-8?B?SDIrT1d2dUptOHFRQzFoUGxBbVpac1VyTkg0YkJ1NlF3cU5oMmh0aDJGNmdC?=
 =?utf-8?B?dDVFempGQ2dPQ2E4RHlzUlFkcWlEN0pvZUVvSWxFaWh6QytSOXV1VXpoYkx1?=
 =?utf-8?B?czZEdFJxci9PZmhnUEZQRVl6UG9JZU9CRyt4cEtheWRIamsyRmZnWDFtaVhO?=
 =?utf-8?B?SHpLdmVUbDhpRWdWU3hlc2ZEd0FHQ1Q0MzRsbzNiWmdWbWZiZlk4Z3hkZUpP?=
 =?utf-8?B?RUNSeGhLUHkyV2R3VjRScDlkSno0bXZPQitUU3EvYUd4ajlvUUQzU3ZxTVQx?=
 =?utf-8?B?bUZYbjFKWGdrQ0FIUDEwVDNtZVBDWG9yMndLc29vODFMOXJicjlOOGY4QXpO?=
 =?utf-8?B?aDBhcWlRQXg2VTI1VFllVTBSSVFBWmFtVzdBNE9acVl3eXBBdHZaRk85aENP?=
 =?utf-8?B?V28rL1djQnh0UVlaVUx1SlU0YkpCR2ZSVFp3bnFHTmt3WVFyVUpXU2FRVFps?=
 =?utf-8?B?QjVFa1FtUktsTE1vTzlvNW5PN0tybnNZMXVRSGplSUhlNFA5cDVoMk9sRFFp?=
 =?utf-8?B?aGswcnVCblZJaWlDRDVDNVdmTmxHVDlFWGd1OG5KbFZnNmFoRncyeHd3M1N3?=
 =?utf-8?B?Uzdqd0FST094YjNBbFk0aVZ5UXhwdUE1eDFQM2RKSTUwWVZIZkhNQ2JYbC8v?=
 =?utf-8?B?WmhQSGFycHRoK3E2Wmh3M1lDb2NEMTBVYnQ3OEl3OHdjZXJhZll1VkdqRFlr?=
 =?utf-8?B?aE5VbjRRaXFXbFVCUXlMUnQ0Z25RazM3eHdrUWU1bmtOeTZWa3RSNk9xY0pU?=
 =?utf-8?B?OWN3QmNoU0NET2Z2Y2lwQW54d2pmdndCSnVnZmtpSC9hZ0tObGhjcXQ2OGVk?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b105e300-9dc7-40a9-b7ab-08de1c27bb09
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:56:50.3850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eUT+eN7nqcz+Vy6DduxoWefrfUZX+Ud4cvxcEepmXoEceMKXi9N8eJ7hXGJa5QvDhhVjaQqg04yxaEQ7LuyvSOKT7k+DpMbN8xRo6JmTXBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5832
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> --v3:
> - Write registers at compute config.
> - Update condition for write.
>
> --v4:
> - Address issue with state checker.
>
> --v5:
> - Initialise some more dc balance register while enabling VRR.
>
> --v6:
> - FLIPLINE_CFG need to be configure at last, as it is double buffer
> arming point.
>
> --v7:
> - Initialise and reset live value of vmax and vmin as well.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 53 ++++++++++++++++++++++++
>   1 file changed, 53 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6168caff9cf0..2d418f45569f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -764,10 +764,43 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
>   	u32 vrr_ctl;
>   
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
>   
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
> +			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
> +			       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
> +			       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
> +			       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
> +			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
> +			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
> +			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
> +			       crtc_state->vrr.dc_balance.vmin - 1);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
> +			       crtc_state->vrr.dc_balance.vmax - 1);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
> +			       crtc_state->vrr.dc_balance.max_increase);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
> +			       crtc_state->vrr.dc_balance.max_decrease);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
> +			       crtc_state->vrr.dc_balance.guardband);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
> +			       crtc_state->vrr.dc_balance.slope);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> +			       crtc_state->vrr.dc_balance.vblank_target);

Can we make a separate function for this something like:

intel_vrr_enable_dc_balancing()

{

if (!crtc_state->vrr.dc_balance.enable)

Return;

…..

…..

}

Similar thing for disable.


Regards,

Ankit


> +	}
> +
>   	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>   
>   	/*
> @@ -785,6 +818,8 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   		       trans_vrr_ctl(old_crtc_state));
> @@ -795,6 +830,24 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
>   
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +
> +	if (old_crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
> +		intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +	}
>   }
>   
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
