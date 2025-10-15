Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084EABDFE6B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A208A10E89C;
	Wed, 15 Oct 2025 17:39:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjDl8Ao2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B036D10E89C;
 Wed, 15 Oct 2025 17:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760549952; x=1792085952;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0eqpMdPiCBQdqGxODuA/hf8RZCRW+EMAsg6C2MyTeSA=;
 b=MjDl8Ao2La8QBE73rAiRcYU0Weft6J/o84+m63BLv6VfY16AyJNxXGFd
 O2eFVyShoZQOANr85MXd3t5iugHAlkpT9lRsBiGicDMHfTFaynWrS0ijo
 PGefEttOxGmD2A4yAhybx9/1dLD28NQwLaR+tQTx35e9Qa8vuV1FsKQbj
 pYbIkhJNiLDDnmsBQgrzm4m0uEmiIqldrBXac6WLl3twixytoZZRSefg3
 IGP4ycBdibamnaVWPnJse4l6ovvoKMs1/ILVnh9Qn5UUoKRjJQcoANFZE
 pEA8kmHmu93nlg3+bpfy3QLazszgedh7WEjpYDRsjCDSzkPqYz3H31kXl A==;
X-CSE-ConnectionGUID: JjArHAZeTTWxyLpHj9u9jw==
X-CSE-MsgGUID: USjnwPmfTIqtZFZTwV8IjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74074004"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="74074004"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:39:11 -0700
X-CSE-ConnectionGUID: h7Wn5wjnRj+pqpdXMtktkA==
X-CSE-MsgGUID: Ty9jyQ+VRca7iC+tivrX3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182640833"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:39:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:39:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:39:10 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:39:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Da24DXm1wiyXjcHiJX84tbvSQUDrLgNtvASwKATmzJDW8u++69+47r8I2MhrQO/cgBr/u3Gx0/rO6o+DD//D41uWCDF/SwXRzJw0tbWm55ORkLfdbDsbcMsykYGdF3zl3cZzr9Yx14nRkOkqwnP89Wfl+Bbv/9pwJG8iBetD5Dz83s+XKrDUim0H+F7HbmPPxt5vpphk+qOSOaviWKGQcrSKTeYn4xmqeh4DJUUbqhrHKv10/Sf61rV7+1As2VV399vafVNXw7GXN1W/NX1n9Miq08Zrsk/NLmkhQUifaSJBC+5Qmi/04C+gpJWSwn9qcA2DP/PgByayOAlP7hIkqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UplwtZ3nxesyJM0XYuj9HkSXxXBKOOvzC/CCv8KWN5k=;
 b=w+KjSm1CuG0ntYOkJ86zorfFFt4jwkXtSBphzQXawPuwmvWs07sFYHL038ghYNR3+u/Wzh1MDN/iRgqkgRAhX0ztfXA8EZDcZznrzVRxAQrsm7XnDA5xdO7cTarh1BSIRM+8rYFgFsO3nOboBXq6yvursN3ib9Bfmst9I1PCYybKwwJNdj4/pQ40ZSR1X/RG9zZwEMMWUy2jZQypaaVQYqDXyGX1Ky+jv2gV46W6V8snD3R+H0qq6ACXCS2m8WOa3Kw3eR0Rfs+4/zkz6znfSPgc4B/nHs891nzTmXgwJUr1zPL/JJg7nwEFKBy3yXSBZkxulvKqywjZNYhvQ5w1sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:39:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:39:04 +0000
