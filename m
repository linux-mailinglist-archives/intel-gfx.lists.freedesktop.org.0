Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C43EA219AD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 10:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E022C10E2B9;
	Wed, 29 Jan 2025 09:07:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JPCc7Pn5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8841410E2B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 09:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738141671; x=1769677671;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=168n7SnFLqdXrFbbFDJ7oEuVkIIMemugf9OwWZvYJuA=;
 b=JPCc7Pn5et08DUa+PHAJwMddBXK9ebRwWKl8Bxv5Hk6YozsJ/z/OQhNM
 H2w41gj3olYNRtTsHiFWxMJ+N3K48+QaEnP8QCKXXxwQIkzaCAKkhVf6o
 jqtt6L2VY9aEy/t0yJY4/j9S3ZyPHgxhQ48zEBp0fuVFNVQ0LGUT5/jrb
 OBEJtQgl76cQTu2k56NGsXVyEsCRk+qW7vDfH4ZqRv3bkY3LBcjNz9iDA
 Qcnd7A+90sCP92bwjugCSZRnhOP39Ff8zLmayLEmnYykOoyAFZFpHr8Q1
 ZScTi0IXbyCOpS6qqk2aWVNhvDT4wGC2FnjclRG38hxI+p4xMAiMTT0EZ Q==;
X-CSE-ConnectionGUID: apRyHLm6RXGW/pRmFGd26w==
X-CSE-MsgGUID: Fo64uhs7TtGg8CSdbquQBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="38675668"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="38675668"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 01:07:14 -0800
X-CSE-ConnectionGUID: XGnfhUcgRqOkGXFoOnUDYg==
X-CSE-MsgGUID: BMVDRE+BSKOyzUOhu+p3+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="108781717"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 01:07:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 01:07:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 01:07:12 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 01:07:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vY/Ru+6h1ImKWyq8l84lhq87vyyaL2alYSyQ6PZ5Kg4qf88G8NqkUD0WSSH3kWZUfYFZRtsIGd4IPZUwUaL8PRtf9at43F0W/G2BOZwajPCOQXPAW9kH7YFlYqURjW9XDoVdV46wyqhaJMYFKTFX5SsW7BEl2w/tYfLwBI5b+XLsllPsye8r1RBImx8MS+Yef3ZvlHk7k3FaYYFcCoV0+dCyDwdeGW0z9+OBm4rBq/oUGYwMYylCIlEhFISAERdgvz3Uc4gWl4IaUFv+AtxYTpcEizhLMV/h+XMhmxUcIPXDrSImpepwyJO9WVd+sLFPvY1BgC/LGxoCSPtX2qedWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8fP7BZyiOPYafghPRfQm4gQfPiytVGDlw/E36wARcA=;
 b=JITFtF6JgyO0OW3MwBtu66z9wP6NraGRG5vvi0x3p0jNaJvbf1qY9xcdcmIIA+IZ6N/k6476c0+eeeFFg/F7xjIcvMkldmZDCS2GdP+uKP5JnyztJ6ihv99Np+cSFSYdwQBSFv4SUccBYH2YCFXsJ6gBViJ/TJlzu0AOFoxwtoxMStpfABRtzHr4+2ngFVAShcHEiSCauAscZ6WipDi7cYTrDJauCJoIxkPEA6GWZmNIfJF9KEKmBFZqkBBOgAqlFu3lbJPe3zmWepzCAW+R1Bqz9zJweDm0tSFDaUazIQYRxerTokzpOnv1sdO3vzw4JaAJCX843QccMHI+IF0U1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Wed, 29 Jan
 2025 09:06:29 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%2]) with mapi id 15.20.8398.014; Wed, 29 Jan 2025
 09:06:28 +0000
Date: Wed, 29 Jan 2025 10:06:23 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/selftests: avoid using uninitialized context
Message-ID: <5c7jhypl3bk6gtg5ucr4b4nhqlev3zzn7jp2bwr4qqzy6jkbx7@ongldkbpqs2o>
References: <seffzgr3ptmwyrk4rmq4hn5lx5lljm6zoan4w752dovrai4ajg@slooah72lixx>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <seffzgr3ptmwyrk4rmq4hn5lx5lljm6zoan4w752dovrai4ajg@slooah72lixx>
X-ClientProxiedBy: VI1PR04CA0065.eurprd04.prod.outlook.com
 (2603:10a6:802:2::36) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|PH0PR11MB5782:EE_
