Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9388ED0360B
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 15:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A904B10E753;
	Thu,  8 Jan 2026 14:35:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="at5m5IMF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F4810E752;
 Thu,  8 Jan 2026 14:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767882943; x=1799418943;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=JEgGUdQYqtEPS7h+8+jhSH5zIlJ44CfURQBuwD+8a8Y=;
 b=at5m5IMFtudBXTpskpF4cWDqOiWCsavgJQ5Dzis0zIj5WEyrQpc1gmw1
 39KmK8bdpZb1Cyg8bt04JmVFy479ilYoGNnNjXHDw8L02xfMcYVB6Lx00
 KyWridlxeNJZkcZokWMJvi6tqYJMSM3KJGltLNe2JkWsBv6OQrv50mfeq
 Oj7ciBtMOI8yvzyCzZYnRSOttLDcusfGuPH+deEiIWDqDaBAMTFTZRuL2
 l/6TGDkXrOrzNSnwQJGrVqX9Gnuz1OW/sWWwfSlwWzO/YaRErbxj7WRIO
 +IrYlxaUTXbEyAiZMYPgRhKOCq6tPgq5Vxuv2IGbGQH7McyaP02MrCHHh Q==;
X-CSE-ConnectionGUID: xVuJaSqgS52xODwaXvyiGg==
X-CSE-MsgGUID: fmwpD8WuQVa8UO9mQEIiGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="79559847"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="79559847"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:35:43 -0800
X-CSE-ConnectionGUID: +0MZLvj9ROKOJIAC7crjSg==
X-CSE-MsgGUID: E5F8myPjR4CCWRcpP63PrQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:35:42 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:35:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 06:35:42 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:35:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yD5DLnI0EiOs5vveHZQeeS8mLHThi1Xwb/nhMtJQhO+oy6Wnam7xHlPXhW4qe9m5zQ+ETR0oHhJl/J42He09UNOWzc+RmzIamYdTgT5AtGzS1jyBcWSg8Jc8U/nD0/3gZTQauLa9ubalVU4n3Y5J5jNcKtB9ZU5wLbzUAE3aesF7l44rs+NKfJWt0PCzHed8RSswAVm+cRJ0Jwslf90+eUwUBKvYH1jf7KaBxoJlh6bgqqbvS+KYPzHHZ0/If+wJ7H+gP5RN+8k1YjCY77wTpAPJy/sQoPAgTokw80hgSVW1PQ5/vIYWlxe70gPyiP7EAO4lt+sNARXOD2xOMoAwgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KWkiiRhEYhMLv8aPoCZNxkkzN4PXrfhPjFEJNHYahj0=;
 b=AcZ2kqGwCC1LFlLEX2EU61Pc9Y+LR7eyqhx/zsPErM5Svkzk/8eWP4alHFHe/p8TgHI15QzDkDzG500TzeKyoCG4zSrYmB8XiRvahVlknUcjVPPVxHKdGW5oAsABxgQuWg5B8fAiFI7mgrb8FXwjsUpdqs0X6YtCE3Px4HPLN98KqqC1lHqGaGioNU6PzqesZwFz7wCRbipuhqFOlMqyp0gwEgqb5XssUPg+POLXBTQ/IVlF9zJIV2ueQXbwiFWk62GJWG6QG5t1rVyUTPj5h0iJbjyih+NRnfR23ggPGxbBX2WXGZsk3ncRH+wqsEyLbjkTdh8NsH2vFsVWMMBA2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7244.namprd11.prod.outlook.com (2603:10b6:930:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.3; Thu, 8 Jan
 2026 14:35:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 14:35:40 +0000
Date: Thu, 8 Jan 2026 16:35:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Message-ID: <aV_AuH7hzqOfr8ev@ideak-desk>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
 <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO2P265CA0072.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::36) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7244:EE_
