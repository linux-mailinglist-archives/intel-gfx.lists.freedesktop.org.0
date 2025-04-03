Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D9EA7A451
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 15:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F0A10EA16;
	Thu,  3 Apr 2025 13:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iV+mHkoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F06F10EA16
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Apr 2025 13:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743688227; x=1775224227;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+pywSEcX9SAn1CXJEQxAAcoEXT25GBfLyMjFQlwKjuY=;
 b=iV+mHkoIIbAhDE2icozO2xpPJ0X7kUemJN4bblLP03oGF0uerx3T+zfo
 jZY9LaqfP4IeBgahHTsfJFEKiJ6ZKaAixXRrhNJ/X/YX4hEUEgY1Kh7rg
 2SyJOlhCFMihZ8DJvjx3E3tytzjNjkgZ8xMPO7MtgA9KGCnElD+NntvhP
 CGoItlJl4V70ygp7qjvmU0zSDzzQvRn4bfdGl5of7FpM5BkF9hfjLvqUm
 g9zF9q16OeEKf/odmc24TWYTy/7ZfutcYc4XVjhstqWfuksQbxYA7BdGJ
 iOdGLUKv62DwgGDZeOXYIiyCRpjiHO5XZQ0NfxdjpUOl069JgmijH7KFD g==;
X-CSE-ConnectionGUID: RrpjcVcZQCK7wAxDDxV25g==
X-CSE-MsgGUID: oME5cVF1QLWLIkU7qrd+6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="67568714"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="67568714"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 06:50:26 -0700
X-CSE-ConnectionGUID: xGWkjWmeQhGrIbWkM32KZg==
X-CSE-MsgGUID: fHQPp3b9T4+KxdNZOLWkHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126820083"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2025 06:50:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 3 Apr 2025 06:50:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 06:50:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 06:50:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=duSP2PZxGdi3rITq9bndLswkzNq9ApTqNmVI1RrBoVuFvGSnAVqRd5Du2fGI+aH8P+SqID8WUFrFeYtpcspgh47RwC3DAn+oHmsbYWd8ox4KnO7Ltd9UBI6I98cuOJE6ZG6XLGYmKM5vAt8Bi8Uasmx6wEj0XHd5CQKtxn4bMnfKRTEIg+lVO3KKmIXE3QiVzqR6ytS/d/w5fx6g2W5PjaGKIavNuRZERJS6byzjBHG8LbSgjU70GpdZgUbKtOMobP5SbciOrnKL8pDOVOQqyAs8NJxUO7J4HwkCNDhoiAdkbN4RQO/b2cQ863vC6ivB+Hiwx6z/0OBLQkJ+kaXJFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w3nIfpijANABUUSFukfmS7Qr3JTqeSBw+sNdbAGOMmE=;
 b=XotGs2J6i7Nb+oy1ptWvY6cMRJeLGpTg5KcQK8teuiXB3JUWUVJqw7aa4Lm1MmhKnLKEz32ImX98M1whMGDhCaGTAUpyJM/eHJ1kBK6hRpUfJOuZFKKvk7qhzJSEyXMLGdUXGxKDQDRc9ye1lTfyiTZlWrrvwNc42L0imUokGrKIIFpFzAdvJzpImXkr/hMxJdvxU3AsLK4PNZw6lXb8fVspjTOgHX2frxJvD7g8hZY5+TPsEVx7/uZTXBvvpX75mCGAXqLQl7p1JrV+O4Zku3VWb+0Oa0rkBZCevRO1OMlkzFwQdalkiZzIxjkgDPlw9UTsE9krUsgAGgBY5SImGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.43; Thu, 3 Apr
 2025 13:50:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Thu, 3 Apr 2025
 13:50:21 +0000
Date: Thu, 3 Apr 2025 16:50:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915: Simplify combo PLL frac w/a
Message-ID: <Z-6SHkgpEab5rCWZ@ideak-desk.fi.intel.com>
References: <20250401163752.6412-3-ville.syrjala@linux.intel.com>
 <20250402171720.9350-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250402171720.9350-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DU7P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4674:EE_
