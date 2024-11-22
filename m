Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA039D56BB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 01:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B926E10E059;
	Fri, 22 Nov 2024 00:29:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5NzOx2g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03F210E059
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 00:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732235375; x=1763771375;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yWzQwgbD/EEZeFrYFgKFD54QQzijTyyVSsfwRDawKH4=;
 b=O5NzOx2gkWM9LXjchvTzmuaUKia0rKHQB0bA1pJrqGtvAgOaamsmt3fz
 kAlO6Epn9SGjV3hK9iIoeSAUCd7+5QqlHaBDI/rz5CmiPG3l7fo0haBjD
 OihE2gDs5++D2EXdLdXROkKE8f7lZhvDAgu0Ac4H6Xv9qt+Zy1RNSoxQ4
 HdKioPkpDWPuHzlZGdbXugvZ6ouRi+Fy71wq4s3SBQFypOpV7GSkb5W77
 IMRiA0Klrw0bY9q+QtUn/xl64FLqNMk2+tzuBZEZvwKNeg21pAje4sLXD
 5HSOpc6B4LlYmFAYHIt5rSlYnde7uWSXVvUL9yL22VVRYKk1QH6mkd6fX A==;
X-CSE-ConnectionGUID: ex0BVXT9SjuQR8ZU32cuvg==
X-CSE-MsgGUID: r/A85OmqRC6k3AkHsWIQmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="43018768"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="43018768"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 16:29:34 -0800
X-CSE-ConnectionGUID: flu46qViQdCXth81Rea7RA==
X-CSE-MsgGUID: b9+trTWGQVGz1Wb94lBgMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="121368076"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 16:29:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 16:29:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 16:29:34 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 16:29:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rLlocF0Cd2i13qj8rTD8FP4A4bVEzlyO9/3b1WTIq7t1nYbs4KEzniC/t50+cwSl+xS+NZ/LVemG57NOGVDoazD/0gxYX+I92FfJLLPpJA2fraWE4K7fgtkXQsghLy7PYwcPTKTFLcFeWqsTecz4uz+PbDEOyXVfFpBGsTV3AB4VRPFEUpLtCP6P0i4zW5LhDvAwF27ZR0rqmRMUr4qpuhbO/09O0mBfbka9WcxtS9EXJcpktyp3k/5RCbmfXA12f7sdZwIeKeVhS1OKxZoz3up7SnwBgcEsCnI16B8fW4QDHlGYXfRwChzNFo+Am31rtOB0wD4jYEi1W7WJB5Ouqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UI9F7NoN7JWXPgavZhNwN6KS6PfjOWKRn7HVjtJPfkM=;
 b=QPjO/GuiPhNncnhAaFqzhRSOK8aUkAetdt2H38YfaWhALQgqlLXE+XCttURLPxulLGwO9BM0le658Vb69mXxqQ/e3OSprIYRdFEsxAtfxw9lFRjzLeAAbO9NNRS5n4+jTmQDBxTBmTaqjnSaLL2t6jF5rviQpEbb/YSwzsDNsCDLpRk+SAPFwaJNcvp4cRvgbrbnBtSPxLZYUsG47XFr174b7MT5ptF9zXu9vwcAw7ORyWKb3vPX6VgePdlsPexwg8zRWRyVsVTHvw3xs2AzJO86i/lwZekY+sOZCwvar80u3JkgWjyKboikI5ldC8aWkaaUP/ZQ5VD1MhqSp7fl+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.17; Fri, 22 Nov
 2024 00:29:30 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8158.023; Fri, 22 Nov 2024
 00:29:30 +0000
