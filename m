Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id txkeDfCjeml48wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 01:04:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232FFAA153
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 01:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DB410E77F;
	Thu, 29 Jan 2026 00:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUansr88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCCA10E77F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 00:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769645036; x=1801181036;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Veys9M/91IUz3j2ls8sTqBadoDrRuoxP2hN6bXU7IB8=;
 b=kUansr885g+MBMwo5nQ6+0JAHHUELKYKDiMpxgs3F1cPbRfqlLOlUucA
 MkRDZjdGLuEFTsLQjHc+UtQH07vMWm6z5RZRlvCpg2Riuc97szC3lsTn+
 y2dhbGdltTg4mc9TaReL7x45bRilOlKE2BztrUaTmtHqj2P/ax9JqUmVj
 rt8Szi5Diw+/VMlaexzIa13ZUnTGs+JqkdsZ9GcYVNZCkH+bERB/j62b2
 ElFoWWLYQXzYoKzs1MhfZxYQSA0wOBW4TZvRGHxtQ8U/4B4OX7hCwLO1K
 yozRfvIz1EHVcaldkiYUnIsy7G01CXTYRWcGHUVu9I06p5030PeWJQUoV A==;
X-CSE-ConnectionGUID: hznkzwNjSfOxvq/h5hs0OA==
X-CSE-MsgGUID: xQ3pdSzCT4G2H9OjU3ve0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70962561"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70962561"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 16:03:56 -0800
X-CSE-ConnectionGUID: v8HWscVwQhS/92AkpuNXCA==
X-CSE-MsgGUID: BBZRwU0ZThqFwDjcECpcHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="239662630"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 16:03:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 16:03:54 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 16:03:54 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 16:03:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ev9GhZTkcMuHbwZgbxQUViCsMmRPQZfO8DB6CDkgRjGWOsZXGifrcSRfVoZ4GmeyM0HJNqDxK23tU7JH9QHuJ0Jjj48R/yWhlC3JUVaBX+6EJdPPS0rd23X0nVvAfkn1p06q5NFfBq+4t9DJUecQfahlZ8qIjDYEqzYjs7W20cjTB+1800hARFG1Qw+LszyIFZIEIZwMYAvYPdFcFIdactvpUExVzx7vlS+vEsAAB0WU8iokRg+Db54DYN8Ndg+y+ABYF2dc8wFkbkk0ZyF6PODqmkjkuT6SdkxEZPlOHOinqwJobEk4mHlx4i7BbiquOl1aGd6eA/Lf57HAHfNS/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hyh+OHx8brfCbROXYs4BB5ooonjJ17n/jmz7pUR9ZeU=;
 b=FCL2xjobig56kJw66u53pxnPZic9e9Jx6Ez9+3g/savvBG6F3/hKhj408JROw6HkEBQs1iZoOYx3UgrU3A/yXxPRCn4OzaKfERSZguXY4ohwud+gJj72S0uiyNx8WNJY6taVr+OCyl3f6XeOzH1TH/EEXJKdw/raMrUkB1IbsI7MQCsnuFXWqLmOLl4OYuT6NLuNlGKs9C3HJTLXMp+A6DzID93O3V0MuuatLvfYIsvlyg9U9NjIjglzrMpaNdsIEhtga+1WwBZw5A3f2/xM/pqKBc62hUUJDOfWs/GvhZjZWNe4CBIvZgyPIxR+frh4ZGb2czs1Pj9qn+NU3W/r6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM3PPF58BF5162C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Thu, 29 Jan
 2026 00:03:46 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 00:03:46 +0000
Date: Wed, 28 Jan 2026 16:03:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?cess?= for
 drm/i915/display: vcpi is always greater than zero
Message-ID: <20260129000344.GX458797@mdroper-desk1.amr.corp.intel.com>
References: <20260123170914.64548-2-jonathan.cavitt@intel.com>
 <176920991737.189692.15508271922654863628@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176920991737.189692.15508271922654863628@a3b018990fe9>
