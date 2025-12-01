Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C504C967C7
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 10:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC08910E0E9;
	Mon,  1 Dec 2025 09:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sy82qnvx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCA510E0E9;
 Mon,  1 Dec 2025 09:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764582885; x=1796118885;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=msuBmuNwHbx4mHxkW5WRUh5JAJNaCbqXC4zTPB+4eL8=;
 b=Sy82qnvxXpT93cCLWdQZy3+M5cuhjTm7/NC2ntKTHKPGPBjwn2xzrcC3
 KapcPQ4mkqMRsxprtzohPl3zEzbRT6h5b1yjllUFMdRt/jtghFkQLKfjF
 96cIObf+wI2FCP1MJr3ucc3E43ZYtdj3YZsSzWYBg8TXv7EDa7a/psSul
 oSNOfnAxsl/bmqkruI/7twzR4mlIFfS8QtDnzGRvL68a5KuggURWGkuOX
 F881b4q0Skh7r8ekLja6NG1qJJGxoMM7oWUjH9Q4lXe4L+sdqlWTS1rjZ
 vWprdOpokAH82Jj06+h5GGBb+y2HimrF/ZzqHFQ1DFG1W/EesJpUnZz2N g==;
X-CSE-ConnectionGUID: M1YxGPtySTuHwFIMA3ZVqQ==
X-CSE-MsgGUID: vQhx0jJ9Q0imJbtDp/jUrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="83905379"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="83905379"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 01:54:43 -0800
X-CSE-ConnectionGUID: Ob5VDLYJTFCYGsJrXdAK1g==
X-CSE-MsgGUID: oPSAD5tCSx6ThCXw7KNTIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="224724266"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 01:54:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 01:54:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 01:54:42 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 01:54:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gCrxS9Nj73UjmwoktLv9lcZPhpaJHPnyNDOaNiNcAtydi/kkZxwYF604XBU/z5il7N4+t8z/ysLnCAe08TqaFJvHY5GUyvJ0tOcEmgctGDQFf6f9oaP2oAUK3OMNj0K828DBf0Y1D6RW8+nyX6oPnxKCnGCLSEJR602qiEPPDcQztzQc1V3dl1Z8WuND3tVSlUl/ftypT/wlAtbCr3p2Ku+8z4KsY0xclBfkTq7o9UdFDbqUlqnoMyVGfBGPyMSsvEpDoh1wFLVeRBdq1K/xtp17bCO3xK1NWHl5k5200cajizEIh6xC3SGyvBr7jEg82lXr951HWo4kkCPCX05z3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fMeJLQQi2QXluNqHe3JTmDsTF8S6zj+0Euwhqh5H6+A=;
 b=mJ2C3gk9llZLF5HDLbY3Jxv7qtLB+mUfvXpCu1xlejpjKjR3YqoXnX9k173/LTpFotT6OZAR1rVc2mnJiaSo126aigon4fv0rnAd+ilcabUSZgcuUQaI1omtzebbmzcqaqNIV9X2RXAoeJ2Igt6Ux7VuDenMUeVc/sdyXAXpVH+eyXfsuf3hf5bzX2B64HfsvpFUFtU4LAa1dmFzMVKsyZP7f5yGRUji80Wf/wY+2hLNXzqzHFHvICjoGlTO4jUZFtgP5tSB2w1I4Xs/CiBy/3Q9E8nEc2pfOymSSPdyEiOry2njUECRBqqAYpLEAMAWP4M5TV1Ng/95z248SOMKdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 09:54:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 09:54:41 +0000
Date: Mon, 1 Dec 2025 11:54:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/8] drm/i915/psr: Add panel granularity information into
 intel_connector
