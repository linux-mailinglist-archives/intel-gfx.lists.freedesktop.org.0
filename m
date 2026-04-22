Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFLcDpfe6GnOQwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:43:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9259344766E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:43:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0180910EA38;
	Wed, 22 Apr 2026 14:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVeI+Ulq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B4F10EA30;
 Wed, 22 Apr 2026 14:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776869012; x=1808405012;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=saq0fBz5So7R0QUue2FrAqGslhsyecp/IAuHm0UMZKc=;
 b=AVeI+UlqVteW1X0rmAvb1NE1OSuK22YoEHFNn2hevdocfrMlP+qzpVfP
 5DTcmR/gzqWPh5IvYCMzbQ9NlahIVy6Aum7cL8DXyFK36ipIot6v3353y
 6VtrfyUY8dZvsbdpIKpKA33VyHuEOUXK0B3sVHhrsp3JAS49x4NHBrR6o
 WlaI36uxbL+R8ZwWrIKz7HbOYLOc3tcw5c7efjegFf0C0kma6jA7yPalL
 vD01T85jlXdJ165PY71FAP23kuGu1GU/76lK81+T4FKtzIxLc4hutNXG2
 Kkh88Q/iQXyjIAQ40gubSzTxxV252cxAgvjLsAjA9ZQdMIlNag4ZIcFIn g==;
X-CSE-ConnectionGUID: sxuhD5JcSmq5TY+BhqQskA==
X-CSE-MsgGUID: yao0EH5jSSGGEB0ewq86iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="103282656"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="103282656"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:43:31 -0700
X-CSE-ConnectionGUID: NAoNEZq8TrylGI8ROytozw==
X-CSE-MsgGUID: A/aNCGCcRwyGc/PzbPBE1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="232682175"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:43:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:43:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 07:43:31 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:43:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aFHUiKLfn5IBesl6kolXKWwcQI7Z5S7+5i3PbJA0CzgmDTrLjJoVpHEZx3tpYAAkpAFdmFLhP1bC9afzuIctyOYWKr8dmsJEppipC+IJjvPYrZztVYpTNxlasrEOZOJOz7CQIZwIXs5zkz1u4LULy50Xx67l7CmRrsJkmtFmkGrUXSYqcXaZUEjOdneJCAnzn0c0tdkJWDhYbPOhxq55awro5oKt3BUx6Q3mvJHKCjTMZhfpsvVDCPzTACgBdKsywJC0t4v6ms8ilI3JWJfhQv/yuKDdli54DNNAWVhfK7vcGtXfEbRkjSmpleSbO4l882jggMiEAbUMncxU9Z+ijA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/o8aYYGm5WDY/KsoDkXR9btNxN7Phgrm5TLZWPIcdRw=;
 b=cmw/HWAhE7d7Shv4Ao/FTVTnRxN0W2iowQpPQgCMzgW31VwIYMjqlZ4Z0z58Bw1bx1xMgvHBbLNSxlGps9bZG7Wq+sQK9WWz0hs5ZRXMyUx3fd7eGEkvuT5oJ3XIoq0VMPOw2aaALvcoLG99Du9c7hQ0hzdkQl48hGPcXGRPmj1f/sOGEJn5/lrQYELcq09O5Py7zxyKgQd3Wh9hRGEoERYwk7lG+8HEGqe5bdIKU1oV1VMiR4oFjdxLvya0wt9NFfouBJ1MBe46+vNAtFiYZHrHzdtzvAsVfPPh3oGqnqz6J77IkpbhG85Nrmg9OMFw5dtbp/JrbfaaT5FyQ9lSgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH3PPFE26A71A1E.namprd11.prod.outlook.com (2603:10b6:518:1::d58) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Wed, 22 Apr
 2026 14:43:27 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:43:27 +0000
