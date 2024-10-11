Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED6499AD93
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 22:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A2810E21D;
	Fri, 11 Oct 2024 20:33:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/30WKEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9119D10EB34;
 Fri, 11 Oct 2024 20:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728678780; x=1760214780;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k5bLzMulbb3Wa6LlAhw6M85ybCreqZDtR6rKKkmYhYg=;
 b=F/30WKEPZoNbVSaABFIHZPPOrUE30p01fOUsFodCClczSUiVV41djjjp
 Ughvj6FLGPapTy5O0tYUl1bBnx3Bj8dP8FpuuBLLNWMLNGAD+YJqZOb70
 9gHzYppJ9j19P+8YUZvGg+QULmn1K2GvgtY+J665Duexi72DBLA7rOvLK
 s8UIccFHJvJLFlwYQVC8MZBNTICajF3KuKolqhhUe2SP/+NKSkATmfDll
 cVsNlhHMZWFQF4dmDOoCOBdJIJR6yyHBO27TrrmMn7+HHrRlmkGf/Oevt
 8RKoTcuaKIRbrcCBVLHUdoa6Ixpbk+iR/zftjYuc0nghQs0iXqTVLW7fG A==;
X-CSE-ConnectionGUID: kuzG62fpQaqecaIUe1bNbw==
X-CSE-MsgGUID: dY8nV6isQDeDVb8AG9h5ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31996399"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="31996399"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 13:33:00 -0700
X-CSE-ConnectionGUID: CJIBzHhwSliSnJQwIJzh9g==
X-CSE-MsgGUID: +a87ibKaTha9kaGqPSST0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="81629830"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 13:33:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 13:32:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 13:32:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 13:32:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 13:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nHRZ7zSE/8PKR5Lx6lW64SZHjhKnWF4YIdTzvdtBAesz2HGIoTqjqwJptvrwlO6pzxbxphZgz1oJi3zokN0XK4k7ElRjRchE9ZdeELwihpolNJj6EB6nSG++sgb83BKhfrcb5MKlG/Y54Ij8dHV8fhvvFKxFiNFoLlXGx694hfnWeeyTilBnPjoPibF7BxrThrNuJKafk2kUR+cFLMQcGd+/tS/EwVJ+TYpjVug5sDY03LS02UneHXu63X3BHtds121Zim/X8vYjQ29o6RckPRTXn5ikt2B3nuFHAvIkcFlX21A8ivOdVKS2MJllqD6EYvT2BfRDjzifE7VrivOXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Axlp8D734NdEVQZAOdns3piCOlFucDdRKtuqiNC7gME=;
 b=n/cjQvF9AJFol4ykysJG9VjgHOYPIXBCZCtfcmuqJzQeJp2z8OsX/ZMgwSKcL2i1aQYLwwcZfLFhf0NcyzA7bO4hJQBSor+nL+ZwxIfBuCtlI2YNwPyHlRQwwbbol/OMYqCeVrVu6PTdJfALaDadn+ykPmfP2KvUfx6gjXgHE9WvPbQnnqab2Tvc0AHH62UGWwExm19oR5/mccRCbZX4fntTmdkIOGgbvL+Ei1GXT/rIIg+fWxnHnWEi+CyINIl0C09CQOzeWAGiS0VVSYIHb+0nR/sa9J7Q4J5A9Z1lQwElKkixjKn9eXuNjH8qhg7AWK0UiNlwTusl+K4a3PfECg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 20:32:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 20:32:51 +0000
