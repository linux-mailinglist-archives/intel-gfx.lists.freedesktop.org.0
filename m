Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421A396F804
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B7B10E19E;
	Fri,  6 Sep 2024 15:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PEMOIOfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499E710E19D;
 Fri,  6 Sep 2024 15:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635788; x=1757171788;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gwkw1fCxpEZgsDgSA5o+NvKiEoiWau8Y8or+yXxP5b4=;
 b=PEMOIOfEGxBNuFeor66qqw5oxGQ7BobQOKp0LvqZuARhkFAtdApHa8wA
 0EuH6OKTpzY3HeKK2cx0Bg+r239BexYW2PcxSB6OxbLr8mYFK5anDsDsG
 lNeu5DK8KAS0OYT/2TuLGzIdFWjjxaB7FUWacQJkNiN5thNilcLAmCP36
 xMbp8iSG7sIMbZJvxIUkyfxGDkDPZ+2IxgH5e2+dMjMSPra7X8EA5fB49
 +iYX7/ZxjHzHS3wt3+H8TLmHXm981fWrmQD9+cag8mmTM1fX83EZbl8ug
 TCRV/QC/o2a2yJDjKEhgw4gi7f099wK3UrJJDcHYvDISUL76UMZhgDouY A==;
X-CSE-ConnectionGUID: hsURM4ZwREeYkfGChzRj+w==
X-CSE-MsgGUID: WGlrz4rUS6mG6kEdqqbazg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24271141"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="24271141"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:16:27 -0700
X-CSE-ConnectionGUID: c4Syb8gwQV2q/q/4YVq+2A==
X-CSE-MsgGUID: o73Y6Uu7RviaVtB8FlJiOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="70775991"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 08:16:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:16:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 08:16:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 08:16:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uy4j/GZTFHS0LowwGHlT7sDbU9E3v7J0u5uKIVQRIYwO2Tr86FJJjE0JdhAY55QfuL9y/+eoBsPh03BAJqLCiqLy9Zc4iqzH4XXk7fiWqK4JsteH6HVE7mA43IDaO3C6aBeFBlYr5R7ogyxyiX3aFimBdN+8BEuN97/JEYvtwVpyyKPt504D22qmtH7RROgMm0qN25cNyJlBikdHjKHZNLSCQ0TjXTwOPJhUMCf2TekR+wYx8qIG7Lv3lz8gwUQpN1NLvq1IXPjfaGG9cIIYQDS4R3axrmFKldqsYhuCEi9GPQ5zy8OBIt2S6nV+XJE/gTJyTf1EPLditcCIDE6Gsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ujx7uU5soLJ3UybvYIVjsaxv6yk8qr0+JWAiairyey0=;
 b=dS8xqhgkBxjmhUA3kNUVDWjryFpsYyuzp+fx4HOxoB58DRDnPJvz/baqGDKFibpSh0vP2HVfaF8P/p3b0AhtitlXDiK5SLjWdhRToQ4z/im7U9pCud0VRpwnGqu5N4N/OvVkiUW+Chj6sGFwuzahXYOYV5XOdW7uB6bd4gs3vfGCbj9nkU22CtYTqPZOzEBobDgUAOXn1hP9kFxy07f38lQTSTAkTXlOLJdcxyqcEiQJXJB6Px3xiumoczamxLwnIc2IV2z1nKXxjBYb+f1BlCALpIUEBqW4pu0ME9UqNERyTKXOZGRw99qLJ+pa1EU5P6XoYVF5r6+/b5+d8XLPsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB7110.namprd11.prod.outlook.com (2603:10b6:806:2b3::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 15:16:23 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 15:16:23 +0000
Date: Fri, 6 Sep 2024 11:16:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/6] drm/i915/dmc: Convert DMC code to intel_display
Message-ID: <Ztscw5h9DBkXX9if@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906143306.15937-7-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB7110:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a10bf7c-2ab4-4e50-8b35-08dcce86dddc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?iDb9VF0XZ3Exk12inNr+OkfJgcrNzDC9FbrwELGb89lQkwdUsMOGtILghh?=
 =?iso-8859-1?Q?eRe4Zh4WuOKQtJpupP0/mSxE1uuV4RyqZh76X+laSqZuIyKlrJIJtrTsyM?=
 =?iso-8859-1?Q?Ihu29/ns5gdolkpGRXEoiXJl3wAMzlrztamZpOZ7I1pF5cXXJ0ne43oR25?=
 =?iso-8859-1?Q?tw9fwE2wgsi7VTFJZ3bflg6cTSPh3FwNrEmXbbCgC7NffhoVrpFbkqaHY3?=
 =?iso-8859-1?Q?3nefSVkkTKkPXru7B2njl94NIDEHKACvvUfCwGsZs7zhVNjvtq8M1gTQZ6?=
 =?iso-8859-1?Q?DbE/Lv1s/Oe2FRUKDNiMWtehO1sm2F6sz8M2gNgYS/2wkX/hufm/764PwH?=
 =?iso-8859-1?Q?VAbiHcg/hMYpzottcpFVcLBCQXe5stK2qSRS7KnwanMDbDpFPLVO8foSkx?=
 =?iso-8859-1?Q?6B3UbesrNe5gU7m1n/ocFvT4CWEGoY0j7YOOfK0T16UgYjIDmO4l8Lb7Sf?=
 =?iso-8859-1?Q?xBqIGSdh197FtSEz2mccvqlcH9yO5UkUQewKI6Iprmxs1nMkj6+ZwpH0Di?=
 =?iso-8859-1?Q?V+j063nojTWceRb5RYIIJvvhz95Cr4wl3CRV9hT8q26JP7h0j37PnpKR1h?=
 =?iso-8859-1?Q?RVzqknV1GHLnkk3q5R6zN1mXCyWyrZJx9PXuJYeRd5JY797RWEtEApXzFC?=
 =?iso-8859-1?Q?xpzLmxHz9sJRY4mDrXSL9W2MuruATrZKalxynyV1o29aGi0k3l6dbGj3FN?=
 =?iso-8859-1?Q?IdajTJpH/FE0rd4qaFWvfTYhRwWUFerga6S1ryISh1f1LIEeoYgcqRVtud?=
 =?iso-8859-1?Q?RYBh4TQKVWbb1dJH9Y9tXhCeiH0GHMWTIVjHKljR3/WVzkQuEdqbx53kPH?=
 =?iso-8859-1?Q?PWbR4Aip1qPyETex9sF8LKT1Bg8WWO27SthtyBd+CpvaSQtCS/OtP4Y7/P?=
 =?iso-8859-1?Q?XtatQO1yKna85G8RygNwb4ycGkzbXtV5kOwxqiGC/RxdB8fOpYMTU/fTgr?=
 =?iso-8859-1?Q?wvyTYsw73mjLGvKpdwLbyX1c8ITsYoy/sUD+HaEC9WlnY20vsXU2BFwf/a?=
 =?iso-8859-1?Q?Ni6fIA130eVXK6cxkVyZpKb+NVXeFl1AmkO+4Zg+14INnaIyW9lq7ZQLg3?=
 =?iso-8859-1?Q?2soPkJVX86JvecCon3PdDZHyQr5sJwvWn589gm1xTJuUPkBZMKHmcI0AUq?=
 =?iso-8859-1?Q?w8BQaF0Aru6yv51jgNYgEx8Yejxay1k8CnJz6Ol79hXhxlaFIZYxLn2pv7?=
 =?iso-8859-1?Q?vBESmwfIYO9Ap1+7sPIaD7pHEnnJcszcBrpkV+ItlkvKoPh7PB7bHciMyl?=
 =?iso-8859-1?Q?6P8Yxf4tROA2pG+BIlGNR6XJB1A6xlMlCvhVBHX7MT+DdpUxDooVnF+Jfs?=
 =?iso-8859-1?Q?wjM6R2Y2YDft37GQaKY8ExzDPVBK8T7T4JqWMHkHaYUUovbL930JMKCbY/?=
 =?iso-8859-1?Q?0kOuxcoStXoyl90CGLt/+awpzbm1apJQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?iV/3ryIUKcojdq8u67MkwnaubKd826OR1CiG5g7gwjQfld3/0bDi+6iVF3?=
 =?iso-8859-1?Q?F0K31kgIvUX4tl+xIWXnGi6aR9lwY2vJxH9bg7LrOD8saZrR7/qFNkw8tM?=
 =?iso-8859-1?Q?Fgh9ohsLupr3iY3jZlnN4XPdZvmmh+jDkuiDPTiWhmvIWQfWOyHRty5jFc?=
 =?iso-8859-1?Q?e6qsoYVXm5q9XUyV2Id6wFEOj4d+vqQ49MO2XEFNTS6SIC/TZU9si87Zun?=
 =?iso-8859-1?Q?4UcF+xmVA7WCSvo74iQdRjTzU8LZKWTxdlwJ032wXsGLdj4tvvvl+jjxhC?=
 =?iso-8859-1?Q?feeL1CbgMiiMR49aafoWX4zNPD83nclXoXL4ki2tO8QBqI2X+Rai+WeLdR?=
 =?iso-8859-1?Q?w79vUUB4Fl3cScvsWcfZD72QYd3vQ0TA1hn2p9pFVEvmQ3ficDEwJW4VE/?=
 =?iso-8859-1?Q?lk/T+T3dF1MCiEO1Ws2dAMwBg0WNbv+/HkzH3zP/DOt4oFO0e1ASsxmRHl?=
 =?iso-8859-1?Q?ef3GJxtDC5XItm6C9v1i1hCPu81YtuNMuUoNhcLswLgqf9xtsGj2tHbXa9?=
 =?iso-8859-1?Q?GC9Cm5Fi2J3+HPlCUd85uyHmMrdEuj68ZSCO7i9i2W6lfK9rwThCY3Jx8i?=
 =?iso-8859-1?Q?NmkwtN554AqqZYqUlxrrPKmeB3mnBQLyS7zIS97bqGBh7WKtXJaMXsEixZ?=
 =?iso-8859-1?Q?ks2oPQmlRcvQOdzkR0x0yqj1CibgFDroRxujMZNvT4mkIm77x+yFNKMlsi?=
 =?iso-8859-1?Q?RlML51r6iiJSkiXmC/+v6woXbHgM4dXzFn2DhmAr/9+awsaGxCTminny6B?=
 =?iso-8859-1?Q?m+ep72hMZ4XyHlg0t0UtZfAw0bDVJhORzgiF7N7W4+BvCvla0DAp6dKcNC?=
 =?iso-8859-1?Q?xU/TqMNCjBMvklMxMYvIbhtdQNWDTBWL4evHJ0kHlNB3DrcC2p+al2L0Tl?=
 =?iso-8859-1?Q?pCwq+JPBtoyVf/0RgzQytBgMEOWQT17dKJg/sZKNp/l83/afkT8P2xNNIh?=
 =?iso-8859-1?Q?+Eo4dihUYBdRjVdiDbxZ5JQE8ArEoZlrBbvG7bxZjC5aEGn8caOb9ApvKD?=
 =?iso-8859-1?Q?XNhh/3SpdcQWUu4sPHNCu0XAYLQEaqVb5jq9z1B5GJzk2JuTm2+429hPVd?=
 =?iso-8859-1?Q?IplHKmMlPvMAVSk0j5UzmkVB9wj5Mk+j9y8qd0YZUQ/rgDUQ2aO8kES1IT?=
 =?iso-8859-1?Q?GMnuQjlIACAiIzg9ibcxpVa7b+ENjrLBm2NUsTvOW/iekC6wstTWIt0VvL?=
 =?iso-8859-1?Q?dmXNg6J960lRxalV/z5b5pRJghHRooRVMGb6YWnxG5p5Ny7+xrPTM4xNvx?=
 =?iso-8859-1?Q?bPFVn8qy1wv7kX2bdALGl8PokYxKW/DHxs12G1lWvazGH11/Vhj3nDFK87?=
 =?iso-8859-1?Q?e9/NRvXMAdH1Z//j2BE+tq0noxvc5AF7T42toAUNsZ3CLqE+5NYaZuc1aX?=
 =?iso-8859-1?Q?viexwiyXloiF3644Hzz75y5PEUSERjvIsBuqgr49AMhQYir3+DAQswzcC/?=
 =?iso-8859-1?Q?QvkM2L4CblbZ/r3ZqYWTPkGSLsJ9HFpyEpTUOsMML0oZPponxnjD5IAq7v?=
 =?iso-8859-1?Q?iKAkoaelQ7MsxxnM7xeRc0cQ6n1IrUBzXJtQ+0lk1WOjVXDBGNa5rMyzkC?=
 =?iso-8859-1?Q?CRqx2gkZk/RtgTZFVomBBU5PlYo9o9yyvxv7eTJm+I1sJar3Jc1ABWSjbi?=
 =?iso-8859-1?Q?6SQ/epktPWzP85oGI0xGdN+TfFBLzqfUnT0/zeTIeobqJiGnPioaYYKQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a10bf7c-2ab4-4e50-8b35-08dcce86dddc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 15:16:22.9938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NHZvtV0TFP7XRmDQOpYlXZCHRdnbMBLx1qB1RMCoWxgFS13RAhbAjCNSjWiSc/+cTJ0npvDzG1EsHVCaaRAMsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7110
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