Message-ID: <aS1l21BSrWRU9ZX3@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-2-jouni.hogander@intel.com>
X-ClientProxiedBy: LO2P265CA0466.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW6PR11MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: 35c3df1d-5582-4848-c011-08de30bfa5a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?vVwu1b+td6nxu8QZ3pKHbHmQ15ZgYUCXG1t6IVcjhgpSgu9b9rutUExopO?=
 =?iso-8859-1?Q?KwvNIo6qL9QP5FF9I0LufbUnjW24xQcG6RBGirQT/GajsbEF3KU9iUXuKy?=
 =?iso-8859-1?Q?clyLOwf40qp/JHfUFF3w/Ko6l176OwosEjM/Brs9BMYQpOvcExtkBTKZ99?=
 =?iso-8859-1?Q?SJWmEzF2Af9oLaqxcEAF80cHO64+UlOnCDhE7a6KNDKhRUN++UCjLyS4GX?=
 =?iso-8859-1?Q?aZiGfyAJswrGnZoUMK5oCu6ITFdzTGQ61tkBJVZl9r98/Zu9iU5x5wWLJj?=
 =?iso-8859-1?Q?jyvtouri/KcMhA/7Xvd0Pu/gf2iZrP0HUzP5EpqyL8uuhRPcYNsyD+8VhW?=
 =?iso-8859-1?Q?3g0QpuPql00OfXbfmeO1LbU+4LnATC9Uy98lTPiVv9KQHp+9LlF81fG6C8?=
 =?iso-8859-1?Q?QA5T7GVCiuvHiflGRhviJHblCbS2bJJRNTzh4lf/7y2ruhJ1CD1n2Fi/Jq?=
 =?iso-8859-1?Q?/VgCrBbY3pNU0ga2q3Ppo1Ev4e2yW5r6Uy5Iv+kIITdtkS5cgX557J8osm?=
 =?iso-8859-1?Q?0U83f8wsHzKHs9fSoWYmeGizEwgFFcCFJoS1wRUkB76H6G/evQ0hAnsZkB?=
 =?iso-8859-1?Q?8VTUnwfKvUGwDQlGrutuU5w33pg/dz0PRJwNaBHJRJOU8VXip1zBNX6wbo?=
 =?iso-8859-1?Q?r9nbh5DbM0dZKFxos/92w+/FMXK10aVXYbYdkTmHJi7NkVJE2pJx7oFyKw?=
 =?iso-8859-1?Q?pN2oF4KbCLRBmzYa0K90+buoOcr6yosaBHiqJ1yfAEsdyuiMsY15EOBmIN?=
 =?iso-8859-1?Q?HVZZ+ThzPdP4Ucu2xODRi+PYr1T97Aysqc7EUnkBlEmQeIa8D1swycSA5i?=
 =?iso-8859-1?Q?mPjjZgtxOwgH/hcoJw/Dvp1cCPw9TQ2Hlg3PIOvJnwxCQTNpgbEsUB5GMS?=
 =?iso-8859-1?Q?LAbcgBCbxiIdKsPh99a4qCa0wQ10I2Rx2uOay3iP/2HY+DG4YLVITZmImX?=
 =?iso-8859-1?Q?qjDtDV/TWdNEwJYV8UQkw+lo+whSuHZkCo0bySdo6hBEJxKGfa7trZQQv7?=
 =?iso-8859-1?Q?njGAAYzlwhejS7r+22vXHkr8LhURbewsN/zCtZ4ft590zNl0juCnCD1KId?=
 =?iso-8859-1?Q?58Qsy5XLj59zvVTSLYUJxzKGQOLwl8WsnNMN9P4zyWWSf+NBeMld6k18Vd?=
 =?iso-8859-1?Q?gnFbwFaaVx9TuUPOWWfTy+AfJAhtLhXF1gxjv6BLV4cAaa3IHiBetdYTft?=
 =?iso-8859-1?Q?0+Gok7tfwnYtW0K9hhcl5U21i0oxwk9F5KFMmv1X9QELevT757vjG2bEIg?=
 =?iso-8859-1?Q?l3LeexAj7R5cOiIlXsOeOa6nyd/0z9T/5tg3gJz9dXysoWaoHPlNu0/pdo?=
 =?iso-8859-1?Q?q2cYh8Vzlrv8CJzHOrKGUFdXCIthC/wD0vkLulHWyQo690tYauNLg+JLBA?=
 =?iso-8859-1?Q?r0HHnXgoSZ6LG1bc0SMUvXkJEgOgo4l5hwudQehXRZFJ9sg9fjbl4Yjf4a?=
 =?iso-8859-1?Q?OJZxcFH1S2jKej+DHz13tBHTQQosFoUfXyeMfWcIb3P0OXIZRUkXEzVzWG?=
 =?iso-8859-1?Q?ryGh+aZBMUMF0WYCrsyQSi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PPGo1ZQgzp9+ZSKHQEjmHrNANcd5JbIp18Ib2oxZFNdaRBLnjNu3wjzu6R?=
 =?iso-8859-1?Q?Gu+0THakgpSEiaCUZfrCy+IZwDAb/IO6E8S9uuKJuPhvCZGMbUUr0LICnA?=
 =?iso-8859-1?Q?MNGlYBOcNYIrTOvu4eQ72e28vYhKWHwsTBw4o0MNzv/gu3l1ugaTWAANvu?=
 =?iso-8859-1?Q?mKmGuumgSyiMYb9Kl4uzBDhSmwD9l3PTLsJrzWMyWtpw6R89OkXNEVWvlk?=
 =?iso-8859-1?Q?HCdKPB1LMxqXLYEHCIVNqgdr8cCsuuabcHbQyyl1pCA3Jc+KsYsfANLwgu?=
 =?iso-8859-1?Q?5FK7vlSMfOd1A6aCt/K6CeMT82s0navOhqZMky4y6X1Dhe4ESwV2LGdPeM?=
 =?iso-8859-1?Q?A7grCrSCXwm2RCkI4uGBNfhgPTltW2RmAl8JH9F/EBGJUD8D4BksVEYPjF?=
 =?iso-8859-1?Q?OzPKd6IIyAX/WNBRKGSQxrwdm5MDmj2sD1jWdOO9YGLIdVdVYSEfKcRiWo?=
 =?iso-8859-1?Q?UnoZ5LTiwVVz6AxtaqTZhBHHm3Svml5QxTX6tt469UsFXtmEsZfqu2LQAZ?=
 =?iso-8859-1?Q?NRwt0DmXQ9mlmRKgIzkk171wBVpKXcJMjatYSOj5yjlFP/T0Qge/XafepN?=
 =?iso-8859-1?Q?8/PGQughIb3FUUgVpmT59su5TiiwxL74CvSTste4mHC+AiwjkxeJK2HJQZ?=
 =?iso-8859-1?Q?Cd3GJRP1TCkY6wh0erpCWRhP5zMahDlEnWeIk/cOvA60aeNLAck05BX88k?=
 =?iso-8859-1?Q?j8543hWyGM93JIu6U5P/PjhN/6bhuag5ju1xW7pFytUl6RAal99fUBpEFO?=
 =?iso-8859-1?Q?7Jgegb5m9BOvDe2ZHjmQlZZq7d09l5dWQvfoCElaf5dBvrCAopWdWOuBMI?=
 =?iso-8859-1?Q?Z0ukjchszj6/I7V3TLUnIlmKPoivWgC3RgwTR0hQKb9ayYKDFsZYVmAMeZ?=
 =?iso-8859-1?Q?9lNqo8XcM0YsSBynjQ1bo/mq+r059/o/TwJwhAwMSOeHrj2JGsb95McW3r?=
 =?iso-8859-1?Q?+taRWxRMool76bKmRel1FAnKanBb+ubTrbsZQwXJdDwQXznUc75feMwHgx?=
 =?iso-8859-1?Q?XbQb9RRWwtWCypuGokLIlvIlDunlCbAk2JOElMefc0LTXau1crCslDBcVo?=
 =?iso-8859-1?Q?xLv/9M3N/IbWmw5Zx8nI+oOFXwyJFSpXyd79YdttEfvq0Ujzc8yeETem6Q?=
 =?iso-8859-1?Q?T6OcaIT0c1tlYmYAblWFUiQFtoU8j8rh0j4s/IAIUll4z/xZhbJdk9QFpa?=
 =?iso-8859-1?Q?D+0lRYjY2Ncr1PbJznXM7BvDP0uzCU+FrTxpJt7rSqR3vGPTF3pU9rfJJM?=
 =?iso-8859-1?Q?kQCCUJ9Nr5FAvHkUi+0IrqiCfQYKyHeIocf1NFEWmY8cbPGuZGcOkpK1Cx?=
 =?iso-8859-1?Q?m5p9joOyLZ3+ZNoYSy2h2EweooNp8frrVyyXEVvlSmySBR3SqE9shA/DPZ?=
 =?iso-8859-1?Q?6y2kXGYap60UG4tgy7Xs6vElr/MN0VdbGisHDe44NhhKRJw+5Ofnm/t3Vb?=
 =?iso-8859-1?Q?E+gduSObWy3whXj/ZHkSAGtTcguMvDao2kfEohSFg2qftFod08aGXZ2VJo?=
 =?iso-8859-1?Q?e+W0diDJtk1zmUmgDu8wj14n+py+XSVmA65m25YOxtGW4FHjtcYr8BmQng?=
 =?iso-8859-1?Q?MhDwS577sDQlontHUj/AuGcFs1zVHfwwdjgLWqrCodW2SD/cWMbTENkH1c?=
 =?iso-8859-1?Q?5CdAgPowIl1/LPv9MTQb8cQP5WayxAvSI/cfSb8AbLNRQOmiCm6DokHWnC?=
 =?iso-8859-1?Q?AFQGwrdb2AZ9L2cbOgKlE+HvY7exK8UGuovY1YeW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c3df1d-5582-4848-c011-08de30bfa5a1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 09:54:41.1514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F0eXnbu+Cx4j20ozAdhEiUh078tBEtHxeMhopAT7/B3OBBAzePNpoG2SqYTlQcvE2eWEk8OpsK0BRgIPHZLxWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
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

On Fri, Nov 21, 2025 at 01:16:48PM +0200, Jouni Högander wrote:
> As a preparation for MST Panel Replay implementation add psr_caps and
> panel_replay_caps structures into intel_connector. These are supposed to
> contain all sink information related to PSR and Panel Replay.
> 
> As a first step in moving Panel Replay and PSR sink data add panel
> granularity information into these newly added caps structures.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 38702a9e0f508..f39d62aa99246 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -561,6 +561,16 @@ struct intel_connector {
>  			} overall_throughput;
>  			int max_line_width;
>  		} dsc_branch_caps;
> +
> +		struct {
> +			u16 su_w_granularity;
> +			u16 su_y_granularity;
> +		} panel_replay_caps;
> +
> +		struct {
> +			u16 su_w_granularity;
> +			u16 su_y_granularity;
> +		} psr_caps;
>  	} dp;
>  
>  	struct {
> -- 
> 2.43.0
> 
