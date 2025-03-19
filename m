Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 223B6A68E65
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 15:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0D810E505;
	Wed, 19 Mar 2025 14:01:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gcRvuUQ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124B710E505
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 14:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742392912; x=1773928912;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=8No5bwZBJ4RezrYMhNsPUcN8N362+THTjpTJosO8q6I=;
 b=gcRvuUQ7iX0RfxJ8aFGSPGEy7d8FiuF/vn7NGGP4nD7+kqG4owdGcFR0
 PSwuDirxyrI03TfwItQy/n5EUzx0vCLGdxd3K8C3OK2SFcewpZz4FAB2Z
 KoMa240nGVmiDMU43dJjWzuLqTGDeVcQgX1MAVelBFlW7yiZbk3DiNMgZ
 UbQaFTpzNJjh5jtPku9cX2aK7H2uK5ZypSBcVVuICGrlOfNksXncu8Dgh
 C0Pf+3eNEbNYL2xFngVmFb8X+FUbqPxl+JRQo0//a41yK2DF4NdP9VCM2
 vDz1ihpeW5cmuVZSHiz16h0oCniZQNRqwKNRwhWaQGuLopXntjOv3WX0a w==;
X-CSE-ConnectionGUID: k5VruM0zQsyNl4xsEM6PkA==
X-CSE-MsgGUID: AVcoJCeZQ/m/uEetCdlP6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43598770"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43598770"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 07:01:50 -0700
X-CSE-ConnectionGUID: 023goGA9TTakl+aNJQrbJA==
X-CSE-MsgGUID: rl7fGum0TKmgXasWXa9PCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="122657777"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 07:01:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 07:01:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 07:01:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 07:01:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yhekAy2GQ9c6MC8q2fW4G/CsGrCs+gybHKfFuy1CrdGSvJsRNoAYpphM7lK4nVSG19TWlNj67xH7lkB8KJm46lMlOWNtZEpQ714FTdultcsgTpvwl+0nvOu5qd7rK3OITOmeOfzDtXu7c6w6qtqeA9NCPbtngG5735iOYqjMgAMmzDuJa/G6LZXwWEKQepP/lEYIculFD9OR2Afoug/OS5p4W++fCxvWaWKk/w1xVO9pT6L9EQGCDDt50/GkU2t85+o0qbajRXwkA6As+EbgcwKiIoe5v2X+OA1THAo2yBzSByEpkxOCewvAcc1J8U3G6gmSbT+uWfHoGlk4e+/0rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0RLL/5iC2wL1XqzGzKDRU1M4K17GtzXYruJxhtVgzE4=;
 b=cWzTC4Z3UTWagL8U9zfvg8sLo6FcisVwU0tiHCZuFKuyXVVHzC+dqUL3QJg0Nxc79iS7FkdlaEgN3da3lL1ojjIMAZCaxuER2IiKXxiGxUvA0Fb1nS25zcudf7BI7Fmns+0xh56P07MeSfUD0Li0wGyulLBq1yeszw5wmE98IBLqiB2qJP63KuCRNTLzMNUBgHRjWZjVgMuHbtvLSHQfsGSLEdNx5UBohLg+OT/vQrYETO9dECPlWIQBdrp+h440aJ+B2RKtbLlhGGjGKeCmCRGqgS+4b8w2nni/vNmpDQWgeuwXWzqFUYB6rRBSGyRwYigMeNAicXC59jE1XT7lqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 14:01:27 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 14:01:27 +0000
Date: Wed, 19 Mar 2025 14:01:17 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Eugene Kobyak
 <eugene.kobyak@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: [RFC] drm/i915/perf: invalidate perf stream reference after free