X-ClientProxiedBy: SJ0PR05CA0172.namprd05.prod.outlook.com
 (2603:10b6:a03:339::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM3PPF58BF5162C:EE_
X-MS-Office365-Filtering-Correlation-Id: 008de0ea-b7cc-4f9e-49ed-08de5ec9df8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HDre9rUXPzL5/JC3iCnYUYm/2qcxvL4WTOy3y4005N0aP+A+rS8d+rANuQDV?=
 =?us-ascii?Q?iluhDr770vWDJIJJtn8bbKgYjNVtpApy4yMxKQaDwVc0PimpoC7pE+/lUTGH?=
 =?us-ascii?Q?Yi4ZHA6FFtg0Uz6Ewn45HOKwjrzKnXb0q353qLjJWjeUj2+7rrJD5t3fF1hH?=
 =?us-ascii?Q?ZO0EtCJl0hF4BGVunG5GmVS9+Jgt4ructvo6JWaAS+r+gEHz2Y1q8vk/yyI9?=
 =?us-ascii?Q?YGCuJnTNiNBSH1MUXrFmXIq6lMpPpURzirV2nprlEKthPLgsFSVTjXEhbaJN?=
 =?us-ascii?Q?QihGNNESUM8wmGi85lrM6GJnAB7e/BWsAlMb74cyqXX35F2JoJBQzVF3QEzY?=
 =?us-ascii?Q?FZ7FnwfpweW9M1mZZPFPfkbRyag2I452KFWQxAMsYHi9lOA0SyaArJRHI6Eu?=
 =?us-ascii?Q?y4T6TYFp9eUYQ3qoQFTJw/jw7jKh4seyJXO7xNi+WrG1daMTrU/fMwC9f8CM?=
 =?us-ascii?Q?NwFQVpMZBFbIQiHlOTsmpc67KwGnlzPoegz8yD8LisVbzCqNj9Q/bFJSgLVt?=
 =?us-ascii?Q?ovrYoa8zaw0HTE+VaKevfdx0/em5SYWH5IOgTlhgJOjOeaKlAsJMTnG5Q585?=
 =?us-ascii?Q?z+aoZFboGzXTWT9GHj1e4cbCT9zU82VrRIB2Xva7yuVEcDYiGAU9msuYxpYO?=
 =?us-ascii?Q?8k6gTjmqD4d8OZveHS3gxq3FfMYoPyeZJKmB3Wa5mp8HqLQPDXZlnkt5LSo6?=
 =?us-ascii?Q?J+Wfj5n/Q6QIurMfhir20jdIWsDPA/t4MQeN1VfH8MDGg1ljxPBhWeIgWatq?=
 =?us-ascii?Q?YU6Zdh2f2OYXf8fsDFxeX4oFCAQQ1KQTntMU9V8mGzjkP3lWqrGS3G3XIRPR?=
 =?us-ascii?Q?s6NAUnFeWAmqkz3cAdknFafk0XGTPbztXyeu3CmVXUvOOnq0wl4/ZzE4FSsC?=
 =?us-ascii?Q?oFHh0bHQ72x/0vccUXj6rh6K3Wl4Mu38+m8r3wiv6BeyJ+A4vNYtl9eFax+s?=
 =?us-ascii?Q?e1b0knYYiPE3ENqEBjOMQymjQq5b/OHmrExD+Rc9VTkY8eaeF07TcgSrKUe/?=
 =?us-ascii?Q?OvkcLICpqZSQKC2hdGBI0jDHkOuLHPJJiWk/cPxeEX8RV/YGU0E96OvLXjfn?=
 =?us-ascii?Q?QyyRxwPA0ACPoSTw2LHm/b9AIzOzjKmoRAipaha5CbtGlOsI2JdKXceVtViL?=
 =?us-ascii?Q?IGyX/t7sMH2aHUD2s/iG3F+1A9OeJPg9x5qKgtYLeDErDuUDIgxEnARIlZ8B?=
 =?us-ascii?Q?DImn7IuhNFprh5QMSw23QO1h7MIjQvBzYa/MfK3j01yhoyYnT69u/Vf1/dYT?=
 =?us-ascii?Q?ySLD3h4rVuTtTx8/JpfJCxf9yi8rgVtJwt8cA6vm//arF9R//OpU1M3HsU28?=
 =?us-ascii?Q?URe3w8oZ31u8VX6xfx5nTFs0Vanvwh3Ie2CjPNoIov7kCwDCVHCOKJSpA+Un?=
 =?us-ascii?Q?j0pqbRyUiUbJEQ05tHlEK+j/AFpK+cuOGX4fEID3/FuUfDCziGWBNXgwTo6m?=
 =?us-ascii?Q?JFIEKqAoNkTtu/YKWi0OordozJbS2RugiX9Pbwh3HrVfJfR/qRJBiEHnp8la?=
 =?us-ascii?Q?VI5T4W4Hjixa+OdepWFVSq/RgJRAtvb7fCrh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gAcG4qSw75Z6eD/3FQqhQfxOCUvxaxjprQNigy1dKsa/fo2Jkcd3oT4bJNcp?=
 =?us-ascii?Q?AWPWBOXylHztlWJxWO01Y2MAePAf1ipqNaFCYblPXPmvAr/yRGTTJYDFkn+4?=
 =?us-ascii?Q?m6Y5TSv5pcjknOizg59q4LlPkPs4D9vPbRRCQaDlsYUgCEB+wTjKQNZtrZfO?=
 =?us-ascii?Q?usvRc76DYPPCIsKVzqlybvF2twFIKtGMJy2gGxOk/DU2lP34oPWow7mrAQmZ?=
 =?us-ascii?Q?krRUgxOqtj07IKflEVf1QttZ9yhT9lsjidhN89hH9QV+usMv2AilsSygMbAy?=
 =?us-ascii?Q?Zme2ycdDPVXNoR2n6gDZwGumzldlTbaJuA5Y484FmrKy+YyfPP/V8698EEEA?=
 =?us-ascii?Q?24E+FW0oje0/yuYUVhn9WI4gjeDuy62yYZ1actHn7pKkXgw4z+5phNJ1YWz0?=
 =?us-ascii?Q?+7l8CgW6ukD3poy/azEhwLzierZnJA96pfc9oFZRlGYgmfMER2bHvWV0xbMT?=
 =?us-ascii?Q?ARuvkLO4tmg3GGkOJ6ysw12jYoGXk+FHklfXeEPF5D5smbL5kjcV7LCHwZHz?=
 =?us-ascii?Q?NyyAIQ7w+dQlBQ5RXJSkj0mqR8Bw2zvatqsexFHH+xAVr6v7ctkuzorRd3XD?=
 =?us-ascii?Q?pdnQ5R1t1ISrtqupUxADQOxbg5RilnBNLRq0Oo9yPNAA4qcNl5qpxfvMgaKT?=
 =?us-ascii?Q?LmXI0285m1mhkNSMBJPhq91Fttybiz+giYDtL9z02aitrSaykQZtFHxZxUK2?=
 =?us-ascii?Q?3MrtjhGWxIzE+gsUnR7dkhisoC0AUvgtsK5e7EikPDaIFITUfYeQsnFdSwYN?=
 =?us-ascii?Q?Ip5Zr6w6HIDmtUTuNQai42aEABnEQMsJW+l2hFmd5PEtR9oial69VdMvkOXr?=
 =?us-ascii?Q?17tWoMIXWJ5K5IhcUJnFzk46NCrJYOlrO96SBYIjW392qGNaHgu3Lk3ZJSGd?=
 =?us-ascii?Q?rngNTurZ0pMGlX+KeXMoeIuPjLZG+oz9ZHwTrw20ipufWVieqPGJ+Cnoi5fj?=
 =?us-ascii?Q?sGQ0tIMvvWIHNGeOJAq7e4jFLrEhIi2BE7CVyEtt5i6y189kYYRZYimyfNuf?=
 =?us-ascii?Q?DGisy3oi7zzbFbyzTPRH6+/SzE6y0qFHCWlg3MHbZIqVZylNLQNvk96jnwKG?=
 =?us-ascii?Q?uVBYmx6GatNQiC2RYljwTiMLVeitmo3J0uj8INosFFuyt4J6zlzPIxlKkYGU?=
 =?us-ascii?Q?xnrkw/PNXaqjcjKTqFadXfgyOLkBlWdU2mDAqxb50maBfH1Q9GQGRyQ50k+L?=
 =?us-ascii?Q?pVLaHPOIMH1pJxRT5iBOgZYtQ0zs5FBS4crKIKAfsGeDGJd7UFykm+gc2d0w?=
 =?us-ascii?Q?XWlo03vgggcOr8rBHATRBQY5OTVm98SezJmuruD/UcJ/gxXvk9Z1AzjrT5B7?=
 =?us-ascii?Q?5q56vclZZIo/yAp1xs5UaZXU86AGo+DOMa9t8tNR6cAcEjw3qc4pdWzGtKX5?=
 =?us-ascii?Q?S6Th5qK63/Yb5dUkBQ7FVNl1GZFe812sbTnyrtQAlZvQKFZeJM91nHsSG6vW?=
 =?us-ascii?Q?c/lY4ek/RIh5qeK87xyZ36dVyhbMgQWj9fZ1WHrg5wASWhBZUWP6mIYhVD3J?=
 =?us-ascii?Q?n9rL+isnV35bmiA30Xoy7a4lIoIynluoYb3KZS82vgBiyWrHgmROp4872ujP?=
 =?us-ascii?Q?iuDIngDSsvH3YKq1YA48pNkmfRTeUUQ6ZknPIncJMGw8r4RudA/KxGuiv+Uo?=
 =?us-ascii?Q?ybqnzyKIioW47kb2rVq3D/TypOW5KKojZrD6ZNHHeAZNHSq605K3LZkuq389?=
 =?us-ascii?Q?EqXjm1PwWjRjOnLFeyJnNfiFzAmFYKEwvXi2uZHC5pk7wjM218WcwQ9G0nzj?=
 =?us-ascii?Q?08VJ2kwpt8USatgV3ltwLfR+ZRn0rTQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 008de0ea-b7cc-4f9e-49ed-08de5ec9df8e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 00:03:46.8117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9XYcTeln5YB+1ZR2te2jqbjTn6YeeuCVF82cZkbfUqqeuTRejPkJGF1AbqnPfb3KCymipjZu9JxEmdsfxcZZFAjJfbvCxhDa1sSevLb+9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF58BF5162C
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
X-Rspamd-Server: lfdr
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
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 232FFAA153
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 11:11:57PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: vcpi is always greater than zero
> URL   : https://patchwork.freedesktop.org/series/160563/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17877_full -> Patchwork_160563v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17877_full and Patchwork_160563v1_full:
> 
> ### New IGT tests (21) ###
> 
>   * igt@gem_linear_blits@bad-rotation-90-4-tiled-mtl-rc-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@basic-each:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@basic-force-big-joiner:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@basic-with_two_bos:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@busy-accuracy-2:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@cursor-offscreen-256x256:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@cursor-sliding-64x21:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@fairslice:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@fbc-abgr161616f-draw-mmap-gtt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@fbc-rgb565-draw-mmap-wc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@force-edid:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@invalid-multi-wait-all-unsubmitted-signaled:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@load:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@nonblocking-read:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@offset-16x16:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@plane-downscale-factor-0-75-with-pixel-format:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@preempt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@system-suspend:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_linear_blits@wait-all-for-submit-snapshot:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_160563v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][1] ([i915#15095]) +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#3555] / [i915#9323])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][3] ([i915#13008])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#9323])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#6335])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][6] ([i915#13356]) +1 other test incomplete
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@idempotent:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([i915#1099])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-snb7/igt@gem_ctx_persistence@idempotent.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu:         [PASS][10] -> [ABORT][11] ([i915#13363])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-6/igt@gem_eio@kms.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-3/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#3281]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-range:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#14544] / [i915#3281])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_exec_reloc@basic-range.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#3281]) +14 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#2190])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_huc_copy@huc-copy.html
>     - shard-glk:          NOTRUN -> [SKIP][18] ([i915#2190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_linear_blits@normal:
>     - shard-dg1:          [PASS][19] -> [ABORT][20] ([i915#13562])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-19/igt@gem_linear_blits@normal.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-18/igt@gem_linear_blits@normal.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4083]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo-tiledx:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4077])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3282])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3282]) +8 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#13398])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#8428])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#8411]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([i915#3323])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3297] / [i915#3323])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3297])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@gem_userptr_blits@dmabuf-unsync.html
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3297])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#3297])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-rkl:          [PASS][37] -> [INCOMPLETE][38] ([i915#13356]) +3 other tests incomplete
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#2856])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#2527]) +6 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_module_load@fault-injection:
>     - shard-tglu:         NOTRUN -> [ABORT][41] ([i915#15342] / [i915#15481])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@fault-injection.html
> 
>   * igt@i915_module_load@fault-injection@i915_driver_hw_probe:
>     - shard-tglu:         NOTRUN -> [ABORT][42] ([i915#15481])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@fault-injection@i915_driver_hw_probe.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu:         NOTRUN -> [DMESG-WARN][43] ([i915#15342])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#15479]) +4 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@i915_module_load@load:
>     - shard-tglu-1:       ([PASS][45], [PASS][46]) -> [SKIP][47] ([i915#14785])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-1/igt@i915_module_load@load.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-1/igt@i915_module_load@load.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@i915_module_load@load.html
>     - shard-tglu:         ([PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70]) -> ([PASS][71], [PASS][72], [PASS][73], [PASS][74], [SKIP][75], [PASS][76], [SKIP][77], [PASS][78], [PASS][79], [SKIP][80], [PASS][81], [PASS][82], [SKIP][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89]) ([i915#14785])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-10/igt@i915_module_load@load.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-10/igt@i915_module_load@load.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-2/igt@i915_module_load@load.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-2/igt@i915_module_load@load.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-3/igt@i915_module_load@load.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-3/igt@i915_module_load@load.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-3/igt@i915_module_load@load.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-4/igt@i915_module_load@load.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-4/igt@i915_module_load@load.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-5/igt@i915_module_load@load.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-5/igt@i915_module_load@load.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-5/igt@i915_module_load@load.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-6/igt@i915_module_load@load.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-6/igt@i915_module_load@load.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-6/igt@i915_module_load@load.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-7/igt@i915_module_load@load.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-7/igt@i915_module_load@load.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-7/igt@i915_module_load@load.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-8/igt@i915_module_load@load.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-8/igt@i915_module_load@load.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-8/igt@i915_module_load@load.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-9/igt@i915_module_load@load.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-9/igt@i915_module_load@load.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-10/igt@i915_module_load@load.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-10/igt@i915_module_load@load.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-2/igt@i915_module_load@load.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-2/igt@i915_module_load@load.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-3/igt@i915_module_load@load.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-3/igt@i915_module_load@load.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@load.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@i915_module_load@load.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-5/igt@i915_module_load@load.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-5/igt@i915_module_load@load.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-6/igt@i915_module_load@load.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-6/igt@i915_module_load@load.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-7/igt@i915_module_load@load.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-7/igt@i915_module_load@load.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-8/igt@i915_module_load@load.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-8/igt@i915_module_load@load.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-8/igt@i915_module_load@load.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@i915_module_load@load.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@i915_module_load@load.html
>     - shard-mtlp:         ([PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114]) -> ([PASS][115], [SKIP][116], [PASS][117], [PASS][118], [SKIP][119], [PASS][120], [PASS][121], [SKIP][122], [PASS][123], [SKIP][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [SKIP][130], [SKIP][131], [PASS][132], [PASS][133]) ([i915#14785])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-2/igt@i915_module_load@load.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-2/igt@i915_module_load@load.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-2/igt@i915_module_load@load.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-2/igt@i915_module_load@load.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-3/igt@i915_module_load@load.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-3/igt@i915_module_load@load.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-3/igt@i915_module_load@load.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-3/igt@i915_module_load@load.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-4/igt@i915_module_load@load.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-4/igt@i915_module_load@load.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-4/igt@i915_module_load@load.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-5/igt@i915_module_load@load.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-5/igt@i915_module_load@load.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-5/igt@i915_module_load@load.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-5/igt@i915_module_load@load.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-6/igt@i915_module_load@load.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-6/igt@i915_module_load@load.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-6/igt@i915_module_load@load.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-7/igt@i915_module_load@load.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-7/igt@i915_module_load@load.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-7/igt@i915_module_load@load.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-8/igt@i915_module_load@load.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-8/igt@i915_module_load@load.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-8/igt@i915_module_load@load.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-8/igt@i915_module_load@load.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@i915_module_load@load.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@i915_module_load@load.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@i915_module_load@load.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-3/igt@i915_module_load@load.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-3/igt@i915_module_load@load.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-4/igt@i915_module_load@load.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-4/igt@i915_module_load@load.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-4/igt@i915_module_load@load.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-5/igt@i915_module_load@load.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-5/igt@i915_module_load@load.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-6/igt@i915_module_load@load.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-6/igt@i915_module_load@load.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-6/igt@i915_module_load@load.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-7/igt@i915_module_load@load.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-7/igt@i915_module_load@load.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-7/igt@i915_module_load@load.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-8/igt@i915_module_load@load.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-8/igt@i915_module_load@load.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-8/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#8399])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#14498])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#4387])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7984])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][138] ([i915#4817])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#7707]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#7707])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#10333])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][142] ([i915#1769])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#5286])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#5286])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5286]) +5 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#3828])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3638]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#6187])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][149] +17 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#6095]) +167 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#10307] / [i915#6095]) +90 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#10307] / [i915#10434] / [i915#6095])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#6095]) +51 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#6095]) +9 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#6095]) +73 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#6095]) +9 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#12805])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#14098] / [i915#6095]) +47 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [PASS][161] -> [ABORT][162] ([i915#15132])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [ABORT][163] ([i915#15132])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][164] ([i915#15582]) +1 other test incomplete
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#12313]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#12313])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-glk10:        NOTRUN -> [SKIP][167] +76 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk10/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#6095]) +9 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#3742])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#13781]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#11151] / [i915#7828])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#11151] / [i915#7828]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#11151] / [i915#7828]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#6944] / [i915#7118] / [i915#9424])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][176] ([i915#7173])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#14544] / [i915#15330] / [i915#3116])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#15330])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#15330] / [i915#3116])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#6944] / [i915#9424]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#6944] / [i915#9424])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8814])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3555]) +4 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][184] ([i915#13566]) +3 other tests fail
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][185] ([i915#12358] / [i915#14152] / [i915#7882])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html
>     - shard-rkl:          [PASS][186] -> [INCOMPLETE][187] ([i915#12358] / [i915#14152])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-7/igt@kms_cursor_crc@cursor-suspend.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][188] ([i915#12358] / [i915#14152])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2:
>     - shard-rkl:          [PASS][189] -> [INCOMPLETE][190] ([i915#14152])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-7/igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#4213])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#4103]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#9809])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#9723])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#13749])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#13749])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_dp_link_training@uhbr-mst.html
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#13748])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3840])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#3840])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#3555] / [i915#3840])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#3555] / [i915#3840])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#3469])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#3637] / [i915#9934])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3637] / [i915#9934])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][206] -> [TIMEOUT][207] ([i915#14033]) +1 other test timeout
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9934]) +7 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +3 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555] / [i915#8813])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#2672] / [i915#8813])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#2587] / [i915#2672]) +1 other test skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-blt:
>     - shard-dg2:          [PASS][217] -> [FAIL][218] ([i915#15389])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-blt.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][219] +8 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#15574])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>     - shard-dg2:          [PASS][221] -> [FAIL][222] ([i915#15389] / [i915#6880])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][223] +12 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#1825]) +36 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#8708]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#15102]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#15102]) +5 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#15102] / [i915#3023]) +23 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-snb:          NOTRUN -> [SKIP][229] +76 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#1825]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#14544] / [i915#1825])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#15574])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#15574])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#15102]) +5 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3555] / [i915#8228]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8228])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][237] -> [SKIP][238] ([i915#3555] / [i915#8228]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][239] ([i915#15436]) +1 other test incomplete
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#15460])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html
>     - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#15460])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#15458])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#13522])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#4816])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#1839] / [i915#4816])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-mtlp:         NOTRUN -> [SKIP][246] +4 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][247] ([i915#12178])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][248] ([i915#7862]) +1 other test fail
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8821])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#13958])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#15329]) +7 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:
>     - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#15329]) +4 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#5354])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#12343])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#9685])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][256] -> [DMESG-WARN][257] ([i915#4423]) +5 other tests dmesg-warn
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-13/igt@kms_pm_rpm@i2c.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-18/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [PASS][258] -> [SKIP][259] ([i915#15073]) +1 other test skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
>     - shard-dg1:          [PASS][260] -> [SKIP][261] ([i915#15073]) +1 other test skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#15073]) +1 other test skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#15403])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-dg2:          [PASS][265] -> [INCOMPLETE][266] ([i915#14419])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-3/igt@kms_pm_rpm@system-suspend-idle.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#6524])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][268] ([i915#11520]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk10/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#11520]) +1 other test skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#9808])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][271] ([i915#12316]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#11520]) +9 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][273] ([i915#11520]) +1 other test skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-snb7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#11520] / [i915#14544]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#11520])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][276] ([i915#11520]) +8 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@fbc-pr-cursor-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +23 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#9688]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr2-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#1072] / [i915#14544] / [i915#9732])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_psr@fbc-psr2-basic.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][280] +267 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-cursor-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#9732]) +4 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@pr-primary-page-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#9732]) +3 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@kms_psr@pr-primary-page-flip.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#9685])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#5289]) +1 other test skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#3555]) +2 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          NOTRUN -> [FAIL][286] ([i915#10959])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#8623])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#3555])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#14544] / [i915#9906])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#9906])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#7387])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-dg1:          [PASS][292] -> [FAIL][293] ([i915#4349])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs0.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-18/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         NOTRUN -> [FAIL][294] ([i915#14433])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@perf_pmu@module-unload.html
>     - shard-rkl:          NOTRUN -> [FAIL][295] ([i915#14433])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-5/igt@perf_pmu@module-unload.html
> 
>   * igt@runner@aborted:
>     - shard-tglu:         NOTRUN -> [FAIL][296] ([i915#15591])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-4/igt@runner@aborted.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#9917])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][298] ([i915#12910])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [INCOMPLETE][299] ([i915#13390]) -> [PASS][300]
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_eio@in-flight-suspend.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][301] ([i915#14809]) -> [PASS][302] +1 other test pass
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][303] ([i915#13729] / [i915#13821]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-snb1/igt@i915_pm_rps@reset.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [DMESG-FAIL][305] ([i915#12061] / [i915#15560]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-4/igt@i915_selftest@live.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-6/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][307] ([i915#12061]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][309] ([i915#13027]) -> [PASS][310] +2 other tests pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg1:          [DMESG-WARN][311] ([i915#4423]) -> [PASS][312] +5 other tests pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][313] ([i915#15073]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-7/igt@kms_pm_rpm@dpms-lpsp.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg1:          [SKIP][315] ([i915#15073]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-15/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-13/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [INCOMPLETE][317] ([i915#14419]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          [SKIP][319] ([i915#11078]) -> [SKIP][320] ([i915#11078] / [i915#14544])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@device_reset@cold-reset-bound.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          [SKIP][321] ([i915#7697]) -> [SKIP][322] ([i915#14544] / [i915#7697])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][323] ([i915#14544] / [i915#7697]) -> [SKIP][324] ([i915#7697])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          [SKIP][325] ([i915#6334]) -> [SKIP][326] ([i915#14544] / [i915#6334]) +1 other test skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gem_exec_capture@capture-invisible.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          [SKIP][327] ([i915#3281]) -> [SKIP][328] ([i915#14544] / [i915#3281]) +5 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#3281]) -> [SKIP][330] ([i915#3281]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_exec_reloc@basic-write-cpu.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-cpu.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#7276]) -> [SKIP][332] ([i915#7276])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][334] ([i915#4613] / [i915#7582])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          [SKIP][335] ([i915#4613]) -> [SKIP][336] ([i915#14544] / [i915#4613]) +1 other test skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-engines.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#3282]) -> [SKIP][338] ([i915#3282]) +1 other test skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu:         [ABORT][339] -> [WARN][340] ([i915#2658])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-tglu-3/igt@gem_pread@exhaustion.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-tglu-9/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          [SKIP][341] ([i915#8411]) -> [SKIP][342] ([i915#14544] / [i915#8411])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          [SKIP][343] ([i915#14544]) -> [SKIP][344] +10 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_softpin@evict-snoop.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-rkl:          [SKIP][345] ([i915#3282]) -> [SKIP][346] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#3297]) -> [SKIP][348] ([i915#3297]) +1 other test skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][349] ([i915#3297]) -> [SKIP][350] ([i915#14544] / [i915#3297]) +2 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          [SKIP][351] ([i915#2527]) -> [SKIP][352] ([i915#14544] / [i915#2527])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_module_load@fault-injection@intel_gt_init-enodev:
>     - shard-rkl:          [SKIP][353] ([i915#15479]) -> [SKIP][354] ([i915#14544] / [i915#15479]) +4 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#8399]) -> [SKIP][356] ([i915#8399])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rpm@gem-evict-pwrite:
>     - shard-dg1:          [SKIP][357] -> [SKIP][358] ([i915#4077])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-15/igt@i915_pm_rpm@gem-evict-pwrite.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-12/igt@i915_pm_rpm@gem-evict-pwrite.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#6245]) -> [SKIP][360] ([i915#6245])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@i915_query@hwconfig_table.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][361] ([i915#5723]) -> [SKIP][362] ([i915#14544] / [i915#5723])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][364] ([i915#1769] / [i915#3555])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          [SKIP][365] ([i915#5286]) -> [SKIP][366] ([i915#14544] / [i915#5286]) +2 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#5286]) -> [SKIP][368] ([i915#5286]) +1 other test skip
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][369] ([i915#3638]) -> [SKIP][370] ([i915#14544] / [i915#3638]) +1 other test skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg1:          [SKIP][371] ([i915#4423] / [i915#4538]) -> [SKIP][372] ([i915#4538])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][373] ([i915#14544] / [i915#6095]) -> [SKIP][374] ([i915#6095]) +6 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][375] ([i915#14098] / [i915#6095]) -> [SKIP][376] ([i915#14098] / [i915#14544] / [i915#6095]) +11 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][377] ([i915#12313] / [i915#14544]) -> [SKIP][378] ([i915#12313])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][379] ([i915#12313]) -> [SKIP][380] ([i915#12313] / [i915#14544])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][381] ([i915#6095]) -> [SKIP][382] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][383] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][384] ([i915#14098] / [i915#6095]) +10 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-dg1:          [SKIP][385] ([i915#4423]) -> [SKIP][386]
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-17/igt@kms_chamelium_color@ctm-limited-range.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
>     - shard-rkl:          [SKIP][387] ([i915#11151] / [i915#7828]) -> [SKIP][388] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][389] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][390] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][391] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][392] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-dg2:          [SKIP][393] ([i915#6944]) -> [FAIL][394] ([i915#7173])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-8/igt@kms_content_protection@atomic-hdcp14.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][395] ([i915#15330]) -> [SKIP][396] ([i915#14544] / [i915#15330])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][397] ([i915#6944] / [i915#9424]) -> [SKIP][398] ([i915#9433])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-15/igt@kms_content_protection@mei-interface.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg1:          [SKIP][399] ([i915#6944] / [i915#7116] / [i915#9424]) -> [SKIP][400] ([i915#4423] / [i915#6944] / [i915#7116] / [i915#9424])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-13/igt@kms_content_protection@type1.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#6944]) -> [SKIP][402] ([i915#6944])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_content_protection@uevent-hdcp14.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          [SKIP][403] ([i915#13049]) -> [SKIP][404] ([i915#13049] / [i915#14544])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          [SKIP][405] ([i915#13049] / [i915#14544]) -> [SKIP][406] ([i915#13049]) +1 other test skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][407] ([i915#4103]) -> [SKIP][408] ([i915#14544] / [i915#4103]) +1 other test skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][409] -> [SKIP][410] ([i915#14544]) +6 other tests skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          [SKIP][411] ([i915#13748]) -> [SKIP][412] ([i915#13748] / [i915#14544])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_dp_link_training@uhbr-sst.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][413] ([i915#4854]) -> [SKIP][414] ([i915#14544] / [i915#4854])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_feature_discovery@chamelium.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#1839]) -> [SKIP][416] ([i915#1839])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_feature_discovery@display-4x.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#9337]) -> [SKIP][418] ([i915#9337])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#9934]) -> [SKIP][420] ([i915#9934]) +1 other test skip
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_flip@2x-flip-vs-expired-vblank.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-rkl:          [SKIP][421] ([i915#9934]) -> [SKIP][422] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][423] ([i915#2672] / [i915#3555]) -> [SKIP][424] ([i915#14544] / [i915#2672] / [i915#3555])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][425] ([i915#2672]) -> [SKIP][426] ([i915#14544] / [i915#2672])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][427] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][428] ([i915#2672] / [i915#3555])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][429] ([i915#14544] / [i915#2672]) -> [SKIP][430] ([i915#2672])
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][431] ([i915#15573]) -> [SKIP][432] ([i915#14544] / [i915#15573]) +1 other test skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-p016-linear-to-p016-linear-reflect-x@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][433] ([i915#14544] / [i915#15573]) -> [SKIP][434] ([i915#15573]) +1 other test skip
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_flip_scaled_crc@flip-p016-linear-to-p016-linear-reflect-x@pipe-a-valid-mode.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-p016-linear-to-p016-linear-reflect-x@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][435] ([i915#14544] / [i915#1825]) -> [SKIP][436] ([i915#1825]) +13 other tests skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite:
>     - shard-rkl:          [SKIP][437] ([i915#15574]) -> [SKIP][438] ([i915#14544] / [i915#15574]) +2 other tests skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][439] ([i915#15102]) -> [SKIP][440] ([i915#14544] / [i915#15102]) +1 other test skip
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][441] ([i915#15102] / [i915#3023]) -> [SKIP][442] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][443] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][444] ([i915#15102] / [i915#3023]) +3 other tests skip
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [SKIP][445] ([i915#15102] / [i915#3458]) -> [SKIP][446] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][447] ([i915#1825]) -> [SKIP][448] ([i915#14544] / [i915#1825]) +13 other tests skip
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-blt:
>     - shard-rkl:          [SKIP][449] ([i915#14544] / [i915#15574]) -> [SKIP][450] ([i915#15574]) +1 other test skip
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-blt.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][451] ([i915#14544] / [i915#15102]) -> [SKIP][452] ([i915#15102])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][453] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][454] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          [INCOMPLETE][455] ([i915#15436]) -> [SKIP][456] ([i915#3555] / [i915#8228])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][457] ([i915#15459]) -> [SKIP][458] ([i915#14544] / [i915#15459])
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          [SKIP][459] ([i915#15458]) -> [SKIP][460] ([i915#14544] / [i915#15458])
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][461] ([i915#14544] / [i915#6301]) -> [SKIP][462] ([i915#6301])
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg1:          [SKIP][463] ([i915#13958]) -> [SKIP][464] ([i915#13958] / [i915#4423])
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-none.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          [SKIP][465] ([i915#13958]) -> [SKIP][466] ([i915#13958] / [i915#14544])
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][467] ([i915#15329]) -> [SKIP][468] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          [SKIP][469] ([i915#5354]) -> [SKIP][470] ([i915#4423] / [i915#5354])
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-13/igt@kms_pm_backlight@fade.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][471] ([i915#5354]) -> [SKIP][472] ([i915#14544] / [i915#5354])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][473] ([i915#15073]) -> [SKIP][474] ([i915#14544] / [i915#15073])
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][475] ([i915#14544] / [i915#15073]) -> [SKIP][476] ([i915#15073])
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-rkl:          [SKIP][477] ([i915#11520]) -> [SKIP][478] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][479] ([i915#11520] / [i915#14544]) -> [SKIP][480] ([i915#11520]) +2 other tests skip
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg1:          [SKIP][481] ([i915#1072] / [i915#9732]) -> [SKIP][482] ([i915#1072] / [i915#4423] / [i915#9732])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-dg1-13/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-dg1-19/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][483] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][484] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          [SKIP][485] ([i915#1072] / [i915#9732]) -> [SKIP][486] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@kms_psr@psr2-suspend.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-rkl:          [SKIP][487] ([i915#3555]) -> [SKIP][488] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-rkl:          [SKIP][489] ([i915#14544] / [i915#9906]) -> [SKIP][490] ([i915#9906])
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][491] ([i915#15243] / [i915#3555]) -> [SKIP][492] ([i915#14544] / [i915#15243] / [i915#3555])
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@kms_vrr@flip-dpms.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@kms_vrr@flip-dpms.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][493] ([i915#14544] / [i915#2434]) -> [SKIP][494] ([i915#2434])
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-6/igt@perf@mi-rpc.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-1/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][495] ([i915#8516]) -> [SKIP][496] ([i915#14544] / [i915#8516])
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          [INCOMPLETE][497] ([i915#13356]) -> [INCOMPLETE][498] ([i915#13356] / [i915#14242])
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-glk8/igt@perf_pmu@rc6-suspend.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-glk5/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][499] ([i915#3291] / [i915#3708]) -> [SKIP][500] ([i915#14544] / [i915#3291] / [i915#3708])
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-4/igt@prime_vgem@basic-read.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][501] ([i915#3708]) -> [SKIP][502] ([i915#14544] / [i915#3708])
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17877/shard-rkl-5/igt@prime_vgem@fence-read-hang.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15573]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573
>   [i915#15574]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15591
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17877 -> Patchwork_160563v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17877: ab42b1c3fe4ce1ae5534c51b880d3a97e6bba145 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8715: 8715
>   Patchwork_160563v1: ab42b1c3fe4ce1ae5534c51b880d3a97e6bba145 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160563v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