X-MS-Office365-Filtering-Correlation-Id: cf72bd6f-6dfc-4cf6-b44c-08de4ec3322e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?36LESx5fuBJT0LampQZ9INkDV2hHSPsDiZ1P+WMiMW42ObcLeefU4rzgUPll?=
 =?us-ascii?Q?dFiZ/xwQO0g4v482BDZNL0cLz5JHWvlJNirEmfxQkAO08YGvyi3zdcFjZym5?=
 =?us-ascii?Q?dThQbzwSOYodvv+O31jDIxNpofXx7X+eoMaS0hE+oRSXRD5x2nTjfjGwmz+w?=
 =?us-ascii?Q?8gyJ7yYNANiN2PFC9J/Rqxw34Dg/UfznFZqYnIOfiesrtDHa+Q7zSUEma6r2?=
 =?us-ascii?Q?lAL5UHQMnxiKRbosHvTujdfVxo7sWCK/YPz0PhS3l7aDQQNjl5M93Txb5kew?=
 =?us-ascii?Q?827PQNhtxzYXPvZoct48AD0gTghWUvZNvcpZrd4V8ItFJ9C1IGis80f5mTUF?=
 =?us-ascii?Q?niW5CUTaY5kQaqQPSyNK3bsejlwv2CpWSKKoik0L1BuE7Z71yeOlq0qbrrU9?=
 =?us-ascii?Q?exy6rG6wOJHY9sWlczkoRq8cSY75/4kOx5nZmuUmJB1GEVXw+dApT3MyQNGz?=
 =?us-ascii?Q?5jamV8ACTLA08g4/UBupnF+r9JVHHFUAjsmlwPpqrmPXWhwWZ2XAPO+CI9Nk?=
 =?us-ascii?Q?vwrKsjVyzkMBaLoweXq64282L4l5STbt12H71N9kIY+nHO9yFKO8J6k+J1WH?=
 =?us-ascii?Q?1ckDKqPoCjMbk0qIe13TT2qEUN9JTpyKDTrLOuFEoWQ3JPdrz+RAdlyrii3V?=
 =?us-ascii?Q?JBvrId8H17O1cEblhlyH/MS2BkeRwLBxVx4wGQHldQvWMJkYEYAfjSIqWGWZ?=
 =?us-ascii?Q?bRrw0IcEex4fT/odyk8eNjXGWzq51zUC3RK5GJCRGoV8NJ4kkbkNJ4I2ZmyK?=
 =?us-ascii?Q?qSBmm2EOB6+0tyANW5EmF5gLsYnILN49OF4kTEeE/O74/M2qHw2qgyiRFehK?=
 =?us-ascii?Q?BlcOBj3xxTwOxb9JogOtsVgkiB95UIVB2HkgTyFlk2acty2K9fespbMS3SdN?=
 =?us-ascii?Q?54zqdOiO1V4ykB8OiMmKKewDfxLY8JW2wfjkcOoh0naFssDDTbdHtiaOVI7c?=
 =?us-ascii?Q?t8fx0ZCbnjzsPEpBRI1JYfF1YTCB89lz/Jzl9z+da9HY7M7bn79Um57e2Hki?=
 =?us-ascii?Q?ORgUYf/rUcIhNUDrm9fyfv4QvJ5mrDCB/j/TewDmVEN+m87bn+7vKJvPDSrJ?=
 =?us-ascii?Q?YpZmq0yU0dyUjv0xnDXdYYwyKIMjCZFMD9XpRyKcBm5VkgXtvUlwIOBEpu1R?=
 =?us-ascii?Q?exEZ8XX0oaZHb18BKo2LOjilX3CsE80DidoZ3CiX03xJlrnk9+894DTBFaxB?=
 =?us-ascii?Q?kVlEiIpDNOsvtZxM9z6fhVXw3dPMUlx8bhCM6gtqkI3x75MIngUJKUMRlRDL?=
 =?us-ascii?Q?mVqWRVn5q6eX+QLUQWE8L77q4ljh841UGCVwSB8ax10x7kRsXbctUvIZ0KBL?=
 =?us-ascii?Q?9ji7kKvVxc3u86VO16MJNZDcyQOTAadF1Yt5OypNjt8eC+4FYsMBO91shl2X?=
 =?us-ascii?Q?4PsBApw7Wah4Koer2LN2mPs0IPnqQdfbDtLEjIp4ju9imL/M8MEewofjICnz?=
 =?us-ascii?Q?C6JCdmTrZSftzNdXGDDuQtoUItdjD98T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dgxCND/+6mSAlXOup4T5PC3sKt4swQErcay8vcQzmkoys2RJfO4lCuqAQP5+?=
 =?us-ascii?Q?Ww3Wf1I2QQT+kYdvoBG767GlBkloabIQ6lSBfzPQPgvM+3M4tJlMu3LPEcL0?=
 =?us-ascii?Q?PpFdTKrsAkTqZAVukXSOxNRnK4qDfatkZRLeCFpTX/PqaIhFtj6eJ/ZNgiU1?=
 =?us-ascii?Q?UTG14gjlFYQww0+nami6T/DBlmprR4gidVDYU6ruF7gXSVpAzTPONiaSJ0Jj?=
 =?us-ascii?Q?3ess5w07GmuFbRzFHgBQUjg6A6/EdOmmU+0fDD4MmBZtxqK6xC73MqVPn3Xp?=
 =?us-ascii?Q?667PuxXjI5DT5LrG2S68edDG/xSvViMEBwyPsjPjjGBuiouTFuwQVcGGit/k?=
 =?us-ascii?Q?X4T9B8ncqGyTfowOBlgkc0SAwhi0Dc0HpscbaLqlDq6gQWlWeDUajKzYqZgD?=
 =?us-ascii?Q?q2on+ZBnM4dzOacB5Mms+dL8BVJrvq8oh0xkgS0pfB/qJjHjgPlxJJ11N+Hl?=
 =?us-ascii?Q?NUwHIZBqRLtWR4dTE/pp7ZvLndS8yo7CCZhN0+xa1cgMsebjoxmIFgJjT5Zr?=
 =?us-ascii?Q?yU32aW/jfACzXOQQaGm4PLjSa9JtUA4gT1sCqjSlgH89AkGkEfdCtl5KAAca?=
 =?us-ascii?Q?jgBKgBPfUVb9U50FIlzOQ5XDaH+UT6spnM7LeWg0UYaANPRZDfrPSKs9gtP7?=
 =?us-ascii?Q?fEXRrCdOEjqa90PnXH231bQuhbmljB9HpavufazcyreswBQWM4/1WpBFsbdk?=
 =?us-ascii?Q?6wYiZEpwvx3+VKMnJL/Rk6m+ZHhDQ/7T5Lwc+lvH089OsQYniVZSLvU7Pq4H?=
 =?us-ascii?Q?/7b1BkBJs/XQo3/e54KwJLUYyYs/XF+80jBNvy8MKZa3+kDnuBTjW+pue30p?=
 =?us-ascii?Q?0izBvs5KHFnceHzwqVnkmTuA2Kf0O+S25tlWGs+TpzK2T+WiBUT65IOIGHJa?=
 =?us-ascii?Q?enSrGuyNG3kfOoq1bf5aJdmteMXTT0B5HAfEg/WFzI5WUpGCOQPw/D30cUgR?=
 =?us-ascii?Q?JKi3/CBXaQvTu7zJkvdCebOXWIhWxT3SBfb5ixeiJdGNw+CFpG+CKZDIKVUX?=
 =?us-ascii?Q?eZTZtY6FM/LcWfWos6sepPquww7ZlxiAtZ+LNtbleNrsLcmK+UFRGfF/1uGD?=
 =?us-ascii?Q?wn7+1x9tvj5l34yZ8nzVEkqamMD3svFZbBMcxJFNj31LmSgqb6HOc91q6Y41?=
 =?us-ascii?Q?hMOXOEdiRWJdAK9eBpTe7qgfdkee5V11c5R5K6HGIqaaarsmKrppk95FyDTY?=
 =?us-ascii?Q?eTVIrSf2DC//mE2gxjjCiVIq4i5/+8njgqujEddp6GmQMLFmuPkPgFBzFpRe?=
 =?us-ascii?Q?yvyjzfGHMgpp2zK1fXTkTvjPSI6JpJHu0mZKqTA3uMzefwRy1V3PRkuXHmgI?=
 =?us-ascii?Q?Bnwu9WBmoQ65jILy5ohV0ApiUb5m6nabHPy768+0dWv3GXPixCNOm6rPyqrK?=
 =?us-ascii?Q?N/aLmqlQvVqnpxrbRUrtjekcgw+rL9LHzwjbY7qQjpvnt/+UQ3yAt7MtAHnl?=
 =?us-ascii?Q?v1FVDoeatzmW420ZTt5a3escO67Jr7HvM+GomF0n7H3pr5V8T1rFNcmBM2qA?=
 =?us-ascii?Q?KsKM34tNXYnomLh4X1+db+qrR+srNRiilJ2Ir3+bCAE23tK3WPTJhrijp7po?=
 =?us-ascii?Q?wkTF2ekM7CH/zJBak+6+46QLXbutPEZUYVegJ/Wm+i1OM0NwdHGT5J+xpmCS?=
 =?us-ascii?Q?MnWkztWS32DCYvEL6RpxTwHSGSPbN7KPF1k5JuEAppx5IRoVJwsmwtv1qIhl?=
 =?us-ascii?Q?vNHgbgP5O+mWatbmisVoI521EgB4G82SlC9l4ljie916ty+6oSOgj+Z8CsQE?=
 =?us-ascii?Q?7GmLIJFKRCGeFTdjdVJcccd3B4WcPtQw11ghe97E9uNT1wXbsSdsIbERaAfb?=
X-MS-Exchange-AntiSpam-MessageData-1: wIZPSQUVmKL7sg==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf72bd6f-6dfc-4cf6-b44c-08de4ec3322e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 14:35:40.1794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/koR8MPYJDBpnu4IzuVQ/yQQmCBH58sH+4d7x5RRQYRcrBPCy5JdgzCGLazDNWuvC8696LoPGRO0z1+m39sRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7244
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

On Tue, Jan 06, 2026 at 05:07:25AM +0000, Kandpal, Suraj wrote:
> ...
>
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index e33f6f48a6ce..13acfc7c0469 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> >
> > ...
> >
> > +void intel_lt_phy_verify_plls(struct intel_display *display)
> > +{
> > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
> > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
> > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables);
> > +}
>
> Same thing as the previous patch this is not needed.  Moreover we do
> not go through any algorithm for edp and dp tables for LT PHY hence
> the Rate always matches. This patch should be dropped.

Similarly to my comment on the previous patch, the tables entries should
be kept correct even after they were initially added. So please don't
drop this patch.

> Regards,
> Suraj Kandpal