Date: Fri, 11 Oct 2024 13:32:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 05/10] drm/i915/xe3lpd: Add cdclk changes
Message-ID: <20241011203249.GS4891@mdroper-desk1.amr.corp.intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-6-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241010224311.50133-6-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6478:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a6974df-36b4-45f2-983a-08dcea33e0d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sVurcRS1zFni5bnbQJoeTjTdlnuKZFA7ZsEsRgkIJd9KlC3GhctXtlyh/NRj?=
 =?us-ascii?Q?gGBQ4rWXJLHGFgUE1hrf4Tn4bwKd3h9sgf60bTtDFtxrcW0jU8nysYvbzkkb?=
 =?us-ascii?Q?OjPEw/gqgJ9Y5R2jO6fTOLnIW1Na5MtKw5TIm8exitfHpEDfuS3VmuapHgVp?=
 =?us-ascii?Q?0yRf1PxPTb5R3e2mqTRY9ktCqX+1dvQ1mJ0Hd6NQD5DaC0NfR3nixNw0sosU?=
 =?us-ascii?Q?+YYRDRB3l7XfzLlOxf6Ds/Omqlgs7JqkBGibS5r8edG/M0/5l5AxMoIk6atC?=
 =?us-ascii?Q?WVtCz5VjCIsp2BKL8x0Zfu3UuJqmic6Pxo/fIlAXhCuV5pElnLX5F6Cq1ScW?=
 =?us-ascii?Q?Vu1mxuK8S74oqowjmmGQplkLQia+j35HKHv7hUCRGcNSkPwt9Uc6+0s9ogiR?=
 =?us-ascii?Q?GBSHtE3tZvMNQX1sUWx0oMZ9HtphXl8GALX+U3cWDL172xLo8mHMHyvPdAUE?=
 =?us-ascii?Q?mF6T0ubjmlWgTFNykkR7r04Ygqxfv1P3xK00IPitXNV/EQ2O5+UWYxsPOAfv?=
 =?us-ascii?Q?CRGuc6Z5CFY+EONl81H0RIhhMH+mRiXSMd2EvJHsRpGP2jjmeTCXCwFRfd+9?=
 =?us-ascii?Q?lK1dpuqcT7a572RjfxerK565NpjlXmJQEWJ9E+vwf40XV/Ifv/jCBcU7sHZw?=
 =?us-ascii?Q?nXRqqG74qRcOidvah33B2SX9Ksg4uC7r3p43ND3lLWr+nncHlFPFNuTADUo/?=
 =?us-ascii?Q?ZxdfXFgHDbjP328anLrTnvggH8JgkMEeJ4uB8R0Pzd21QvQSxf2QwvHC/s+/?=
 =?us-ascii?Q?sPPAAGcjbfjjj/FrlGmrRij8hjJf9jAbKD2YUZDU1w/EOHL/wb22b1oid367?=
 =?us-ascii?Q?DDqBZ26endyaru5v7XU29gLyOCHG+87rhocb9xHupSUiU+5V77zUlTGLlg5I?=
 =?us-ascii?Q?n/b406gY9B9n6GSVnzabLmtimzRmNiWiZ6JyBq+84F779gTcyvQotLTK19SB?=
 =?us-ascii?Q?TApSO2LTsWa+JIts37d2arYq7rDSeJZncGaK2WnLDJjx8bURMwHfJxupQeQS?=
 =?us-ascii?Q?kfTwIbSMeUiLODqJlmhE480pxO77VV80vY+Or42iedRd/hY1tJVLjBbL+3R7?=
 =?us-ascii?Q?SGMnEpy7tvjXqyDLJmYBy/q7SXF6PBmM3z1y0sb/qNX/yjBAOt9S2AI37sCj?=
 =?us-ascii?Q?0YXIwgVwKFJ32n68w7hdPsOHjyioVJXko3J08w9OFGhTL3kjnev7oXxR74V1?=
 =?us-ascii?Q?xLmx7bDcUZDf3N77FMLHQwQ2Bnq3/1Evna3MK48xtAMS18AKLUdDs8VjNGRt?=
 =?us-ascii?Q?bR4sAa96hmiQokok1/PlFPrQk8fSmNbttbJuZQ+WjA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RhNrtwmB1G4eaztocNG7ls+eZ+T9u0kk/Tcc/jlc9WeSd1DirYfyfAhOMT9I?=
 =?us-ascii?Q?COrPuvtnoZWfc2la6oEyBh1PC3WhwtVmU+cQ1+a0VhYTWGay+EglK87UGFHz?=
 =?us-ascii?Q?opn40fZCza/ee7sPuscdQaVIWecnWDhrf34TlrUrauobLSYUbtFgIimSoAz1?=
 =?us-ascii?Q?S3PIH3oKMOLkScLNjMI5B4gCuGRUveWdHnnZ0WSyv7sv89ZlQLikyxa2ROgN?=
 =?us-ascii?Q?f9ak1wQocZxbzSsoAPgEda1K+HuSUfqhGuWefM8EjiLSTyYsh4Ex3SW9xOLt?=
 =?us-ascii?Q?aOcFMjbg/ZSFpP+2/9eHjfuBF0+SQSeTGzVJBa2vQPovE8Ynf2PgVUosQtDK?=
 =?us-ascii?Q?LEopGcRVKxVUjAtDTGBtEn1CykddrObLHhkbb7lgNlDSZ423qF+3A3o2L1oa?=
 =?us-ascii?Q?2Ba602USeL6djj6RJ+Imee1IDGeRmgfoTa691V8dmbsKdS2KpENwgX6KdrzQ?=
 =?us-ascii?Q?JU9dIYLfJFsdfc6k7ClMXXHTvLaA4qKkBE7bakxItJKPuEzHS+KFr+ZaD1ka?=
 =?us-ascii?Q?pfTqkO7xLeOPdyABy2X9ShXIs/3N3YPmviZW06mvQGLbblsEyq24IPgQgN3o?=
 =?us-ascii?Q?6HewTuN4aGMIq8UcXlumplezGZCM23lWodqfGtvmRpsMVlgVl7ChzupG1eL+?=
 =?us-ascii?Q?qb9SZ1sLndGUbPVw7PMOSwS4WTUedmDdSv91ml7VAxpyKriOPV/3j2xky9eV?=
 =?us-ascii?Q?YI0Qpffv4z1+8iEpqQK5PefrlRFe1ZLEaNfHRuHa4XKuwWGxh/UbjMUqHc+w?=
 =?us-ascii?Q?nwybVSU/c6wvZOktaKaghmMGlznq2cy2f18S7HeiRoGCpmMGa/MHV5cNHXa7?=
 =?us-ascii?Q?gLTbBrYjDzAqfNZR+xxLQjFf0jm7TDZV9C1AmviD2F5rndHfAtkYkaWBd52p?=
 =?us-ascii?Q?V4Jka4z8In9mO3NQjXLw77Hm2sxT8PMgAoXa1wOSRpZXK3i6wWBunTxMk5Eg?=
 =?us-ascii?Q?cjIcO4Nhf+c5SmGbomfry0Pep5BDdbC5Mv+kOqDnXYXfGCLaaJw2HBrYoOqb?=
 =?us-ascii?Q?/Y+5SMcTzQOPpvH7w2p+vwTTvM5/dP/U1OV1EYYy/g0x/hlBvNE4GcoyKjdE?=
 =?us-ascii?Q?BjXIhLHlr4fqBzlPAJ4BJl1Ep+zwBkf/YNaNhQHcXUyNKf/6x6wON8AUTgaH?=
 =?us-ascii?Q?vidNEEoYyQcoAFMDeNgauIPWjr+f3uXPFzKnyMqnj6LZkd4iqmHJy1U1rRXZ?=
 =?us-ascii?Q?mMnhjmLS+iLGD6pr2zQGo8Fp3D3BSVgFEOZ7T0lDDuAuG1jUUpUPwSmxlnyS?=
 =?us-ascii?Q?xFfHZzJI8wFSbBnr2HSrb7EiYWCI70UxWjAd7GtjZcaFP72oH5zPJHxxm470?=
 =?us-ascii?Q?Fg7L73P7XLJksDaCrVTw9WRijnYoG3EkUlse1VNtlaKdq+k+sX0j5YLQkDPv?=
 =?us-ascii?Q?I7U/pdkm00H6l4mPmWWYAJqJDmRDma+FWDmyxJtZUlZoFj7yZ/m7JBY/XJcP?=
 =?us-ascii?Q?exjt2No42EZcMINHZlkGuI6AreFGOMKOJ4s5GPmb4oUYB0jMulCv6A9PVjf9?=
 =?us-ascii?Q?qBpeZxkalNQ9D2V2N6zqcubfb5tVMwhI+wO63VLmCW8WCB4yz84dQAJ/1s1t?=
 =?us-ascii?Q?Yxq2nvcstNYAy2wcpo940XEo8z1qFgTUKs7WKfkBegisSckZcw/87sfDKUqS?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a6974df-36b4-45f2-983a-08dcea33e0d1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 20:32:51.7048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ekIvtiACp5zwJkHv5++zxawWsCyeCLYupuBInVJh9CZf47erYsTcLi++DADzgqR6qV2n1ALcIHtBed33osEczEiz2w9wHEvF17aB3p1A4Ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
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