Message-ID: <ok6jtv6yoxd65rdsu2ulmmmgbxryhr2lnjzmij6n42prgxnfgw@gzgk3shqqp3o>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR06CA0101.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::30) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|BL1PR11MB5256:EE_
X-MS-Office365-Filtering-Correlation-Id: b52aa675-4706-455f-0073-08dd66ee8a9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXlRU0RBQm5OMFE5TW84TU9PaGtwelYrSHUwcW1JWVFoeUxCR0k2SEJhbEN6?=
 =?utf-8?B?Qk5EdUFxS2VtVkVMVW1TM1YvRGRXL0lsQ3NXTkFhY0NTcWw3SjFrL0U5RXNE?=
 =?utf-8?B?bGlOZWsxQ1YyWjBsNkFza25aU09aWXdPY2xacEoxY0JMQTlVOGVkWmFJSG5a?=
 =?utf-8?B?KzRaRjlBMlN6YjBiKzc1akw4NENXWGk4MmMxb0NHZVIzNkwrdER0aE04M1RB?=
 =?utf-8?B?V0dvbG5oVUU1NnErdUUwdmhTdkFkR3RBbFAvUjJGUVp3ZW04YmhoRm15aXNu?=
 =?utf-8?B?UmltRW52cGZlQ1lWWk9jTU9xWjJUa2g0RUwveXdMYVFlK25WSmFWczJQdVRD?=
 =?utf-8?B?enk4aVp2UlJrTnFBTGx1QXVqeDNEb1R6U0tYblBiYUFCclI5U0VUVXBibmtI?=
 =?utf-8?B?UVNSRjh2Y3N2bUJLZGRZSkhjZEJUQ2JweVZ6MFRiWlFyRWdsZjhraHQyVEgx?=
 =?utf-8?B?aEs2Q21SS3BkNDkyRklIZjhxanRPQlM2ZHRDQ1RWZytXanhTbkt3SVJVa3Zn?=
 =?utf-8?B?Yyt3bTI2RHozUWYxWFZMQmlJYTM1UDVMVTBHSit4MWxSMG1KanpiNk5vbVdz?=
 =?utf-8?B?SVI4Q0IxN25UMm5MRFUrU1BsQnJ4RWxDZGNTNWdGL2Z5R054cno2eENTOERr?=
 =?utf-8?B?RlZzL2pjem5aTWZBRXJWMXlhVnlxbkxjeGdCR2xjSjZWbUlKbDNkZ1ZNRnVx?=
 =?utf-8?B?TmFXMlRDbVdpUW4zdW5OeW9tNCtzQjEvcitReWlBRzN3OFE2SGsvTHFJUm9S?=
 =?utf-8?B?NklyQmZMVzdSNWJoeXpoSTBZQkVMQklnbnZtdWYwM1R6L0dVUHVlaU1BOFg0?=
 =?utf-8?B?Q25ydEg5NGMxbURFRjR4aDI1OXU1S1I4ODVuVi9YMVN6L3R6MGxBWXBpYVJs?=
 =?utf-8?B?dFZkVGN6STdCZVdUOXdtTGhRWE90eUtFdU83UDJoZjlVTlF0MTlHblJnbGVx?=
 =?utf-8?B?d2VNeEdnQzNNemwwK3VGRUNhZXpzQk5uREpoamZhVHowc3FUVTBJb3FnQlpV?=
 =?utf-8?B?T1VhbDhOVHFMTjBrakhrM0YvQ0o5UnB5dHhhZWdPbmd5NG5TNE4rMFk2NCs4?=
 =?utf-8?B?Z2hlVWpwL1NHQWJhamRVbHBYQWJWVld1NUFLeHF6Uk1Id2VwUlh2a1FtNVNa?=
 =?utf-8?B?M2xwR091bU8vbFlrWGJuWlN4K3c0RlE0aUFPcTdlMERmeWdzaFU2QWpaZVBF?=
 =?utf-8?B?K0hHR2M0T21qRHg2RGM5L2RZeWcvalVHV3VXcG9xWGFVKzFxRXZwczJRRVAy?=
 =?utf-8?B?M1BhN3o0c2V4NDBFNlRXam00aGJ1ZVQ2QjcwNU9nWFdhWVE0aHAzUVVFRWRw?=
 =?utf-8?B?QW96ZUIrMS9ReHNIOUZPOXdUbDA1OG1YL2RLM1ZXRXNPVmhsb1oyMUVyNlEr?=
 =?utf-8?B?OVRiTGowZ1VRRUR0TUFGVlBvNUxEVTd6Q1NQSjNrTWN6dkx6dFg0VWlobWRo?=
 =?utf-8?B?bTlIRjd2MWpVc3pXVE1zZlRvNnhiQkNWMHN4VzNELzZna0dPN1lOQTV2ZE5j?=
 =?utf-8?B?SlVWY0d6dkRqbUNmNUdrZ0tRTlQzbzg5QmxWd3I0SGs3RjJYUDYzdWVNS1Q1?=
 =?utf-8?B?N3Vwa3A1SnZtMGd0bnd1aVpvbldlSk5KdStGTVZ2QmhhV0NUM1N5QVRlQ0Zs?=
 =?utf-8?B?M01jRHRmRm5IakVoTFM0NGxyN1BmcEN4Tkt0ZUVhREM3Zmg2ZzRPOGlQM1V4?=
 =?utf-8?B?c0U4NlYrUnJ6QTNNMEVpSTF4Q2VReUxzWU4vOENldjg2UEh4QWZ3TW05Y2tU?=
 =?utf-8?B?L0ViZGx0dWU4cmpuUjBiNzM5L2wvOCtUZWYwUDhLN3ZiVDF6SjN0STFlaWNk?=
 =?utf-8?B?dFc0QzA3bUxYdG9WaVJyUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm43UmpEMktZMklOckFRdFc2MUV2MWI0aDZrTC9Gek1IRnI4M0FKa2g0ZTVm?=
 =?utf-8?B?Z1BZQit4ZktrcURCRlllcDl1MmZiSHRRVkppUklLckdxcE1mcmhTaEdTQ0x2?=
 =?utf-8?B?Rkg3cHJGSDY2dkpCV0tWZUVxT0RESnk2RFZzVXJ6bFE0T0RjYTAyeW94cHZp?=
 =?utf-8?B?WHhIM0krcjU2ZGk1ZUtYQ3JJMFcrOHNqeDRxVkdPaDNLNVpIWm1TYnVnWnR2?=
 =?utf-8?B?NWhzRUR6aXNMS1NnQWd0Y0kwdlNMUnJDZHpod29LRUVqdUVzcGZsN1FhQ3c1?=
 =?utf-8?B?TEpEdU9GVERxanNtLzc3NDRiZjkzbTM4ZnR1d0tFNGJtdk02YzRVWGh6UmUv?=
 =?utf-8?B?UnMzMldhaW5KQWtJY3FOakVLTWtMVFd4VVhwOEJ3RmRhNU1razdaRHo1NEh3?=
 =?utf-8?B?WkpZUUNOSitPanBKb0J3VU93NGVNeWRTSGZPb3lBeVB2bi94T3l2OUpOM3dn?=
 =?utf-8?B?eHBQOG1VSTNYdGRWSE9FckVyMDZIa3FzVUpYMlVtMDUweDZOMkZyNnMxVEM1?=
 =?utf-8?B?T0lLZXJPQ3NTWm8zNXdNRnFnTldabkJISEFoSFJQKzMxemNuOWRyL0dDakor?=
 =?utf-8?B?SVpXL01oelc2T2hZZVlSYUNnNmJjSDRFVlZDeTJtOXlQaENWTU1pMjZtWjZv?=
 =?utf-8?B?MWZ6bTRlWURmQXlLSHo4NUU5aHZodFZTVVBSdlRkdExpZXFYMUFnbGJqbFAz?=
 =?utf-8?B?SWRvOUpWcnUwNWluT3JEL3E5Ymx0dEpUenlvQ3dQVmtVZkVYTEJkdElQZVJi?=
 =?utf-8?B?Vld0ZGt1WXJDY2ttcU9yb0FoVDFHWFRHT3J5S0Nja2h3ZEtlNkR3V3ZIVHNW?=
 =?utf-8?B?UDN1YVRWalVDZEQxT2h5NEFoeU1VMHNFK3hFM2JmYy9nbWFoQUdmbWcrbDVU?=
 =?utf-8?B?eDBvZmhBQ0tFWXNqMy9keHhiamlmY1d5amMrbmtMSEtvSEFZT0NJREJiaUFD?=
 =?utf-8?B?RmFSVWFpZVFzSGhCYWtQWWYxN2wwbzdrVU5oSDJZRmRKQnp3N2FROGF0S0kz?=
 =?utf-8?B?Y3FOdGMvOW5LRlM2RlQrK0QvU2NTSnd3b3RWcTNMTysxWEE4bmtjTGhhQll6?=
 =?utf-8?B?bEViYkNZdURvMythcHZNbEJXMU83YUNHWXZjWE9ZcDZPNVNjL3JobFIzM0JY?=
 =?utf-8?B?bFlzU0dDYjUwdS9lTXc4RmNkYUMrRmg5RFpURm9COE9LNm41LzVOVFo0eHM1?=
 =?utf-8?B?dVJGeVRiUy94SmtxSlFBU2J2VGlMN1daMkZoWDhCeDBUSi8vcUF0b01LU3la?=
 =?utf-8?B?VUpPOC9ZelplUXQvek12UzU2WGNTbjlSbmVHbVFRdzB0aVZBR2Zlb282c1NN?=
 =?utf-8?B?WkVwTHJGdExNVHVWK1RHWkJSc3UyalhoMktEWlV2RDhLYkl1MjZwbVJnWVVI?=
 =?utf-8?B?QWFCbGFlcFFBVjdCdGNBSEV4M2Z3RkpZRmNUdXdxVlYxdmtpaCt0OXJBdHgr?=
 =?utf-8?B?TmZvMDg1NFlOWlJaa2VzMkJqQTBLU1VWbHhGL2x1bi9URlpnV2FWTnJPTUlt?=
 =?utf-8?B?cVljazFOUG5RdHJiTUZGeTZycVBBVTlZOVhqSDVFTzhWQS9ZTnVtdHBYb3VM?=
 =?utf-8?B?bXYxY1NxNjh6YnNLTnV4TDczU0NiUE1zTXJtTFhnV1ZlUzVZZldGL044Mnkx?=
 =?utf-8?B?dHFvTG52VU1idWRrVHlFWWxscmVRRW94dm5XdTJyWE5QekpqSHptbzFQUDQ0?=
 =?utf-8?B?MjFvd3BjZFVvYmszbjIzWmVtWEVWR1NNV0w1VW9rUGZyRW5zYkE0a1cxcVNX?=
 =?utf-8?B?UngySVpUL0tseGhFM1N4ZVdyRTNiUENRNjl3Y0g5ajlJTmtROURzK1BvZUJU?=
 =?utf-8?B?ck5NTHYzSzRzQXVLQ2F1eWlTWXExSXlBREpVVFBFcm03YlNUZWluYWhKRnc4?=
 =?utf-8?B?bi9TVkRWSHNpWWh2MmY2YUY0MThwQ051NHR4a25OTnJBZlhZemdIcXpjUVA0?=
 =?utf-8?B?ZisxYnZwUmlaMzJUU3ZWai9tV3llcmordFRVcmtIY29wOHc3Skgzc3Ftd0ox?=
 =?utf-8?B?SEhSbDRqaTloRHVFV1pYTWo0N3cyaG1RbUdFQU1pZy8xTHVWSzEyQ3dLdkU5?=
 =?utf-8?B?S0ZnaFBkSmxPdkhBTEN4RGJNeld6L1JhOHFhTlNTa3luK0xTdU55UVdUL2RE?=
 =?utf-8?B?ZE5EZTZwc0llRkY1d0RsWGxwQ3N1NlJUU29sSVo0ZmwzekxRZUUwR2xNR2Nj?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b52aa675-4706-455f-0073-08dd66ee8a9f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 14:01:27.2194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RUT+SCiZ1OOLd9Xb1Qvdlc/spDdZQQi1XqvqdXnmevKKWAG6ebS2AhTxAZW1n8K5TzFrK7XvW5SVABh7u0yvOm2Hm3k2ndqkW7LjuoSs50k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
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