Message-ID: <c6bf08da-a6f2-4dbd-a3ec-31f7811ab424@intel.com>
Date: Wed, 22 Apr 2026 20:13:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/19] drm/i915/display: Enable DC3CO idle protocol in ALPM
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-15-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB63609A907097B5F1B54130CFF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB63609A907097B5F1B54130CFF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::7) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH3PPFE26A71A1E:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bc5a578-9abf-42c3-b4ff-08dea07d837d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Bnr3UcxS9sIRXDYkQeb3yyb82nrFTo15HbZ8JICgbMftCq7KdtGi7nAS2Sgguk4WOtcVfYHTD1JTKU/c+0qRGwc/mGQRe2JkLjA94OX4/wwK3aqCdmc1xFGzTNhr7Sz0q2GbELF6Y1urEvnbBV+fPjRdLdMzLJInKzsnSfqOE4n8TUex+aDrwh+hzxaiY/mAKH8X48yZz5mMdSE+aHj2WukEOaCVsybZoiXN+IUOrOLbD1BubZZqVIlcxlzVmZ/w2CRq27RKbWQ6qeB3mG56xZAJcxS0rZD5sIwWOH+euDGRT7BHxO8Rt3fvWauF1Q/Q5zDarzp1pLaao6g4S7qksZJCp/FFCfgakFL0buuVktYTbT91JTlua3hEwX+Ab93KTwoWBzkG9zKET6ivqnjYr1YrC9UsUxKCWayh7jLuxu6acbRKaFYOG8Zyu6uy/N3cqCpZeSqM3Q3FSoSGdan/BeNJ/thXg1my3RR6/5lklLh+f6Z/lwMiHSyNxSZvBM/kWk19f+Sq455hl50b1oE6NO8Rc4DPmuTN0K77o6mDWZUVUI80K19akIFHKIEPeiL3nIYSgt38YDGjt+6Dk4SbmHcikIjc+wy5fVfwVNeIAFo6kXR4pSNfGxD+xUT2ugTBcL1dFJuhd7hQqg5XNqwfH7mL3jkuOvUTs7MMKQpxQmeqoaLo0OYoTXgNwf8Q7+vavvYJWHbo79r18cHvrx5weL/sTl1UbpAfdAqAtYPhqZE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkZidkljZm5lUWEwd3JqLzVEZm9RVWxNL2FKL3BkbzJmdmdFc1FWNHhEeTFt?=
 =?utf-8?B?RnMyOXZzNms1bTVYNUFqRTN2VkoxZkx3aWVoRldqQUlqUnM0YnZZVlFTMVRF?=
 =?utf-8?B?K2E1dEkrN3ZhdWJQdUl0ZDRVY0ltd29KOU5TT3ZVYVFUWXE2SGVWZS8vSjVp?=
 =?utf-8?B?cUNCL2tFU2tWSi9MWkZFT01ZNDNwc2ZnblZET2QzeGN6YzRoTTlsM1hERHJZ?=
 =?utf-8?B?SGNQMWN0dE1lbnNMbE0zQXA4OFJMa1VDb1Z0VmttcE9XV3hadldVY0Q1d1d3?=
 =?utf-8?B?UDFXd2dtYWdUcXJvL0t2Sk9WQmExSDV5NjVPZGExZ205a3Q4cFZGMFJxUS8w?=
 =?utf-8?B?cGRYVlFWbzBwNHR4RzJBeFhrb0xRQ2pDSXcvWHd6MHZXTU01ZWc4YmpOVWUz?=
 =?utf-8?B?NTd5d1E1R2M2L0dvRzR3T3hobXVYVHA5dVZIVEYzVHp5Q3pmM3F6TWlKZnpN?=
 =?utf-8?B?SlM3bWFlaGJ0cWVRWG9IdUlJYnhRSjhRK0VQNmdQbTdwWGRGdVgwQS9mcnVE?=
 =?utf-8?B?bTVQVU10L1lnK043bEVHS3NJWGdVbUIxeWVMYkIwT21JYTlnQ0xqc3dpMFFE?=
 =?utf-8?B?V25LTU5vL0loQ3FxYWRsZVdrdkJRcUR6cmhXdXNwbDhTRTlqS25aYzZiK0hN?=
 =?utf-8?B?M2RuRk1wam5OSytoWndzQ3BWNVZWblQwNnNrVFY1QUU3MjB5dS9lUnVueWhT?=
 =?utf-8?B?Rlk0d2llazNRUjBueXR4S2MrYWxyc1BSQzVaZlRmbGtWbmJLMkhSa0k5SDNu?=
 =?utf-8?B?VVY4WEExSnZqREJvKzlNa2hMOWt1d0daUmpqdmI3eEpkSTR0SEwyWU1RWnZF?=
 =?utf-8?B?c1RNelNoSDdwNHErS3Z0L2JLOWhzWUtKaEFTNUMzaGM1ellaamxwWUtuWlg3?=
 =?utf-8?B?MHRnNTViMW95WGtDN0k1c3JNVlJ0ZUp4RlN5Y2JnTzdSTmJnQ01ZM2NkZTlk?=
 =?utf-8?B?VnZ1OERQaDRoM3k5ZEpuQWZOWGtvRmFMZzdHRmJEbHE3SkxGL2Q4VjNPQWF4?=
 =?utf-8?B?UDM2MGh6alRRemtNSlFYQWpnUXFPZWkzdXVUTFVlZGFJcE1qdDh3Q044VVd0?=
 =?utf-8?B?NjU1eWdIbDBCMlRWeGFEOFN1Z2hSOUtFWnl0blVhV2Z3YmplcHUvUnFwdysr?=
 =?utf-8?B?MFUyNFlqdy9OTHBlcjZwU0NXdHlwa2R1VTJRZlZKeU5wRXFPb2tTUi9GUzNk?=
 =?utf-8?B?WSs4Wmo4QmtjYlRFdzBobnBFR2FiRnd3Tkk1U1hUSlM1cy9sWU9VWDEwU3Fk?=
 =?utf-8?B?cC9lQjZNM29YT0JYbExzNGJYbHl4QitLci9xUE9xRjg4dkhMMXZEWnMyMVp2?=
 =?utf-8?B?N3RUeFJydTlwWEJSc2VJdXQ3SzN3Y1llWnFpV0dlOHJqdm1LcVVWdW9JbzBr?=
 =?utf-8?B?SllkQzlUZG1Sc1ViWlVOOTNhYUNYZW1oYUszRnhCTnFYakM5bHNuWWhiTldW?=
 =?utf-8?B?Mk1NTXpZdGJ5UWF5bFltdUJnMWh5Rlk4S1NIZXp6VGhzUjFVeFhLTGozWXkz?=
 =?utf-8?B?dm1JY1lrNit3N0J0M0lnMWlqcUpzME1lV2JMSGFvV2p3NmdHbFBzMnc2eGMw?=
 =?utf-8?B?cHI0a1ZCeVdrNEVGWWZPZmM0bzdDNjl3YlBjMFZuaElKVC9zcjhMa1B6Zlk2?=
 =?utf-8?B?QTJiVDMxNDVoL0w5THE0dWVEOGpCdGI4U2NzTG5XVS9zeFpmT2dPUnlxQ0s0?=
 =?utf-8?B?R08yYlllb3lham9sVTl0NzN1SFhEQjRYQ0ozSFl3T1J3K0xJSXFMZlBOT0Z1?=
 =?utf-8?B?UTFCNWpZSVA2VzVITUI0czVpMVBiVHlKQlhiOEtQd3ZSUFNmTE1MaUhjK0hr?=
 =?utf-8?B?Y2lKZUJaUHpqMHBURzQzNGE0Qk1Kcks1YThuYnN1ckVlcGU3ZW1hcjdNVGg4?=
 =?utf-8?B?Z0Nxc2VyU29qWGxwSUtTRXFHWlgxY2hBVmFwM1VIVjcwWHBOV2lEdFhWdVFY?=
 =?utf-8?B?OExnT2pwQkZSSCs0cVc3ck1ieXVnblhmeWxXYkgxeElkVnZSZVpMZU5UcE5N?=
 =?utf-8?B?Uk9keXN2ejZUWkZzdjZRVHBLdVRMZXZhVnhlVFU1RjdpeS80aUlJa090R0lu?=
 =?utf-8?B?ejl1OWlPZlBIa0wvMHhsbkxwR0dlZEZkeHZXTy9mUEIzdkpVRVZDcFpLNUQy?=
 =?utf-8?B?UXBQbEcxZjczNDJoVEUwWFpYNXF1S0hQRUNVNDJLeG40c3BQS2treDl6NVB5?=
 =?utf-8?B?L09KQk1QZzRxNlU0ZUVLS0cwNVp2Yi9ITlZCK1hFM2dhVjJ3YXBibXhxeEZG?=
 =?utf-8?B?cWtSTW0yeGREVUdqUDNHZTV4cE44QzR1MURQVlkwTmt4eEU2SjBVRzF0d1dB?=
 =?utf-8?B?cTVpN1hXb09zRDZNbXdhaUc5MWdISDdvOXlzN3pkdEtTNDVzdmZBYWo4N1VV?=
 =?utf-8?Q?q/o4c3L5I5hfLtsy0PzA6yPJzvSlTFw+27Ld6DFfNwLdW?=
