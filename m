Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A37AE6435
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 14:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3605A10E582;
	Tue, 24 Jun 2025 12:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7dvVp8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1693810E57D;
 Tue, 24 Jun 2025 12:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750766700; x=1782302700;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=I7tw+PgtOr7EgEQIanb8/uxZs2wEhAJWwf61RqUFZN4=;
 b=X7dvVp8WBofb9rL22m/NdP2xWGpv6+kJYQD5pxTjMWGyvfWrHdOPWOey
 7FAE+MMdriEANg9Iq//rPiy+hzsrDZVhXGddZkCRvlBYwPBk6yPEpQt8y
 /JEe2L1bqjwa2x0TTK32v4eynTnEu8tB9YifFwCz+3+z7EV5oUUdqO97h
 moxh1iezHETlq4i1jl4iE9IwO7OU37nmBUwKxvdWk/9rhBEoF+Fjjqb4R
 ytna66eu0ODRdvRxaHaWntEsEto+I2lDHPj5obfo754Y95ZKoZP8/7Nor
 t08LnS36HO7iPCavpuS8OTCj2G9OIm36NySrLWX0iE8lOmpJkF4B46aSn Q==;
X-CSE-ConnectionGUID: vIcvvmrCRYiu2ciBewEfFQ==
X-CSE-MsgGUID: G1Tw3upqRBu9Dhpih1Juww==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64358135"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="64358135"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 05:05:00 -0700
X-CSE-ConnectionGUID: Km2eScKJSUSCyUqJYyh+gA==
X-CSE-MsgGUID: UMRIH0PsTiCxCQ8jyX9Iag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="156474791"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 05:04:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 05:04:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 05:04:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.80)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 05:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FKscPUk6MuC8wEROPUkKoGwRtLHC6P8d0P2uwn5GFOBjiFkBJFEcqm5GMaVjik1Ew5FsrH29o1T2hIW0bvi0XfSQlifYKtj5cWPnzBLhQBLefMSv14qYMSoAE+fYcEyNqmomv3ur7/4YzqPp0qg5hgljeQ7S/Jng/UUulW5HMDJlsZStjuwcA7dQfDv3qi271SdAHED87VbX572QVBF4tPq8+FcBRzp/sRoEBFu6uPpT5FUAscan//yPWrQRLN+NypQqC6bkdUFsXpcg5SU8GmlRf4Cdx77HiGg/CkCZKqpTUXgYIw4YFkeQLImRrITeyo1fZqS7XByehag/D1Bqcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pkQNkr66yvYn3J6VTSQAFkYzD3QH7gzwHM6kQzVFvFE=;
 b=irQDjCr5HTGxFCIpPbXkAgcq827LK6Gf4lsUoyeDaoBZIi1CL47HfiJvi2vGpB4MAx+ribET2ytoZYiGhzM7ojpl7CNfObtmSa0BHCvk0o/70DpxIzECDA2EZJ1M82Rl9bhmhkdZaa5aiVSmZU9W5cnY6d5OuXCIAmi3ITVjhLoaPrBk74xZbr3eNwDuVCxCrNfRmL8Jb90qu54Nfv57qIiFcUawjv2JwFwgHuM4RB9pIVY01R6oMpB0cl3lSHIU905H5SGrz4bzH9Yb9yCkUsIBUggUF/XgTWjpgHx2kLmA1PMhlDQJhGofE4AKvermyxzJJowxMxToAQXpg87wvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7429.namprd11.prod.outlook.com (2603:10b6:510:270::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Tue, 24 Jun
 2025 12:04:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Tue, 24 Jun 2025
 12:04:55 +0000
Date: Tue, 24 Jun 2025 15:04:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: Use static values for min_hblank
Message-ID: <aFqUYKzGK453ee0D@ideak-desk>
References: <20250624-min_hblank-v2-1-9110a9342d8c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250624-min_hblank-v2-1-9110a9342d8c@intel.com>
X-ClientProxiedBy: DUZPR01CA0012.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7429:EE_
X-MS-Office365-Filtering-Correlation-Id: c077e054-6503-4e93-df1d-08ddb317554f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fDaywvYU7QRGKjtqofg9zo7QTMKCKtmlJ4Aql/80oauUfSmNUs08GjPQgX0Z?=
 =?us-ascii?Q?WYpHTE4Yji/WZCZWC0EO/T2wv9I7ZAr0tlXm21cgupNwuIp1vQfBxKajyLhO?=
 =?us-ascii?Q?pCqec6euzL5/5+goxcsIsaswUXbpnugGe2qSACJxzTPC7g+ko11PYHgdJHSW?=
 =?us-ascii?Q?QZUMYO7N6LAlIrX5rdx3XTLFICJf17H1V3l30lOhkjjxU/W487qSBOMRhNtJ?=
 =?us-ascii?Q?IdfbPtmaQ1CqDai6FSi8MZe71DBWsdgBw7KK5v/5LqYpKpPji32ZJUVMrN69?=
 =?us-ascii?Q?f8KgQmXHoom8IZDsR2vu/XNbzRBpTM5x5BokSxrh6cWGP07aFiQ0lc4kbRJ0?=
 =?us-ascii?Q?KrjvC3uqr76MTv/JuQXsWh2MsMI0BW+xZdziQAjKBhd+CbGIRhnkFq0neDUD?=
 =?us-ascii?Q?0o9kAx49EyEhSTzHrbPGaGaYCW11InqjzT9u/NdBSbfMAtq9i0Xa4xkoW/pS?=
 =?us-ascii?Q?44L9+0MoiWN3IaiHzBu+5FlJ1pl04bbLy6jeQ+EkeyBGdMPZGdFNLLxNxe6/?=
 =?us-ascii?Q?we1dUlJhvkb84vOYZe4ZqWDqGZopx4XwJb73T6OdNhzSjuGLyd69Z7pjRZ3/?=
 =?us-ascii?Q?uEAFCoxn8sxJdaCcVOH3c6agPpiKSiP72HfQmrTQUt0xkM2WwQ1yLXYyuSP6?=
 =?us-ascii?Q?V9TMkfs9hiORF/g8i4R1HjrJXLju4b6Y3VkimwQ9tldSqIUYtTut64xSZRcu?=
 =?us-ascii?Q?OOONhRhw9yJM8PLQHfwWZ8LvHpgEHkrHtV5bM2fqan4E9/DwCvVVvg/KvdNU?=
 =?us-ascii?Q?AOlgmuOgJnLiUse6aOKNfBsjuHcB3Sw4bTitQgXm1LxhQw3N3UpsXLQfjNHB?=
 =?us-ascii?Q?pvcSPyuBoO0Qjj/XyppDrDisILayCWZ2LdCwv/2R8HwxPkB2Yif+d4i8pPa7?=
 =?us-ascii?Q?6SIJhGgMF4szsxfTzHjKeyEIuUMjNgQFWANDjehNW/sKEeh66i0HBwYoCSre?=
 =?us-ascii?Q?jRUWFNHw/38Mp+uz3v7UNhmhDd4B7bpUiXcXWHHppJVx0h9T6cyuKM/cVGJb?=
 =?us-ascii?Q?e4VHnUULGWHuJzCZGVBkhTOXMIQokNORSOh35IuK6oD2S1gDq43bTwTYrQTf?=
 =?us-ascii?Q?x9itcB9bQOIOWemdFsrPx+s9s99DqB6hkGEOmgTTfS3BUmPYSw4OKHQUvKLW?=
 =?us-ascii?Q?XM2VKE8EQQ5zPXbWBxXC13crIx8AKJkL0/tUnDiPCUXA7+dykz/Lcp3XLM2S?=
 =?us-ascii?Q?GvuhLp/jYzQKe6AmnlnDYM8w+JinWc3zHux/D4Dsfyl8bJvlbnZnx4qI4i5N?=
 =?us-ascii?Q?uAlspr9AP9SZ2mSGf4tKulNn5AmPk5oR9CiIplYzWjMyAVFluNyyD+p2nlco?=
 =?us-ascii?Q?OgjyE6CKZxB2l/cKChag206WBOr7DwQ9lZBzTiEWsM+78E06+SmuveVW1vrz?=
 =?us-ascii?Q?/4qRyYT22xF1eaKZfYPHKnzlBZ2d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d0e1XrMtFj2WNd9oYOLjqlzmr3Kr+J3Ar96neJTnZt4PJiI65L4/3eTHGo5d?=
 =?us-ascii?Q?O2hUfnVqaPnlrVuNlhtE9O4Toag4TTSYyJlpwfdO4YTYhH2XfpLLMYp48O6s?=
 =?us-ascii?Q?dHI2bVymZ/euUU9eXsV3NFJN2/u8XjIeSEjrfehKdgwnfhh/nUFBe0oUnuTf?=
 =?us-ascii?Q?DzVlYxJGxsz64QEs+RAl7PdMbj5rxXdckRZbImJiw2ZZFD4Fir7FgUHzj6IR?=
 =?us-ascii?Q?LViy1RjcgURmuCnm3fsC4N1u4iq21LJYCOvuTv7Ko7MlXO+A+hK+txGLGKQy?=
 =?us-ascii?Q?6rgcC+unreuq1y7vqXm/D5NCkFt8JESe+48Ely4syh/OCoNfPHs9Iwvlg2Z+?=
 =?us-ascii?Q?dpcdqCTDIl4m7lKSzXZox9/kNtXt6w13XkY2JkSmGvyQVc+tfkDjg9iPf115?=
 =?us-ascii?Q?SMe6WTqYtyEOfhd9aAM+WdhaJtSs0hHz1l5XJecZrgFA0Jlq+nfIqWvdVMug?=
 =?us-ascii?Q?3CL76XT/jgmU/pEJyfYY9msVZBk5Vh5mEzE3JPfE2gLoTm48Z9c9zk8pIXWM?=
 =?us-ascii?Q?XyaF0NEdr/yU0WBOVHa5QeV/i2b+sw2ctMTS/tEbvVHU1umiKx1O8ETXTVrB?=
 =?us-ascii?Q?E7PZzbq8xwc5sVxZKvKHzBiOrCW1Jc+k2C4G9rBvKk0s/wmPnTsk74+6fVTy?=
 =?us-ascii?Q?QfZPSWqQTZuoSCAfZCmfAKn92H7owJxHaPDwt17aFyyRnjQhug2M8LTybFCA?=
 =?us-ascii?Q?oH1LFLXb0Kr43nflwxutIg0zfrafix4yJb+ZJE/YUBMAEx7FAdQjdhen2Dld?=
 =?us-ascii?Q?p668G8MZeZ95WCNFRMq5A57JeMHannjC9WwdGHKfNqk35nRrZCuIRoDtmGG9?=
 =?us-ascii?Q?TlNPUjzbuFALHu1FAJL+TnwqbRdk3KvxHlonzPGAPCmMdmjQpraxnjZqfTyX?=
 =?us-ascii?Q?ZvfQsShsw31KOZlMAV9alAyBzVPJuoxaks8rponogErjcVmwlX8w5LgYQKwX?=
 =?us-ascii?Q?6Oj/odHmqh49LlCKY1z/icAuy2BqVLaK/zo3Ab7ZWKsixnb5iTcrEnjWAqoz?=
 =?us-ascii?Q?AsoipDt9XBIGehgcQhYGBK/DMiy4apKqcuoazbOmMsmB2shFFW9fmO0IodRM?=
 =?us-ascii?Q?Gii/MxaADhuoxRcgbiylr1PF/Zwjrmm+l03+akURAySToQU37EbJ1aB1Lwn+?=
 =?us-ascii?Q?51f/HsbczW4aYoQuySwUzTGD5h22PM4O2E0AC7Wd4qVgYw8qch4g3NwwrKwE?=
 =?us-ascii?Q?Hwobrg+ZDET7w1PXBymYOR3vkdkxT1xe1tocAVe/1Qe++3MndpK365E5pXsC?=
 =?us-ascii?Q?OP3HXIOvu8cmTMFntD9RJ60kryqwAg5ZThjTHrYXuMj7NQpEcOpIh1FarDK3?=
 =?us-ascii?Q?b6XhJib7OK2Yyh7RWoUxV4/qNFwxYY6ac6uVaVe5d2gEPwe9jIWXbc70h/ds?=
 =?us-ascii?Q?3C7RO8E8UbuQY+XHdD7/7+X+z89jgMUbldk2Wzc+tgASqi6XhUvU8F1hVeap?=
 =?us-ascii?Q?xRJ854H0ivGSYBPBlpqYuZt3r6ZRpsNOPQ5IWfhgxR7QR2WogLTfuCHESZf7?=
 =?us-ascii?Q?drOTO0HiEZtXBmtxQWXlYLXNVJo0Kh/OXs6iW45BhXYCp/lkiO7yjMArHE18?=
 =?us-ascii?Q?yEp0Mt746BePIRnOPtr61xDr7qt1p/DMOl7MMncJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c077e054-6503-4e93-df1d-08ddb317554f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 12:04:55.5239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nV3wENf+jJTJkCykHbT/yWvDoCgCCYZE+2wMmRDp6hqrtHS7yqFNR2Ao8m9dgVK5z+k5iGfsTVJDIwpcp23JDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7429
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

On Tue, Jun 24, 2025 at 03:29:27PM +0530, Arun R Murthy wrote:
> Use recommended static values as per wa_14021694213 for min_hblank to
> avoid underruns.
> 
> v2: corrected checkpatch warning and retain the restriction for
> min_hblank (Jani)
> 
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250624-min_hblank-v1-1-5c100e4a8b05@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 62 ++++++---------------------------
>  1 file changed, 10 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df7fd26c9d089e8f1bd096bfc8df95..b657340648cd2be72cec3fae606c0bc2ec8dba3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3115,22 +3115,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  				const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode =
> -					&crtc_state->hw.adjusted_mode;
> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> -	/*
> -	 * min symbol cycles is 3(BS,VBID, BE) for 128b/132b and
> -	 * 5(BS, VBID, MVID, MAUD, BE) for 8b/10b
> -	 */
> -	int min_sym_cycles = intel_dp_is_uhbr(crtc_state) ? 3 : 5;
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
> -	int min_hblank;
> -	int max_lane_count = 4;
> -	int hactive_sym_cycles, htotal_sym_cycles;
> -	int dsc_slices = 0;
> -	int link_bpp_x16;
>  
>  	if (DISPLAY_VER(display) < 30)
>  		return 0;
> @@ -3139,45 +3124,18 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  	if (!is_mst && !intel_dp_is_uhbr(crtc_state))
>  		return 0;
>  
> -	if (crtc_state->dsc.compression_enable) {
> -		dsc_slices = intel_dp_dsc_get_slice_count(connector,
> -							  adjusted_mode->crtc_clock,
> -							  adjusted_mode->crtc_hdisplay,
> -							  num_joined_pipes);
> -		if (!dsc_slices) {
> -			drm_dbg(display->drm, "failed to calculate dsc slice count\n");
> -			return -EINVAL;
> -		}
> +	/* min_hblank formula is undergoing a change and the recomendation is to use static value */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		if (crtc_state->dsc.compression_enable &&
> +		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +		    crtc_state->pipe_bpp == 18)
> +			crtc_state->min_hblank = 2;
> +		else
> +			crtc_state->min_hblank = 3;
> +	} else {
> +		crtc_state->min_hblank = 10;
>  	}

The min hblank programmed can't be higher than the hblank period of the
mode. So the hblank symbol cycles for the mode should be still calculated
as now and the above new limit of 2/3 cycles for UHBR should be used
as needed for the upper bound of min_hblank below at

	min_hblank = min(10, min_hblank);

instead of the fixed limit of 10 cycles.

>  
> -	if (crtc_state->dsc.compression_enable)
> -		link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
> -	else
> -		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
> -								   crtc_state->pipe_bpp));
> -
> -	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> -	hactive_sym_cycles = drm_dp_link_symbol_cycles(max_lane_count,
> -						       adjusted_mode->hdisplay,
> -						       dsc_slices,
> -						       link_bpp_x16,
> -						       symbol_size, is_mst);
> -	htotal_sym_cycles = adjusted_mode->htotal * hactive_sym_cycles /
> -			     adjusted_mode->hdisplay;
> -
> -	min_hblank = htotal_sym_cycles - hactive_sym_cycles;
> -	/* minimum Hblank calculation: https://groups.vesa.org/wg/DP/document/20494 */
> -	min_hblank = max(min_hblank, min_sym_cycles);
> -
> -	/*
> -	 * adjust the BlankingStart/BlankingEnd framing control from
> -	 * the calculated value
> -	 */
> -	min_hblank = min_hblank - 2;
> -
> -	min_hblank = min(10, min_hblank);
> -	crtc_state->min_hblank = min_hblank;
> -
>  	return 0;
>  }
>  
> 
> ---
> base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
> change-id: 20250624-min_hblank-8af8d2626ff8
> 
> Best regards,
> -- 
> Arun R Murthy <arun.r.murthy@intel.com>
> 