Some references to a perf stream in i915_oa_init_reg_state()
might remain active after its destruction in
i915_perf_release(). This could cause a read after free
condition as seen in issue #13756.

Since i915_oa_init_reg_state() code already checks if stream
exists, set its reference (file->private_data) to NULL
explicitly.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13756
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
I was not able to reproduce this issue locally, but got a note
from Chris Wilson offline that the problem might still exist,
so here is my attempt to remedy that.

I am also unsure if adding "Fixes" tag for commit eec688e1420d
("drm/i915: Add i915 perf infrastructure") here along with tag
for stable would be appropriate.

I think invalidating the pointer to perf stream explicitly would
prevent issues with use-after-free in the future, but I'd like
to see what people think first, hence RFC.

 drivers/gpu/drm/i915/i915_perf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index bec164e884ae..ea1771da3f67 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3743,6 +3743,9 @@ static int i915_perf_release(struct inode *inode, struct file *file)
 	 */
 	mutex_lock(&gt->perf.lock);
 	i915_perf_destroy_locked(stream);
+
+	/* Make sure that any remaining references to this stream are invalid. */
+	file->private_data = NULL;
 	mutex_unlock(&gt->perf.lock);
 
 	/* Release the reference the perf stream kept on the driver. */
-- 
2.43.0

