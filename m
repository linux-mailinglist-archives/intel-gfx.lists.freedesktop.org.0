Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE/qBv4mFWpcTAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 06:52:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6475D0B60
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 06:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C286110E466;
	Tue, 26 May 2026 04:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vgv++MVW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDA610E203;
 Tue, 26 May 2026 04:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779771131; x=1811307131;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fpCo2Qp+l0mheIQ+SEvEp7UH3Nbg5efyBNfvRR81MaQ=;
 b=Vgv++MVW33hBMqVZuvqKXV+8NYr+9Jg7vmtFJSzy06fs+okwV9BBntj/
 fh4XcDxS7NftqacCSvIr5RMycYiQsIlVSIY+UAfhlp6ctVHaOjHPP3ZpA
 hdChtIYPINKk8d3fTAEZigGae+DiixMT2t46K7ZmuGpKGarTIlMuJMmOU
 9pHwUNoIX0BtKq5Nda/EWaeAk8Pug3KGD9B0GQBZfaMYsH1C4O0s2arcj
 ee/VlaPMfea3FQojwSs85qR+ZNc216ICDBNe4VqwoMKaiMKkzBXuOSCk2
 2mghNMl6c7NkuiRXHR7F5L9iP8O0ADP8aJGhpllT0EMlkXYi6pLU0TUCw w==;
X-CSE-ConnectionGUID: keldeYS9QBewlK5OK1Jmvw==
X-CSE-MsgGUID: 08YHcEYdSTSu7bfYR0tVyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80634211"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="80634211"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 21:52:11 -0700
X-CSE-ConnectionGUID: 5rIql6pxTJ6ezxfLe5qnwA==
X-CSE-MsgGUID: dPHDXI1FQqGMRQfeRdxdKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="246759245"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 21:52:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 21:52:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 21:52:09 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.49)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 21:52:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DSxRqbWP5k/Xk4VKQgaoAjwawBteM2jghrEn2P8f5V62zboxKmdMjZ4wCmTQpT2N3YBapb/HVXaG9TX8jhm1mxjLRXNHi7hGzmJi7klIuzePWva2PFKapMlp2FB6KehaOzH8/AIKaNb8Oxy9jUKE+o7V4ZBm8cyWqEw1jlbI0/DN8kNMgRlpKWskG7hEgqVF4wmRyPVJUHaGzVkCno8gbBjC7W2cn9Sy6PdJFCyWTvncyIH8pDuRpe5P/w1MgWZw7QVMIdljeKXthqIAE/eI4Ub8uFJ3tXtbFlfsRAlQGF1neFG9QBAHly8qIqphpyZDw+NRk+Crz0zpfWX1Px15vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQvTWA91SdDPKkkzc1LKhe3tx6LHVXYGXvRqn127RZc=;
 b=agv29DziGa9E3IoYwjFnAeKqAiPQUbLaF6hgH8/d1HmYc6oAeIF/b+gCbOIvzZrC/GOmHEHJWldw9ZbT/GvtXd3VANklhbGKFFnM67K3PXp6mHctxF2iHUy65P7w5uLSEcF/W7qW4d+eZPCwKLLNtFObUS14Lm6nhEdwBv7nS6AREmC7C9A7+V4reUEAEBacbzDHdzhurz388qc20IJEzCg3p+LRQBIjmAGV9JExaUCM6QBIy/gJc1MQOzBy5rfnqGQANiEaZ4getq2A6qOkSHKXIMCFb3Jgl3nN/HtJUDH+n8w80gWUR7Q++iPtgmww7ay0L2nU7A6t8tTly2zDxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY5PR11MB6512.namprd11.prod.outlook.com (2603:10b6:930:40::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 04:52:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0048.016; Tue, 26 May 2026
 04:52:07 +0000
Message-ID: <373eb66a-c075-47e1-92b7-ca7104a720cd@intel.com>
Date: Tue, 26 May 2026 10:21:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/print: describe 6th & 9th bit of drm.debug
Content-Language: en-GB
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
 <20260522135520.1862848-2-michal.grzelak@intel.com>
 <26630a3e-7757-4fa4-1415-7ede60d98305@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <26630a3e-7757-4fa4-1415-7ede60d98305@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0122.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::16) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY5PR11MB6512:EE_
