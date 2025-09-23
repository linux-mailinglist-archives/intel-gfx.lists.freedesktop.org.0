Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC15DB9581D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288D110E5E6;
	Tue, 23 Sep 2025 10:49:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYbOSbtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FDB10E5E5;
 Tue, 23 Sep 2025 10:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758624549; x=1790160549;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WWv9QZPfKiY+75c19OQw6RVVi9c8nFrkyuZqWLqYjl8=;
 b=XYbOSbtcGXgqQ6lR+aOu8DsPJ2As+CLvoSSwYXbjxM4xZ3V/VRsTuPxu
 Y/tcpTz1fmRY7TMc/mAztHlq9iNO4/2uCad67CtiKmDxYP0zy/B99awj0
 HBzxBlAcsZJLeTM6qumamirG2hqzTB6RXW6OY1yxh2pabQOQj4pJ+kkwP
 fMe6zbilHog4mGHCtBRGpn+OQIgLf0pC4AVZ/wryxslykMIUX+b4SOXLO
 FgtXvewe8cOXwJL953SYc/GSrdwCvb/lv4ssptrvLfY22FaRTzqzFYnU2
 J5BmnmLLhRiT4ixmNZQS8c0f8y2GcKwrcI6HK4xWas6c2mur3EbwxLIIj w==;
X-CSE-ConnectionGUID: Vet5s6FkQQSbVutKEVuaew==
X-CSE-MsgGUID: trsem9oJTJSVekV7ZnGtlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60952402"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60952402"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:49:09 -0700
X-CSE-ConnectionGUID: GEheAOOiSV6kgNLudVpNPA==
X-CSE-MsgGUID: pzW1FslJRnqUg2vmOa+YgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175864430"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:49:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:49:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:49:07 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QSwVYkBOR7YTAYX1jwgpoBiMNnooED46TaWbs6xlN1dhXqV3J6PEtH2iFHLFn7Kq+Bw+JUPr1bYJlyhQ6sW6XeQGxiCj5WDvwi0VFa8apDxkrftiVXhXbd91eKyiAqTSEfcrJ1BJv6rZwcVtUUKjlQjUmRxbC5ApWxO4ViuOA9ngrjkaJVzgMnHPCQ/6nLZRtUir6IBWKPw5V2G+2kjUjetVFYpwlPAUevHc0JHy2sNOCTg3C+TgUMBneeJI7A/N7KuhBzFkMHy4g99bZQ5BXNkosDlA7O1KYPF/p9eULAGz7+gnXuN79EtQxd5YsKzS9XFfg1GqXmxX18OfKMBbeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZqvRBZR/hWvCSMXl7vr1KLSOyC+m1QQrdU0QIMW/6Sc=;
 b=IO7ZnlPkT/Vzr/Hddn5kRqjZEcBK4bGDoJaF6P+Dib/OtfbunjT+O9t6Or2paE6z6rSI0M5c+xLD7Wvc4YQulbQPly89dN5tt7oBqfCscdkdWgNwTTf1uCKlIURGOZDlxnto9sc/hOUgtrJlmUos7o8lQxS4pIAVIVISp+h4LMwE2y9PiUpl9okvPncJDwajFqIxe+5BGRDzi6+L16Q1q7SuZKC0t659HLkuaQIQavaL3Xcfp91HHR/kIj5kS0wVlq6yfhshcI7uLJA3ANPKXHqxum//qftXpfdc429geDUyhd1De4matGh6K6fJnSGjaCj5l9RZbGbcWKeOf7CMcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 10:49:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:49:00 +0000