On Fri, Sep 06, 2024 at 05:33:06PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the DMC code to
> use it (as much as possible at this stage).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  .../drm/i915/display/intel_display_driver.c   |   6 +-
>  .../drm/i915/display/intel_display_power.c    |  17 +-
>  .../i915/display/intel_display_power_well.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 391 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  26 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   4 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   3 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   6 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
>  12 files changed, 243 insertions(+), 233 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0ec78b06ca80..fdf244a32b24 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1690,7 +1690,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>  						 intel_crtc_joined_pipe_mask(new_crtc_state))
> -		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
> +		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
>  
>  	intel_encoders_pre_pll_enable(state, crtc);
>  
> @@ -1843,9 +1843,10 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
>  static void hsw_crtc_disable(struct intel_atomic_state *state,
>  			     struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(state);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct intel_crtc *pipe_crtc;
>  
>  	/*
> @@ -1867,7 +1868,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  
>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
>  					 intel_crtc_joined_pipe_mask(old_crtc_state))
> -		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
> +		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
>  }
>  
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index c1bef34d1ffd..b75361e95e97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1069,7 +1069,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  
>  	intel_bios_debugfs_register(display);
>  	intel_cdclk_debugfs_register(display);
> -	intel_dmc_debugfs_register(i915);
> +	intel_dmc_debugfs_register(display);
>  	intel_fbc_debugfs_register(display);
>  	intel_hpd_debugfs_register(i915);
>  	intel_opregion_debugfs_register(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index f8da72af2107..c106fb2dd20b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -237,7 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return 0;
>  
> -	intel_dmc_init(i915);
> +	intel_dmc_init(display);
>  
>  	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>  	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
> @@ -272,7 +272,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	return 0;
>  
>  cleanup_vga_client_pw_domain_dmc:
> -	intel_dmc_fini(i915);
> +	intel_dmc_fini(display);
>  	intel_power_domains_driver_remove(i915);
>  cleanup_vga:
>  	intel_vga_unregister(display);
> @@ -621,7 +621,7 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
>  {
>  	struct intel_display *display = &i915->display;
>  
> -	intel_dmc_fini(i915);
> +	intel_dmc_fini(display);
>  
>  	intel_power_domains_driver_remove(i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 86ac494ed33b..ecabb674644b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1445,7 +1445,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
>  	gen9_dbuf_enable(dev_priv);
>  
>  	if (resume)
> -		intel_dmc_load_program(dev_priv);
> +		intel_dmc_load_program(display);
>  }
>  
>  static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
> @@ -1515,7 +1515,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
>  	gen9_dbuf_enable(dev_priv);
>  
>  	if (resume)
> -		intel_dmc_load_program(dev_priv);
> +		intel_dmc_load_program(display);
>  }
>  
>  static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
> @@ -1687,7 +1687,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
>  
>  	if (resume)
> -		intel_dmc_load_program(dev_priv);
> +		intel_dmc_load_program(display);
>  
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
>  	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
> @@ -1718,7 +1718,7 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	gen9_disable_dc_states(display);
> -	intel_dmc_disable_program(dev_priv);
> +	intel_dmc_disable_program(display);
>  
>  	/* 1. Disable all display engine functions -> aready done */
>  
> @@ -2073,7 +2073,8 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
>   */
>  void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
>  {
> -	struct i915_power_domains *power_domains = &i915->display.power.domains;
> +	struct intel_display *display = &i915->display;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	intel_wakeref_t wakeref __maybe_unused =
>  		fetch_and_zero(&power_domains->init_wakeref);
>  
> @@ -2087,7 +2088,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
>  	 * that would be blocked if the firmware was inactive.
>  	 */
>  	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) && s2idle &&
> -	    intel_dmc_has_payload(i915)) {
> +	    intel_dmc_has_payload(display)) {
>  		intel_display_power_flush_work(i915);
>  		intel_power_domains_verify_state(i915);
>  		return;
> @@ -2286,7 +2287,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
>  	if (DISPLAY_VER(i915) >= 11) {
>  		bxt_disable_dc9(display);
>  		icl_display_core_init(i915, true);
> -		if (intel_dmc_has_payload(i915)) {
> +		if (intel_dmc_has_payload(display)) {
>  			if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
>  				skl_enable_dc6(display);
>  			else if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
> @@ -2295,7 +2296,7 @@ void intel_display_power_resume(struct drm_i915_private *i915)
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		bxt_disable_dc9(display);
>  		bxt_display_core_init(i915, true);
> -		if (intel_dmc_has_payload(i915) &&
> +		if (intel_dmc_has_payload(display) &&
>  		    (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
>  			gen9_enable_dc5(display);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9f275a6674a1..1898aff50ac4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -817,7 +817,7 @@ static void assert_can_enable_dc5(struct intel_display *display)
>  		      "DC5 already programmed to be enabled.\n");
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>  
> -	assert_dmc_loaded(dev_priv);
> +	assert_dmc_loaded(display);
>  }
>  
>  void gen9_enable_dc5(struct intel_display *display)
> @@ -840,8 +840,6 @@ void gen9_enable_dc5(struct intel_display *display)
>  
>  static void assert_can_enable_dc6(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	drm_WARN_ONCE(display->drm,
>  		      (intel_de_read(display, UTIL_PIN_CTL) &
>  		       (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
> @@ -852,7 +850,7 @@ static void assert_can_enable_dc6(struct intel_display *display)
>  		       DC_STATE_EN_UPTO_DC6),
>  		      "DC6 already programmed to be enabled.\n");
>  
> -	assert_dmc_loaded(dev_priv);
> +	assert_dmc_loaded(display);
>  }
>  
>  void skl_enable_dc6(struct intel_display *display)
> @@ -1031,7 +1029,7 @@ static void gen9_dc_off_power_well_disable(struct drm_i915_private *dev_priv,
>  	struct intel_display *display = &dev_priv->display;
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  
> -	if (!intel_dmc_has_payload(dev_priv))
> +	if (!intel_dmc_has_payload(display))
>  		return;
>  
>  	switch (power_domains->target_dc_state) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7c756d5ba2a2..bbac6bfd1752 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,7 +52,7 @@ enum intel_dmc_id {
>  };
>  
>  struct intel_dmc {
> -	struct drm_i915_private *i915;
> +	struct intel_display *display;
>  	struct work_struct work;
>  	const char *fw_path;
>  	u32 max_fw_size; /* bytes */
> @@ -70,21 +70,21 @@ struct intel_dmc {
>  };
>  
>  /* Note: This may be NULL. */
> -static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
> +static struct intel_dmc *display_to_dmc(struct intel_display *display)
>  {
> -	return i915->display.dmc.dmc;
> +	return display->dmc.dmc;
>  }
>  
> -static const char *dmc_firmware_param(struct drm_i915_private *i915)
> +static const char *dmc_firmware_param(struct intel_display *display)
>  {
> -	const char *p = i915->display.params.dmc_firmware_path;
> +	const char *p = display->params.dmc_firmware_path;
>  
>  	return p && *p ? p : NULL;
>  }
>  
> -static bool dmc_firmware_param_disabled(struct drm_i915_private *i915)
> +static bool dmc_firmware_param_disabled(struct intel_display *display)
>  {
> -	const char *p = dmc_firmware_param(i915);
> +	const char *p = dmc_firmware_param(display);
>  
>  	/* Magic path to indicate disabled */
>  	return p && !strcmp(p, "/dev/null");
> @@ -162,18 +162,19 @@ MODULE_FIRMWARE(SKL_DMC_PATH);
>  #define BXT_DMC_MAX_FW_SIZE		0x3000
>  MODULE_FIRMWARE(BXT_DMC_PATH);
>  
> -static const char *dmc_firmware_default(struct drm_i915_private *i915, u32 *size)
> +static const char *dmc_firmware_default(struct intel_display *display, u32 *size)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const char *fw_path = NULL;
>  	u32 max_fw_size = 0;
>  
> -	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
> +	if (DISPLAY_VER_FULL(display) == IP_VER(20, 0)) {
>  		fw_path = XE2LPD_DMC_PATH;
>  		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) {
> +	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 1)) {
>  		fw_path = BMG_DMC_PATH;
>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
> +	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 0)) {
>  		fw_path = MTL_DMC_PATH;
>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
>  	} else if (IS_DG2(i915)) {
> @@ -194,7 +195,7 @@ static const char *dmc_firmware_default(struct drm_i915_private *i915, u32 *size
>  	} else if (IS_TIGERLAKE(i915)) {
>  		fw_path = TGL_DMC_PATH;
>  		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER(i915) == 11) {
> +	} else if (DISPLAY_VER(display) == 11) {
>  		fw_path = ICL_DMC_PATH;
>  		max_fw_size = ICL_DMC_MAX_FW_SIZE;
>  	} else if (IS_GEMINILAKE(i915)) {
> @@ -375,70 +376,70 @@ static bool is_valid_dmc_id(enum intel_dmc_id dmc_id)
>  	return dmc_id >= DMC_FW_MAIN && dmc_id < DMC_FW_MAX;
>  }
>  
> -static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
> +static bool has_dmc_id_fw(struct intel_display *display, enum intel_dmc_id dmc_id)
>  {
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  
>  	return dmc && dmc->dmc_info[dmc_id].payload;
>  }
>  
> -bool intel_dmc_has_payload(struct drm_i915_private *i915)
> +bool intel_dmc_has_payload(struct intel_display *display)
>  {
> -	return has_dmc_id_fw(i915, DMC_FW_MAIN);
> +	return has_dmc_id_fw(display, DMC_FW_MAIN);
>  }
>  
>  static const struct stepping_info *
> -intel_get_stepping_info(struct drm_i915_private *i915,
> +intel_get_stepping_info(struct intel_display *display,
>  			struct stepping_info *si)
>  {
> -	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(i915));
> +	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(display));
>  
>  	si->stepping = step_name[0];
>  	si->substepping = step_name[1];
>  	return si;
>  }
>  
> -static void gen9_set_dc_state_debugmask(struct drm_i915_private *i915)
> +static void gen9_set_dc_state_debugmask(struct intel_display *display)
>  {
>  	/* The below bit doesn't need to be cleared ever afterwards */
> -	intel_de_rmw(i915, DC_STATE_DEBUG, 0,
> +	intel_de_rmw(display, DC_STATE_DEBUG, 0,
>  		     DC_STATE_DEBUG_MASK_CORES | DC_STATE_DEBUG_MASK_MEMORY_UP);
> -	intel_de_posting_read(i915, DC_STATE_DEBUG);
> +	intel_de_posting_read(display, DC_STATE_DEBUG);
>  }
>  
> -static void disable_event_handler(struct drm_i915_private *i915,
> +static void disable_event_handler(struct intel_display *display,
>  				  i915_reg_t ctl_reg, i915_reg_t htp_reg)
>  {
> -	intel_de_write(i915, ctl_reg,
> +	intel_de_write(display, ctl_reg,
>  		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
>  				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
>  		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
>  				      DMC_EVT_CTL_EVENT_ID_FALSE));
> -	intel_de_write(i915, htp_reg, 0);
> +	intel_de_write(display, htp_reg, 0);
>  }
>  
> -static void disable_all_event_handlers(struct drm_i915_private *i915)
> +static void disable_all_event_handlers(struct intel_display *display)
>  {
>  	enum intel_dmc_id dmc_id;
>  
>  	/* TODO: disable the event handlers on pre-GEN12 platforms as well */
> -	if (DISPLAY_VER(i915) < 12)
> +	if (DISPLAY_VER(display) < 12)
>  		return;
>  
>  	for_each_dmc_id(dmc_id) {
>  		int handler;
>  
> -		if (!has_dmc_id_fw(i915, dmc_id))
> +		if (!has_dmc_id_fw(display, dmc_id))
>  			continue;
>  
>  		for (handler = 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12; handler++)
> -			disable_event_handler(i915,
> -					      DMC_EVT_CTL(i915, dmc_id, handler),
> -					      DMC_EVT_HTP(i915, dmc_id, handler));
> +			disable_event_handler(display,
> +					      DMC_EVT_CTL(display, dmc_id, handler),
> +					      DMC_EVT_HTP(display, dmc_id, handler));
>  	}
>  }
>  
> -static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void adlp_pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
>  {
>  	enum pipe pipe;
>  
> @@ -451,84 +452,86 @@ static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool ena
>  	 */
>  	if (enable)
>  		for (pipe = PIPE_A; pipe <= PIPE_D; pipe++)
> -			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
> +			intel_de_rmw(display, CLKGATE_DIS_PSL_EXT(pipe),
>  				     0, PIPEDMC_GATING_DIS);
>  	else
>  		for (pipe = PIPE_C; pipe <= PIPE_D; pipe++)
> -			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
> +			intel_de_rmw(display, CLKGATE_DIS_PSL_EXT(pipe),
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> -static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915)
> +static void mtl_pipedmc_clock_gating_wa(struct intel_display *display)
>  {
>  	/*
>  	 * Wa_16015201720
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 */
> -	intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> +	intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0,
>  		     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B);
>  }
>  
> -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
>  {
> -	if (DISPLAY_VER(i915) >= 14 && enable)
> -		mtl_pipedmc_clock_gating_wa(i915);
> -	else if (DISPLAY_VER(i915) == 13)
> -		adlp_pipedmc_clock_gating_wa(i915, enable);
> +	if (DISPLAY_VER(display) >= 14 && enable)
> +		mtl_pipedmc_clock_gating_wa(display);
> +	else if (DISPLAY_VER(display) == 13)
> +		adlp_pipedmc_clock_gating_wa(display, enable);
>  }
>  
> -void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> +void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
>  {
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>  
> -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
>  		return;
>  
> -	if (DISPLAY_VER(i915) >= 14)
> -		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
> +	if (DISPLAY_VER(display) >= 14)
> +		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
>  	else
> -		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
> +		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
>  }
>  
> -void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> +void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
>  {
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>  
> -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
>  		return;
>  
> -	if (DISPLAY_VER(i915) >= 14)
> -		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
> +	if (DISPLAY_VER(display) >= 14)
> +		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
>  	else
> -		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
> +		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
>  }
>  
> -static bool is_dmc_evt_ctl_reg(struct drm_i915_private *i915,
> +static bool is_dmc_evt_ctl_reg(struct intel_display *display,
>  			       enum intel_dmc_id dmc_id, i915_reg_t reg)
>  {
>  	u32 offset = i915_mmio_reg_offset(reg);
> -	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(i915, dmc_id, 0));
> -	u32 end = i915_mmio_reg_offset(DMC_EVT_CTL(i915, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
> +	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
> +	u32 end = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
>  
>  	return offset >= start && offset < end;
>  }
>  
> -static bool is_dmc_evt_htp_reg(struct drm_i915_private *i915,
> +static bool is_dmc_evt_htp_reg(struct intel_display *display,
>  			       enum intel_dmc_id dmc_id, i915_reg_t reg)
>  {
>  	u32 offset = i915_mmio_reg_offset(reg);
> -	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(i915, dmc_id, 0));
> -	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(i915, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
> +	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
> +	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
>  
>  	return offset >= start && offset < end;
>  }
>  
> -static bool disable_dmc_evt(struct drm_i915_private *i915,
> +static bool disable_dmc_evt(struct intel_display *display,
>  			    enum intel_dmc_id dmc_id,
>  			    i915_reg_t reg, u32 data)
>  {
> -	if (!is_dmc_evt_ctl_reg(i915, dmc_id, reg))
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg))
>  		return false;
>  
>  	/* keep all pipe DMC events disabled by default */
> @@ -548,11 +551,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
>  	return false;
>  }
>  
> -static u32 dmc_mmiodata(struct drm_i915_private *i915,
> +static u32 dmc_mmiodata(struct intel_display *display,
>  			struct intel_dmc *dmc,
>  			enum intel_dmc_id dmc_id, int i)
>  {
> -	if (disable_dmc_evt(i915, dmc_id,
> +	if (disable_dmc_evt(display, dmc_id,
>  			    dmc->dmc_info[dmc_id].mmioaddr[i],
>  			    dmc->dmc_info[dmc_id].mmiodata[i]))
>  		return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> @@ -565,25 +568,26 @@ static u32 dmc_mmiodata(struct drm_i915_private *i915,
>  
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register.
> - * @i915: i915 drm device.
> + * @display: display instance
>   *
>   * DMC firmware is read from a .bin file and kept in internal memory one time.
>   * Everytime display comes back from low power state this function is called to
>   * copy the firmware from internal memory to registers.
>   */
> -void intel_dmc_load_program(struct drm_i915_private *i915)
> +void intel_dmc_load_program(struct intel_display *display)
>  {
> -	struct i915_power_domains *power_domains = &i915->display.power.domains;
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct drm_i915_private *i915 __maybe_unused = to_i915(display->drm);
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  	enum intel_dmc_id dmc_id;
>  	u32 i;
>  
> -	if (!intel_dmc_has_payload(i915))
> +	if (!intel_dmc_has_payload(display))
>  		return;
>  
> -	pipedmc_clock_gating_wa(i915, true);
> +	pipedmc_clock_gating_wa(display, true);
>  
> -	disable_all_event_handlers(i915);
> +	disable_all_event_handlers(display);
>  
>  	assert_rpm_wakelock_held(&i915->runtime_pm);
>  
> @@ -591,7 +595,7 @@ void intel_dmc_load_program(struct drm_i915_private *i915)
>  
>  	for_each_dmc_id(dmc_id) {
>  		for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
> -			intel_de_write_fw(i915,
> +			intel_de_write_fw(display,
>  					  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
>  					  dmc->dmc_info[dmc_id].payload[i]);
>  		}
> @@ -601,48 +605,48 @@ void intel_dmc_load_program(struct drm_i915_private *i915)
>  
>  	for_each_dmc_id(dmc_id) {
>  		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> -			intel_de_write(i915, dmc->dmc_info[dmc_id].mmioaddr[i],
> -				       dmc_mmiodata(i915, dmc, dmc_id, i));
> +			intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
> +				       dmc_mmiodata(display, dmc, dmc_id, i));
>  		}
>  	}
>  
>  	power_domains->dc_state = 0;
>  
> -	gen9_set_dc_state_debugmask(i915);
> +	gen9_set_dc_state_debugmask(display);
>  
> -	pipedmc_clock_gating_wa(i915, false);
> +	pipedmc_clock_gating_wa(display, false);
>  }
>  
>  /**
>   * intel_dmc_disable_program() - disable the firmware
> - * @i915: i915 drm device
> + * @display: display instance
>   *
>   * Disable all event handlers in the firmware, making sure the firmware is
>   * inactive after the display is uninitialized.
>   */
> -void intel_dmc_disable_program(struct drm_i915_private *i915)
> +void intel_dmc_disable_program(struct intel_display *display)
>  {
> -	if (!intel_dmc_has_payload(i915))
> +	if (!intel_dmc_has_payload(display))
>  		return;
>  
> -	pipedmc_clock_gating_wa(i915, true);
> -	disable_all_event_handlers(i915);
> -	pipedmc_clock_gating_wa(i915, false);
> +	pipedmc_clock_gating_wa(display, true);
> +	disable_all_event_handlers(display);
> +	pipedmc_clock_gating_wa(display, false);
>  
> -	intel_dmc_wl_disable(&i915->display);
> +	intel_dmc_wl_disable(display);
>  }
>  
> -void assert_dmc_loaded(struct drm_i915_private *i915)
> +void assert_dmc_loaded(struct intel_display *display)
>  {
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  
> -	drm_WARN_ONCE(&i915->drm, !dmc, "DMC not initialized\n");
> -	drm_WARN_ONCE(&i915->drm, dmc &&
> -		      !intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
> +	drm_WARN_ONCE(display->drm, !dmc, "DMC not initialized\n");
> +	drm_WARN_ONCE(display->drm, dmc &&
> +		      !intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>  		      "DMC program storage start is NULL\n");
> -	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
> +	drm_WARN_ONCE(display->drm, !intel_de_read(display, DMC_SSP_BASE),
>  		      "DMC SSP Base Not fine\n");
> -	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_HTP_SKL),
> +	drm_WARN_ONCE(display->drm, !intel_de_read(display, DMC_HTP_SKL),
>  		      "DMC HTP Not fine\n");
>  }
>  
> @@ -673,7 +677,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
>  			      const struct stepping_info *si,
>  			      u8 package_ver)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	enum intel_dmc_id dmc_id;
>  	unsigned int i;
>  
> @@ -681,7 +685,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
>  		dmc_id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
>  
>  		if (!is_valid_dmc_id(dmc_id)) {
> -			drm_dbg(&i915->drm, "Unsupported firmware id: %u\n", dmc_id);
> +			drm_dbg(display->drm, "Unsupported firmware id: %u\n", dmc_id);
>  			continue;
>  		}
>  
> @@ -703,7 +707,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
>  				       const u32 *mmioaddr, u32 mmio_count,
>  				       int header_ver, enum intel_dmc_id dmc_id)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	u32 start_range, end_range;
>  	int i;
>  
> @@ -713,14 +717,14 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
>  	} else if (dmc_id == DMC_FW_MAIN) {
>  		start_range = TGL_MAIN_MMIO_START;
>  		end_range = TGL_MAIN_MMIO_END;
> -	} else if (DISPLAY_VER(i915) >= 13) {
> +	} else if (DISPLAY_VER(display) >= 13) {
>  		start_range = ADLP_PIPE_MMIO_START;
>  		end_range = ADLP_PIPE_MMIO_END;
> -	} else if (DISPLAY_VER(i915) >= 12) {
> +	} else if (DISPLAY_VER(display) >= 12) {
>  		start_range = TGL_PIPE_MMIO_START(dmc_id);
>  		end_range = TGL_PIPE_MMIO_END(dmc_id);
>  	} else {
> -		drm_warn(&i915->drm, "Unknown mmio range for sanity check");
> +		drm_warn(display->drm, "Unknown mmio range for sanity check");
>  		return false;
>  	}
>  
> @@ -736,7 +740,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  			       const struct intel_dmc_header_base *dmc_header,
>  			       size_t rem_size, enum intel_dmc_id dmc_id)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
>  	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
>  	const u32 *mmioaddr, *mmiodata;
> @@ -784,39 +788,39 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  		start_mmioaddr = DMC_V1_MMIO_START_RANGE;
>  		dmc_header_size = sizeof(*v1);
>  	} else {
> -		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
> +		drm_err(display->drm, "Unknown DMC fw header version: %u\n",
>  			dmc_header->header_ver);
>  		return 0;
>  	}
>  
>  	if (header_len_bytes != dmc_header_size) {
> -		drm_err(&i915->drm, "DMC firmware has wrong dmc header length "
> +		drm_err(display->drm, "DMC firmware has wrong dmc header length "
>  			"(%u bytes)\n", header_len_bytes);
>  		return 0;
>  	}
>  
>  	/* Cache the dmc header info. */
>  	if (mmio_count > mmio_count_max) {
> -		drm_err(&i915->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
> +		drm_err(display->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
>  		return 0;
>  	}
>  
>  	if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count,
>  					dmc_header->header_ver, dmc_id)) {
> -		drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
> +		drm_err(display->drm, "DMC firmware has Wrong MMIO Addresses\n");
>  		return 0;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "DMC %d:\n", dmc_id);
> +	drm_dbg_kms(display->drm, "DMC %d:\n", dmc_id);
>  	for (i = 0; i < mmio_count; i++) {
>  		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
>  		dmc_info->mmiodata[i] = mmiodata[i];
>  
> -		drm_dbg_kms(&i915->drm, " mmio[%d]: 0x%x = 0x%x%s%s\n",
> +		drm_dbg_kms(display->drm, " mmio[%d]: 0x%x = 0x%x%s%s\n",
>  			    i, mmioaddr[i], mmiodata[i],
> -			    is_dmc_evt_ctl_reg(i915, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :
> -			    is_dmc_evt_htp_reg(i915, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",
> -			    disable_dmc_evt(i915, dmc_id, dmc_info->mmioaddr[i],
> +			    is_dmc_evt_ctl_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :
> +			    is_dmc_evt_htp_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",
> +			    disable_dmc_evt(display, dmc_id, dmc_info->mmioaddr[i],
>  					    dmc_info->mmiodata[i]) ? " (disabling)" : "");
>  	}
>  	dmc_info->mmio_count = mmio_count;
> @@ -830,7 +834,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  		goto error_truncated;
>  
>  	if (payload_size > dmc->max_fw_size) {
> -		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
> +		drm_err(display->drm, "DMC FW too big (%u bytes)\n", payload_size);
>  		return 0;
>  	}
>  	dmc_info->dmc_fw_size = dmc_header->fw_size;
> @@ -845,7 +849,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  	return header_len_bytes + payload_size;
>  
>  error_truncated:
> -	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> +	drm_err(display->drm, "Truncated DMC firmware, refusing.\n");
>  	return 0;
>  }
>  
> @@ -855,7 +859,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  		     const struct stepping_info *si,
>  		     size_t rem_size)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	u32 package_size = sizeof(struct intel_package_header);
>  	u32 num_entries, max_entries;
>  	const struct intel_fw_info *fw_info;
> @@ -868,7 +872,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	} else if (package_header->header_ver == 2) {
>  		max_entries = PACKAGE_V2_MAX_FW_INFO_ENTRIES;
>  	} else {
> -		drm_err(&i915->drm, "DMC firmware has unknown header version %u\n",
> +		drm_err(display->drm, "DMC firmware has unknown header version %u\n",
>  			package_header->header_ver);
>  		return 0;
>  	}
> @@ -882,7 +886,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  		goto error_truncated;
>  
>  	if (package_header->header_len * 4 != package_size) {
> -		drm_err(&i915->drm, "DMC firmware has wrong package header length "
> +		drm_err(display->drm, "DMC firmware has wrong package header length "
>  			"(%u bytes)\n", package_size);
>  		return 0;
>  	}
> @@ -900,7 +904,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	return package_size;
>  
>  error_truncated:
> -	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> +	drm_err(display->drm, "Truncated DMC firmware, refusing.\n");
>  	return 0;
>  }
>  
> @@ -909,16 +913,16 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>  			    struct intel_css_header *css_header,
>  			    size_t rem_size)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  
>  	if (rem_size < sizeof(struct intel_css_header)) {
> -		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> +		drm_err(display->drm, "Truncated DMC firmware, refusing.\n");
>  		return 0;
>  	}
>  
>  	if (sizeof(struct intel_css_header) !=
>  	    (css_header->header_len * 4)) {
> -		drm_err(&i915->drm, "DMC firmware has wrong CSS header length "
> +		drm_err(display->drm, "DMC firmware has wrong CSS header length "
>  			"(%u bytes)\n",
>  			(css_header->header_len * 4));
>  		return 0;
> @@ -931,12 +935,12 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>  
>  static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>  {
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	struct intel_css_header *css_header;
>  	struct intel_package_header *package_header;
>  	struct intel_dmc_header_base *dmc_header;
>  	struct stepping_info display_info = { '*', '*'};
> -	const struct stepping_info *si = intel_get_stepping_info(i915, &display_info);
> +	const struct stepping_info *si = intel_get_stepping_info(display, &display_info);
>  	enum intel_dmc_id dmc_id;
>  	u32 readcount = 0;
>  	u32 r, offset;
> @@ -966,7 +970,7 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>  
>  		offset = readcount + dmc->dmc_info[dmc_id].dmc_offset * 4;
>  		if (offset > fw->size) {
> -			drm_err(&i915->drm, "Reading beyond the fw_size\n");
> +			drm_err(display->drm, "Reading beyond the fw_size\n");
>  			continue;
>  		}
>  
> @@ -974,30 +978,35 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>  		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, dmc_id);
>  	}
>  
> -	if (!intel_dmc_has_payload(i915)) {
> -		drm_err(&i915->drm, "DMC firmware main program not found\n");
> +	if (!intel_dmc_has_payload(display)) {
> +		drm_err(display->drm, "DMC firmware main program not found\n");
>  		return -ENOENT;
>  	}
>  
>  	return 0;
>  }
>  
> -static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
> +static void intel_dmc_runtime_pm_get(struct intel_display *display)
>  {
> -	drm_WARN_ON(&i915->drm, i915->display.dmc.wakeref);
> -	i915->display.dmc.wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	drm_WARN_ON(display->drm, display->dmc.wakeref);
> +	display->dmc.wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
>  }
>  
> -static void intel_dmc_runtime_pm_put(struct drm_i915_private *i915)
> +static void intel_dmc_runtime_pm_put(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	intel_wakeref_t wakeref __maybe_unused =
> -		fetch_and_zero(&i915->display.dmc.wakeref);
> +		fetch_and_zero(&display->dmc.wakeref);
>  
>  	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
>  }
>  
> -static const char *dmc_fallback_path(struct drm_i915_private *i915)
> +static const char *dmc_fallback_path(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (IS_ALDERLAKE_P(i915))
>  		return ADLP_DMC_FALLBACK_PATH;
>  
> @@ -1007,45 +1016,45 @@ static const char *dmc_fallback_path(struct drm_i915_private *i915)
>  static void dmc_load_work_fn(struct work_struct *work)
>  {
>  	struct intel_dmc *dmc = container_of(work, typeof(*dmc), work);
> -	struct drm_i915_private *i915 = dmc->i915;
> +	struct intel_display *display = dmc->display;
>  	const struct firmware *fw = NULL;
>  	const char *fallback_path;
>  	int err;
>  
> -	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
> +	err = request_firmware(&fw, dmc->fw_path, display->drm->dev);
>  
> -	if (err == -ENOENT && !dmc_firmware_param(i915)) {
> -		fallback_path = dmc_fallback_path(i915);
> +	if (err == -ENOENT && !dmc_firmware_param(display)) {
> +		fallback_path = dmc_fallback_path(display);
>  		if (fallback_path) {
> -			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
> +			drm_dbg_kms(display->drm, "%s not found, falling back to %s\n",
>  				    dmc->fw_path, fallback_path);
> -			err = request_firmware(&fw, fallback_path, i915->drm.dev);
> +			err = request_firmware(&fw, fallback_path, display->drm->dev);
>  			if (err == 0)
>  				dmc->fw_path = fallback_path;
>  		}
>  	}
>  
>  	if (err) {
> -		drm_notice(&i915->drm,
> +		drm_notice(display->drm,
>  			   "Failed to load DMC firmware %s (%pe). Disabling runtime power management.\n",
>  			   dmc->fw_path, ERR_PTR(err));
> -		drm_notice(&i915->drm, "DMC firmware homepage: %s",
> +		drm_notice(display->drm, "DMC firmware homepage: %s",
>  			   INTEL_DMC_FIRMWARE_URL);
>  		return;
>  	}
>  
>  	err = parse_dmc_fw(dmc, fw);
>  	if (err) {
> -		drm_notice(&i915->drm,
> +		drm_notice(display->drm,
>  			   "Failed to parse DMC firmware %s (%pe). Disabling runtime power management.\n",
>  			   dmc->fw_path, ERR_PTR(err));
>  		goto out;
>  	}
>  
> -	intel_dmc_load_program(i915);
> -	intel_dmc_runtime_pm_put(i915);
> +	intel_dmc_load_program(display);
> +	intel_dmc_runtime_pm_put(display);
>  
> -	drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
> +	drm_info(display->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
>  		 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>  		 DMC_VERSION_MINOR(dmc->version));
>  
> @@ -1055,16 +1064,17 @@ static void dmc_load_work_fn(struct work_struct *work)
>  
>  /**
>   * intel_dmc_init() - initialize the firmware loading.
> - * @i915: i915 drm device.
> + * @display: display instance
>   *
>   * This function is called at the time of loading the display driver to read
>   * firmware from a .bin file and copied into a internal memory.
>   */
> -void intel_dmc_init(struct drm_i915_private *i915)
> +void intel_dmc_init(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc *dmc;
>  
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return;
>  
>  	/*
> @@ -1075,35 +1085,35 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  	 * suspend as runtime suspend *requires* a working DMC for whatever
>  	 * reason.
>  	 */
> -	intel_dmc_runtime_pm_get(i915);
> +	intel_dmc_runtime_pm_get(display);
>  
>  	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
>  	if (!dmc)
>  		return;
>  
> -	dmc->i915 = i915;
> +	dmc->display = display;
>  
>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
>  
> -	dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
> +	dmc->fw_path = dmc_firmware_default(display, &dmc->max_fw_size);
>  
> -	if (dmc_firmware_param_disabled(i915)) {
> -		drm_info(&i915->drm, "Disabling DMC firmware and runtime PM\n");
> +	if (dmc_firmware_param_disabled(display)) {
> +		drm_info(display->drm, "Disabling DMC firmware and runtime PM\n");
>  		goto out;
>  	}
>  
> -	if (dmc_firmware_param(i915))
> -		dmc->fw_path = dmc_firmware_param(i915);
> +	if (dmc_firmware_param(display))
> +		dmc->fw_path = dmc_firmware_param(display);
>  
>  	if (!dmc->fw_path) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "No known DMC firmware for platform, disabling runtime PM\n");
>  		goto out;
>  	}
>  
> -	i915->display.dmc.dmc = dmc;
> +	display->dmc.dmc = dmc;
>  
> -	drm_dbg_kms(&i915->drm, "Loading %s\n", dmc->fw_path);
> +	drm_dbg_kms(display->drm, "Loading %s\n", dmc->fw_path);
>  	queue_work(i915->unordered_wq, &dmc->work);
>  
>  	return;
> @@ -1114,87 +1124,87 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  
>  /**
>   * intel_dmc_suspend() - prepare DMC firmware before system suspend
> - * @i915: i915 drm device
> + * @display: display instance
>   *
>   * Prepare the DMC firmware before entering system suspend. This includes
>   * flushing pending work items and releasing any resources acquired during
>   * init.
>   */
> -void intel_dmc_suspend(struct drm_i915_private *i915)
> +void intel_dmc_suspend(struct intel_display *display)
>  {
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return;
>  
>  	if (dmc)
>  		flush_work(&dmc->work);
>  
> -	intel_dmc_wl_disable(&i915->display);
> +	intel_dmc_wl_disable(display);
>  
>  	/* Drop the reference held in case DMC isn't loaded. */
> -	if (!intel_dmc_has_payload(i915))
> -		intel_dmc_runtime_pm_put(i915);
> +	if (!intel_dmc_has_payload(display))
> +		intel_dmc_runtime_pm_put(display);
>  }
>  
>  /**
>   * intel_dmc_resume() - init DMC firmware during system resume
> - * @i915: i915 drm device
> + * @display: display instance
>   *
>   * Reinitialize the DMC firmware during system resume, reacquiring any
>   * resources released in intel_dmc_suspend().
>   */
> -void intel_dmc_resume(struct drm_i915_private *i915)
> +void intel_dmc_resume(struct intel_display *display)
>  {
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return;
>  
>  	/*
>  	 * Reacquire the reference to keep RPM disabled in case DMC isn't
>  	 * loaded.
>  	 */
> -	if (!intel_dmc_has_payload(i915))
> -		intel_dmc_runtime_pm_get(i915);
> +	if (!intel_dmc_has_payload(display))
> +		intel_dmc_runtime_pm_get(display);
>  }
>  
>  /**
>   * intel_dmc_fini() - unload the DMC firmware.
> - * @i915: i915 drm device.
> + * @display: display instance
>   *
>   * Firmmware unloading includes freeing the internal memory and reset the
>   * firmware loading status.
>   */
> -void intel_dmc_fini(struct drm_i915_private *i915)
> +void intel_dmc_fini(struct intel_display *display)
>  {
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  	enum intel_dmc_id dmc_id;
>  
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return;
>  
> -	intel_dmc_suspend(i915);
> -	drm_WARN_ON(&i915->drm, i915->display.dmc.wakeref);
> +	intel_dmc_suspend(display);
> +	drm_WARN_ON(display->drm, display->dmc.wakeref);
>  
>  	if (dmc) {
>  		for_each_dmc_id(dmc_id)
>  			kfree(dmc->dmc_info[dmc_id].payload);
>  
>  		kfree(dmc);
> -		i915->display.dmc.dmc = NULL;
> +		display->dmc.dmc = NULL;
>  	}
>  }
>  
>  void intel_dmc_print_error_state(struct drm_printer *p,
> -				 struct drm_i915_private *i915)
> +				 struct intel_display *display)
>  {
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return;
>  
>  	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
>  	drm_printf(p, "DMC loaded: %s\n",
> -		   str_yes_no(intel_dmc_has_payload(i915)));
> +		   str_yes_no(intel_dmc_has_payload(display)));
>  	if (dmc)
>  		drm_printf(p, "DMC fw version: %d.%d\n",
>  			   DMC_VERSION_MAJOR(dmc->version),
> @@ -1203,40 +1213,41 @@ void intel_dmc_print_error_state(struct drm_printer *p,
>  
>  static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *i915 = m->private;
> -	struct intel_dmc *dmc = i915_to_dmc(i915);
> +	struct intel_display *display = m->private;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc *dmc = display_to_dmc(display);
>  	intel_wakeref_t wakeref;
>  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>  
> -	if (!HAS_DMC(i915))
> +	if (!HAS_DMC(display))
>  		return -ENODEV;
>  
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
>  	seq_printf(m, "fw loaded: %s\n",
> -		   str_yes_no(intel_dmc_has_payload(i915)));
> +		   str_yes_no(intel_dmc_has_payload(display)));
>  	seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
>  	seq_printf(m, "Pipe A fw needed: %s\n",
> -		   str_yes_no(DISPLAY_VER(i915) >= 12));
> +		   str_yes_no(DISPLAY_VER(display) >= 12));
>  	seq_printf(m, "Pipe A fw loaded: %s\n",
> -		   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
> +		   str_yes_no(has_dmc_id_fw(display, DMC_FW_PIPEA)));
>  	seq_printf(m, "Pipe B fw needed: %s\n",
>  		   str_yes_no(IS_ALDERLAKE_P(i915) ||
> -			      DISPLAY_VER(i915) >= 14));
> +			      DISPLAY_VER(display) >= 14));
>  	seq_printf(m, "Pipe B fw loaded: %s\n",
> -		   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
> +		   str_yes_no(has_dmc_id_fw(display, DMC_FW_PIPEB)));
>  
> -	if (!intel_dmc_has_payload(i915))
> +	if (!intel_dmc_has_payload(display))
>  		goto out;
>  
>  	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
>  		   DMC_VERSION_MINOR(dmc->version));
>  
> -	if (DISPLAY_VER(i915) >= 12) {
> +	if (DISPLAY_VER(display) >= 12) {
>  		i915_reg_t dc3co_reg;
>  
> -		if (IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) {
> +		if (IS_DGFX(i915) || DISPLAY_VER(display) >= 14) {
>  			dc3co_reg = DG1_DMC_DEBUG3;
>  			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
> @@ -1246,7 +1257,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  		}
>  
>  		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(i915, dc3co_reg));
> +			   intel_de_read(display, dc3co_reg));
>  	} else {
>  		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
>  			SKL_DMC_DC3_DC5_COUNT;
> @@ -1254,18 +1265,18 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  			dc6_reg = SKL_DMC_DC5_DC6_COUNT;
>  	}
>  
> -	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(i915, dc5_reg));
> +	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
>  	if (i915_mmio_reg_valid(dc6_reg))
>  		seq_printf(m, "DC5 -> DC6 count: %d\n",
> -			   intel_de_read(i915, dc6_reg));
> +			   intel_de_read(display, dc6_reg));
>  
>  	seq_printf(m, "program base: 0x%08x\n",
> -		   intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> +		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
>  
>  out:
>  	seq_printf(m, "ssp base: 0x%08x\n",
> -		   intel_de_read(i915, DMC_SSP_BASE));
> -	seq_printf(m, "htp: 0x%08x\n", intel_de_read(i915, DMC_HTP_SKL));
> +		   intel_de_read(display, DMC_SSP_BASE));
> +	seq_printf(m, "htp: 0x%08x\n", intel_de_read(display, DMC_HTP_SKL));
>  
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  
> @@ -1274,10 +1285,10 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  
>  DEFINE_SHOW_ATTRIBUTE(intel_dmc_debugfs_status);
>  
> -void intel_dmc_debugfs_register(struct drm_i915_private *i915)
> +void intel_dmc_debugfs_register(struct intel_display *display)
>  {
> -	struct drm_minor *minor = i915->drm.primary;
> +	struct drm_minor *minor = display->drm->primary;
>  
>  	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
> -			    i915, &intel_dmc_debugfs_status_fops);
> +			    display, &intel_dmc_debugfs_status_fops);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 54cff6002e31..2ead2ec1f820 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -9,22 +9,22 @@
>  #include <linux/types.h>
>  
>  enum pipe;
> -struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display;
>  
> -void intel_dmc_init(struct drm_i915_private *i915);
> -void intel_dmc_load_program(struct drm_i915_private *i915);
> -void intel_dmc_disable_program(struct drm_i915_private *i915);
> -void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> -void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> -void intel_dmc_fini(struct drm_i915_private *i915);
> -void intel_dmc_suspend(struct drm_i915_private *i915);
> -void intel_dmc_resume(struct drm_i915_private *i915);
> -bool intel_dmc_has_payload(struct drm_i915_private *i915);
> -void intel_dmc_debugfs_register(struct drm_i915_private *i915);
> +void intel_dmc_init(struct intel_display *display);
> +void intel_dmc_load_program(struct intel_display *display);
> +void intel_dmc_disable_program(struct intel_display *display);
> +void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
> +void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
> +void intel_dmc_fini(struct intel_display *display);
> +void intel_dmc_suspend(struct intel_display *display);
> +void intel_dmc_resume(struct intel_display *display);
> +bool intel_dmc_has_payload(struct intel_display *display);
> +void intel_dmc_debugfs_register(struct intel_display *display);
>  void intel_dmc_print_error_state(struct drm_printer *p,
> -				 struct drm_i915_private *i915);
> +				 struct intel_display *display);
>  
> -void assert_dmc_loaded(struct drm_i915_private *i915);
> +void assert_dmc_loaded(struct intel_display *display);
>  
>  #endif /* __INTEL_DMC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index d9864b9cc429..5634ff07269d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -109,10 +109,8 @@ static bool intel_dmc_wl_check_range(u32 address)
>  
>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) < 20 ||
> -	    !intel_dmc_has_payload(i915) ||
> +	    !intel_dmc_has_payload(display) ||
>  	    !display->params.enable_dmc_wl)
>  		return false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 1f57549fce00..bcc5cf137a88 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -960,6 +960,7 @@ static void intel_early_display_was(struct drm_i915_private *i915)
>  void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  				  struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
>  	intel_wakeref_t wakeref;
> @@ -987,7 +988,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  		drm_crtc_vblank_reset(&crtc->base);
>  
>  		if (crtc_state->hw.active) {
> -			intel_dmc_enable_pipe(i915, crtc->pipe);
> +			intel_dmc_enable_pipe(display, crtc->pipe);
>  			intel_crtc_vblank_on(crtc_state);
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index fe905d65ddf7..943e938040c0 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -959,7 +959,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	intel_encoder_suspend_all(&i915->display);
>  	intel_encoder_shutdown_all(&i915->display);
>  
> -	intel_dmc_suspend(i915);
> +	intel_dmc_suspend(&i915->display);
>  
>  	i915_gem_suspend(i915);
>  
> @@ -1054,7 +1054,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	dev_priv->suspend_count++;
>  
> -	intel_dmc_suspend(dev_priv);
> +	intel_dmc_suspend(display);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1164,7 +1164,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	/* Must be called after GGTT is resumed. */
>  	intel_dpt_resume(dev_priv);
>  
> -	intel_dmc_resume(dev_priv);
> +	intel_dmc_resume(display);
>  
>  	i915_restore_display(dev_priv);
>  	intel_pps_unlock_regs_wa(display);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 6469b9bcf2ec..b455fa441609 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -875,7 +875,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  
>  	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>  
> -	intel_dmc_print_error_state(&p, m->i915);
> +	intel_dmc_print_error_state(&p, &m->i915->display);
>  
>  	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
>  	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index c0e9aa7a274f..10d707e05d6e 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -353,7 +353,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  
>  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>  
> -	intel_dmc_suspend(xe);
> +	intel_dmc_suspend(display);
>  }
>  
>  void xe_display_pm_suspend_late(struct xe_device *xe)
> @@ -395,7 +395,7 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_dmc_resume(xe);
> +	intel_dmc_resume(display);
>  
>  	if (has_display(xe))
>  		drm_mode_config_reset(&xe->drm);
> -- 
> 2.44.2
> 