X-MS-Office365-Filtering-Correlation-Id: f48a703f-47bd-4d8f-345e-08debae289b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003|3023799007|4143699003|11063799006|10086099003;
X-Microsoft-Antispam-Message-Info: URwDRIfUNEkVNOE+yW5bO1m9ZxMDOmlzPmfIjdLeBdyBEASWeCrV++M9+Z/Hx5Ow9UL0Muj+urs7k7P28QaT9yP6KMvWjzrAxd7yP0kPq2bGGXCjdE1KhMAAAAGrnE8SyEc9uBV56obfo3YokcCH7L5TRbz1qg8HhtiXTpqb/OXlKbR4cF1Ph8inLcMhzb/2OacH4SSrqHATyBFnBccuQxRv2soOtnJvFcZ0NeGKpmp2vQytw0fXq58hpYQthMAf7odNUo1iEMQ/683J7fW/PqPLFeKrK1KtX/fP50Wh0jy8P2AUeHJ6MXnLh88Vm3geHM0ljP3l7/ejgHEFI/2OBM8+6xf7uOHOOOfs1OrAWHcdRlMIfjTpNakP4Oga3f8xfki5PlbpLmlZevJfkjjA5Mbim8JaAKcfoR7k4VcJL7h4uw7NxXaoujHC8/NeKWxmX+S7/wdrjpCd5brGumHYpN69UISaFDl4mIsATTATWfPe9kU6zjGtTzNBdt+1d7Kv/KmXCEtQsmeCyC0SBu+NUywduh60VTwOwyErkENdEegwgl2dRw+AptAnFQZzKL9Pf7KzWueLNnx0ozNeo4/eUHWViwV4NPToVr1Ycn0EQgqNbt9w86QxIT7hwvZ8ZdXcig4085NaHZ6GpmMH3y3jM7HchS6LMTLAQylOZM9EZKUBuwKJg9PPkvGxNYJFCqlJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003)(3023799007)(4143699003)(11063799006)(10086099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2IwN25mWjdMQWRET09sVGEvSWdMZFg5RnA2d0Q0OSsrSU9DTCtPaHNPUGtO?=
 =?utf-8?B?RkZkTVZrRiszZUJmMDdQQkFGVUJnM3pMeHE3YURIRlduMnlkQmJkR2xMMThR?=
 =?utf-8?B?U0NMRnFCS1hyOCttRVBVQnlpcDN1SFlDYVBrMWRqNWVBTjJIY2Fsd3liMUNk?=
 =?utf-8?B?YWp3MUFScmxPVTVZeFhuQ0RoSm5aTG95azM0a0p4MlhiY29ZTnMzMFR4RjFo?=
 =?utf-8?B?V09WU3AyUUtnd1c0MGwwZFBBSld6bjREKzBIRTdsVStwaUYzZE1TTjJ1VnZq?=
 =?utf-8?B?V0J6b1k5azUyamtQaHpaTGNoREVkYlBpWitPYnVKcmRtMWxuUVErVnAwVG4r?=
 =?utf-8?B?SndqZkc4M3d5alVJV20zbDczQlZ4dTVwdDJaVC9mNWJBTzlyRGlXSi96Qzk5?=
 =?utf-8?B?MGVtUytNREZrSWorQWtoeXkwSDhzYWRLWi9kTkoxNkdMb2VSck56MXdQUGxX?=
 =?utf-8?B?cDhGUVdJcEQ1OW8xWTlCbzVwQ3ZKa1BVRWNRRzg1NmgzdE15VmVlazYwd0NB?=
 =?utf-8?B?eWt5alc0TEZCUlEydlRxUytZSktscnA3Y3E2TzBSTkIxQWYrWkJ3WDNYN2x1?=
 =?utf-8?B?b2hFcmw3LzFUWmNlZk5KUnJGeWRiQ0lJc0x6ZnlKdmY4NStTSVM2U1ora2dN?=
 =?utf-8?B?R1hSbkZyV0RFbWQ0RkJpeExYUkpJMC9nWG00a0lCdURlUmJuTnkrUklORlVC?=
 =?utf-8?B?TFpvY1lKd3k5dnNSUHY5d0YwdUkyS0MxaUFQYjRRYlRqaVlMSUJINWx3U1hk?=
 =?utf-8?B?bHRjdmtPM0RRSGdFTzlGaVgydTZYT0lCeG11ZlFmM2NFSjhLa0swKzZaTEha?=
 =?utf-8?B?VDJuUklsaDNQcWg5RWdxdGx5QjFXV3RLM0psaVdjVVhGSDBIZFRETEFEN252?=
 =?utf-8?B?M0s5SCtkL0x2UjcwV3lNWVFKYVd5eGh3cE1PVHhwMHNhbnBwRDh6RXFRQzdo?=
 =?utf-8?B?NE9MMXZqajU5Q3B1MGN4MmZYTmdhczk0YVovbkF0YStBYXlYb2pET1VJbk93?=
 =?utf-8?B?d29OMGdyam1WUWhKeVpFNTBFU1BZTVoyNkRaNU01VVdBWnNUMklkQVZpZ0VG?=
 =?utf-8?B?VlQ5NEh5L0ltd0RPSm5pd2R3Q1lDdEdIVC96SzZwazBZaHVBWHc4TjV6UW5K?=
 =?utf-8?B?STlvTWJpdDBLMUVhb1ByN3BnZWZ2TmZyUFgzZUNnZ2tLUzJSamlrb2Ezd1Yy?=
 =?utf-8?B?dVRHamJCL0RTMlBkYjk4QVhrRlIvOGk3SXlkejVENjhJYTlkMzVGT3JTdk1O?=
 =?utf-8?B?b0R2V3NhMUhhQW1lbmZHM3MrMkJsbUlRUXpjaVlOUEhHRHdkbkhDakx1anIx?=
 =?utf-8?B?YkdlSHhyS0Y4dkdOUG14eDYybVVBK1hmTmdwZXRtQU9acUFjQ2lVVGxzN2Rv?=
 =?utf-8?B?dkx0NXQzVHRwOEhYTnpnTGo4aUpvRGNJWUpwYkkrM2pIYW1aVGxmWjkrdm40?=
 =?utf-8?B?WGJQWXNjeVhtK3lNZURoSVlUNE55ZEpwT0RPcWlTR2l0KzdFNEtXQklLbzM1?=
 =?utf-8?B?UFdmcU44VUl6VjFhcmJzL1EvNzM2UDJSZVVQeGlMTjhNSFU1UkdCb1VyaHNX?=
 =?utf-8?B?TEtSaDFmUlpQRHNDZ240dFRiY29YaHhWQzN3dHFFNGdaK1pBQlVNZDEyNlcw?=
 =?utf-8?B?V3ZDcFFpemtFbVhVRVdscHo0RXExTDRsMWFsdVNFcUZUbm5OY24xMnVjd2lr?=
 =?utf-8?B?RWJJNjVHcWFCQVpNRm1nT0JlcTZDVlFweEVkM2FRa1EwclQvQXNpUkJNU3FU?=
 =?utf-8?B?Zk1HNFdIYlRsRVFZRFJkZmRZNEkrYUNvZnBjTEphdEZxakYvTFhaWlZPd2Vt?=
 =?utf-8?B?UVBrY0xKczFQTXc2cnp3M1FtTFhUTllTQ3gxcldBUVpHSEhoajZxRmI0VzZv?=
 =?utf-8?B?TitOYVpKZVhhOU1FdS9xb3g1OEw5NktIT0lmU2lIUlZ2ekZUZW15SXpzNHpL?=
 =?utf-8?B?R3M0MmNjaUZGQUp1MWllZDhtaGw5SmFZVjc4a0RBYm1vcVpUeEdXUkUvZWRZ?=
 =?utf-8?B?STVaT0dFZW0rU0FXMjJieVJOQ2RKbVJKcEhCSkhoT2xBeklYVDQ1R0RVQWNk?=
 =?utf-8?B?dG9CRFI0TGttaDJZYXBLaEl5eG1vVW4xRnlSTTU3RDdZRTFxd2syRzRkY3ZM?=
 =?utf-8?B?UG81TWQ4QnlrVVloOUN4VWhKcXdUUHRzN2VhaHcvcWhydVdLWnAvQ3VYdlpO?=
 =?utf-8?B?WUM5a2tpc3ExdEpSK3hERXdSaGVMbXZ2VVZXZWRwZDZXMGtvRjIzOTVuUTl4?=
 =?utf-8?B?bEFUSmZKL2oxZWIxejVGMlJvUFU1VjFUd21YVlRJRkdrRjhmYlpzK1E4Z2Qw?=
 =?utf-8?B?UmlhWHJZVm5oS2VJK1VqNXVpL3N5T214cWdMSGZQa3d0TWZ2SXhnbXZHcjhO?=
 =?utf-8?Q?XQ1BNYYKyKE50bpk=3D?=
X-Exchange-RoutingPolicyChecked: KMSgHNhwe3WhaSCF0F6RO6VH7eTe+lfbfsmjtAR5ep6EXwEVlAGeTRwyXdHb8G8DCVHHwORqnRyBZu8/lIaFiTs/im67p87ER22Na126DU2WxDl26ExRZF01TbOYdE4/HNXHo3LLjB3ews2RaHhby7kwgIzGMSSVlEnLq2ZIjYDX2NBzsOkhCWm4a6hjiHXQuwKwIJcqZQ9NXNs5AYaq2VCK3rsg4Mwi7KDLTeGUnb8jmjMi1gF8ZbqBUlkLc9RXfpAhnGukVSEWqgc4LR2bW4SnJUVMwwJVQ53DdudDmd3Ic7IWfJt5HQ60Y9ZRIWQP1kj4Pz5XS+wOuhbqOfoROw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f48a703f-47bd-4d8f-345e-08debae289b2
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2026 04:52:07.1622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4vPzU26DW/5ZzRg4VKNjrQCdEfTAC3W/6qkrvhcgAu2NGDaaX2w0MsIQcvuuUmPirwz+LspaoT2UjwGkWQhelZkGoZKivnuJWsnFbNDDzzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6512
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6F6475D0B60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/23/2026 1:25 AM, Michał Grzelak wrote:
> On Fri, 22 May 2026, Michał Grzelak wrote:
>> Setting 6th or 9th bit of drm.debug change debug logging. Meanwhile
>> `modinfo drm` does not inform about it at all.
>>
>> Add info to MODULE_PARAM_DESC(debug, ...) about setting 6th and 9th bit
>> basing on DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, ...). Match
>> description of corresponding bits with enum drm_debug_category. Include
>> 9th bit in the example with enabling all possible logging provided at
>> comment at include/drm/drm_print.h.
>>
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> What should have been added here is R-B: tag provided by Chaitanya,
> which currently is very much absent. The omission was not intentional.
> 