Date: Wed, 15 Oct 2025 10:39:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 16/32] drm/i915/xe3p_lpd: Add CDCLK table
Message-ID: <20251015173900.GL1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-16-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-16-d2d1e26520aa@intel.com>
X-ClientProxiedBy: BY5PR13CA0018.namprd13.prod.outlook.com
 (2603:10b6:a03:180::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7766:EE_
X-MS-Office365-Filtering-Correlation-Id: d6014f24-1d6d-436c-ee51-08de0c11bbb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NVZVevgEYYu/BTobiUDmnkFjt9XmXss7yz8PHSQLPAnPCfPRrJ+5y7UDvLcU?=
 =?us-ascii?Q?ke1SASlV4cJ1R/RAZGI44iI+wIKBxLfLXsWRszlcB2t40mERWzQfEG5v+2LT?=
 =?us-ascii?Q?mE+bONLBu8vUfDJCo/ve/Wk9hbnCKnSxObIs8EnvoWKv+5FrDKol9Hv9tc5o?=
 =?us-ascii?Q?rF6TY4Uo5sljmWNva7Bi1kbm2ZzVQLSrnxWOX52eE7b02nLU//OoLzJfQvQ+?=
 =?us-ascii?Q?VLcFvHOs1C9R2MpjSA3iQjBiD156Wxv0wVDWDK4vv/K9jCoKikBjiANwNWvE?=
 =?us-ascii?Q?YjfdSnovfeLWyRk7PaPvfZ+tcbxDVzU6MA0cQiDKVMPQ8Wbn3JIv80jbQGg5?=
 =?us-ascii?Q?yBXZNxu1KYrCRKFTdfuJU9H1xmtmy0BiLRKzws//2Xyga/uficeAN5AjSci3?=
 =?us-ascii?Q?ttnbT974F0Dupf8/+8z0LYYp8VS8+/6z/Bnp4n3Ubf4nlBkN0+uuKX8UH/dT?=
 =?us-ascii?Q?YSO/i2ki6i4SPmFPjNP+9KqUGdCQsu46LNOEGkShtJkhBJ9nrEoloLo4ycJr?=
 =?us-ascii?Q?8tGSgI0fnQLCjGmxuvdn+ctpT0AtuD27KpdVvGZHqD/PcotzGpvOIL+2AVsM?=
 =?us-ascii?Q?QTBwZjlcKQ+/3NvH1+OosZUAwZF8NlBk83TA5vIHq90r2aRGJmCwrphYQWu3?=
 =?us-ascii?Q?aEi5fC2fv5BzKKbUsdDXLMLUjKv6EsthFafUOzvyyybc60SOYfiHs+62qpVK?=
 =?us-ascii?Q?5kus5ZKdJU/HZ3Eq2B192SXLLTa9Tsy9EpgfPVHCTihpvSCdCq0TKEBfQySR?=
 =?us-ascii?Q?mH4KSet1ttn0xhMz+cjWdB2pEp7IKLU5ELlbcDRSKarL+EujDnRIMdqH66M/?=
 =?us-ascii?Q?WxoaaMcCCTl2xmnvKyDWoqaxe7By8ywZ8qCAglUyTGUGNEncQg6ph0+TRLZ4?=
 =?us-ascii?Q?ze2R7PzT89EaU0u0okq4WUxkQj3bpBd2EwHcfn9ugNBgkSwuCiE+oAegVeAF?=
 =?us-ascii?Q?17GEcz3pd8Su1ZYvbKbYJgoZ04NwP0YQ1sd6guJsZIW4ua8S6so9kzBO10Dj?=
 =?us-ascii?Q?FSsDalDd4LybpV+uYbjc3fu8ZtDv/7PPftyI/laPt927cq940oHvtg7EgmMm?=
 =?us-ascii?Q?EZ8V4DcpH602tUaMlC517PiMeh7GnfV4X5/oTYcOmL9sveZNEtJ+vf/+bOOs?=
 =?us-ascii?Q?fHWaiWGzG3YAEd5ewrp8b3hrgel30PXyHmcdlnRCcFjsUqpEzHCCfsJYbSh6?=
 =?us-ascii?Q?i//sEEkfTjLoPdyshR0f4Gor5GPn5jdiDUv0U4NJO6h/qTsk978LlOO0tYQa?=
 =?us-ascii?Q?Q/7jHpHSdXIrzt+qd/MbbCEYFvuXuj9Z5B+vI7Y8JU2DQklFsXUoJQ8gvlna?=
 =?us-ascii?Q?VUmxcCrmbJPB1/EvK8Az6LNwQDHcE+sH+66SkhzxfAXeOp84Ea056J7+i9T3?=
 =?us-ascii?Q?8c6giwOiaIT+UyslwTYH2D9/AjIadT3vtyS6seoQrdKeXDuj5fjpRsEktpia?=
 =?us-ascii?Q?I2gOSo5gJnUN4/u2e82/vrvwvrT8S0Fw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N0eljA3/sYR8HcRy9bU8TcQny5Ec8GhjqjWV8ltiZhYwyTTrxfHiciSuFhjY?=
 =?us-ascii?Q?eA4ovvpaxj5plZk14I5yTLJgAcrII+53AenbMNJwGmcG4zMhLgz4PEUp6hD9?=
 =?us-ascii?Q?rUjFpSug8bqs5Wv4LEBcCqaoE4b9WUsMEZzLyXVM7/peh1owUVNjaUzvfgXZ?=
 =?us-ascii?Q?A00gSln4nzZURISF0iH7gvRs8TlGTo9x1esrDDBOeLxXZoBNEct0fJgI/mse?=
 =?us-ascii?Q?F2h6xGWJaUS15tCfvrttOR/yaMh7B9tefVCmLg537qGQ37GK0nIF2u540MJD?=
 =?us-ascii?Q?cIo3YnJnd3CNnphoM/AUxDu3Zvi1wwGBPzXWsjE/pzQJo8if0A23oPUUrkPs?=
 =?us-ascii?Q?+0hGJq8dyO2HVZMZIy7T2D2gp+AFM1VLg4aq0RqPu994hA2ws5wODC4uIpA8?=
 =?us-ascii?Q?h7YQt2BVkDGtt5wNiroBI+x4Stuc2QNJ1qDyGI+rKggdBmgBpDNoohuELEoc?=
 =?us-ascii?Q?DW0IvDiNYLNNcDIoJfP3IzVSw6Z1Bx9n9yM+YGWEp6YrmioQVZEHMThWR3M3?=
 =?us-ascii?Q?1px0N7+T1kb1aRiI34Q2bPCv1YMDMEvlwazqWts6AfRg06CtahTZoilxskR8?=
 =?us-ascii?Q?fstQ35d6IplucSTTkZoZlY4w3QPrIgw//IsXIG7izIqG3V2nKcVoaKL9GEvE?=
 =?us-ascii?Q?7ZEbO+mQHEDzoAsWMYI/HLc4wBDM+5TO0pL/00T+HoqlZhTD/K80+8u2ByRT?=
 =?us-ascii?Q?UuQPV0/d7Gd8GU15Ifn8qPpOtu073c3IFKghGz0ZI8NjsFSp6dBqc2CCUN9y?=
 =?us-ascii?Q?+9FMmNOXvK5V+Uzc4HQEQPohqHKxgg19NfxxIqDYGLw4g18lB91hp/rw5qAb?=
 =?us-ascii?Q?IHAwehPkrqY5GV5D2xT0LKodIXZUoRTzDCwHxkFKXdpAaPzobpPDYM09UhD5?=
 =?us-ascii?Q?P9cESbDZwLSGb8L4jUVrvGPnwVAl6ZCPWMQJOPC7klyU12kUb8mW9tDJKgJ+?=
 =?us-ascii?Q?L0PeXTxE9rcK2Kwz71EFo9JAgLeU4JkmCf9yGiqpuO1E6+jvx2sGoZ3xg6i5?=
 =?us-ascii?Q?Dp8tTCXLuu4IWfLx4U4UQQb+3JaHqr/gS8whfYp2HvOpVc+0SFbJxs9SOKj2?=
 =?us-ascii?Q?t+XnjwiXoCZTCyGbPKcymboNNy47EJN7q6MSkOngQm87qRHfG9Wh4Eb9la5o?=
 =?us-ascii?Q?SnHlTbXg7AkdlCOR9vL7b2XXw5TGvuLX3S+Wv+YYrJr0nb3xHvDVSceoqjSb?=
 =?us-ascii?Q?dpB4PETM4n7FkLA3g0C2KD3Ewteida7R/6s/cOxT9omWlYJ9oThHjjoDKxFz?=
 =?us-ascii?Q?XHykI770nrJja7jmlUoRzWiKgze2JF0sHEOLdJBbXIMQizxq54HxmKnBZ1sa?=
 =?us-ascii?Q?nzufrYZ1YgTezCRwCHYeSM/fds3zBP8WpX1NoR2trTVcpX428jtAz4kkY1fa?=
 =?us-ascii?Q?1JdYYKLBWuR+pnJveJBAxg2FzYNbWxrcH900psCQNyL8AAYLuDgERGbiJvgp?=
 =?us-ascii?Q?hJtXdRYng27o+pYOHWt9h5Za95mVHkZ6m2S7Tc55q0mhvdSFH1Hhwt5t0/Ct?=
 =?us-ascii?Q?MTtlUxt0yjWQ8bFGQnsalSwLABsS3hdVCS6OKywgfKpVj1XRQU2u+Jff9eia?=
 =?us-ascii?Q?+SYadl+Cj75lVb5fhsT5hYGMDzo1AanxXamOFSsGObj1Zhw6o4h6024jJz97?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6014f24-1d6d-436c-ee51-08de0c11bbb3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:39:03.8479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLwcBQ3gHZHmhu+ld25FSoG5in16Lr5mqrMO4ICTM4mTnNV2DtMyGUrywB2f2AGWFIRDywhEjfgmbvHM5XN76+THtJbf6d0A7R4pfjWDXAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
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

On Wed, Oct 15, 2025 at 12:15:16AM -0300, Gustavo Sousa wrote:
> Add CDCLK table for Xe3p_LPD.
> 
> Just as with Xe3_LPD, we don't need to send voltage index info in the
> PMDemand message, so we are able to re-use xe3lpd_cdclk_funcs.
> 
> With the new CDCLK table, we also need to update the maximum CDCLK value
> returned by intel_update_max_cdclk().
> 
> Bspec: 68861, 68863
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Table matches the spec and I don't see any new programming/register
changes introduced by this IP.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 44 ++++++++++++++++++++++++++++--
>  1 file changed, 42 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f2e092f89ddd..ffd8cab2d565 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1534,6 +1534,41 @@ static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals xe3p_lpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 151200, .ratio = 21, .waveform = 0xa4a4 },
> +	{ .refclk = 38400, .cdclk = 176400, .ratio = 21, .waveform = 0xaa54 },
> +	{ .refclk = 38400, .cdclk = 201600, .ratio = 21, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 226800, .ratio = 21, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 252000, .ratio = 21, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 277200, .ratio = 21, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 302400, .ratio = 21, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 327600, .ratio = 21, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 352800, .ratio = 21, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 378000, .ratio = 21, .waveform = 0xfffe },
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
> +	{ .refclk = 38400, .cdclk = 710400, .ratio = 37, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 729600, .ratio = 38, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 748800, .ratio = 39, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 768000, .ratio = 40, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 787200, .ratio = 41, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -3555,7 +3590,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
>   */
>  void intel_update_max_cdclk(struct intel_display *display)
>  {
> -	if (DISPLAY_VERx100(display) >= 3002) {
> +	if (DISPLAY_VER(display) >= 35) {
> +		display->cdclk.max_cdclk_freq = 787200;
> +	} else if (DISPLAY_VERx100(display) >= 3002) {
>  		display->cdclk.max_cdclk_freq = 480000;
>  	} else if (DISPLAY_VER(display) >= 30) {
>  		display->cdclk.max_cdclk_freq = 691200;
> @@ -3906,7 +3943,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) >= 30) {
> +	if (DISPLAY_VER(display) >= 35) {
> +		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
> +		display->cdclk.table = xe3p_lpd_cdclk_table;
> +	} else if (DISPLAY_VER(display) >= 30) {
>  		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
>  		display->cdclk.table = xe3lpd_cdclk_table;
>  	} else if (DISPLAY_VER(display) >= 20) {
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
