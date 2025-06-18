Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646F1ADF5A6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 20:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742CB10E8FB;
	Wed, 18 Jun 2025 18:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0/t6QxA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3B010E1DE;
 Wed, 18 Jun 2025 18:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750270658; x=1781806658;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=BSL/dqyMJkaUP+qXOniKOphtr+hGhivRygqeTgMFlyY=;
 b=O0/t6QxAlz/UZhKF7rOK0dnTlTDD3BHHuxt84p+5TuPM6a2hbtFUsuK5
 La9vA0t9Km59jOVLdsG5Lbu+FWO5u6MWZMDPYDm6gn4eyWSdwQlO3XpGD
 wc5VxtcrpKHJ5XSqK9yE8N/A/HwNqCuI71kFyuMSezEXrg5GxILaJ8po2
 0n6KuYW3jNq3DxptydtEtmuGPWBxRzl9bbXNQ5e86xE879aQNp/bxetrN
 DOBYA/hUtz6ODRhSQh0soF3dvhqq4rX9Nh4XxDkRaxgSv1CXQMNesSsMm
 pjh9CG/9aKcxiiQ8eSzKB2YzvoQJswZOwkxZND/xVdqKO0z1sladwrR5u A==;
X-CSE-ConnectionGUID: 3ZiAOq/sSgyBtj22JxLbvg==
X-CSE-MsgGUID: nQ5gCZ3MS+GwXrLXPkWjkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="77909470"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="77909470"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:17:38 -0700
X-CSE-ConnectionGUID: KOBncaPaTDG03lhyhJ0vSg==
X-CSE-MsgGUID: neyO3GGkTfyU1TsX8lmFyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150357826"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:17:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:17:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 11:17:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:17:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OzmcgBkeJclneMfub3OOL91CX/ZbVmFungnLPCCTp9RIM03L7rglC4CWjnyRFBImoNto1rBIVB/lVgamyZpYHabSJ1zJgOQsE8JUNqf4V8ceG1Aa1V8TEwz6W/no3fBeaVuTMUD0ZG1PJxUQC+PEuU2wx4gTGuhxvDnzpDfJD6nWvL28l82JomAanW+SwnzW8p4/ySOPnQqfjO1fs0xVwYUD8pClVs0yNGtspqME1IOa1GmVSOD+0GF52R7k1fwPXr798P+CB67ZR/krl0Q7TJW4VKjrZLS+SoNeY27ySr8B1uKGeWmxODF2N6Ta/blLcFyhzpc4Mug3It7ZoNM9ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2PqGeGQslJJdElO0w2ZCbIh9+fMkAXJAzJwzWdDgr6w=;
 b=pKM0hNsa9tM0PKazs2j3mM74pagcGiVX7xvV8CqdJuLVUO0L4f3tO8FFDwuMqBsx5FN7YMHqD5kYN87FzwNqJExr/fAy8RRqzwngXJOUZDrMUB6/AID0p1BcH0dI5U8ruJZZenip+KOs9JXSRewTJ0W+Xj+DzFRHhCO066lCuON3sVixwaN2WkHL+sKUJL6a1aKK7HAxMQJ7Vi9/BS+rAfqArTvQ8Je9KxQkz2sspioml+x+rXM2TFpl+BRx74WrNjUHq5w9O9mpgqVZPDVdRaoz9jK6nirH7eSbQbTSG6UkOLz9bmootu+LfZgwv4s2pEAov6k35jzBmLBqO3FrTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL3PR11MB6362.namprd11.prod.outlook.com (2603:10b6:208:3b5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 18 Jun
 2025 18:17:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 18:17:34 +0000
Date: Wed, 18 Jun 2025 21:17:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/16] drm/i915/cdclk: abstract intel_cdclk_actual() and
 intel_cdclk_actual_voltage_level()
