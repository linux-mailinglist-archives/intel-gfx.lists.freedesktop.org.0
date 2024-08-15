Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A7E953ABC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D291410E519;
	Thu, 15 Aug 2024 19:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxB2q1VV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B42910E511;
 Thu, 15 Aug 2024 19:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723749348; x=1755285348;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UD5a0gWetb4oOfuV+BWyBp3S6a6BaqVg6rAWzUu8yHU=;
 b=gxB2q1VVBnNDn7awGJ0s330fULqBJ7UJ8bexu4SJFCqfvMf64s1UMMMB
 jaJmjogc6ptajJn2x9K8sG8sREyQTLACn1rKm7jAZ37+05duUH363vExq
 PmBmkkPUlsFUJE2wiWoSn/PkCdpJn6vCOkdXewl5ZINe+BiWDNPdU0yEi
 vuND8rT+JPNdc4zrOVdV31cKoJeLE3qB1JJiJI8K4S9n2E187lftwWk0K
 zGbXKjbydBRusjWTeDSx2rLYi8XAstgJb2NYY6qfIvoLaoEGVAWvfqP15
 wjLJ4pKMk20ltsn1D/9SH1xtLoDzSX4CPWoS+A7Sq9pBsXhe1uiAj+LOk A==;
X-CSE-ConnectionGUID: lu2+2yjpQp+7B0ufmA55jA==
X-CSE-MsgGUID: bq1ptfl1Qq6SoV9gr3+pYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21905242"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="21905242"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:15:32 -0700
X-CSE-ConnectionGUID: zO0DCwVkTz+v93oJSWfBUg==
X-CSE-MsgGUID: UKHsHMZfQTyDohVgQvn1WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="59081131"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:15:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:15:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J6n2mNgr0wDBKOssqA3iS3EYqKkuiaZZQKkcvDPh/PXnF7U+PkEbOyX/+tmJHTCe3T1y2c38Ldmqg0/jQx/PCzoGOU/1Gw4gnB0movaNyrn1bWYiOvYJF1w8xp457eGG5mFjL6sS9HuBeGxLZemZmSlCegLSFflCnp9crC9+biEQbdf2lF6g79IrGOE28QGaksifENIUa/L+2noAXssqQLNkFSR2njE0N5q9G3apKBkUW0CXTVIjR8+Fd8BupAkuOuVaUG4zdNGvQ4HDkCYiorB9tyeLDgK9FYfc2jq9ePkVUfBmRz2pF/xA6znoSi34qbPf5ZMQnzf4jhH3a0/8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILLOvdMGwZwSFSy3V0LR2k0k7jZtZYirojT72DvxTXM=;
 b=PLmA4Svx+u4ZYCTeajec8/nhe8++GtM2SIvLeqFHnn70IaymDPDt9pbfL7xiM5vfgPc1p+VTEvzOyXpLcKIqSC5YTX6R5Jun6PMu1U9LN4IS2p8snZlpSAtUVxD9f1L3MQgxyPXrgp4OdpPehKO2YQ4g/CgaAYU+WU/G8YCPhlK3Eg2pCQMKScm7b9h87c+l5gF2HuX5D9/GR2lKbe2vhXdtYv84HpdBE43Hf4LzN6d+NCOuWnC1wy9fD5NUCffrQd61+qUIu/c0j5N/OMo65cEn8RA8RGJrnOzd2AqCH/DDAwcyZhFTnzcHLP6nJ0DYfZk/+IZtTRKA6su8oT31Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6513.namprd11.prod.outlook.com (2603:10b6:208:3a3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 15 Aug
 2024 19:15:27 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:15:27 +0000
Date: Thu, 15 Aug 2024 15:15:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915/lspcon: convert to struct intel_display
Message-ID: <Zr5TzJ9INDC4hm5l@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-5-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-5-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0105.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::46) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6513:EE_
X-MS-Office365-Filtering-Correlation-Id: 66554801-98df-4035-be6d-08dcbd5e9ef7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lnm+tAN60YCqyJ3khpQDafZeYcxtHgq2+wxf53GcWPp/rGKSxEnKeWh4pe4B?=
 =?us-ascii?Q?s09avTUxhTmgArGVG6pMuBde/E8Dccn7GxuoE9tFinE7fansEO6nkChg9x73?=
 =?us-ascii?Q?JliIjyyfNnVL26D9QKhc7fOpCIUSKcm5zfXK/KlFPzgIbUOHHL5l6Wv3lF4k?=
 =?us-ascii?Q?JFX2TIMIi1i1Vt79Inw2JPBDWbLoPUzGVZT6JX3fKt8zo6nGJswAYTm7VwyD?=
 =?us-ascii?Q?8fc8GqEI9vUrComwK8LR645ywa33WBrxWYKkbZhAMr+D/SZGjbgltXLuXenL?=
 =?us-ascii?Q?FsaEUQ5Z+uPHVuXxiFSFGwoFjoyP4Ug61rTRLpklrONZk522xfvoXl7xtnnx?=
 =?us-ascii?Q?VYB4K0xgWPmXWhXs5bRWEFBidfF5A3SPUrp5Q1etFCduLp2u6J5hSeW371jd?=
 =?us-ascii?Q?pB9qxGQvsJiulxIIp3ta5ZqplyIJr1n/PoVp8rEBGB7toQW+j0eYuL+BCWBv?=
 =?us-ascii?Q?ck662fgVjBBOlnbap5YQFVp/WF9heOF0yGe9lP5VWPLnqr3I8hLRjx4dsHX9?=
 =?us-ascii?Q?upqbhqGCb2MEKmvT+etoJdtDf+r9O0+8NBKtRc+VeJNtS0XgcHC9Sqz+14y5?=
 =?us-ascii?Q?pGJJIm3Acs9gLFMme5ai2BB0yc47ITlB9bEJAzfPRY+yk0cw3vvK+5QgyBKW?=
 =?us-ascii?Q?bjl2rmpntZfY1H/D4xlEZRB0wqrP1qZrvciPwZUH9cmkDNMvSd0a0mFWhpEN?=
 =?us-ascii?Q?4dhr0LDLMY8Orh9CkUaR88si4iO9cNAigMEJyIumJqgGOtm/M1d2nBfDxeOb?=
 =?us-ascii?Q?wjQSnVXe6Kgg4ZU003MkhgLjBuxufUWdz+6T6inyWq+gSPkV+9eOvE3knN+Z?=
 =?us-ascii?Q?zWPQaoUki2g8GZ1j/iptWVEgfAlIkm9N2zk0hZmz9rRy/AAcDXjETS91rnG/?=
 =?us-ascii?Q?3UM8DG3XZ8Pe6rDvA7s/WYXalPo7v5kzH8QaF+EcqDZa2a3Q0xCTGBCxjoph?=
 =?us-ascii?Q?eVe5Xtu6wSswcplScJ3Q9A6hPn9IfBy/lAGjB5ixzeFCs8KYA1lgcZH+vKAY?=
 =?us-ascii?Q?QjcfhxziBKhNbZo9ZdOm6Ix3HVLxY6f6MCHzNSqFo8ENMZD3drpAu6hQEh3c?=
 =?us-ascii?Q?llstPPmsUpUoTp1WXw66gNZxuJQmggQykbPhktuSOKFFqaO491N0irf0ZL6w?=
 =?us-ascii?Q?YYg4cz4YI6ffLNJjq6zO5OFLJ5HXEl35pBtMhtmvYV+WBnAfYNNU4SsHvz5n?=
 =?us-ascii?Q?8HqEf8o5zwIEUboP3FvEsdHNf1qaBs3f0Y6efUvKlrHd0svUPcQDyN5fV4nC?=
 =?us-ascii?Q?ef3jkJs6rwJU5hJ8lrwkd0VcEmDKmCT2cKWM2js588VsZw6n4g56J5V/VIPI?=
 =?us-ascii?Q?YS1gOL4dV0I7pJSI8jPSr/9Bj9Rh/HYs1Y5T4z+5ALl/XQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/aRSjRIWF04fVYDD+psi5Xf9hN20BPjAl46Ltr7W+AcgFk0DFzNtBY0Pwbb/?=
 =?us-ascii?Q?BaKMONNLrs/ifI3AuR3HcuvKyep1k2Dwfbq+Q/Jj7OslhZyWyRiX6H8uPlI8?=
 =?us-ascii?Q?yWsfe+/hMTekFze7SD09W91FBanxSF9AG/upC8ZsbybyNRWywOutaJcROkuH?=
 =?us-ascii?Q?RZc5JQmwgCGrxRe9S5yvzs8mhcOZqhsCxgmI8guarzvLhKzbZyhsSlkKbywc?=
 =?us-ascii?Q?csQmbiLhBzjU7AZwNfSSDxDzUGVOWLNmgYN1hNNOraObfIogj8G+naSdZbM3?=
 =?us-ascii?Q?q1Al35kuzlKP4+SeXgU/ecJ06f6wa6a184fjysvb950ny+uogftYGx7ygX1s?=
 =?us-ascii?Q?OFhdq9n1lFRjv9hOUxBRbhc4HoN9JKSihy3iJ5K33651H7dWrgbE0HQz8DFv?=
 =?us-ascii?Q?VZLb0mKsNROX0MUd8Ou1eTwzpYQI9KD+1uzZcfjfd/ftHZJxALHyVmaE3ETQ?=
 =?us-ascii?Q?uWgwFKyE1iRUwEkxeXRBBQ89pIhhN7VaKl7lkPN9aAIU5ZrqwBki+6QlRtyv?=
 =?us-ascii?Q?9s5Lq20cxFjfvrUWfbPx8V5daJ6CG+eZoLuzbREDe7D6KXPjNBgl6OJmfuc5?=
 =?us-ascii?Q?h58kV4uXhgVtqRZciYZX1xlKosGKTQtgiW+h1GwMbw5z7Zcz0krf2A4Py+3v?=
 =?us-ascii?Q?AGc7TbO3X4laWUEficc1ZrIZaJ6Kv0WYg5zOw69HlbGw/ZN/ldZT1mdsX8aJ?=
 =?us-ascii?Q?Nrx72hYz/SMC3MnS8Yo1KnOQTfXH7yiR4wPtWS9zhXaiTSfKQmlkDl6ogMKy?=
 =?us-ascii?Q?sRfBkoNplD3+jFn7VHp2gPnA4d6bQqHTlUwbsB1qQAYvACvPlPfzd6iCi1Ns?=
 =?us-ascii?Q?dZ8pqzlrq5gl5qj3j9iNv1kTR7jw90qnZaPEiA+ZJV3qNMxgS7ZXShcD7qAR?=
 =?us-ascii?Q?6QSljYZ+whBjFpiOt8hGh4L98foXSnvH302WZFHoXwSZrBYWAHb+cSrCnt37?=
 =?us-ascii?Q?XrNK0XlHNiHzEWi70m/RhIlq2Jn0pKbfqvXZJpRpdqwhEZR5zGYSfIA+2GGk?=
 =?us-ascii?Q?Xz1rdOfttOP/z/bRxsJ2KTllh6/tZ+vR3MNPgrMLtj0amQuCxs0owlfY7hy+?=
 =?us-ascii?Q?YfsNS5lw+opthROXhWAfs8n12PAiOhRveasDD6atlClgi2rMi4M1wMfLhWTg?=
 =?us-ascii?Q?2vqQb4xWM3GeR95cRIsw5tpfKq+jEawaZLYy0gwgs/p1Spz//mc7F8B1iIvc?=
 =?us-ascii?Q?fHbLDjP4PA1sus8BezBd4T2xtI9x02TtIJK+lahYC+UNhotizDcph+Y5iIHL?=
 =?us-ascii?Q?eu5xHbFb7BvgEra6mZjkwI2lzpfe6dEIPuhXi2TxDLYynmqDkTZPRalWmr85?=
 =?us-ascii?Q?LaGQ1Wj31fT2jjb+1Yn6z5K/4DeE69gItpMppbXHdZCQTgO+foplObbFkuTj?=
 =?us-ascii?Q?pQPlN0VTIhDQYipOven7iKWPGxXca3ZM0o8avBpabBuLVFLngsRrt4pMFosL?=
 =?us-ascii?Q?8gLh6ysrQPoD6kOzb3G+/ArX7NjcRva7IuPjHHwepninn74oafjwQqvkD1ZO?=
 =?us-ascii?Q?SvU1jzzYiFrPnSpF6JGzOuebaJ/OkInf/Wo6y60zU4+kTYug0vcO7S4IzBQc?=
 =?us-ascii?Q?tc2p5j01DX1lcS9vmP9MMPoBu1U3gtID3KYbbeei?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66554801-98df-4035-be6d-08dcbd5e9ef7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:15:27.5126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f28w3X6cs3CP7BD2kh5gcE9/DPPSTH8UDamRTmgVL8QWJloXFsa461Ts2fZpisQbBSZKV0aw2ruB1Yhk78Eijw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6513
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