X-MS-Office365-Filtering-Correlation-Id: 9052b448-aa80-4763-65e7-08dd4044374a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjNnZ0I4anNZSm9ielJPaFhkZlIwR2wzOUlteFN3TjhtOUVUd1N5S28xVm1O?=
 =?utf-8?B?UnFpRXJQQnQxVThOZ1A2U0Viem95aTJjSU5FVTlwRnA5YUFuVldSb2l6ZERu?=
 =?utf-8?B?a0txSW0zellRQ3g5VlFjdnBPQjFyVzhUYTBSSCtLd3BQTUEyV2wzOUZzdEZ4?=
 =?utf-8?B?WER1OERRaTZpZm1zYm5Remw2ZmpWQ1lPcWFDZElBcXNBNEtVZ0JNbGV2NXlF?=
 =?utf-8?B?MzIxeXd5Ulo0bXc5QUF1eHQ3cEo1ZWZPZklLNlNGS3pwMnpxTWNacjVaQUgx?=
 =?utf-8?B?MjFGZE1oR0pyQ3dUSHRtVEVnSUxpVmQ0N0tNcHgxeThFUHg1Mko5MWNWMmJn?=
 =?utf-8?B?aXB0Z3I3UmwrNEhNaEJnZkk2RERhc0tKRXZHbWw0VHdNQ293LzdMeUkyODBr?=
 =?utf-8?B?NEJtVmFlcTJyVWozRzN0L2FiemJnakVIT1AyVnp0SW50Q1BrcXJUK3VlZ25t?=
 =?utf-8?B?THpaM043QTR3TVdyRFFyM1NNK0pCWkdYbDFtWXpiQWxXV1Mwc2RFalRCakRr?=
 =?utf-8?B?RTdKUTlGZXU1Z29nQXBkdmxreTNmTFp1N3luQWRzWFJJZmdyUGlUTVdLZG5Y?=
 =?utf-8?B?TW91MVJhTG85UnZwdG9SOHVhY2tSZGRLeWJvY0dpNUtFMnU3K1Z0VEpvOHZO?=
 =?utf-8?B?RmcrSHBDdUdmT0tUcjJSanpDQWNBdWh2Qm5lT2MxZUpQeGk5Ty81R3J0bW9s?=
 =?utf-8?B?YnZWUFpsQ0tISlY3QVoyRmRuOTM3NkdwR3NFZFk0dnJKa1lDZkhrRFhvSFc4?=
 =?utf-8?B?NWhtdEhoVy8velBzdUZoYlBtSG1jTVJwbTVrQ1pYMWVXZ2N6WnVEdlhEQkhk?=
 =?utf-8?B?cnZKV2g4U1l6cEZBL2FBbHljYTh5aW1hUm5WR1BkQVg4UUxGWDN2QUw3Y1FY?=
 =?utf-8?B?a2lRM1pOOGkrVWtTdmZ5ejVOTWlJVGppaGMrUDdQUE9YNTNSaHhKS3JKaFRT?=
 =?utf-8?B?cUovb1BReEY5cXc1N0h4SVY3OUYyT29TQndFTEVlQVVOVUtBVlhtZ0NnOGE5?=
 =?utf-8?B?SXhmUEt5WjNKWGZDVWNFdUhtWUFpZW9HZ3gxTUxRcUtIRlpPQTdvZ3lHTmg5?=
 =?utf-8?B?d3o4WFJDcjZKQnFTb2thMXI4bjhpMytaZUY4OE01SE1JcEJFV0VSRFIrN2hS?=
 =?utf-8?B?YlZRakNxQmMxYUg2dXdsVGtDQzF1YmFQSzBKS1BjL044N1M5b0lhb2lLTUps?=
 =?utf-8?B?R01wK2xXT3VaOXZZT2tTa2xMMWN3SVNLcUdkWmRpcEsyenViNmxSeE1UODhB?=
 =?utf-8?B?NHVTV1ljSzVxc1VZdGY0V2NOYzVpcEwxYnVkVlpONWdvRXNoZkJBV2hIUElV?=
 =?utf-8?B?ajhTRmxDMjBaRnRNeE40RHpTaDdqYk9VNFlORzlkYmpYWEJBQWxlelltR1Bz?=
 =?utf-8?B?OWdsM0pHcVI5Umg4a2JMdUZEZGdHN1lSL3B5M1UrOFFXeHYvamRJYm1uRStp?=
 =?utf-8?B?THZzU1NsTjl5dCtDbkZVeFRyWnpvdlArMjYvQkoveUkza1JlUkp5MThtbGF2?=
 =?utf-8?B?UStGak52eFJWNXc3UHBuSGEwWGNTeGlZQWt0TXpmVFM2YUFaTlRPR3hISkU1?=
 =?utf-8?B?djF3dDRFVnh6ZWxIYzNab1k5Q211ZXh6Wk5oNjRPNjk0MUFGKzcrZS8yTVJN?=
 =?utf-8?B?M2VUU0RZK21GS2s1K3RSWVFyL2dHem1iUXJhQjd0ZytzVW9HU1gxSmNiWWh3?=
 =?utf-8?B?UFI2MnRXQjVEZmRZdzNxbGhieDhGUWpnYnI2SUU1SDNYeFltT1NBMnV5dFdN?=
 =?utf-8?B?VFdNa3hySS8wRExjYWdCZTk3aWxGOXhCQUVkWjBsdnZoMThKM0QzbHJKM2RG?=
 =?utf-8?B?eklrZDA4RmR3YW9wT0Y0dGJQUXBwVVBETHdmMllpZ05JZUtkLzl2YXdBRHZL?=
 =?utf-8?Q?uYpF5E8/ReqXr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXE0RXhERWdzdzA2NTNOTTdPOHZzL3lxNVRrVGxrc0lFQldDT2FON0VGbnVk?=
 =?utf-8?B?NUYyRWE1d0VVWEpDb2dHU282dWNsMFJRWmZtd3VxeGlOdEk5MDZsSHI0UDBS?=
 =?utf-8?B?dXNFUkExMFlTL3ZhZ2FNZFlZbDI1RVF1S2JUS1BpdFVjMzRHMk01bGxmUS9y?=
 =?utf-8?B?VnNEMVE1SDFWeU9YR3VsUk1RcG1XOUtLVjlJelFVWHdwZlZWYkw5OTg1dDE2?=
 =?utf-8?B?QnJnemZkclpPengyZE83ZVE0MTVHY2hZY1hTTFd4MGFBWmp0eEVFRHF0YVh1?=
 =?utf-8?B?VkJtbDUwSWhDZk5vcm5jbUpQNkRjTTVnc29YOXY0WVhCd0Zhbi9vRGVXT1Jk?=
 =?utf-8?B?bEdsK0Z1SE01SWhDSC9TSUsrU3ZxWFRJU2p0U29Ra3NEVHVjc0JtOUQ3QTk1?=
 =?utf-8?B?RWp1a0NpS1hveW1iczZrUDdVUUpXL2xUTTNQK2R6RmQ5WkltRXdWUGt5NExo?=
 =?utf-8?B?czZ0V0Z6R1B4ZnhPZzVsL3lJdmt1L1dZaWpOMzY2VW5UZ3M0Q3lTZXJhbzY0?=
 =?utf-8?B?T2FVTkx2Vm5vMU1zay8zUEhNNDNMWnBJcXE2NzJlTUpYMjczYWJtVUhFc1Uw?=
 =?utf-8?B?TGlpZFFzdW84Q0VSK3dSWG81S2c4dnNlYzBLT1RXZWY2R3g0bmRZUlovMmFZ?=
 =?utf-8?B?SmN3OTZJUVR5Y1lsMFlSQ1NUL1pnbmJzTG5kaHQ4MVpaVXE1ajdXMTVvS0Vp?=
 =?utf-8?B?WnB5c3RLRk1qeENOaUt4OTF5M0RZaXdnK1RyUmUzQjl3clJQR05HMmdoSlVj?=
 =?utf-8?B?SDVITjRaMTErVlJ2bDQ4YS80QXgrczFEb1RzWkpDVjVTTmNZbUpRTFJxZ2lV?=
 =?utf-8?B?YWFMRVBxME5QbWZ0Qlpwblk1Ulp5R2ttdWJkM2dobEM2bXBhZThjL0dZZ295?=
 =?utf-8?B?em9WeStuVFFMSlQxRzBRVkduTG5tQzU0dWdKOXkrUExGRjFxZGd2TmJKd3R6?=
 =?utf-8?B?OUNkdkdKYm1NVWFpbGtOcU1CRVNndDNoUmpHMWw2S2pzeGJuaFpia0lQaEJE?=
 =?utf-8?B?NFArYi8wT2hYWm9DVjdjUytieGVuQXB4c25HQWRJczdCYUpwMk9oa3d1Uzdl?=
 =?utf-8?B?dlJscTd2NzUrTXJaS09HMEhzOGVXREdHay9ZZks5Mmk2UDMvYjNLYlltbjla?=
 =?utf-8?B?ck5rTk5Ua1NnWEJibDdPRTBQbHFidzJudGNCanhCckJPU1VaTnhldWkwdU5E?=
 =?utf-8?B?clRwL0ROaGxscUpWVGd4NDhPK2FMa2FJKzFFQjZJdG9scmNKRnVDc0NGWWpI?=
 =?utf-8?B?ZFRpdEl3dXp6SkdZdGVsOEVHWlNNTGZDY1A2K2NMU1NHak83Ykl1dDRyQk10?=
 =?utf-8?B?Mkc4OU9SM25wR2IrYVVVNlc0L1BDL0FjL1J5cVhlZThmMkpyTXJYUU1uSTBL?=
 =?utf-8?B?OGY1elkxTCtOUUhZRkZWbmlheS9Ra3VLMmNhYS9qYnY5cmZwRnhRR0tKUlFj?=
 =?utf-8?B?OTZJYnRLS1NPNnJQMXdQUGxsWjdZbzZoTG5MdVRaTzgwb203QnhzUnlBWmpt?=
 =?utf-8?B?WENoNUF4cjhSSzNPNzJxNFZ4MXl5U2xwZEo5RnF5Y1pEMzhON2ZqVW9XMm04?=
 =?utf-8?B?QmNQSVNuRDJYQXgzK3hGT2RlR2xxQXpURFBzREVZbHNsSXVoNThqNksxclJ5?=
 =?utf-8?B?bHBCTWlqNlpNNHQydmVhK05oWUdlUGZOVUJ4MEtEdi9FcXFIM3NGTzN4c3Rx?=
 =?utf-8?B?UER4c01OMGVnaXlrZmJzMUMycng0b0d4dE9Dc2pVZWlpbFVPVDFuRVdCeTNs?=
 =?utf-8?B?THRadHZYdDdJVVFUWk1TWGFud21TcGlkR0JMMFlJSXJNMk9jc25DdmtBa3JV?=
 =?utf-8?B?blgza3dhcU00YVRkbW9hVmU3ZmcxQU9iaytEdXdRNWg5aG90RUVwR2YzVStn?=
 =?utf-8?B?K1pEQmdoc0hoN0pQTkxuUS83Zm56dFVPN05UU0RCWDJVbHBqQjJ4Mkc0OG13?=
 =?utf-8?B?RnRxQXE0T1R2dkhjS1dSdTBLZW1QcFhDQWptbHBzeWk3M1hoUXhGc21aWEtT?=
 =?utf-8?B?a3lBUUxmR1kzVndTVHBXWmd3QVV5bm9JNnYzYk83NThjb1FHY3VFcWY1MU93?=
 =?utf-8?B?ZHJMS2d2V2pPU3NJWlVxY1BKampPNit3WjFUM1JCaFo2TXBQeU9xWlZhcUVX?=
 =?utf-8?B?NVQzMDVJR25TaUlRWEVOWVlvZ1pZNlMzYXJCQ1ZQc1E3cER6M2JDTHRsejFH?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9052b448-aa80-4763-65e7-08dd4044374a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2025 09:06:28.7001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h7GezShr1q6EdmhHvQ10osRPE8wBhsVv37x/4VSx+OjY1yECYDeZmxg9ElKZMp+fTRevntzFLajihJdSIOCt4o5vHLxZFNuFH3wzLkGbKzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5782
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

Hi Krzysztof

> +	if (!ppgtt->vm.allocate_va_range) {
> +	        i915_vm_put(&ppgtt->vm);
> +	        return 0;
> +	}

I don't know if it feels more in line with kernel style, but consider
changing it to a label before second `i915_vm_put` at end of function
plus goto instead of creating new cleanup section.

Otherwise looks alright.
Reviewed-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Mikolaj
