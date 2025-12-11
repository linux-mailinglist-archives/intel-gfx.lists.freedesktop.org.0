Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D27DCB56B6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 10:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D0E10E0EF;
	Thu, 11 Dec 2025 09:52:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FTxTLrRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF79E10E0EF;
 Thu, 11 Dec 2025 09:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765446756; x=1796982756;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0lkiU23AJFXa36OWqQKo95jiSWf4QKTtl8pPjGReyf0=;
 b=FTxTLrRQOs+gnd6lhp9Gh1UR90uQOBxHQOjBlGCVZyt+ptCUy0vockk5
 fvjqpohDnUaXLSe+NksHwDw8Yss12FCNtUOsJ6PMsCGAbw12Q0DkzK+/Z
 1dK9j4DDqJ81ZJIBlWbxZh8Y5k+6cdqihZIL5s1XHH7p8zir13t9o0BCN
 7ADoo2rFdmzfG4m7j0Zh58HEIH39jXcoThejfUoRFbaNldhmQu+3JvkUT
 y6V8fyldwOc8aGgvbmDEamiG6Uv55amGC/HsQa7XVi2tk/9fnYGkIN//c
 p7q5A1xdDafCicncWis4LNZayDlHHU6LgoA1euQ+4EsdoMQpGZFPePqvq g==;