On Thu, Oct 10, 2024 at 03:43:06PM -0700, Matt Atwood wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
> and modify/add higher frequencies. Updating the max cdclk supported by
> the platform and voltage_level determination is also updated.
> 
> There are minor changes in cdclk programming sequence compared to lnl,
> where programming cd2x divider needs to be skipped. This is already handled
> by the calculations in existing code.
> 
> v2: update tables
> 
> Bspec: 68861, 68863, 68864
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 61 +++++++++++++++++++++-
>  1 file changed, 59 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fa1c2012b10c..13829a3c3c42 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1468,6 +1468,39 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 326400, .ratio = 17, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 345600, .ratio = 18, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 364800, .ratio = 19, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 384000, .ratio = 20, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 403200, .ratio = 21, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 422400, .ratio = 22, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 441600, .ratio = 23, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 460800, .ratio = 24, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 499200, .ratio = 26, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 518400, .ratio = 27, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 537600, .ratio = 28, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 576000, .ratio = 30, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 595200, .ratio = 31, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 614400, .ratio = 32, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 633600, .ratio = 33, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 672000, .ratio = 35, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -1594,6 +1627,18 @@ static u8 rplu_calc_voltage_level(int cdclk)
>  				  rplu_voltage_level_max_cdclk);
>  }
>  
> +static u8 xe3lpd_calc_voltage_level(int cdclk)
> +{
> +	static const int xe3lpd_voltage_level_max_cdclk[] = {
> +		[0] = 307200,
> +		[1] = 691200,
> +	};

This isn't how voltage gets selected anymore.  Old platforms had
specific indices 0-3 mapped to to certain voltage levels are were picked
based on certain things like cdclk limits.  For Xe3, we don't provide
indices to the power controller anymore (they're no included in the
pm_demand request).  Instead we just supply the power controller with
the actual (cdclk, max_ddiclk) values and it selects the proper voltage
based on that.  So making a table with indices "0" and "1" here isn't
what we want.


Matt

> +
> +	return calc_voltage_level(cdclk,
> +				  ARRAY_SIZE(xe3lpd_voltage_level_max_cdclk),
> +				  xe3lpd_voltage_level_max_cdclk);
> +}
> +
>  static void icl_readout_refclk(struct intel_display *display,
>  			       struct intel_cdclk_config *cdclk_config)
>  {
> @@ -3437,7 +3482,9 @@ void intel_update_max_cdclk(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->cdclk.max_cdclk_freq = 691200;
> +	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>  		if (display->cdclk.hw.ref == 24000)
>  			display->cdclk.max_cdclk_freq = 552000;
>  		else
> @@ -3650,6 +3697,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
>  			    display, &i915_cdclk_info_fops);
>  }
>  
> +static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs = {
> +	.get_cdclk = bxt_get_cdclk,
> +	.set_cdclk = bxt_set_cdclk,
> +	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> +	.calc_voltage_level = xe3lpd_calc_voltage_level,
> +};
> +
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> @@ -3794,7 +3848,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(display) >= 20) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
> +		display->cdclk.table = xe3lpd_cdclk_table;
> +	} else if (DISPLAY_VER(display) >= 20) {
>  		display->funcs.cdclk = &rplu_cdclk_funcs;
>  		display->cdclk.table = xe2lpd_cdclk_table;
>  	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