Message-ID: <3dcf71ef-3b29-4721-b66f-3907a3383dcd@intel.com>
Date: Thu, 21 Nov 2024 16:29:27 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] i915/guc: Reset engine utilization buffer before
 registration
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20241118232223.53639-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0014.namprd02.prod.outlook.com
 (2603:10b6:303:16d::29) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|BL1PR11MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: a8b41608-54da-4ea6-8c71-08dd0a8cbaf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S200dURQcWtsbEZPNzVjb01DZ0RhcjAyR1kycEh0TXZtRWZjZjFtK25URHd1?=
 =?utf-8?B?QmVoSG9LNytJeXRpbE1GY2ZsN0VPalZwQlVnVzRqNzVxSXZ4bHNiYmMzK2FS?=
 =?utf-8?B?Y0pWZjMxREhHS2FlSTJoMERuMzFDdnVSM21iR01IeDE0TmFrUjR2dGV3Nmdn?=
 =?utf-8?B?Z2c2WC80WlllUktLVlFIQUQyNEdMNXhFckZyam43M28rWTVrclhBendzZENi?=
 =?utf-8?B?NkJxaFN1WFpkd2t4azhjZ0U2YnFCYlBMYXRmMTlxQ0VVaCtpSkc1M1ovZHRx?=
 =?utf-8?B?d2hoZ0hnSGtTN3hyN2lDTU5JckJHNk5CbTY0ZTZGYWIybFRUN25PWUNpSSsw?=
 =?utf-8?B?STYrR1BtaTI1aGd2ZFBwWUZ2R2JQTjNKV3FFODVEUUo4WERNZFZPcDI3NXZ0?=
 =?utf-8?B?SVNzTXU0dVpIZjB5Uld2aVNnbGxHeVZXYzl1bUluRGlhKzdjT09XUTdZckl3?=
 =?utf-8?B?Sm1mYjR2bzlkT0wrbVRhNEVvalFOaDhzK3EwN3VsZ2ljbGdDOTdiUGluVUN1?=
 =?utf-8?B?OXVsYjNpZ2pmeWR2b3kzYlo4RyszWjRyQTIwUC9TbTNsOVFwLzA2UTJoMHVw?=
 =?utf-8?B?NFk5OEpoRzlKQnBmS2N0U1licGhWTXNCTDJ0NlJzaklHNGg0ZWlwYXFXbTZC?=
 =?utf-8?B?LytBQzNLRFRNVURTOEZqMmUzc3FOZ0docEgzcE4zNzBxaGM3Q1o3TGRreTZz?=
 =?utf-8?B?MXJCMFVESTExdlZuRWJyblJ1MFVJc3BuKy90akxGV1dKeDVxTERRVTNtUjFy?=
 =?utf-8?B?OW1sZVBjamV3bFhDZ2t2eXpleTFwN0R5TVdzUGVaZi9PTDdMZVYvVTNpSGpa?=
 =?utf-8?B?Z2k5YUpyZmF6ZWlCUFVyTVdPSGFZU2JHamRqbFlGWlNpWndlSUtFcmZKNzRD?=
 =?utf-8?B?Q0ZVSTF6R20vRk5SQUh6MWQrUTdnMmUxeVg5STBhcHVMN2pTeW1pZGs2eUI1?=
 =?utf-8?B?MnBVdElsTnZOU21tQkxTajV3NWtSVjRERFFVWk4vcWlWOFpCRTNvSFVyUEl2?=
 =?utf-8?B?YTA0NGo1S0R3aURSUVpSQ2sxS0F4S3E3K2R5RGl0ekgvbEdpc2k0UC9oNFhS?=
 =?utf-8?B?NlB6b0VZcmpMOE9jSHNRbThXM2lJcWFKZmJVS3MrZlkwb2Y4UDg4dVJFcFFC?=
 =?utf-8?B?cllCTm5lYUxYQ3ErWFhVTHBKc0Q2b0Uva214ZzJjRll4MkNSM3paNHRzc1lo?=
 =?utf-8?B?UGhLbDRWS2d1bTNxdjN0RXV0ZTNtUHlGTVdSWDVWbmczOUFrRU1ycW1uODhh?=
 =?utf-8?B?RDBQV0R4OWxMZkJJN1pvaHdiYlMwUGRIanYxbkRMd1dNTTkyWUlQS2RqVXFm?=
 =?utf-8?B?amdEc0dDZFo0QXdXcDNBYWNCaW5RY0JlRkRyN2hBQXIrd0l1cWpwZDA2UXNZ?=
 =?utf-8?B?Q0dpSXlIMkd0eWlRc2EwYnZrSUF0c25SK3BWMVJCUmx6ZW9rT2JpalZFN1Zh?=
 =?utf-8?B?OWlQMU1CaEYyVjJxYlZBdEhYZmFpMURQUndGSEVFa25jVjEvb2lJd0szMlpF?=
 =?utf-8?B?NW0yR01id0U5TFdycTNSUlNPeUFIL29Qbm1kemdIQWZDTUZobFVCRktabS8x?=
 =?utf-8?B?YVpLb1ozV2R5OWxoMEgwS01adExqR3N2WVhrUFZuZk1Cb1dZQmRSVkplMVdN?=
 =?utf-8?B?a1kvbWVoQmpqV2oveDNkV1VVSkdSR292Z0JCdGtRRXZFdmRtVEZlbmorQTdF?=
 =?utf-8?B?UWdURDdzV09CNGdCcnVZYTZzSTY2OFM3cDJENUlRd2ViaHBUcWlwWVpkL0Nz?=
 =?utf-8?Q?5u3NOhuxMkEDMj6OcZOYHFKqo2Y5Ek26+WDIHtu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3p5Nk03cHJ4MHNJelZic1RTNisvZVJ3YTAwZ1NGckdiV2xHUlZQWVJGYi8z?=
 =?utf-8?B?b0QwQ0tMNU1odjJGNmZsWXZTK2VIdzEyck0vZ25sWHNkdHZKanhlbFVDR3F2?=
 =?utf-8?B?SHFsbVZIUTJJeHpvUmp1NGJUYk1FdEN1eW5ycUdiWE9KL2hKQlBvUXZKbTht?=
 =?utf-8?B?bzhNVEMxSTdMM01NVTkxd0E1c1NXSmdKS0tmWU9jNUd1OVYwTmRoSDFVN2kv?=
 =?utf-8?B?Y2c0bndlOHNyRHQyQk44VTJZWXJDNUQxSTJFNEppSjRFN3NJSFRXSkhNN1V5?=
 =?utf-8?B?aldhbHQ0a1RNQzZZZytSOXBxOERuRktuYjRDWkZ0NkRwWFVqS0ZLZ0NwZHgy?=
 =?utf-8?B?d1kzVmp0dStGemw3VzBFSUR3WVF5bnV2TFNuQmFMWmsxMkVIQnJOTlhoK3Q3?=
 =?utf-8?B?eDJ3QjlIYlFPQ2JFbW1COXk4UEFWdkhtbWdQbWp1OHpmVHFDOVhUc3pGc25v?=
 =?utf-8?B?T0JUZmRlczJQa280Q1h2bEowZ25DN21CaVdxRHJSbUE4VWpaQlBzVGliYlh1?=
 =?utf-8?B?OWxMYStDd21qbTlCeUpLclE5VXBoWExxNTByckl2OWU5Rk1ZeWZ1TUI3dHZq?=
 =?utf-8?B?VlpJT1B1TGR4MzVvTmc3cytwLzRYVGFHODJtYWdWM1lxY1k5SGZrb3VITUFk?=
 =?utf-8?B?a0cvd1NsbWxIcnlwM24zdUdrTEttbm5wbGtqbVMwbjVnU3RrSDNXQXl3ZXB1?=
 =?utf-8?B?dzdqb1YwRVFYaWRUQ3krT1dmU0VPMU5LOXBrM2dZVjYyY0piQXBldFFvclZE?=
 =?utf-8?B?QzRjNnpWeW9heGJRbFQ1cXVrZllHNzl3RlZ6cXRaUGVvQjlJV09MYkZ0cFAx?=
 =?utf-8?B?VHN3dStodlJhTkhsWGVQdUlQUXhYLyswQnlTMjVDazJaSUUwUVhnVzZrWmha?=
 =?utf-8?B?ZGxLamNKdzZmSmRzQkdFdVFlSWxrMzhncWxxNDE0TnhYV0phTkZKUms2WFRS?=
 =?utf-8?B?eDAxbGtvUGJZSUcxTEhhQ0ZJQ2V4Nmo0V2MxOTRIVUE1MDZtSTlTRjVoaDA2?=
 =?utf-8?B?dlRZTkVTRlhIV21UYXc4SG1CRFl3TFkzYk1LS25zenQwNncwVklKb2VnR1cy?=
 =?utf-8?B?YlBhQkxXWDBRdHB1MmFhYjJHclFySC8zc29hTHFQeUN0aCtDRWlrVWZOaUIx?=
 =?utf-8?B?ckhBVXNBNWhndGdPcDV6cUU4NHNuZXpoemVtTXJldU5Hb1VSVmJZUXQzT1g4?=
 =?utf-8?B?TUZrMmJoR3hINC9VUEJRdmZETHRZQy80RnhWYU9XT3kzVDY2bmNLeVNUUjVC?=
 =?utf-8?B?Y0lDV0pmNEt5Rkwrc1lpMTcrZ1htRjM2ZEE5TFB1OGFvY3pyK3VMemhwYU1M?=
 =?utf-8?B?ekR2OEtFbmdSN1U3bHhhbTNtMWp3azlnNjNFYTNPcnpFMitnUE1MY2NzandB?=
 =?utf-8?B?cWNuUFRQNkZwVkg3UlQ3YkpPS3F4T1BOOGV6Rk45alJDaDJUWHZoUGwzTEpB?=
 =?utf-8?B?UWNGZUhtS3pqUkhqRHpodmkwekZEdU9QQUljeFp2NHI4amRKdmVLN2Z1ZUpk?=
 =?utf-8?B?dzdqU3lTdHRnNW9pOGRQN1JIbnpqRDkyMnc4V3pMSEdHd2xNYnA4dUdzTmVT?=
 =?utf-8?B?cTBOaUdCd1dZZVNJZTJlQURUaEtRZ0tXcjdOYTZSb0V1RHRMSjJHTEoyQ0xn?=
 =?utf-8?B?ajNVem8xT2Zsa2c3dThIY0NXTDVyZ1dPK0xNU3BXWXdDbjg1OVFDZ1kyREhX?=
 =?utf-8?B?dDNWYk91UnRML0k3ZmRHUURMajBvTVB1dnVmaTd0aTR0Sk5hVUNhR210SDFo?=
 =?utf-8?B?bkRnSHloZDZXbVN6Ly9XeVhkelZNclBnRzV1TGo1cTlTMXdzMHliak5OK081?=
 =?utf-8?B?ei82ZUxYcWFzZ0c3MGlFQ2RNL2Fkb2ZlcDVXVjE5YWo5TjRDTWI3ZHdIOXB5?=
 =?utf-8?B?aUtvU1R5Rmh3VnNvTzV2MDEvOUtVZXQ0bWpVSlQ3YXN5VHhFWXNMWTgwckVP?=
 =?utf-8?B?TWszZmZ5OGdSYjVWVjdWMkorREFvbXVpbHQwZHVoS2JEb0dFOUpFckpxc2cx?=
 =?utf-8?B?UFdONE5wQ0tNU2haSlhBajVndkVXaWhrOWpTRFZvTUEyMldIZllTZjlla2F6?=
 =?utf-8?B?K0Z3d1JXTEsxOXJIQ3BCcGt2dUxpVXVpTUFWelMreEFNTVIzYmxRc2lwZ1lU?=
 =?utf-8?B?bWhXNUsxYUdJNWRIWW10NUpsT2xXaFFyM0dHVXdrTXRmNTFYY2RVc2V0ZTcy?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b41608-54da-4ea6-8c71-08dd0a8cbaf0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 00:29:30.6250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cCSVHWd7fBbbo2EYIsluYFm0qXFxey4zRrtgY0T+Ju/EQ0ceYKlqZiWN1gJ/70Wx1A+OziFGYEpdqZJsCjPy4IZItPr7Nv1uCmZxKJsCltY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
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