X-CSE-ConnectionGUID: +iiZE7ewQveR/CM7R8hJQQ==
X-CSE-MsgGUID: s4G3C8UeT7y49DEpyEvgQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71291757"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71291757"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 01:52:35 -0800
X-CSE-ConnectionGUID: v1QNK+q9ReqpfhX2IUHdgA==
X-CSE-MsgGUID: iKFhSfETR3aPW9BygdCQEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="234163418"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 01:52:35 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 01:52:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 01:52:34 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 01:52:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XJbAJUoAh4XvKfKxtbufZL6CWSHWjNcZY9wXhrR8ViHN8mR9cWlZtiXdA0x/Wlm6v5Y+1KnAbdvBVwAlmeAk1aFEcouoOFXJ9wscXI2SLeq91bUcnWcWukTh8ktDUZANe6cwIziON9yvnkf5HG09VxVZKVh4w1biO8ejrU1PBNJaHlNuReiT1QSNcZpn1HQDbTqjkjyIyc+P67F7GHq+lw56UfNEevcUa8CU+OKEmoat6hDemc8qc5pu6+YyeOITfrFXnfVjn1w1Tg9NZ3PIEz6t4cLRMpOqALCJliI4UojdBHnYAPd3DnFohXD4j1kqauKVJml1E1hw2vw0htZqGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8+AXc2rJQRbzUY/2+m/Z1NzmJZ9dg6HgEI7OiRTki6g=;
 b=rOdXMfyUlKSn1GrEUIcbU3jxiv+4/5W1s/wJm74ClWOZhpva+hXIUr9lrkap6Gf3MZtZxAvjUvlzknf/LjVQw9fwYX29QUiF0Ex0838B7ux49v5/GB0yoeb90DisxIIofo0iFmeq3YrJdIOSer0oK7+N49ZlajBjJv1Gt8yxkcRZ41zAcnwyrI9odirxn8fIXymano0PQmM0DPvmi4MWoUMGebw2JLlDfRgipKRrfJVD04o5Jk2DtB6jkn8T8Z8C2HH+W4QE95wI5cibaGMaZCVFF1CipeQ1PcQiSCzpQf88AU316r0TpuqvolSfRrM1IOiK3/ZoxJeuO7IQIdUe2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by SJ1PR11MB6177.namprd11.prod.outlook.com (2603:10b6:a03:45c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Thu, 11 Dec
 2025 09:52:32 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 09:52:32 +0000
Date: Thu, 11 Dec 2025 11:52:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Message-ID: <aTqUQGFsH3NwpDi4@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-50-imre.deak@intel.com>
 <235d747093d37d07308eaadc08c12ad357b98915.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <235d747093d37d07308eaadc08c12ad357b98915.camel@intel.com>
X-ClientProxiedBy: LO2P265CA0426.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::30) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|SJ1PR11MB6177:EE_
X-MS-Office365-Filtering-Correlation-Id: 21adf08a-20f1-4be9-7b7f-08de389af548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?BiPNuAmqIfpjoeA+Mh+rdsZNOyFZwDOcY3zWkR98PvGrmoDWoU/TFhrOex?=
 =?iso-8859-1?Q?/G0+odLrloURiG/AXBKigqbSj3EGPiVexuaDIJKymzsVn4+w/PsdsvC10T?=
 =?iso-8859-1?Q?4jOBKyg3eSQYVarZJ6v5BV7AEMrSXn6Zxqddzyh1bz8ZSJminZH+4YCCYm?=
 =?iso-8859-1?Q?VImP3FW2gaj2fu3A8nnU3ltm5s+tUBJv8R5QiG27ngcyhhPlF1Zl/+4eyK?=
 =?iso-8859-1?Q?seF0ff41KJ6tgVCNFK+ixv3aQzNf4vQdWL29AJVdJDM5Fy0nNapoUnYlu/?=
 =?iso-8859-1?Q?iTSqjNKQSel8jrfjPc9nFixFGR+xYKwZ1LdY409ePyeWaT2K+KsiriNFUd?=
 =?iso-8859-1?Q?gjqQool+odNiDdX8He2SnXwCF7+meB8anpJUXYoV1njx4jHhkeXhlMIMZc?=
 =?iso-8859-1?Q?Xo0SyITLG6950C1btRJwG3EOqH417zN/fhOJQ9TUK/T5ptQ6XUHwbFHgS+?=
 =?iso-8859-1?Q?+o5WACmGo1yUArJv/jDLPq3Ib006GycJmdF4bRhmyl5tx1EBn4+R7Quw6f?=
 =?iso-8859-1?Q?QfHQTecQlfc3rhk6o3/8QcAZJkNPmQ9jJk2UrXhCnc7fk5DR9+5m9nB+EP?=
 =?iso-8859-1?Q?TAhU6YQ1nGXxNYpSS+6hHUoGVQjQwDQ0exkIq/ZHmfxaPGma/LSpmp+3l9?=
 =?iso-8859-1?Q?PFH+y+ncldSIjCGgJJljprzKNEkzktQDyIQC8T/53KWonYWXABIWaSMd59?=
 =?iso-8859-1?Q?LGfda0iPT+6MxeKBw2teT5qfKrrWa9hplKGsQ9ay3cYFpa/d5NddNd+xtj?=
 =?iso-8859-1?Q?DEjmzgUJDvPWDo87oVD/9FuXyAxh+tc3CHGlRmc40f6KWFQW0adxLuqsvi?=
 =?iso-8859-1?Q?WZd93T7cW4RUsTkp96aaafOh+oC3CmlkU78FFjMrX6A4J3hfq9MvyuZ3O1?=
 =?iso-8859-1?Q?J0ix/NncmLi/f6UL0tkUn/AY0HAPeWsPzQhb7elSQASXi073KgbaG0YJvq?=
 =?iso-8859-1?Q?X0Oxy8SpSLSyTKEPDNaMsLYWjKUqpVepb8wZ/bMnmoL+k7cmzL70gQhN6p?=
 =?iso-8859-1?Q?SRrGP1yj9AyHis7onoekGc/4/+0GPmSY9otTIoAnFzvDu0umYq9VnO6HYX?=
 =?iso-8859-1?Q?zzO/afLS48ZlMlcjaTc4nkEigs4SxJ6cs6lqdUl3HH+KGzVvfOVR6mYApz?=
 =?iso-8859-1?Q?2U7HmhG0/3Qc/k2vf8rx+annBo7YHFBc31yc23lFRWgRb4zBgd/4RfhgtX?=
 =?iso-8859-1?Q?roVieOG7ByNsa5l3hn3/BuLDNsohl0MCdjhxrezy1kUgSQ/cdeE/eihUVz?=
 =?iso-8859-1?Q?sXYiMe+gVxaKiO5GPjTKdLCWDxooP3oDeutGIvshDG81ockKR035SKfmfw?=
 =?iso-8859-1?Q?EykC8JKEij3XRrz/V5LaQMNUrYlgzmYHczMLtzDTGy0q4h0h0YrcbyFHTg?=
 =?iso-8859-1?Q?azYAjVOVomFP7hSeOrHTWA19RjqW8MXPloDQoLPbyz61REZ+/qlpAeq9De?=
 =?iso-8859-1?Q?UpcA26Q7T9KyjJzimkadL9STHvEH8TLPtn2GmINsgUTYJWgAzh6ikQZXHB?=
 =?iso-8859-1?Q?DkmQEgccVfK8RDCgJA1vS2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?FJI5S8xQjCH68v64/iAc2G4FmwqeMhoVHyxkT9qWPSHlDBYlROKl5hVHyr?=
 =?iso-8859-1?Q?x2hIpotMpnzjfUnmIiOZbLuzBfJ8X5kFZNZazR2O0yeiRmG/ctLvCg0Das?=
 =?iso-8859-1?Q?Eo26V05HK0YTFa7Aj058vv/R81jVGlOEqRo02gtEtdjOT/kMbLeN5eSaGy?=
 =?iso-8859-1?Q?9YoDpKCf5+BzGDavTL15F8CeKxX5cw8RQiWiM51K3XnWMqjE3jejFKpBUl?=
 =?iso-8859-1?Q?qNjZnxdBu3lvtQz0BNFhbtfLfkH0xztdXaXYSG/OpYRqA/QNMefFGjXrja?=
 =?iso-8859-1?Q?sRtUIqQ+Ml2tKof6OT9HsvbUJtnQ8W708bAxGVhyPqwvVuzxQE3XFxxVRN?=
 =?iso-8859-1?Q?mGJfCIL0QYZxdukb3JeCef9fdR9rjSeAKo6+oImZEcYdGV2Mpayi9mCfsb?=
 =?iso-8859-1?Q?uKim2hqN9oqPlPFMR5FCdyrOgILDfvqeTQkge8SX/gYLFHV3gnN2nMI0qe?=
 =?iso-8859-1?Q?OB8wwtLUrM9oc79gfKBXB8macfHY8B1Fq+djCEiSHbebCHfnvKYAUD417/?=
 =?iso-8859-1?Q?Bdh1Qw0f4miJUWKeyk5YOTyXZ3U3Ry0x5IKjjME4JbrF/CXLfKlF17CySf?=
 =?iso-8859-1?Q?imyHTJGBLrdeKFSGK4in9biXvDd6OJ0DXCPIb3HCnjD2rBtYS5i6ayn2qD?=
 =?iso-8859-1?Q?RNVCd5oVS7S1KYWvwuYqaSpisH5B307YMkRrW0bVTPD7GRgivEeexAp9Mq?=
 =?iso-8859-1?Q?vlmHTmwdsvXo4SH6WQKUPuDRZwRtxZAiVuwr1/RPj6zuJ3/cgWRgWp7+IM?=
 =?iso-8859-1?Q?hSIin91LY/d5U/Pm8v47SxgoY0mGz/NMkX66DLpL9MqsOI6thnWaVQjYGV?=
 =?iso-8859-1?Q?ARZikysGvUIDZ/2GsIW0CLIICDofoLRxjoU9eSx7uyasX3E81n2jDrS4Zt?=
 =?iso-8859-1?Q?sF5olLiWe724lFTjXRmJfguamlGVbrTyU/7OyZZzAmh1mZbcgE57vebdPk?=
 =?iso-8859-1?Q?rGEsLrOZBEO98z2v40+5+MrjxvtrZSX1Efq9SlHcqwHrkx5fLQkZXdnmcl?=
 =?iso-8859-1?Q?d7dbS+ZrDSz+VgIuDI/9jAeTLVM9lM3bT9CWLFUSz6+2JVrnGIkbYfQPIb?=
 =?iso-8859-1?Q?/aQYAJ1zFdmzlWEsjgRgEQh9k9//nt7p4GIZiepY13Ice2/u0x2rR92CVd?=
 =?iso-8859-1?Q?bnxHq6FawyJoNFcKjYYx5H4sknx6fns1lqA2Y1fx4qBcSRW2nTVXKet/Wt?=
 =?iso-8859-1?Q?7yOyNpwGGVcUQ3l5FD9t8LsG9X7/pODVodIrmlv6qlLuQxLcwcF7vOi2lX?=
 =?iso-8859-1?Q?LHbQ6gJiTFEjFuNsRr+dISBTjoQdcvUkrWYy5O8jczlFPSAxR7VU7cQfLl?=
 =?iso-8859-1?Q?Js1eKkTMIOuENK/70200Zn1ErdL5aFhpmnxN21x2iIZlt/lYy8Ugk0+7tT?=
 =?iso-8859-1?Q?xUirbwGI0wMuemme3yzfndoN3tAX00DUfjb9haYVyYhtpdLfLUaWlHg1MR?=
 =?iso-8859-1?Q?NqmpIyzRf7zV3+EKPf2fGqyCTz+B7KDMfaVGzYBxj9QIYKPL5zjuHWzYGr?=
 =?iso-8859-1?Q?L7X65vrdoGZXnBUnIUtvW5WcfVlRChZH5jnj6i9HXOj/2Oq3tQjCisggbY?=
 =?iso-8859-1?Q?Jm7/RtNYUWgrmlKZu0CeTsb2dhFSzdfIbKI/AJJDQQlUIAukP+drOjbt/q?=
 =?iso-8859-1?Q?XxnwCdteZps5BUnHn7IDiRwgjvMoTWe4IVQYKiKSs7eFesycVt0tgVeBtI?=
 =?iso-8859-1?Q?t4THei46YODVBvBtTI407wDJ5qiAkLYMiAQU8Q4F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21adf08a-20f1-4be9-7b7f-08de389af548
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 09:52:32.6301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E9rmfTzwWDiC0O7nuxPEszp5SQ05QGPKyBgLOzcQQQgbPa2ag7y71aCEXSxtenYuaASC3/0UL3s7JIV3XUlCJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6177
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 11, 2025 at 08:55:03AM +0200, Jouni Hogander wrote:
> On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:
> > Add intel_dp_dsc_get_slice_config() to compute the detailed slice
> > configuration and determine the slices-per-line value (returned by
> > intel_dp_dsc_get_slice_count()) using this function.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++++++----
> > --
> >  1 file changed, 28 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0db401ec0156f..003f4b18c1175 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -971,10 +971,10 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
> >  	 */
> >  	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> >  			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
> > -		return 0;
> > +		return false;
> 
> Why you are changing these to return false? Otherwise looks ok.

