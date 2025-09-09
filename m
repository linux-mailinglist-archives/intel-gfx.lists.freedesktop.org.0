Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAFEB508BE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 00:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D45310E26C;
	Tue,  9 Sep 2025 22:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQ3AGUCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BA810E26C;
 Tue,  9 Sep 2025 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757455926; x=1788991926;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=HP39t/1lUJeKcjsuK7g4sKZGEDhYhaZhtl5ea0Q5JH0=;
 b=kQ3AGUCD+7Fh7XiEeELSuxSEJ4oWhnzvNGKoeNRQh7eChdusulpPlSGM
 6TeurLZDApByqE1rPPgAoAFu/tch5bWPX3vyYlfwWKd6db77CRSyWl5vz
 9sl1VFGkAgxJOguh+ceDUQgLSI3W1Rq4WHXtbJlCzvYM/tZntd8ItrqxI
 jUZLEIWTzbSZZRKw5/e5SljL+mwDgQJfhEHwW4ZgrQuCHYX9oA65XFRl9
 GkiFjVtV8T1ekQelHarxPtIyGRU8CuQEXlJgQtrfrWXu5IgUlfZ7Ba+5k
 pNHqCRp4erdel9vEkoo4LjFPtekl2WzLPtBH2ogp98qU7M/piske4dLlu g==;