On Tue, Aug 13, 2024 at 07:41:21PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_lspcon.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 115 ++++++++++----------
>  1 file changed, 57 insertions(+), 58 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 8b26354d6e53..f9db867fae89 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -79,33 +79,33 @@ static const char *lspcon_mode_name(enum drm_lspcon_mode mode)
>  
>  static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
>  {
> -	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(dp);
> +	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_dp_dpcd_ident *ident;
>  	u32 vendor_oui;
>  
> -	if (drm_dp_read_desc(&dp->aux, &dp->desc, drm_dp_is_branch(dp->dpcd))) {
> -		drm_err(&i915->drm, "Can't read description\n");
> +	if (drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc, drm_dp_is_branch(intel_dp->dpcd))) {
> +		drm_err(display->drm, "Can't read description\n");
>  		return false;
>  	}
>  
> -	ident = &dp->desc.ident;
> +	ident = &intel_dp->desc.ident;
>  	vendor_oui = (ident->oui[0] << 16) | (ident->oui[1] << 8) |
>  		      ident->oui[2];
>  
>  	switch (vendor_oui) {
>  	case LSPCON_VENDOR_MCA_OUI:
>  		lspcon->vendor = LSPCON_VENDOR_MCA;
> -		drm_dbg_kms(&i915->drm, "Vendor: Mega Chips\n");
> +		drm_dbg_kms(display->drm, "Vendor: Mega Chips\n");
>  		break;
>  
>  	case LSPCON_VENDOR_PARADE_OUI:
>  		lspcon->vendor = LSPCON_VENDOR_PARADE;
> -		drm_dbg_kms(&i915->drm, "Vendor: Parade Tech\n");
> +		drm_dbg_kms(display->drm, "Vendor: Parade Tech\n");
>  		break;
>  
>  	default:
> -		drm_err(&i915->drm, "Invalid/Unknown vendor OUI\n");
> +		drm_err(display->drm, "Invalid/Unknown vendor OUI\n");
>  		return false;
>  	}
>  
> @@ -123,7 +123,7 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
>  void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 hdr_caps;
>  	int ret;
>  
> @@ -131,10 +131,10 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  			       &hdr_caps, 1);
>  
>  	if (ret < 0) {
> -		drm_dbg_kms(&i915->drm, "HDR capability detection failed\n");
> +		drm_dbg_kms(display->drm, "HDR capability detection failed\n");
>  		lspcon->hdr_supported = false;
>  	} else if (hdr_caps & 0x1) {
> -		drm_dbg_kms(&i915->drm, "LSPCON capable of HDR\n");
> +		drm_dbg_kms(display->drm, "LSPCON capable of HDR\n");
>  		lspcon->hdr_supported = true;
>  	}
>  }
> @@ -142,12 +142,12 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	enum drm_lspcon_mode current_mode;
>  	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>  
>  	if (drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode)) {
> -		drm_dbg_kms(&i915->drm, "Error reading LSPCON mode\n");
> +		drm_dbg_kms(display->drm, "Error reading LSPCON mode\n");
>  		return DRM_LSPCON_MODE_INVALID;
>  	}
>  	return current_mode;
> @@ -169,23 +169,23 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
>  					     enum drm_lspcon_mode mode)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	enum drm_lspcon_mode current_mode;
>  
>  	current_mode = lspcon_get_current_mode(lspcon);
>  	if (current_mode == mode)
>  		goto out;
>  
> -	drm_dbg_kms(&i915->drm, "Waiting for LSPCON mode %s to settle\n",
> +	drm_dbg_kms(display->drm, "Waiting for LSPCON mode %s to settle\n",
>  		    lspcon_mode_name(mode));
>  
>  	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode,
>  		 lspcon_get_mode_settle_timeout(lspcon));
>  	if (current_mode != mode)
> -		drm_err(&i915->drm, "LSPCON mode hasn't settled\n");
> +		drm_err(display->drm, "LSPCON mode hasn't settled\n");
>  
>  out:
> -	drm_dbg_kms(&i915->drm, "Current LSPCON mode %s\n",
> +	drm_dbg_kms(display->drm, "Current LSPCON mode %s\n",
>  		    lspcon_mode_name(current_mode));
>  
>  	return current_mode;
> @@ -195,46 +195,46 @@ static int lspcon_change_mode(struct intel_lspcon *lspcon,
>  			      enum drm_lspcon_mode mode)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	int err;
>  	enum drm_lspcon_mode current_mode;
>  	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>  
>  	err = drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode);
>  	if (err) {
> -		drm_err(&i915->drm, "Error reading LSPCON mode\n");
> +		drm_err(display->drm, "Error reading LSPCON mode\n");
>  		return err;
>  	}
>  
>  	if (current_mode == mode) {
> -		drm_dbg_kms(&i915->drm, "Current mode = desired LSPCON mode\n");
> +		drm_dbg_kms(display->drm, "Current mode = desired LSPCON mode\n");
>  		return 0;
>  	}
>  
>  	err = drm_lspcon_set_mode(intel_dp->aux.drm_dev, ddc, mode);
>  	if (err < 0) {
> -		drm_err(&i915->drm, "LSPCON mode change failed\n");
> +		drm_err(display->drm, "LSPCON mode change failed\n");
>  		return err;
>  	}
>  
>  	lspcon->mode = mode;
> -	drm_dbg_kms(&i915->drm, "LSPCON mode changed done\n");
> +	drm_dbg_kms(display->drm, "LSPCON mode changed done\n");
>  	return 0;
>  }
>  
>  static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 rev;
>  
>  	if (drm_dp_dpcd_readb(&lspcon_to_intel_dp(lspcon)->aux, DP_DPCD_REV,
>  			      &rev) != 1) {
> -		drm_dbg_kms(&i915->drm, "Native AUX CH down\n");
> +		drm_dbg_kms(display->drm, "Native AUX CH down\n");
>  		return false;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "Native AUX CH up, DPCD version: %d.%d\n",
> +	drm_dbg_kms(display->drm, "Native AUX CH up, DPCD version: %d.%d\n",
>  		    rev >> 4, rev & 0xf);
>  
>  	return true;
> @@ -242,12 +242,12 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
>  
>  static bool lspcon_probe(struct intel_lspcon *lspcon)
>  {
> -	int retry;
> -	enum drm_dp_dual_mode_type adaptor_type;
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
> +	enum drm_dp_dual_mode_type adaptor_type;
>  	enum drm_lspcon_mode expected_mode;
> +	int retry;
>  
>  	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
>  			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
> @@ -263,13 +263,13 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  	}
>  
>  	if (adaptor_type != DRM_DP_DUAL_MODE_LSPCON) {
> -		drm_dbg_kms(&i915->drm, "No LSPCON detected, found %s\n",
> +		drm_dbg_kms(display->drm, "No LSPCON detected, found %s\n",
>  			    drm_dp_get_dual_mode_type_name(adaptor_type));
>  		return false;
>  	}
>  
>  	/* Yay ... got a LSPCON device */
> -	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
> +	drm_dbg_kms(display->drm, "LSPCON detected\n");
>  	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
>  
>  	/*
> @@ -279,7 +279,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  	 */
>  	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
>  		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
> -			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
> +			drm_err(display->drm, "LSPCON mode change to PCON failed\n");
>  			return false;
>  		}
>  	}
> @@ -289,13 +289,13 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
>  {
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	unsigned long start = jiffies;
>  
>  	while (1) {
>  		if (intel_digital_port_connected(&dig_port->base)) {
> -			drm_dbg_kms(&i915->drm, "LSPCON recovering in PCON mode after %u ms\n",
> +			drm_dbg_kms(display->drm, "LSPCON recovering in PCON mode after %u ms\n",
>  				    jiffies_to_msecs(jiffies - start));
>  			return;
>  		}
> @@ -306,7 +306,7 @@ static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
>  		usleep_range(10000, 15000);
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "LSPCON DP descriptor mismatch after resume\n");
> +	drm_dbg_kms(display->drm, "LSPCON DP descriptor mismatch after resume\n");
>  }
>  
>  static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
> @@ -477,10 +477,10 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
>  			    unsigned int type,
>  			    const void *frame, ssize_t len)
>  {
> -	bool ret = true;
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
> +	bool ret = true;
>  
>  	switch (type) {
>  	case HDMI_INFOFRAME_TYPE_AVI:
> @@ -492,7 +492,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
>  								 frame, len);
>  		break;
>  	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> -		drm_dbg_kms(&i915->drm, "Update HDR metadata for lspcon\n");
> +		drm_dbg_kms(display->drm, "Update HDR metadata for lspcon\n");
>  		/* It uses the legacy hsw implementation for the same */
>  		hsw_write_infoframe(encoder, crtc_state, type, frame, len);
>  		break;
> @@ -501,7 +501,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
>  	}
>  
>  	if (!ret) {
> -		drm_err(&i915->drm, "Failed to write infoframes\n");
> +		drm_err(display->drm, "Failed to write infoframes\n");
>  		return;
>  	}
>  }
> @@ -522,17 +522,17 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state,
>  			   const struct drm_connector_state *conn_state)
>  {
> -	ssize_t ret;
> -	union hdmi_infoframe frame;
> -	u8 buf[VIDEO_DIP_DATA_SIZE];
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> +	union hdmi_infoframe frame;
> +	u8 buf[VIDEO_DIP_DATA_SIZE];
> +	ssize_t ret;
>  
>  	if (!lspcon->active) {
> -		drm_err(&i915->drm, "Writing infoframes while LSPCON disabled ?\n");
> +		drm_err(display->drm, "Writing infoframes while LSPCON disabled ?\n");
>  		return;
>  	}
>  
> @@ -542,7 +542,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
>  						       conn_state->connector,
>  						       adjusted_mode);
>  	if (ret < 0) {
> -		drm_err(&i915->drm, "couldn't fill AVI infoframe\n");
> +		drm_err(display->drm, "couldn't fill AVI infoframe\n");
>  		return;
>  	}
>  
> @@ -583,7 +583,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
>  
>  	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
>  	if (ret < 0) {
> -		drm_err(&i915->drm, "Failed to pack AVI IF\n");
> +		drm_err(display->drm, "Failed to pack AVI IF\n");
>  		return;
>  	}
>  
> @@ -624,9 +624,9 @@ static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_aux *aux)
>  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	bool infoframes_enabled;
>  	u32 val = 0;
>  	u32 mask, tmp;
> @@ -640,8 +640,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  		val |= intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
>  
>  	if (lspcon->hdr_supported) {
> -		tmp = intel_de_read(dev_priv,
> -				    HSW_TVIDEO_DIP_CTL(dev_priv, pipe_config->cpu_transcoder));
> +		tmp = intel_de_read(display,
> +				    HSW_TVIDEO_DIP_CTL(display, pipe_config->cpu_transcoder));
>  		mask = VIDEO_DIP_ENABLE_GMP_HSW;
>  
>  		if (tmp & mask)
> @@ -658,32 +658,32 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
>  
>  bool lspcon_init(struct intel_digital_port *dig_port)
>  {
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct drm_connector *connector = &intel_dp->attached_connector->base;
>  
>  	lspcon->active = false;
>  	lspcon->mode = DRM_LSPCON_MODE_INVALID;
>  
>  	if (!lspcon_probe(lspcon)) {
> -		drm_err(&i915->drm, "Failed to probe lspcon\n");
> +		drm_err(display->drm, "Failed to probe lspcon\n");
>  		return false;
>  	}
>  
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
> -		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
> +		drm_err(display->drm, "LSPCON DPCD read failed\n");
>  		return false;
>  	}
>  
>  	if (!lspcon_detect_vendor(lspcon)) {
> -		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
> +		drm_err(display->drm, "LSPCON vendor detection failed\n");
>  		return false;
>  	}
>  
>  	connector->ycbcr_420_allowed = true;
>  	lspcon->active = true;
> -	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
> +	drm_dbg_kms(display->drm, "Success: LSPCON init\n");
>  	return true;
>  }
>  
> @@ -697,9 +697,8 @@ u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  
>  void lspcon_resume(struct intel_digital_port *dig_port)
>  {
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
> -	struct drm_device *dev = dig_port->base.base.dev;
> -	struct drm_i915_private *i915 = to_i915(dev);
>  	enum drm_lspcon_mode expected_mode;
>  
>  	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
> @@ -707,7 +706,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>  
>  	if (!lspcon->active) {
>  		if (!lspcon_init(dig_port)) {
> -			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
> +			drm_err(display->drm, "LSPCON init failed on port %c\n",
>  				port_name(dig_port->base.port));
>  			return;
>  		}
> @@ -724,7 +723,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>  		return;
>  
>  	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
> -		drm_err(&i915->drm, "LSPCON resume failed\n");
> +		drm_err(display->drm, "LSPCON resume failed\n");
>  	else
> -		drm_dbg_kms(&i915->drm, "LSPCON resume success\n");
> +		drm_dbg_kms(display->drm, "LSPCON resume success\n");
>  }
> -- 
> 2.39.2
> 
