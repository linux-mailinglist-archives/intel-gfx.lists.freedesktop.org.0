Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEA19AA0CF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 13:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABD610E64F;
	Tue, 22 Oct 2024 11:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQTZm5QQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8B510E64F;
 Tue, 22 Oct 2024 11:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729595196; x=1761131196;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=cTqeV4BbpGwv6pUehmEjz+Dle5N4QqPQrmd1VqolXLQ=;
 b=WQTZm5QQIntdTzau09XG2ql/ODuLQV4Ysv021HuUORsHpiwameYRtaca
 Wb2hEAX79+5DQ9pE5hlAEX5EVheX/f+UX+x20w2pEUTNOcti1LMjlHfU0
 uzUaX6LuQswBQhlIOMlD9dIBqLwkcC9dhbAJTDQtXveCU9BEQ8wKrK+3F
 kVMyQ5+27dmj7i86+QlQFevX+84sZmaOXufKoiX28xNqE8ObJpN5dNtMd
 Jm7Jvuu+qSf5wJ2Cru7OIbiW7FNptP/0oFCDCrn/pDR5pYFTNt2CfEJMg
 OT+XCjkEsmKC1ISvRCEQBLrRT3uK/oJkZuGt5skf6bweAeGIyg5AZHdLT A==;
X-CSE-ConnectionGUID: ELe/SEsLQD63TGop1WBQjg==
X-CSE-MsgGUID: 3FIbpkTPQp+QrnTWg1uaXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="40508318"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="40508318"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:06:36 -0700
X-CSE-ConnectionGUID: 3tFSVi//TlSnFZaPPqGNsw==
X-CSE-MsgGUID: V3TiHe47Q+CCBw1Axu3HgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="110656223"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:06:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:06:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:06:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rqHZRjpXkDvuFREtSAkEjnYkAfM2abK762loWjHE6pS0CvHakXmahUcgZocU7w8gJmAMb8RCDeXp6jgOuopwTvVsBZmjw6PIgyVDQPaHg6RdfcSf+ZL4/0zjElQfu4guTMm0kMBG2jV9bKTZVlZHkLulUUREpnFMi71z95Ox7Uc9W1c2nTYJKm1WgUpPiPLFv+HQnYouxAt2auxtPFw18CKhnbc/sLA58l6KVzowLXQdul+mshm4x71l9dOLh119oN5JWfaSmBOqmRCsr2Ex3UXWhQIH1avQj/kHfRJGl9aXxDQlK3d7TuPn3OQ4atyqtB5yxzZ+9nEaOr2T7avWxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EVvAZOtDQNuVkOBtrnM6+9nsnQdFoXJOqwIjMXTr3hA=;
 b=zWruiTX0ucv2Cj8Rafi/2yZx6VBKQJnDiPWN/KehVCDbZDbv+9xMz7aIY8gVikqvEQ4YO1TMOmHoN4TMbc80psBK3oDl3E8LeS64+AWl2gQyjstooe8D7GqWb3FtVhMNpiwCvDM7NnDOhPFNHDIolR0arjLvHhr1pHtycAkzaTRCVTvKYUTc4Dw4YHoKYk0oiO+81E7q93j2W6caxGtkyv6nUzYGwbZ8dIQE0F50Tisk4w1FZkc0YrctiUR+LiAmxwElSzdhs5BIfHqitHmk8bdZfvWMgIqzjB8mM8ttUzRiqylq5vx046UDSKlFBvxFjK453oeBO+sL1mcYDLWL+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 11:06:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:06:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87y12gwomu.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com> <87y12gwomu.fsf@intel.com>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 08:06:28 -0300