X-MS-Exchange-AntiSpam-MessageData-1: NaOl2q4GOK4r2Q==
X-Exchange-RoutingPolicyChecked: CmEvagpKPPB/nuM2GVDqW4gXtQOGajyioALTOMObD4OXTQbED5FQjpG7JhW1aopL9vr9BEd+4qUKI4DVMHgF8aVOOfbN+0PpG32WKNnh4ulxI0dG+9B+H2mqCnQyYTLMzaIG3sMJ5QbTn4S9XUu8nXLeKuWXBhzK1xyE4aCWlml7JloZzpNyeoHJGMAij0sFErse9BOCyp9cTWeUVwIMV4JdChHri31eHzopJvrfBpfxxJGnthc0oXjU5qTd1Nr1KaVZOUM608gmTcYWud2dMSA6L5b/HTNhYRbKYK286CPoAo35v5R1srbZB/i6qDxPgclhdztHPRlxhpbtmZsgjg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bc5a578-9abf-42c3-b4ff-08dea07d837d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:43:27.4608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDUffFoFSERVlEa8LZMAZD5jiK0WGMVravrJezJ/cGf2QVUSbDhgdH6zNLwbWF+Uv+9J6BJvks/EhxcSmSayrwaZgZDassHg6pmoVIbOJx3Bm41iL3TqL9TMtw0Tm+Xf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE26A71A1E
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9259344766E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 03:28, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 14/19] drm/i915/display: Enable DC3CO idle protocol in ALPM
>>
>> Set PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL when DC3CO is allowed.
> Change Looks Good, but squash this with patch 13.

I will squash this into path 13.

>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index a7350ce8e716..9f92513a23c0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -365,6 +365,9 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	u32 alpm_ctl;
>> +	struct intel_atomic_state *state =
>> +		to_intel_atomic_state(crtc_state->uapi.state);
>> +
>>
>>   	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp,
>> crtc_state) &&
>>   					  !crtc_state->has_lobf))
>> @@ -389,6 +392,12 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			if (crtc_state->disable_as_sdp_when_pr_active)
>>   				pr_alpm_ctl |=
>> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>>
>> +			if (intel_dc3co_allowed(state) &&
>> +			    intel_display_power_dc3co_supported(display))
>> +				pr_alpm_ctl |=
>> PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
>> +			else
>> +				pr_alpm_ctl &=
>> ~PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
>> +
>>   			intel_de_write(display, PR_ALPM_CTL(display,
>> cpu_transcoder),
>>   				       pr_alpm_ctl);
>>   		}
>> --
>> 2.43.0