Message-ID: <7bb0fd96-3ccc-4cab-9846-716c7155a721@intel.com>
Date: Tue, 23 Sep 2025 16:18:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-5-ankit.k.nautiyal@intel.com>
 <aNEhd4_sClBpXO75@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNEhd4_sClBpXO75@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: ef84c89b-2c2b-44d6-932d-08ddfa8ecd6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blV0bnF1cUZWSGVZWG91dDBFOVY4aGZPSTFYM1ZyWWc1YVNXLzc4cU8wQS85?=
 =?utf-8?B?YmQ0YXFpaVZoVk52NXE0L2RaWmROV2lHdnppY2dXMEZ2UzFyb2ViTFJmNXFy?=
 =?utf-8?B?dWwvV1ZXc2FQSWo0K3NZL05ielczdXhQZEs1T2ZaNUJ0eDZXd1Z4WENNZjBQ?=
 =?utf-8?B?NmZLUjA1TnVlUXk4SHJRTTBXM0R2amdyTXVidGtqWWJZeUI4QmZYTDRvcFBD?=
 =?utf-8?B?VFFYcVdKM2tNVDlwZk5IUVJ3OGMyeU9sNlEvWmdLVjhqb3hUNFBBYXdUZnh4?=
 =?utf-8?B?MlorajBFZXdNQWF0Q3RrVkNaU1RvcTcrM0VLcWZnbXh5UzI0VXhEVURhQ3Ry?=
 =?utf-8?B?UlVYbSs3ZWhMN2VTZ3piWWJ2Ui9Cakk5WWZ5SGNVQ0ZFQXV5SnBidDRoNC9U?=
 =?utf-8?B?U20yckR1NS82bFVNTWYwNEo4Yzh0Z0g0bC9PWmN5eWRNSWttMU1XTVRjZmts?=
 =?utf-8?B?cmsvNGNVdEdaY2hpclJSNFBlTjE5QWpKdjlnVC81cmkzTFIrdEZ2ZU90RTl6?=
 =?utf-8?B?Q25FNXBLOG9GbGJldTJiYVU3OTBLOXdhOU9RVWYwdzRtUCtzbUJwOGJiSitC?=
 =?utf-8?B?VGZhMjVncldYaHlzYmlpeGJaU1JjcnN3Mk9JYmtzY2JqMjExQzQxQjVvN3hS?=
 =?utf-8?B?dkVYdnlUbktBSzZEWi8rTzZkM1lmMzJaZ2JLcDlNUkhBcXZ5QnFLNDROSVpa?=
 =?utf-8?B?QmRJQitZTEwyYVhMb2xaMkFzQ0tYVHdaNXBsNUdKVjhtZU1YVTZWdzVCZHJU?=
 =?utf-8?B?V3F0VEhQbUxUSXVBMXl4d3c1NnVuQjllaTJTQWd0RzVtWjdsdUVmeWRhdyt1?=
 =?utf-8?B?OThrOGVOQmo2RXBVdmxFSW5GYWNvVkJ0YVdURWd4VjcwZUJpWHY5NDVFQjhW?=
 =?utf-8?B?dm1jTUsvZ1ovUksvRnc2WDdJWWl3Nyt0U21DbU5mNHRWT3JDUzArK1BFTGpI?=
 =?utf-8?B?bndZcm5qUXVOc0xOQzRablFzZCtKWUQwdk95Yko4NWVVN05tZDFKYTNEWGhV?=
 =?utf-8?B?TkJ5SDcyT0VDZDdDVTdKdXlKTmNYMlpVU0xoS1huaUJFWXpNdGhSYnZlR2dy?=
 =?utf-8?B?Nm5Dbi83Y2NLQzNXVnpaTVNQVit0NXo0d0xuVUVVS3lpdjQ4akZLSTBXR0tp?=
 =?utf-8?B?SDhodUxZZU1HdXM4ZTZVUFJqcVdNd1pKejRRVFNQbDZmM0lyTWlid0RpcWtE?=
 =?utf-8?B?bEltbzFnUzJmZGlJSitzVEJQNUI4V082czNoYnhKYS9DS2RRa3N1cFAwTi9w?=
 =?utf-8?B?M1FXRldmTkQ2bXZ5eHZFT3lWVkdlQnhpb1ZVSXBwWnBvZ0p1TG5Yb3VnT0tk?=
 =?utf-8?B?Z2RiaGQ0VVBmbUpvdFBLSm1ibE9FTkZiMEVxa3l3VGlSRFZINkd1ZmQ0TGdy?=
 =?utf-8?B?Mk1WYk43Z0FmdXo5cHNBOGZuWVNBeXozQzg1VEtLb2RlcXcwN3dMa1JKdmpJ?=
 =?utf-8?B?dWtDOC8zSExMNlhocXVHejFEZVRWWlNRMXNZZHUzU1hpQUpxbHZhbHNUR3hT?=
 =?utf-8?B?NXRRM2pVano3WVNzUC9kUVdlSDU0MnNXd1RmaWI0K3FIN2dpdC8zZndiRHUz?=
 =?utf-8?B?Z05OeXpUT0I0azJsd1RJL0JKSUJkVk5oajQwTUpONmFZR0p5aFBjSGhlbXZ5?=
 =?utf-8?B?dlIyYWpETVF5Zk1raXRncVhqWjQ3eUNDT2NvbitjNWlxa1N6azRMdVI5QU9y?=
 =?utf-8?B?T2NUQzB4aWNFdFJieEdSMVFIY1hKdWcrU21QdW9hZTd3cyt1QUFNZGJITkhy?=
 =?utf-8?B?UFF3QUpMUUtXV2hSOHZiY005TmNxZlB1dmJsTDkrVkxZSjJodUIycjBZVEd5?=
 =?utf-8?B?TWhDQkhQU2RBaGhJMnJMS24wSVdtbFRzWnRCNEpycWN1MHBxMmk4Z0gyM3VQ?=
 =?utf-8?B?RSt4aUFWaWJGWmdTbHVNMXBnRXNqQldMdTlGQ3JlRHhtYlcxdUdsV2tudWxQ?=
 =?utf-8?Q?uZTmfbDS8KU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3hNbG55RFM4S3Z1SkRBd3lJejhCSko2RFdVQjNieXkxQjBaRkpWb0ZVQ3Vr?=
 =?utf-8?B?Lzc4akN2RWFqamFqMFV0KzdpTG50dGNqTmJGTEczWi94SThZTE05Y3pLYVNw?=
 =?utf-8?B?cmNFaW1YcEhaT01iMnpiSzhCZ01HZ1UzNkdkUGxpWkVEdEFxL1UveGxrNTZv?=
 =?utf-8?B?Y1YxbXZ1MnZDb2taMkx1Z0NCbEcraXRsRDFwTS95T3JBMG4xeG5ZQ3pSY3B0?=
 =?utf-8?B?YnZCZEMrYk8vOG0zdERtTklhc2g4OEI4VVk3UWVMRUNGT2JOT0xDVGR2ODFn?=
 =?utf-8?B?NW1venBEUVBLNnRRekN1N0xDWmx0YzFFYVFEeEFmcmxqRDhxK0dxaWl5bkl1?=
 =?utf-8?B?bWd4SHRCNmgvNlhGRTdPV2IyNWRxdUxCaWR2eXlhVUNmNWJrY09ORnUvK2Jw?=
 =?utf-8?B?TTBmZEZNMmRMUHZXQ2VyT1VQT09nVDc3SHBQZEVYeSswaTFVdUxwdDdZNGYz?=
 =?utf-8?B?SnFRaEkwY0J1ZmZ4SjhvRkZ1c2pLM2JETURub2xBbUV6K1k1Vlh1RzRLUC9H?=
 =?utf-8?B?VXZ4dEVHeW0xOURQK0xxMEpOTkNlRU5Nc2ZYbGFGZHBkMzVZN3MrcFoxYVho?=
 =?utf-8?B?T0FyYVpWaVJGdTNlVTVoRXhOdEtRNWZQUy8wclBkWFdUbXUvOW1jQ0lTYith?=
 =?utf-8?B?eWh0Z095QUZRWHE4Ykk5eUFCbFc3bjl4bllJdXNHZFJjZGZFNGd3Q2VxMGxq?=
 =?utf-8?B?S0JlT0dENGFlY1ZyZG1FMmxJOExDd0IxdWg2YWdodnBBVWNCTlVWMndOa05G?=
 =?utf-8?B?SVg5NDlBZTBxa1dUV2x3REtkRUt4cnA2TW1UL3dSTFRMWmhzc0ljc1RhUEJh?=
 =?utf-8?B?VG9YWnpCNm5yajJ3MzA1QnExOXU4SlBOKzR0NHpPYjdiN3BSaEdpZ0h4ZDRK?=
 =?utf-8?B?MmVxS2drU1ZPN2RYTHZaS1JJSS9mT2JjdEpKSFpidFlKejNySllON0JkM255?=
 =?utf-8?B?TWRIV1R5bGxjOVdHOEd3NjZ0bFN5NFJOL1h6S3NyZlRLSEF0dGdkaE0xT3JR?=
 =?utf-8?B?QlJjUktteGlGM1RMc2ZmZ0ZVcTNtWTNuYWYreit4bURtZDZsNzBWeXg5cnBG?=
 =?utf-8?B?M1VwNFYrTjBtZUpRbmdTRERhUXRIYjQ4TnF1MTNPb1NuOFJ6ZlNSd0ZCVlc4?=
 =?utf-8?B?TDdaWTV0SGczcE5YRUZiLytCb1FFMllYaTVYQk9pdG04OHRPSDhzbGlFaXJR?=
 =?utf-8?B?THJTWFl2Vm1GUzl1ZnVNTnk5RWxCWTBlZWl2cHpYbXZLT0VyZnVxbFR3NDly?=
 =?utf-8?B?Nk03NTVCZ1RHRCs5a2Vja0owZ1Nmd1R1ZE1ZOXNyZjhJakt6dWZhNi9IWjl3?=
 =?utf-8?B?TDdvTGdIbnFjSzJkTWV6Ky9OOVJkRkh3WS9BQ09UL28xNVVSMG9reFI1ek5G?=
 =?utf-8?B?TDgxT3owcWQ5Y1paOVpFOEJwVStaUjAzWW0veFRpL1c0d1hnQXdPT1dEUDVo?=
 =?utf-8?B?RDZLdHFDMU1uVWg2WFk0dTFnUjk1U2IyWlA2NHA4VDZJdFdZQVJITXpCVVhL?=
 =?utf-8?B?UXBoQUtDYXJEMlg3ekE4aXhWSUYzZWdjNTZqVWJJaWtVelB3T3lFeWd5Y3VJ?=
 =?utf-8?B?Mk1MVjIwY2NsbTJZQ0lhMVFnczNiMUNKK0dLbjExQ3E5bjZNOXdDbFcwOXVC?=
 =?utf-8?B?aXlUTUFkOCtxL282NXNyQzIyZ2NMdFlLbHo2cGJteXQ0TzllVzQ2RXhOQTFE?=
 =?utf-8?B?cnJsZHFZMktReWg2Z2dpOGlVOEcwVURZOWJVSndmb2szakVIdHJWWUd2K3Fa?=
 =?utf-8?B?emhtZFdSODNwMHRyV2NncU9DYTkzczNLOEhFZ2Y5UFJzaEVlaVRjQ2xzUG9r?=
 =?utf-8?B?Z3JaUHhlamljanlPN1g0c1N6S1lHSmFXa21GZTk5emlmT3JCMjFGY0d4UERP?=
 =?utf-8?B?UnZSOFRzNGQ2SWtqNDEvYk5CMmtXUDhIYlNTeVZJeTgwbHQxb0NYVVIwbjA4?=
 =?utf-8?B?WWhxYWsvYUlCSHRxRFBrWkgxVi9mU0R4Y1kyT25VMlF4MUpjTEQ4SlR6Q2pu?=
 =?utf-8?B?UW5jS0VxNVZqK3IzSjBhZmkyc05HczdsVWZjR0tVaXpHRmJjTzF0dmlISGdl?=
 =?utf-8?B?SkwxNXZwdGtDbjZpTTFMZWxkeFk4TTJ0WENrRWlXczNURnRDT0RtUk9nL3p5?=
 =?utf-8?B?ei9HUkd1LzdiT2lIRWZ2ZlRaMTYxVXVhUDVxcmh2QUtBNGtsUklIazBXQk5F?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef84c89b-2c2b-44d6-932d-08ddfa8ecd6e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:48:59.9777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tMPwIZouqX8Ynm5YLECjcjSL5htHSDL5YTRZ+dlPiUv/VynAAu/igj/3VDTjo9W7Rq8vRAYfCl4vJNmHpGFXJ3s4F62Su8dZYJb7lyhufi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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