Message-ID: <aFMCudrkm1wjb1v6@ideak-desk>
References: <cover.1749730224.git.jani.nikula@intel.com>
 <b282cb46ab35f4e0a6e2cf6c57cd8a2cd5db2647.1749730224.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b282cb46ab35f4e0a6e2cf6c57cd8a2cd5db2647.1749730224.git.jani.nikula@intel.com>
X-ClientProxiedBy: DB3PR08CA0008.eurprd08.prod.outlook.com (2603:10a6:8::21)
 To SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL3PR11MB6362:EE_
X-MS-Office365-Filtering-Correlation-Id: ec80ecda-f369-4e15-bfdf-08ddae9465be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/7OjrifISuHsbvEQ/0yGrw7jCRluVEtxM7YcPcdZtq6c9X0Dg0N1bgjt25DP?=
 =?us-ascii?Q?52237bm2gsg24/g2CIz57kLPLRdZgVOLd9Tv5wjH65QgXZLw0WjzIk27QioT?=
 =?us-ascii?Q?QA6ePdQUc8q93qUaDFsJuzzuW9Ai3jXXaA8/LidOBY8oBU0EZR+3KDN6C7Ky?=
 =?us-ascii?Q?cAVYbsEQCtQbBf4v9qFdJqBI9d1uYbRPk8dDBWny/ejEfoBjBhv8xjrXPguU?=
 =?us-ascii?Q?OSYbsRIT1h09TiETZyvM4cj8Tu+/S+qcH2bMDgc43Lw0stvEALxLejYM7JsS?=
 =?us-ascii?Q?wGRuvMiz7kx3wHLdpJaTgDWHj4hwp+AEfdDYalWTcmEI63OVrhxDv+BjD9pJ?=
 =?us-ascii?Q?bHiM1Ha8FUy5emnN86tsftrY07UMILAgX/m9z3yHIwnALIxV8HB4eqrK7bQr?=
 =?us-ascii?Q?JyZZNmpSZNPlKAPCt6rMyvGwWQ7qOjInw8Q9+W/Ze22knEmazEK0f7G9F78W?=
 =?us-ascii?Q?MZPjTyoeHacC9TbfmIRvjr7IMvpQpojtsUgD4OxmPYnOQbPzDWz4KAKe8GKQ?=
 =?us-ascii?Q?5ZJ9FdB332EH0Fh1IBxmy9O5kgyBXbSLgigFXRwp3ZoIn6s85Rnr/MnnQ8/h?=
 =?us-ascii?Q?mhFSEmL+b/2xJwfxkE089YslCq+KDmQc+py2eReL0beNnZ2uM51gaLl15eKG?=
 =?us-ascii?Q?F8sgpsUb5LOwH/2kDUdu+89mjZa62swyajI4BzMHMmsJ/GB2CNeuDZh1hpwB?=
 =?us-ascii?Q?jjC3BLb6rKpFhtLj0zessWMtHwn+Odl0+eeihe1LGi+JbyBvIRqqF2r3PVKz?=
 =?us-ascii?Q?iruh+fIp98Iz1khcqymVUR7UI6E6t38Wm+40VNfC0uUR9TX07xDxggHVqjD4?=
 =?us-ascii?Q?ji/f1576RYjzocb1mjDL2v3rJzhGZvlNSfjWLgbjUNYGECcOnLqo5yIc1NsY?=
 =?us-ascii?Q?dWJPgTDbQgVHVgV2HgIPoZGz2wgt/Zi4HOGgEyaZVFuohn1cSMBCqyqcvovM?=
 =?us-ascii?Q?EXMI8C+ODfAKxXYzLk559hRVdT77mnR8CEXPzYSmJzpz6ifHuYgSk++oBLAC?=
 =?us-ascii?Q?89HPaiikUgHgRCo6fgSnNRnxQudvraP9LiK1P6iVZwS2nGSEMoDsqceif8ZT?=
 =?us-ascii?Q?+8Nu6NbwKKsHWGRVIh1nPoMT+5zGx2V6P4DbMOgCUY0RW5kqXX9VmpY8AT+o?=
 =?us-ascii?Q?EXI8GPdTm+ar/zdGLlmJ7eVGVg1s9xhLu/xZcjzqTKdz3/PpLePGH+2ZUJbr?=
 =?us-ascii?Q?fLWQMDwj1kEUD9ERD9rN2pCYKkYDVbGDZOgS/lXUt9AtcgT0PcfP4Mx8Gpop?=
 =?us-ascii?Q?kV6tTNpiWN9Nf8rPcVt+Mkuf7W2ZOIuHNfsgYe95kQC+SvpWdeM1UnHVasWl?=
 =?us-ascii?Q?PybIsZgMRYM/+89EYOeXHYuQP1qYzYPlEjqsqjWvKHvHf081L4rgT35MYBVA?=
 =?us-ascii?Q?9W39TE0+edny+EDL9xeKrFhf+JkagH8Eo4K0c2KU7XsuOvsVRwDrXEy/Cu/k?=
 =?us-ascii?Q?fMhBSmeRfI8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ufOLJfLxUv9teSMvSvjpihB1rNrdb7lVs0p3xF5gCovDLySHNu15jnDCOlTa?=
 =?us-ascii?Q?sIXBoWTleU81Ym2ijeKB2nifaKk+HRCyKO9faJ5IiyZ+CjR9jXkh/GgnJmDV?=
 =?us-ascii?Q?G9Xi2d9s9z25fgB4wnm1m3eSQAUWNMC0MR+Ka1KYd7GwGOhR9cyGNX4zVEKE?=
 =?us-ascii?Q?onzgkkn9kOljJ0iiNU/pTld7S7YOkqIqGZjbAkftcCTvfwUo8zqfbXBzAfPL?=
 =?us-ascii?Q?Huk+LoQzUohYk+SStNnCGch6uoM7ifMM6zWscSQl1ZJMFDK8RjkuZTNd4b65?=
 =?us-ascii?Q?s+N9vjHni57m14xc3QmbzWTL5FRQ7jb82sNJ7xi4Mghg9OFeEcOTCnQrv+oM?=
 =?us-ascii?Q?7dOP0Lx6Wfsd9hln4QKIl8moiVnmU7Z16Xwg5nIuE88N2r4FStCi/NGBF2r+?=
 =?us-ascii?Q?gQZ+7KstHEK9qjdIh5P8r38GoSf15iC5kUkVsxqtrbRVvU0a2HtjPRsMx1uq?=
 =?us-ascii?Q?gGZyJd8AwZ2cZvy329GZf7VU1rf/xepvL13gVApVO5qbRPv5PUtWo2ZcvNcl?=
 =?us-ascii?Q?qdxz4WraYuwNdcQtksQEztcBHy7yC3YddkyGP7GZaXnrx0SpsxSPZ4WP7dFM?=
 =?us-ascii?Q?b690haHDtFIjRXM87BXcb9ntONo63VunZaFYsNw9sNzZwC5UVRpBZIOTP3Fd?=
 =?us-ascii?Q?nDNJum4aTxfsWs2rxhLT1eUhO2govTpwM5CZ/Ij+CjoJJHtvn+1eY/Rvw4hN?=
 =?us-ascii?Q?dXH/qABPcXpiSp5155GuIe8CB1rsmX8j0eD8E1hoQQ5l3T4CpURkYAICkoj3?=
 =?us-ascii?Q?9W8i4DTmmXis6TPwdnFUH0lFeu7hnt6b73EYE6/Y7eOk5WUvNbxYcEzv4Qcj?=
 =?us-ascii?Q?enHUmms7XjF/GN57Yh5fc8bbC6vyjizGMTw+j0ztMv17tYX83v8pQ1MqMaPJ?=
 =?us-ascii?Q?OXBdR+Vs3bWGIee4y96zOsolzhkgGuTqAwQX3zuV0w8C3m862JO56fLNxhkL?=
 =?us-ascii?Q?2qR4oBW4HUU3P6dNdqrG7xpC5Ga/dP1cxJqKNZP+QxVMySg5J2wUbNxJ5g4a?=
 =?us-ascii?Q?teBgk0Ox0w06bi2CEl3ZfHxaMNoq+Qkvt/aeThI8wlYkrvrGK4r8YwxpgrLn?=
 =?us-ascii?Q?Oacvc7kQsczyexRqVZodKWiBJKislOthzvioOkFVADpzeFNq7KwPszXwv+50?=
 =?us-ascii?Q?DbLE8svDsnpyGyw9WDCw+1Ma2XtvMM2WcZiiEWvAMBCe3ARc8Y1uioZPXpTb?=
 =?us-ascii?Q?E1RTV/1DtGtAkxvjZIUfO4yBFfUoMlDwDImEbuah/vLiXNiBtBrYs1okTU+1?=
 =?us-ascii?Q?IN09MSy9VhpKKIk9yrnVIMcaeorL3gJOlNT2nw+L2WBGeKyF1g4Z/gTYxSo6?=
 =?us-ascii?Q?C8KbkD0go9jis348kcrXjDvdO/g62sIpFqMo/lJ1inK82pY4hx1SJJXID8mL?=
 =?us-ascii?Q?BYOxZ2NfNh1e53eFrlWTJu3QV4n5ft0rgbMkEEB3XiyUDk6Jug+rcuROvhu8?=
 =?us-ascii?Q?67eTkoch32c4W/Vb3MzqvNxSuF66gpsERSTryEmLrVkM51u4wcn1DkXGsUOM?=
 =?us-ascii?Q?SGQ51MpS+qVomSldXAA6H4gMIDqIlHFme7SQ6MaNZk+YQhdt8Ds+IKHEQxiY?=
 =?us-ascii?Q?qw+rZWzF9EJOXwC1KFZa/yI5vh/oDb8MYBX3+WGQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec80ecda-f369-4e15-bfdf-08ddae9465be
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 18:17:34.3291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3j74XozVkes03/Ri9dzGOoUpdER01l0bq8S4VsairiR7FDTzk4keayFVTl1jWaiP7iTokz271ipprw5NTwM2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6362
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