X-MS-Office365-Filtering-Correlation-Id: 5311d228-dca0-42b0-688f-08dd72b679e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?IR3V5XfHSKXVRNAzaaX0poFWgHw2c0ynpkF5Nynfek5wjQ6ghQip6CG4Le?=
 =?iso-8859-1?Q?vAfJZ4sTlDbW54P5qDxiL8z1tGgkuateWKCOKIIFjWEYajAg8vpCC8CfhS?=
 =?iso-8859-1?Q?u1pMRZMcaNz5Wla8OFpAIlPogSmTUrCIn6v/RU90bZrFcGTrh2cfz751oD?=
 =?iso-8859-1?Q?9mBGfpIjzPY17vh2YY5Pp2igcb61DySqPpdbmWNyi/uoiuYUlxUKxQR76U?=
 =?iso-8859-1?Q?s+9Idho8QX+7ggkKOby7eGquyk2j1FHouYm5NFzrBnsZ3U7EvqjyLxLfm2?=
 =?iso-8859-1?Q?JG629eN0ReVOaocpjzuntgxq4SqPnL/xRczG4rEZR2BKo7k9izTEEQXyWj?=
 =?iso-8859-1?Q?Tlo65vR9GGCP6Ip9af6eIv3jRuFyIrep+QcaWjBaJ7DeFLEBCAh9t6sLLw?=
 =?iso-8859-1?Q?AcGI1ywG9NIv1T0qeMGbLJjLqU5EF9cQCtod8BLzZ7+qoiALwzojDcDBGt?=
 =?iso-8859-1?Q?ijTFGDlDJbUAw0BkSLvyIqC7KNGw/8LSRRoO22p3oS/eIOn/d1lazv3CRu?=
 =?iso-8859-1?Q?y5IXfps5mFIa+8oMwDlxJx0XW4AkRrlquoaXlXvkM+UOHNFUKg2r9meUyN?=
 =?iso-8859-1?Q?ZQ0O+YUAsWVSYxSRvxMfb6sxPkBEEeka0fRBvmBvitGgkpw1IJiQG9vyHh?=
 =?iso-8859-1?Q?cAQNXia3vjAvNc+9Bmq8xEprTZIn9WtAS9DNaSdozeJIl4gsVVCHCYYwxr?=
 =?iso-8859-1?Q?xnFd/tj9rjKi6nb424BZuAp8ip2JK8/3Yy+AkCJ5nF6T3LKudswGjApEML?=
 =?iso-8859-1?Q?sStU7esmrTHMJbb4g/pMkHZrt7/Q+Ogv0EtdiUsMlv7M1FNyFir7+u4RVH?=
 =?iso-8859-1?Q?X+kKA2vCCEo4bgT4c61Z4G1hCA2VF8zFCN+bjXNqTkBiV+rEUtWagM7M8N?=
 =?iso-8859-1?Q?JV4R0x1yO3By9QSaGoJTpBF28gNU01LbgVcGdTf0GunCQR1gp1kCdD7fse?=
 =?iso-8859-1?Q?9M0YyhfBeus5hw1spzbX6Gh8VV6sc+5ZTY4nVCf13e3s25rJmhGAspqzWp?=
 =?iso-8859-1?Q?OSTb25Q6EiGSFPe8YkVlTVWphtlK4b8rsdQc/6HRSl+9cAHKuoGXKCL55R?=
 =?iso-8859-1?Q?YiB+pT8gdBSAzSl2+CudnWfiGasSFMQKp+j2cuDfAMLgmnMJCpnGrshi/P?=
 =?iso-8859-1?Q?ftdBhracE12a0jBu2Tgpv8X9lnO3TWelILtkKO3dHLEa9IKhL569RTGP+r?=
 =?iso-8859-1?Q?6kVhNxDAeEQ+kiXrBYxfWu//yLQdil/APRQM+C7dVbSh3wiW44lPU+P5hX?=
 =?iso-8859-1?Q?wLUZpev/+/V1pC7RUwbL8habglk6Z4RE9vt7D6ndirxhvZqka4GjB5HRYM?=
 =?iso-8859-1?Q?EKOTJDkOUyEU8GhGygYjaIQxAVkY1xi7hCa0qhNihXXlPzGXLSXMwkk+1M?=
 =?iso-8859-1?Q?xD+PSeSvKxCVByWusPcFEdjlI8kEcIpLs+0JifXFlY7FyKLuVnkK1e2JMY?=
 =?iso-8859-1?Q?cUxJowcX1BUmLJ6+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qRP0OyIfPZMg4AZx2aspVjFcuov3LMSW5fu13m8ndxlJxESJL5sLrrbw1o?=
 =?iso-8859-1?Q?4WOzZLizaD3ToniUsGDWBgMWnyI7WsDTdEV+qbO+lxoRT/T3q78V7hZ/sw?=
 =?iso-8859-1?Q?wnlhKUC2cIRGUrEyltmIsoxkniV1tPs0uKXYUHnWrE6ZotwcYth+fTIc3K?=
 =?iso-8859-1?Q?MXj37KCmbdwVZAvdIbQD92giiFXz/kluN62XAnJ8J7iMqNp4TmaAZ+K/ul?=
 =?iso-8859-1?Q?bkbAf9ph3xYy3DWFjFW6R5qMy1DtOZnjjxCASe74216v9cNo+AiFbQIr69?=
 =?iso-8859-1?Q?sBV32Q3BTCOZGkIJBrAjQBqdxD1SWcNntZJ8pZuyiADc+eJeqn55DF6BLA?=
 =?iso-8859-1?Q?C/zwfvxV8cSE5+9EitVOy2FWP6x0lEiWNM20VDFfh+B9ESNjdLKYwpWYYz?=
 =?iso-8859-1?Q?dKXrjuISWEJe9qWzAKCLezK8FJRcDDDL0Fm+NuK+lpAVu9nbECnC/DrduK?=
 =?iso-8859-1?Q?P4J2Uliv86xxWnbtg4GdzMfIOan4RtwdnygZJAWCKO5X78QHeVDg9PrYfk?=
 =?iso-8859-1?Q?CnE/EAlLQZIG5GGwo0mZDO/dQyNUvOrrrf4kvFpwKh7CJawru+XvWoDuvI?=
 =?iso-8859-1?Q?Lt2a9sbJ6fKsPplp5h+0Hr08Pwzu5Ht2CWM4QzMjEQcSlb+RWIUtwBID+f?=
 =?iso-8859-1?Q?slQ/FLDutlbVPxntTLYNGasFycYL2UaT9Smcwp0HOfH0A9L43am6YVE0zP?=
 =?iso-8859-1?Q?zHxTA0AzizNMO1mys78f13XeQTz59xataXPg1T89JdAN0/9vUoy4BrSwaO?=
 =?iso-8859-1?Q?XK8UDXA5mkDSOXtFOaW1hqPYxe5lzQy10ji5O/l6bWr6z1xE3wndGRRKMe?=
 =?iso-8859-1?Q?uIviXe/jgGKuqVf0fPsjgEeGGsFaUpFo2pzya6I6VneT/dZqi33NPMSDXm?=
 =?iso-8859-1?Q?3W+8eHBmHK0DyULrgqjTd4raj54KkmU2rvy3sZ3U5kkrg48xPVMGvjz4dd?=
 =?iso-8859-1?Q?mj1L/MZsP/2XT8b5Mk4aIMtnvpOdHFWJkxr8L5Nqi2691X40RjLnLrz4Q2?=
 =?iso-8859-1?Q?nQowNF2nbFiy7JQHgDx8jpKCVfyF1zK6w6yUdnEjwDVvX3eV4REcVYzmAt?=
 =?iso-8859-1?Q?5ZbZy2nVe+rZNRpHMzwRmivK99U40TI7chLY6gWhjWxZI+EKSl+QiGuc26?=
 =?iso-8859-1?Q?NdmbRWjCmfcHanpYOx0XNDCL4DrAoUXFJH05eCWVpjMividj96+x3aVXpe?=
 =?iso-8859-1?Q?jH7DncxW3WPSKRqQFLf14Q28BW+e0Y8XeDd3Yk+SrvshBJ/uTFg7BhkJc8?=
 =?iso-8859-1?Q?9dWFwHebWTKLUJ/ZFsC4qAb+IHwRY0JgvCN18Ro6dLvQxdOFPv468tFAV/?=
 =?iso-8859-1?Q?U2LjoLV13kkRbZguy7qDd5qZ1gF7wkhaXSughVOu+BAnT/+N+kDMadLxhg?=
 =?iso-8859-1?Q?vbsUmftLjCgex60rsCY8JJT9mokNqf75Jqs3Gane1pDF6mQWwu41DdUgvt?=
 =?iso-8859-1?Q?YZ0QIjSsRFB5YJzXCYqmmgiiL/YkHlwgFD1yyN1rTzsYHFcACAuXe7MWdJ?=
 =?iso-8859-1?Q?Du2alVsuKfaibO/9rtYrFwgX90Avws383Sh/bPBhrxKtSIw283yyo+G80D?=
 =?iso-8859-1?Q?LN5c/8y0IwV9pGwwjlt5mkAkKqZBXMeC2I1da2F5AdZArO5gW12AYTUuHC?=
 =?iso-8859-1?Q?4SKte5rsuebvR9DmQlmP+qwGy71nQjSWMJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5311d228-dca0-42b0-688f-08dd72b679e5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:50:21.2721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AVG01jFAeBIVsE4TsedvrSL5wt9q8cBhYByG/BSZWuoM3KzTEYzxa5WWCUYINquwicRP7I0EUNHqL/rZxAwFeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
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

On Wed, Apr 02, 2025 at 08:17:20PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We are applying the combo PLL frac w/a to all TGL+ platforms, except
> RKL. I *think* all RKL machines use a 24 MHz refclk (certainly all
> machines in our CI do) and so technically never need the adjustment.
> But let's assume the hardware is exactly the same anyway and simplify
> the code by applying the w/a to all TGL+ platforms.
> 
> v2: Keep the 38.4 MHz check
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 76ab55ee4b80..84df41086a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2604,11 +2604,8 @@ ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
>  {
>  	return ((display->platform.elkhartlake &&
>  		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
> -		 display->platform.dg1 ||
> -		 display->platform.tigerlake ||
> -		 display->platform.alderlake_s ||
> -		 display->platform.alderlake_p) &&
> -		 display->dpll.ref_clks.nssc == 38400;
> +		DISPLAY_VER(display) >= 12) &&
> +		display->dpll.ref_clks.nssc == 38400;
>  }
>  
>  struct icl_combo_pll_params {
> -- 
> 2.45.3
> 