No worries :) still LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> BR,
> Michał
> 
>> ---
>> drivers/gpu/drm/drm_print.c | 4 +++-
>> include/drm/drm_print.h     | 2 +-
>> 2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
>> index ded9461df5f2..86cef1a37678 100644
>> --- a/drivers/gpu/drm/drm_print.c
>> +++ b/drivers/gpu/drm/drm_print.c
>> @@ -50,8 +50,10 @@ MODULE_PARM_DESC(debug, "Enable debug output, where 
>> each bit enables a debug cat
>> "\t\tBit 3 (0x08)  will enable PRIME messages (prime code)\n"
>> "\t\tBit 4 (0x10)  will enable ATOMIC messages (atomic code)\n"
>> "\t\tBit 5 (0x20)  will enable VBL messages (vblank code)\n"
>> +"\t\tBit 6 (0x40)  will enable STATE messages (atomic state code)\n"
>> "\t\tBit 7 (0x80)  will enable LEASE messages (leasing code)\n"
>> -"\t\tBit 8 (0x100) will enable DP messages (displayport code)");
>> +"\t\tBit 8 (0x100) will enable DP messages (displayport code)\n"
>> +"\t\tBit 9 (0x200) will enable DRMRES messages (managed resources 
>> code)");
>>
>> #if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
>> module_param_named(debug, __drm_debug, ulong, 0600);
>> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
>> index ab017b05e175..2adc5ac688e1 100644
>> --- a/include/drm/drm_print.h
>> +++ b/include/drm/drm_print.h
>> @@ -87,7 +87,7 @@ extern unsigned long __drm_debug;
>>  *  - drm.debug=0x2 will enable DRIVER messages
>>  *  - drm.debug=0x3 will enable CORE and DRIVER messages
>>  *  - ...
>> - *  - drm.debug=0x1ff will enable all messages
>> + *  - drm.debug=0x3ff will enable all messages
>>  *
>>  * An interesting feature is that it's possible to enable verbose 
>> logging at
>>  * run-time by echoing the debug value in its sysfs node::
>> -- 
>> 2.45.2
>>
>>