X-CSE-ConnectionGUID: wWSEe3q2RpOhi7BOhUCnwg==
X-CSE-MsgGUID: l+j2dv5GT523+d36pVQgVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="63388535"
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="63388535"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:12:06 -0700
X-CSE-ConnectionGUID: at9x6rnlTpO0icsg5eNTSg==
X-CSE-MsgGUID: 9vggRs0tQECaNXm2YutzNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="177548845"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:12:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 15:12:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 15:12:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.67)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 15:12:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vtABs+MYqmPAxVkh5GFrJnJGpuA5CvgloF57txbci471KEvRjxq7/jZrmQJTjqXgnReiyPacZ5ZtOuQIj4l3ORD7PKkeqrMsH/BXL2bRWX/tobi/8+uNzrp+CBo9AFGwnymnVV3O4RTRHS0CykDR5Y+cC1e9WVpgTkH3UusntAgVPsLx/dS/G5flCMI/yTyOosj7e3hJNGJdmRJJZMF3SHd+NcPX0eZdvwxHJkXry7pDMbA7v+aOwjutqYWLutFPCv6lsUoD4aBMeBXCyl08i2XzqSSCBGxR0Y17+7GeckB3uBQDeSoMTY9ITHpbM9DeeJca8BdlwvWnoZrVYrKsGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DjojY4xBPPRwMQYAn7956/fTbS4STEaCS5iww4RtEfE=;
 b=KIpCmg92GMMbE7cVr2sGf59nNOG2r3+skN0/MrWmxDDF8qo0v/oBrGQOllZSbuywUZ0HeZmbAH/mr2JQGZW7H8j9Fipqr8rMbY2OEghGUeX4m2VvXs53SX5q02DiQTVHxTlLm/Fb26sZNjWifJbcpwefggZ7Irw35f3ANBa3qmipM44gMuG9cN6OBkHtQWYPY39/jxZTIYwDJFtZSArhdDZLd6GTW9c0V8Zbx4uzU9Xy9wYIReSJOpA+/mWMwmmXMzOnDmtrqnYqvXSEniAAKLPrPKoLCRotCBPotOGr2QDznxhi5dXq2fD/Vq1lS7WVIANy//2KPsKlQDANN5ebeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by LV1PR11MB8850.namprd11.prod.outlook.com
 (2603:10b6:408:2b4::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 22:11:51 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 22:11:51 +0000
Date: Tue, 9 Sep 2025 15:11:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <i915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
Message-ID: <aMCmJNNybYyhL6KP@msatwood-mobl>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175692345046.300424.4285318483529299552@1538d3639d33>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175692345046.300424.4285318483529299552@1538d3639d33>
X-ClientProxiedBy: MW4PR04CA0126.namprd04.prod.outlook.com
 (2603:10b6:303:84::11) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|LV1PR11MB8850:EE_
X-MS-Office365-Filtering-Correlation-Id: 3422c66c-c4ef-4cca-3049-08ddefede06c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NjlIYzFwdDN5TWZBSDl4bGdNQTl3blNUdk9kelZnZmtVeUp4NWJMK1pIL2J4?=
 =?utf-8?B?c1FpNklSQms3QzFMYjFXYUtvNVZxSmkyVjVYWDhwUVg5NFhVMXVJRHd0Tkw4?=
 =?utf-8?B?Q3JJR0xqeHM3b1grVFlVcjRxdVZTUHNtQUR5YjlaT0lTY3RYcHBzekpIcU5V?=
 =?utf-8?B?QVY2YktqRGFnYkxlZWEvdFpCZk5iK3hOc0hXZ08rQ0QvZzVuQ25JVWFteVVM?=
 =?utf-8?B?bXpZa3o5V0Y3d2RHOGxHcUJzeFFWNDRiWmtXb01HVUJMTW5FV1BudStUMU5p?=
 =?utf-8?B?ZDdpcmFTRUU2Kzc1MmRQeWtyT3dHQm1LTXlqejIyaDFMN090WW8wSkZuMlY0?=
 =?utf-8?B?WDBVbThMYnpQM2pqQUNyWk5yK0hVOERBeDNDeUN4NGhkTVRsbTNtRFRnLzVi?=
 =?utf-8?B?WFRxYUxrNDVvOWFVQmNZRmdRRmRLR0RPOFpZRFhBR2lWZzlYWWZObkR3MzRN?=
 =?utf-8?B?b3NRVktXU2tZZFZiY0VNcGprdVdpZXF5andTaGhwK3ZURlVFcWJHWW5ZT0ZJ?=
 =?utf-8?B?RitaRHJkdThXNkRDU3pUUkh0MngvWmN2MGw5ZkVrbXhlUG5uaHBuRTl2SXdY?=
 =?utf-8?B?anFJTGJpQkhZK25rSm9FbU1jMUl3bElRRExrakx6dzM3L2srTFlZTEJReFBV?=
 =?utf-8?B?SkljRkZ0UU9JQ3dibGJ4SU0rRW83YWd2NWthTFd0bTFnZWh5V0hOOWtMODRZ?=
 =?utf-8?B?WXd5cVBaU1NpN0szRXYvUXBJQ1RUcHNJOUlmZUZGSkVQQmd1ZkNhbHN6bEpU?=
 =?utf-8?B?TGh1bGVaZVBHRVZEYUNidzYzcmNNWXhKY2p5czY1ZzhzM1BDbzl2M1JPZG02?=
 =?utf-8?B?Nlc3QlRCcUVRaGRhN3FCZnFWRjF4T25mbjV3N2ZWSEhYTjZUZXYwUTEzY1g4?=
 =?utf-8?B?VGhhVTI1TmVnZ280RGlHZzhVdjFlR2xNdE5aQ0Y1VzRXRk5GbHRKbHlqZGpN?=
 =?utf-8?B?Q29Xc0YvVE5qYU1tM3Q5dmYyb2FqajU1UUV2bkVjMlJaTzJIcWtub2lkNGRZ?=
 =?utf-8?B?NlVqQ1NNNkhWWU5zNytuOThJSlJSdktBN0xib3NQNGNpVUFTczhoVEtseE1E?=
 =?utf-8?B?QjFzTG94ZEV0eDA0RGxBemxXL0locFVHZ0xNRE1QT2ZoRHhJVXdWWnR3WlBQ?=
 =?utf-8?B?K0FVY0NKK0crUnZGTEZ1QlhUc1kvVks4WU4rOWhTWE1sM2V5d0RncU45WG5D?=
 =?utf-8?B?UTZiOU5Fd2J2aHg5UnloZTRPQjlERzVqdnVFclBGTGJibXc0QzBJTG9JODVG?=
 =?utf-8?B?dzMxY09STzJhVUxQZlR1SlJ2aU5RSzhUcW5zV21TQ01RRWJEY2NzYXJndzZU?=
 =?utf-8?B?L2ozdXZ0MnhqV0FYZWFVU1dBUytGTnNkamJZZUI4VlVab3F2eVBGSmczYk8x?=
 =?utf-8?B?dk9qZ0pLVWFXK0lPUXBKblN1S1BnTWNJaTR1UTRudytzQUpxL2xHUHlPb1Jy?=
 =?utf-8?B?RlJscGxPTS9uUmw5NGovUFV4aUlUVUJ5ZUVCdUs5NkFBTzU2dzl6WlpMcFBs?=
 =?utf-8?B?Kzc1ZnpMY2gyUzlvREdTV3FNbnFwUnVRVWUxUCtmSXZ6dXp5UmoxVHBQdGg4?=
 =?utf-8?B?WkZJRVcrcFBsQlhiek45UkdBNCs2a3BmZXhOSW56VnUyenZQK1RBVnk1SWRE?=
 =?utf-8?B?S0RNd3k0eTBzMllsdlVLQWZkTGZacXRvVlZkdVc1bXRtb2RRZmszMFArdjd6?=
 =?utf-8?B?VUlRWUh4WmNJTlI2MnNJVG9tS2VIQ250Zlh6cGtnUFkwL00xMXowVUhPYUVC?=
 =?utf-8?B?RlZOMm83aURQenhWK0Vsclk1a25LbWloWXhCSW9YVThmVVVKL2lJWGg5QmE5?=
 =?utf-8?B?NHljT3JqSWVmNTFCcE4yQXpiWnhIWWV2clo4ckg5OHJrWndnaU5GN1dzZk40?=
 =?utf-8?Q?jAldq4RqD6Iz3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2kybjY2eXlETnhKMDRPb3hia0lPQkQyd0l6ZUcrNEhEbDg3bWxMNWg4UktC?=
 =?utf-8?B?alRjL3NpbjNYTXpPckRCOThkRDZWajVDSjlzeWdTNkVnQ0I5ZVBoa1JnbE1o?=
 =?utf-8?B?TmJ2TXluMkROUWlHYTB0R3FOMGk5bURteHkwRkx1bXVPL05sM3NOWE8zMFBR?=
 =?utf-8?B?amIrUjZ3aU0rUkNReFdhdEltcUtIRWdJQkRKVmJTVENoMkIraTFNemVnalYw?=
 =?utf-8?B?NHFFVDlLdmk1alVreE9VWjZSTyt0UEZTQlVydkY0ODI2cWQwcmpPTWRFK0pX?=
 =?utf-8?B?ZjZwUVFTeWk1QWtHYXFOaWtqcUJOb0s4Z1Z2YVhvNFVGY3NMa3hra0liYXlS?=
 =?utf-8?B?R0U4b0M1TWhUNXFZK3k5MFVLY1N2aEY4ZFJCTmovUXYyYmd2RHlWWGdvTkVQ?=
 =?utf-8?B?Sng1Ly9aeTRlazRlQTl3VXNSYkt2ZFRKWFVTdEF0YU5wRHdPdU9yTjd1VnM5?=
 =?utf-8?B?QmE4ZmZyRk1qS1lLeFlqWmVhSzN0d3RFNHpEYWt0bFM1ZGpjb2JOUEh1UzhH?=
 =?utf-8?B?UEFoc05XNGUzejYxNXdlUzlVOE1PMXZMdFhlY0pOOTRpcnl5ank4T2tvVW5p?=
 =?utf-8?B?SkUydmpkTkNEZ1NTdXJxYUIzNEZLd0FTcGJFcW9adHg4cTVnUFc0Q1FIQU1P?=
 =?utf-8?B?TDFRQjlodk1jY3JreWdWcDBoQWlFSDNEcEFkelJ2ci9BZHphZzhJMTcrU3g3?=
 =?utf-8?B?RmZjRlQxd1FWMUZMYkJPdmwwYjRJTm4vaUFGdTJPaFhpRnRROFU3dW9FUWN2?=
 =?utf-8?B?a0RlcjBjbVdlaHptSXI1WmVsdzY3aEJLd1JnVnllSnFUa1o5MURENSs0TE5y?=
 =?utf-8?B?SlRwMWVPcGE5OFNlWUM2Ni9sU2tRYmpyTnFFRC92YzQrckszM3dPNld4d1Ux?=
 =?utf-8?B?M1d5OGRwbDlUYkJUZ2puVUNoVDkyUEE3SkF1NndkMS9Dc1BpdjZtQkYwLzRX?=
 =?utf-8?B?SHdIUWp6amI1M0YyZ1pOU3EyTVJXVmF1dy9ERjV6RFI4YXcrUWtMYzRUQm9t?=
 =?utf-8?B?b284UEovQlhpRmRoc2VDSnFJNmtPaExCcEFFREE0VFdWWVhIb2FJM0V5eXlh?=
 =?utf-8?B?WjArYVdCTGxBczNET0RpS1V2cWl5dzcrcWQ2c2RCVlRTNXhUNHF0TER3dUlL?=
 =?utf-8?B?S1RRNVRiNmlJMXJscGxrQ3ovaU84OHd6ZGxIK2ZySnBZdGNoYTF1QWo4WXBH?=
 =?utf-8?B?dkF0MFhqYTF1MUJJdUdaY3oycHdqNExDbDdSbEhSaG1ZVjMwQzEzVXlqNHM2?=
 =?utf-8?B?VTlUQjh1SkJRVXQ1WDdLUEo1ZzZzeFRxaEpKMEdmczNBaUxOdk1BUGFkenU1?=
 =?utf-8?B?cDh3amI5NHFpREJwLzBmTU9sUXNodmtOZkgyMGtvTlFGaXlmNkNqVm9EVlBl?=
 =?utf-8?B?K0k5bU9xejM5VG01cW00Q3RkNEk0dzNVSXhPRVRyZUVONGEweWtJRW9ZQ2dO?=
 =?utf-8?B?SmxzTDNrNmlaZEIvQTVLdnBWK0ZyOUVYdDRFa2lSR2ZQczFFRmZGSEZCTXhL?=
 =?utf-8?B?SzhxQmVPUHkxRkRQeVQwNUlFem4wcGd6WExBV1FJODRHRkFRVVE0bTdYbWI4?=
 =?utf-8?B?Q2xGNnNMcE93d2ZhbGh5cFJVaUxmY3hPTE05MWJMSEFwQnY1WnRCZUZSeURi?=
 =?utf-8?B?MzFGQk1DM0tiRnY4ZDFxUitKdmJualgwcTF3SVYwNExMYjYyZHgrNVFjZU8y?=
 =?utf-8?B?Ky9PdkYwWWlVM1VubmFXSS9reDVRaU9YNGIzNEdSTmdqUWlTbS9EQ1BXZVp5?=
 =?utf-8?B?a2ZvQnozUjNVVlZJekJEOWM3RnRWS2IwV20wZVVnemJKK2FQNzRzZlplalNE?=
 =?utf-8?B?bU4ycDRxMGh4LzZwMVRySGxMZnU3U0tkS3NoMUlpamo1bjFzSU93Z1pEdlgz?=
 =?utf-8?B?ZlZuUStySGpLS2FqaWlDNlA5dUJVUk1USFJDQ2lqUUovZjg3UEhiU01KOXkw?=
 =?utf-8?B?SFF2VUlVZVllaVBaTGRhbnZIbVJXZTNTQU9ZeHNoeVVZaVhZWjNCZ1pYTnZj?=
 =?utf-8?B?NWw0a1RMcmhqN3d2aFE3anRYeE8wYVFheWVFR2FKVFZOMUZHek1IYVExR2Fh?=
 =?utf-8?B?VEIwYXQ5NUxLYzZVVHdCWmVma2tPb1IwbVB1eW5paS95ZFJhblBVUXVUcFo5?=
 =?utf-8?B?bE1XcWZETThuM1UvTlBUMVhDWll0N3JkUE13Z2hxUk1VVW50cFIya0NtR2V5?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3422c66c-c4ef-4cca-3049-08ddefede06c
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 22:11:51.0470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TEW6a7TnLtxPLlHaqZI2vhJbpmbVnAct9cPgD6rAYc+/xY1NsftIBMstZeHJF6sXemPkQhn2NygzAnB6tZbO4Xi/0jYG6YSRdKHUl8Nr6fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8850
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

On Wed, Sep 03, 2025 at 06:17:30PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
> URL   : https://patchwork.freedesktop.org/series/153973/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17123 -> Patchwork_153973v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_153973v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_153973v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_153973v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-8/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-mtlp-8/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@memory_region:
>     - bat-arlh-3:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-3/igt@i915_selftest@live@memory_region.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-3/igt@i915_selftest@live@memory_region.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-arlh-2:         [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-2/igt@i915_selftest@live@mman.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-2/igt@i915_selftest@live@mman.html

These changes appear to be unrelated, can we get a re-run and a full CI
run please.

MattA

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_153973v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][7] -> [INCOMPLETE][8] ([i915#14764] / [i915#14837])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-3/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-3/igt@i915_selftest@live.html
>     - bat-arlh-2:         [PASS][9] -> [INCOMPLETE][10] ([i915#14803] / [i915#14838])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arlh-2/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arlh-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@client:
>     - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735]) +13 other tests dmesg-warn
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/fi-kbl-7567u/igt@i915_selftest@live@client.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/fi-kbl-7567u/igt@i915_selftest@live@client.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [ABORT][15] ([i915#12904]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-apl-1/igt@dmabuf@all-tests.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-9:          [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
>   [i915#14764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764
>   [i915#14803]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14803
>   [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
>   [i915#14838]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14838
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17123 -> Patchwork_153973v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8520: 8520
>   Patchwork_153973v1: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v1/index.html