Message-ID: <172959518844.3700.4643270854629628330@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0279.namprd03.prod.outlook.com
 (2603:10b6:303:b5::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6135:EE_
X-MS-Office365-Filtering-Correlation-Id: 80be6f11-0604-4dd8-f128-08dcf2899608
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkxTMDJJMGpQaEpsYkhNOG5Vbk4rcms3c0FZY0ttdGxUWjcxTGdtTTFwZFNx?=
 =?utf-8?B?bW5BNTZGa2tNZGJVd2xoUVdaWC9oZzFNd016UmdyY0I4OElodkowUDVQdkcw?=
 =?utf-8?B?eUZYNklndTZtdkZiREtYVlFFckoweUpzY3RXaXVXTnJXMTExVlNxVklWN3Nj?=
 =?utf-8?B?Ymh6TC9DYUJxcE5uMTJJSlBpMVZqZkpaNzBrSUNUd2NYVHNUNm5oSGx2OGx3?=
 =?utf-8?B?ZngzSHlocDdYakVHTkpSVnBXdWtqMld1UFVnNW9HSWdNeU5qNzZPUmZ2bjVM?=
 =?utf-8?B?VG9Rek5yUTM4cmJjaE83R0xLdnZQN2lRTHBjMVdxZDM5ZEp4aTBxSWNIb2x1?=
 =?utf-8?B?RWQveEVjUFcrNHFZOWdlZngzVVdjRHFUMHhVM1F0TWlXQlVhYk4vWDAwN2ox?=
 =?utf-8?B?LzRZeEJvR3dlL1dOMXRlK3lpUWs4d2w2K1c0LzRza2JPM1VOK2RQbkxLSHJB?=
 =?utf-8?B?T3EzZE51UzlPZjdUbHI0UllXUUNwUmtEbWxCNXdlYWcyck1JVHE4RWRTZWhM?=
 =?utf-8?B?ZnhHc3pJTmIxcGFrL2lwWXc4YSt4Nk1SUkNFRU5WR0VFK3JvRGJaSDRCYUJ3?=
 =?utf-8?B?M2xZQnJJc2taVWgxTWZaWUd1dlBuT1ZQY3dzdlNHUXBLSkNHZWRteXhRQzR5?=
 =?utf-8?B?aUlZOHRFaFpJd0lKNFdNYkk5STY2WFBHNkVSSXFPR3NXa2luRDZnUldhVHE4?=
 =?utf-8?B?MCtYUjVGSFZBaFRacFViVGdkMWZsT0ZjbXN0b0Uvcm1GTnVFRGkxRm9vWXQr?=
 =?utf-8?B?UkwrSGJYWEZBTnk2cGdtODdWQTdhbzRZWUwxd0FqYUp0aTAwVXJsNHQveWI3?=
 =?utf-8?B?NFhYVURFODBvQWxaa0I1TzhlZXcycmc3YjJ2ZS9JczhLaHk4V0w5VUJTaEVi?=
 =?utf-8?B?dlFEN0w3eEZ2WU9peGViS2ppQmdnQlhqdE1NWVRzaS85NXYrOFdCakh0YjlF?=
 =?utf-8?B?cUZYMThJT2g5bldaS2N6UGI0clVJZVJaejNUNnJuMmczWi84TnJxU1NZODhK?=
 =?utf-8?B?WWt3dlpad0g1T3VxWDRIUURhdWl6V3ozWXpTNDZsaUJIck9ramJ0c0pkVkdE?=
 =?utf-8?B?YTViUTFtSGpaWVduTkNoNDF3UDhxSm9JRGc4VHQwTW9DQll0LzJ1OEhIdCs0?=
 =?utf-8?B?M1QxUURXTHo3Wkc0WmJWYVcwVzhpTlVZcWg1VjdZVGZBSGgzMjRMeVFSc1ZI?=
 =?utf-8?B?a2dRN3E5Y2NjaXloSXk3VW5OU2thL2M5c3lNYzNHS2toTkowT2RrNUNsQitF?=
 =?utf-8?B?TkIxaUgyem5SRWRDY3A2S2VZaHRYK2dXTUtCWVZjM1hHUW9jOHdQczVVYkV6?=
 =?utf-8?B?ckp4QkRYd28zNkE3MFZGWkE5K2NXL2dOdTc4WlRIZDBzcUVyQzRJQXZxdk5k?=
 =?utf-8?B?UlFJR0FBbG5tOUVrRDZkVDZVY3Npek9IS0JPcGkyL2x0NnFncE9Id2NaQml4?=
 =?utf-8?B?Z3I3aGhFeUdRVk9hdjVWTGpzVUg3VktvSFIwWHBsMHN3emFmYmNaL0t1OXNi?=
 =?utf-8?B?cVRGQlBIQVhPSWwyMFcyYU5GOVFkWWI1SUtJZzZxU3pLeGNKTG5Rc1pjQ0xM?=
 =?utf-8?B?eDhyM1FLRkFPYlRoYlhYaW1Rc3VjSTNNcmF1am1xTDFwUlpDZG9HTWRMUm9u?=
 =?utf-8?B?d0JxZENWOEpCUXc1UnN0YUFsS2tvbVBsOFZQdGJ6MFFDMXQwYkEzVWx6Tkt4?=
 =?utf-8?B?UTRFN1BSbmR6bGJ6WElDU2FVMHF5eEp5UXJ0RHlhTGlLUUllS3pXRzRXb3dq?=
 =?utf-8?Q?xqSyrATmVZ37FcD+DYhjrRP/DUyU/0b7ArJxRWi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjVPb0FpdnA2UCswM29wZkdpWithQU9TODYreGdVRDhTSTBNWFJnNVl0QVNI?=
 =?utf-8?B?L3hVbEhWOFUwb2wwa2Z5WWdBSkx5R2tneU40aThISkwvVTRHZE9Ka3ZNenBN?=
 =?utf-8?B?d0REWXJGOWw2NGRDQkVuNEZVTG5SRG5WcE1pN2ZrR3gzdUdTODIzcXB2ck5t?=
 =?utf-8?B?UnNzVGsrME51ZjB6ZDZxeTRvWVVCV2NMVmc1RXJURWowWHd5bEJ1MjYyQWxl?=
 =?utf-8?B?ckNpS1hyd1dKT09tSUdIb284M1I0N2h4WlJDVVIvVTFWU25CL3lIdWwwRjU0?=
 =?utf-8?B?VjhWMFlBMkR0TTRIc1krNVgrdWl2TG1weURoOXA4SEVlckZuSFllNFo4NEs0?=
 =?utf-8?B?ZnZFVUZ1QjZUamtVb0Z6UC8vbDVubmFtZGVpZXkrV3k4Zi9nYmRNUlNvaGlY?=
 =?utf-8?B?QW1rUFhJcTljWlRpZkk2dkwwbXZwdEVVWlpnV1ZmaWRvVWFwWE1TdSszUEdS?=
 =?utf-8?B?Tkh4LzBRUlI4YlpFbmFXRUYvSWRaejFzSDY1ci8rQVNxOU9aWVZZdzRrdGJz?=
 =?utf-8?B?WUpQeWduMDJUM0ZxVlU4ZkpmOXRJN0dIVGpXRVJWa0pOc0ZhUkFpQ2tjcEdK?=
 =?utf-8?B?SzBuUmQ3SXdvT1F6RFp3Mm91ZzMwZkI3L2pCbFF4UlJoWEY2S0FNY0M4UXBa?=
 =?utf-8?B?bkNNeXduQ05vbllnVnhTUXJDMzdQdnhLRTBzcUtyWjVERHdOMHFZRE9GOFh2?=
 =?utf-8?B?VWFYQTlrWUlOK0NZL2VUUERORnNyR2ZVSlhFcUZqakdOanlwZDNwRlEyelZn?=
 =?utf-8?B?Y3BWRG9KWlFVZUorK0VVV1NETkVvVmhkRnJWbkZIQ0FuOFlJWFpCd1d6L3Rr?=
 =?utf-8?B?eXBtK2hJd0gxMHdOc1BUV0dDSkthbUFkMWpLcURacHZDL1RpRGE5UVRSYldl?=
 =?utf-8?B?QXVSanBrSFh4bDYwMk8xNzFuY0JHc1dtb3p4eHhpUVBpa1lsZlZPWUVSY1Na?=
 =?utf-8?B?Z3NXS051dDlpMG5obThIWGJ6NHJnQWVKcVgxSDN1K3psZHp6RUJIbTAxeEtM?=
 =?utf-8?B?b2lZcUV0S0ZqMC9EOXVEY0ZvdHpCaUsrbmozNW5uYURhTmVTeG9kMkRiQVlm?=
 =?utf-8?B?MFI1T1Z5ZXpQdEhDQ0Uwc0E0YTNqSFNJN1NqOWZsa3FrMVBCeXV3TTBJUkU5?=
 =?utf-8?B?WkZzdmdWK1Y1L1ZGWHlBRTNaeldRYmFLR3N3aFJpZVFFRWoyMmwramluanlz?=
 =?utf-8?B?NHYrY3ZXRzBsTE5zVnpSRHE0N1lBMkZxRmJTMEVzSVg2ZW5SOUErVlR3cXZQ?=
 =?utf-8?B?UE1ncDErYjJjWnpYT3BWUHdObVRnN3pOUnV1SGQ0R29KMXMwM2tBWnE2UmRN?=
 =?utf-8?B?aXI2Z1k2K0g5Q1pjWWtDQnc2TnpQT1Z6cS9lVGRuTkNBNU54OE15SzJHN0Zv?=
 =?utf-8?B?SjBmaTJZLythUVR4QUgyYUl3WGlJZGlyYXFscHhUaGhUbzVvNEZPZUNrb1NM?=
 =?utf-8?B?WmJJRyt2dnhTaDVZOUhUcUluQTZyZFFNR1BjcjhkU05ZVlFTSjZUd2pvcW1l?=
 =?utf-8?B?WXBqeWU1SjJMbnRmRWQ5Yy9GUDZKbmhSVUExc3VDSWVQWmQzVXZqYVYxZzV4?=
 =?utf-8?B?WVg1QUc0NHRJS0c2UWE3Q3JMa3kxbnl0M3E0YjdtWW0wODRHZEMwR2pBOGk2?=
 =?utf-8?B?OTU3UVBGTmlyaUhXTW5zNkRiRk9oRkVTTzdYQ0h1VUdrV2VBVU1lMUZGT3Br?=
 =?utf-8?B?bnI0WGhKY0pZYm4xYTB3cFh2THFTbXFKRHo0U3U5b0h4bDNqY1A0eXZVMlJI?=
 =?utf-8?B?RitLYzUwWHVZTGNiOFp6NW5aSzdydjlodzJKKzQzdU1HZWpEQUloRFpCTUVD?=
 =?utf-8?B?aHFONVhPaTlpMlAycnhQbXZyYTYzRURjamlnSy9TSTdkRnhCS3FtYjJaUzh0?=
 =?utf-8?B?WkJYdTBNRFNybDJXUnRWTlJkYUtrVWdkQTdzRmQ5blB0aDZnY1JkdE1RUUtl?=
 =?utf-8?B?aTY5TnM3YnErNjR3VGlEV2czRmJ0Rm0vQW9xQnlGUkNyQ1owa0I1bkdEUWdJ?=
 =?utf-8?B?K3lsQ3piTmFyOUlYSWt6UDFoay9hR2k5eW44WWYweFpJN3NKZkVMVTYvZXpj?=
 =?utf-8?B?VFdCbTZLWjlnUEpIWC9aMWZEQ0dYUytqdDcxQlhtaEpGUU44Q0hxb0NsTXVi?=
 =?utf-8?B?M3h5T1J1S3NERlBJQXF3eEFpd1ROdjRjSG5lRmFKSDM5a2Y4NHVNSE13VERm?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80be6f11-0604-4dd8-f128-08dcf2899608
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 11:06:32.4327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rToc4H9vmZ0SX8r0dJmzEUY37l2G9rOeJoxw4MDhyUKOPQvNg/JPNOh53Oda9keDUB1VJxKf79IECTTUKJgQlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6135
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

Quoting Jani Nikula (2024-10-22 05:03:21-03:00)
>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> There are extra registers that require the DMC wakelock when specific
>> dynamic DC states are in place. Add the table ranges for them and use
>> the correct table depending on the allowed DC states.
>>
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>>  1 file changed, 108 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index d597cc825f64..8bf2f32be859 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -5,6 +5,7 @@
>> =20
>>  #include <linux/kernel.h>
>> =20
>> +#include "i915_reg.h"
>>  #include "intel_de.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dmc_regs.h"
>> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>>          {},
>>  };
>> =20
>> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>> +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUN=
TER */
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>> +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +
>> +        /* TRANS_CMTG_CTL_* */
>> +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>> +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>> +
>> +        { .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
>> +        { .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +        { .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
>> +        { .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
>> +        { .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        {},
>> +};
>> +
>> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        /* Scanline registers */
>> +        { .start =3D 0x70000, .end =3D 0x70000 },
>> +        { .start =3D 0x70004, .end =3D 0x70004 },
>> +        { .start =3D 0x70014, .end =3D 0x70014 },
>> +        { .start =3D 0x70018, .end =3D 0x70018 },
>> +        { .start =3D 0x71000, .end =3D 0x71000 },
>> +        { .start =3D 0x71004, .end =3D 0x71004 },
>> +        { .start =3D 0x71014, .end =3D 0x71014 },
>> +        { .start =3D 0x71018, .end =3D 0x71018 },
>> +        { .start =3D 0x72000, .end =3D 0x72000 },
>> +        { .start =3D 0x72004, .end =3D 0x72004 },
>> +        { .start =3D 0x72014, .end =3D 0x72014 },
>> +        { .start =3D 0x72018, .end =3D 0x72018 },
>> +        { .start =3D 0x73000, .end =3D 0x73000 },
>> +        { .start =3D 0x73004, .end =3D 0x73004 },
>> +        { .start =3D 0x73014, .end =3D 0x73014 },
>> +        { .start =3D 0x73018, .end =3D 0x73018 },
>> +        { .start =3D 0x7b000, .end =3D 0x7b000 },
>> +        { .start =3D 0x7b004, .end =3D 0x7b004 },
>> +        { .start =3D 0x7b014, .end =3D 0x7b014 },
>> +        { .start =3D 0x7b018, .end =3D 0x7b018 },
>> +        { .start =3D 0x7c000, .end =3D 0x7c000 },
>> +        { .start =3D 0x7c004, .end =3D 0x7c004 },
>> +        { .start =3D 0x7c014, .end =3D 0x7c014 },
>> +        { .start =3D 0x7c018, .end =3D 0x7c018 },
>> +
>> +        {},
>> +};
>> +
>>  static void __intel_dmc_wl_release(struct intel_display *display)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(display->drm);
>> @@ -106,9 +188,31 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
>>          return false;
>>  }
>> =20
>> -static bool intel_dmc_wl_check_range(u32 address)
>> +static bool intel_dmc_wl_check_range(struct intel_display *display, u32=
 address)
>>  {
>> -        return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
>> +        const struct intel_dmc_wl_range *ranges;
>> +
>> +        ranges =3D lnl_wl_range;
>> +
>> +        if (intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        switch (display->power.domains.dc_state) {
>
>This file has no business looking at power domain guts. Use or add
>interfaces instead of poking at data directly.

Good point. Thanks.

>
>> +        case DC_STATE_EN_DC3CO:
>> +                ranges =3D xe3lpd_dc3co_wl_ranges;
>> +                break;
>> +        case DC_STATE_EN_UPTO_DC5:
>> +        case DC_STATE_EN_UPTO_DC6:
>> +                ranges =3D xe3lpd_dc5_dc6_wl_ranges;
>> +                break;
>> +        default:
>> +                ranges =3D NULL;
>> +        }
>> +
>> +        if (ranges && intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        return false;
>>  }
>> =20
>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>> @@ -195,7 +299,7 @@ void intel_dmc_wl_get(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>
>Side note, unrelated to this patch, i915_reg_t is supposed to be opaque,
>nobody should look at reg.reg directly, there's i915_mmio_reg_offset()
>for it.

Ah, cool. I'll add a patch in v2 to have the whole file using
i915_mmio_reg_offset(). Thanks.

--
Gustavo Sousa

>
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>> @@ -247,7 +351,7 @@ void intel_dmc_wl_put(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>
>--=20
>Jani Nikula, Intel