On 9/22/2025 3:44 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:30AM +0530, Ankit Nautiyal wrote:
>> The helper intel_vrr_real_vblank_delay() was added to account for the
>> SCL lines for TGL where we do not have the TRANS_SET_CONTEXT_LATENCY.
>>
>> Now, since we already are tracking the SCL with new member
>> `set_context_latency` use it directly instead of the helper.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> I think right after this patch you could also do a patch to
> change the guardband calculation to something like:
>
> guardband = vmin - crtc_vdisplay -
> 	intel_vrr_extra_vblank_delay() -
> 	crtc_state->set_context_latency;
>
> That better reflects how the hardware opearates.


Sure will make a separate patch for this.


Regards,

Ankit

>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 16 +++++-----------
>>   1 file changed, 5 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 9e007aab1452..698b33b5b326 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -79,12 +79,6 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>>   	}
>>   }
>>   
>> -static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
>> -{
>> -	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
>> -		crtc_state->hw.adjusted_mode.crtc_vdisplay;
>> -}
>> -
>>   static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>>   {
>>   	/*
>> @@ -102,7 +96,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   
>> -	return intel_vrr_real_vblank_delay(crtc_state) +
>> +	return crtc_state->set_context_latency +
>>   		intel_vrr_extra_vblank_delay(display);
>>   }
>>   
>> @@ -263,7 +257,7 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>>   	if (DISPLAY_VER(display) >= 13)
>>   		return value;
>>   	else
>> -		return value - intel_vrr_real_vblank_delay(crtc_state);
>> +		return value - crtc_state->set_context_latency;
>>   }
>>   
>>   /*
>> @@ -761,9 +755,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   
>>   		if (DISPLAY_VER(display) < 13) {
>>   			/* undo what intel_vrr_hw_value() does when writing the values */
>> -			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
>> -			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
>> -			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
>> +			crtc_state->vrr.flipline += crtc_state->set_context_latency;
>> +			crtc_state->vrr.vmax += crtc_state->set_context_latency;
>> +			crtc_state->vrr.vmin += crtc_state->set_context_latency;
>>   
>>   			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
>>   		}
>> -- 
>> 2.45.2