On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
> On GT reset, we store total busyness counts for all engines and
> re-register the utilization buffer with GuC. At that time we should
> reset the buffer, so that we don't get spurious busyness counts on
> subsequent queries.
>
> To repro this issue, run igt@perf_pmu@busy-hang followed by
> igt@perf_pmu@most-busy-idle-check-all for a couple iterations.
>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++++++++
>   1 file changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 353a9167c9a4..c71aedcbce43 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1243,6 +1243,21 @@ static void __get_engine_usage_record(struct intel_engine_cs *engine,
>   	} while (++i < 6);
>   }
>   
> +static void __set_engine_usage_record(struct intel_engine_cs *engine,
> +				      u32 last_in, u32 id, u32 total)
> +{
> +	struct iosys_map rec_map = intel_guc_engine_usage_record_map(engine);
> +
> +#define record_write(map_, field_, val_) \
> +	iosys_map_wr_field(map_, 0, struct guc_engine_usage_record, field_, val_)
> +
> +	record_write(&rec_map, last_switch_in_stamp, last_in);
> +	record_write(&rec_map, current_context_index, id);
> +	record_write(&rec_map, total_runtime, total);
> +
> +#undef record_write
> +}
> +
>   static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>   {
>   	struct intel_engine_guc_stats *stats = &engine->stats.guc;
> @@ -1543,6 +1558,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   
>   static int guc_action_enable_usage_stats(struct intel_guc *guc)
>   {
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
>   	u32 offset = intel_guc_engine_usage_offset(guc);
>   	u32 action[] = {
>   		INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF,
> @@ -1550,6 +1568,9 @@ static int guc_action_enable_usage_stats(struct intel_guc *guc)
>   		0,
>   	};
>   
> +	for_each_engine(engine, gt, id)
> +		__set_engine_usage_record(engine, 0, 0xffffffff, 0);
> +
>   	return intel_guc_send(guc, action, ARRAY_SIZE(action));
>   }
>   