On Thu, Jun 12, 2025 at 03:12:10PM +0300, Jani Nikula wrote:
> Add intel_cdclk_actual() and intel_cdclk_actual_voltage_level() helpers
> to avoid looking at struct intel_cdclk_state internals outside of
> intel_cdclk.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  4 ++--
>  3 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 994be1d0e20c..2e8abf237bd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3884,3 +3884,13 @@ void intel_cdclk_read_hw(struct intel_display *display)
>  	cdclk_state->actual = display->cdclk.hw;
>  	cdclk_state->logical = display->cdclk.hw;
>  }
> +
> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state)
> +{
> +	return cdclk_state->actual.cdclk;
> +}
> +
> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state)
> +{
> +	return cdclk_state->actual.voltage_level;
> +}

These could've been grouped better after intel_cdclk_logical().

I wondered if it'd make sense to use
intel_cdclk_{logical,actual}_cdclk() instead of 
intel_cdclk_{logical,actual}().

Or *_clock() instead of *_cdclk() in the above and other helpers.

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 0d5ee1826168..f38605c6ab72 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -103,5 +103,7 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
>  bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
>  void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
>  void intel_cdclk_read_hw(struct intel_display *display);
> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
>  
>  #endif /* __INTEL_CDCLK_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index 16ef68ef4041..d806c15db7ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -360,9 +360,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>  		return PTR_ERR(new_cdclk_state);
>  
>  	new_pmdemand_state->params.voltage_index =
> -		new_cdclk_state->actual.voltage_level;
> +		intel_cdclk_actual_voltage_level(new_cdclk_state);
>  	new_pmdemand_state->params.cdclk_freq_mhz =
> -		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
> +		DIV_ROUND_UP(intel_cdclk_actual(new_cdclk_state), 1000);
>  
>  	intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_state);
>  
> -- 
> 2.39.5
> 