Uh, thanks for catching this. It's a rebase fail on my part after
reordering this patch wrt. "Factor out intel_dp_dsc_min_slice_count()"
in the patchset. What I meant was to change the return value to a bool
only for intel_dp_dsc_get_slice_count()/intel_dp_dsc_get_slice_config(),
will send an updated version.

> 
> BR,
> 
> Jouni Högander
> 
> >  
> >  	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
> > -		return 0;
> > +		return false;
> >  
> >  	/*
> >  	 * TODO: Pass the total pixel rate of all the streams transferred to
> > @@ -1009,7 +1009,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
> >  		drm_dbg_kms(display->drm,
> >  			    "Unsupported slice width %d by DP DSC Sink device\n",
> >  			    max_slice_width);
> > -		return 0;
> > +		return false;
> >  	}
> >  	/* Also take into account max slice width */
> >  	min_slice_count = max(min_slice_count,
> > @@ -1018,9 +1018,11 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
> >  	return min_slice_count;
> >  }
> >  
> > -u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > -				int mode_clock, int mode_hdisplay,
> > -				int num_joined_pipes)
> > +static bool
> > +intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
> > +			      int mode_clock, int mode_hdisplay,
> > +			      int num_joined_pipes,
> > +			      struct intel_dsc_slice_config *config_ret)
> >  {
> >  	struct intel_display *display = to_intel_display(connector);
> >  	int min_slice_count =
> > @@ -1057,8 +1059,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> >  		if (mode_hdisplay % slices_per_line)
> >  			continue;
> >  
> > -		if (min_slice_count <= slices_per_line)
> > -			return slices_per_line;
> > +		if (min_slice_count <= slices_per_line) {
> > +			*config_ret = config;
> > +
> > +			return true;
> > +		}
> >  	}
> >  
> >  	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
> > @@ -1069,7 +1074,21 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> >  		    min_slice_count,
> >  		    (int)BITS_PER_TYPE(sink_slice_count_mask), &sink_slice_count_mask);
> >  
> > -	return 0;
> > +	return false;
> > +}
> > +
> > +u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > +				int mode_clock, int mode_hdisplay,
> > +				int num_joined_pipes)
> > +{
> > +	struct intel_dsc_slice_config config;
> > +
> > +	if (!intel_dp_dsc_get_slice_config(connector,
> > +					   mode_clock, mode_hdisplay,
> > +					   num_joined_pipes, &config))
> > +		return 0;
> > +
> > +	return intel_dsc_line_slice_count(&config);
> >  }
> >  
> >  static bool source_can_output(struct intel_dp *intel_dp,
