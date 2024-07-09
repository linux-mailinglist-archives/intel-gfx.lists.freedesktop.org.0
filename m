Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CC392C41C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C43910E659;
	Tue,  9 Jul 2024 19:51:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKbDT/SD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310CD10E657;
 Tue,  9 Jul 2024 19:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554676; x=1752090676;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6r3DK7BGOSp/7A3NRAisu13SlQbOwTJ8AXfwk3twgt4=;
 b=nKbDT/SD9DqXjyrW4t47XigbcKavutFSdsXVSxAELdrYil3e0cpQ+tr8
 qb3bdiz75oxcklBE8aXOZcSRHlOeIIc+rybzbfl1E7bIZ32obx2wILcjS
 hyVXgCJU5kFA7nijxIFq41CwqhCzfTVCXBFG+XGRXjnQ0HcI1UBCIT8VZ
 RwVjKKCpOZdBRON099xMKrQNWNdhDd24uS4jKlVhhfCD8PAhbONXhBeqS
 3cRA+vjm5ThhW0GPcwJHFQf35gcNMqBKxuYtmONDHKM/E6ofTrozhpuZf
 ZKBiRo6UDPqvxOKmM4GPX5C/5MjuCWTEIP/mapolFFi5WKjRkBi5NjfsW g==;
X-CSE-ConnectionGUID: IALhaakGTpqRjgInUifUYA==
X-CSE-MsgGUID: 3t3YbhEjTr+XC9UAGwlhIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17949594"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17949594"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:51:16 -0700
X-CSE-ConnectionGUID: DMygn80ERGGDhBAK9D44WA==
X-CSE-MsgGUID: rY5cXSCqQB65216WwJHvWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="47965851"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:51:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:51:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CfoeOljkWG/LK90VxoRmEByO9d60oJWeL2uSnozWrKVjQscXGnubm2E34S4jVqtWmptg5+MUfglD7EgCevfJUhm8SbAsK0aVJmao5Xq1anyIwL6V4ZMH/XVglout0fOgSPYFI3XXM8vbtXG5rEtqgWnBoq6eua4GUIyvNZG3oYZJaKnZGLwf6+J44Fi36syQih5yzA2mRtqT/yJGmT2xXhpzcSP5l07ntQ61XVbrXHnwkdPDVMkJWbrNM/Hlbh33B04/jF6YMCDDcxRxdF0Howpo5kBAT5+y1isELp3wKt6qscpNUpPHlahpa/Y58LeQSRAOamON1Ia+w+BOBIpXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAJLNGq9aI/rhYaWt4p/ziGeyRX9uBHoYqDANbsxhys=;
 b=aOH6/VmeDPyLe4LxjeLvMRgQrVCKgolF1Dfz4BQiRdmY2oanz2LP38dBhneT0XcQS4KbiMTFvadHF25EWbFeW3DJd1Y0y/U8JBgzW1D9GnQ2vTb5Ov1dRdD6R0mcFTeGNCgIaVzlsUFzdxksNQqLfJdWBdIfETEPQCFLjBtvkblNfs++2wJAtzymLTkRb+m4UHzjIASnrrAL28H2anaBQDpwFxn+lyubey9FFRWtl1DigsDQNvjm9ADdeRl0EoOjCpqCNQtbm1gO7LrIHXMkTx7zWI7J0tGJdCExlnay7XDkyOUlL5ZhB24bVLXz4azmRbOFyKRquGPqxOw5QcFP9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:51:12 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:51:12 +0000
Date: Tue, 9 Jul 2024 15:51:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 04/20] drm/i915/fbc: Extract intel_fbc_max_plane_size()
Message-ID: <Zo2UrXsfVkzOZEpv@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-5-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0007.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::12) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: a2285cc0-416d-4b61-f0d2-08dca0507c15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?tO97jMhLowcgE5GAWJFToejtHTFMUWAyazxmfNknN6/N+RBKNQr/dj6jSA?=
 =?iso-8859-1?Q?At+tTBnTVPdetctt179VJ+EOwAK2IjiCKtwDdvgyLhsFn/B5qTmu4xQzo+?=
 =?iso-8859-1?Q?UK0QjJmRN+TrVJMdihBDTA9Hkn6nKCYaTOtYePJPcIulCVMQ64Jo5VngF8?=
 =?iso-8859-1?Q?g7JEOCb5Unes5OlW1o1xqa35M2FhM7LoTS/zhmmM6TIFRgxlMYSQtKZImz?=
 =?iso-8859-1?Q?KmLbaUJwL5CpkC43iX2hzOEmsEh0f9M/Ka4aqIZfmJ7keEZSYaVbWcncp9?=
 =?iso-8859-1?Q?M8DDZ3lJaqsd4a5iKKLlTGRb6iAZ9HZdrR+NiWppnBi/7lZEae1k5huUmp?=
 =?iso-8859-1?Q?kJMmVwITOYHkiJdURLCmGypcUqu+bMOKVz3LTVqLSmoJgwxPyO/Yju4KTj?=
 =?iso-8859-1?Q?AFNjjUhktAzhodTWnKZ2FTHlxYEd0nscILAPAiTNXGo7HCv/R+k3WbEDRy?=
 =?iso-8859-1?Q?WurF61LyCKqgjbpvT7pn+K5osuT46nZ6YpdJSKQ1Owc7Rj6LsBEepIatFf?=
 =?iso-8859-1?Q?t7WQcnVAaeJNeTgrv7WqWsk6YZcTTrRdC0/bFNcDdrJHVZ5g+baIy7ERQE?=
 =?iso-8859-1?Q?in4c51IV1J1nzGHFpHo1TLgluOfSKtZr0qR/ecl6iqTka4N0aWi+8sx3AF?=
 =?iso-8859-1?Q?u5vMIQTkL6JpqXYIrVGdqQQdUkNaF7O38mzp6ROvYsIHgAyXk967GakMfD?=
 =?iso-8859-1?Q?bg4lsSdt1yrq8MzDeu/Qcmkv921sUygt3NkKXkwgACGT9wnJSFAKwlShO1?=
 =?iso-8859-1?Q?1GJtwCV0JtcdSg4Uo072zG5ZBroJwuJGD8hcOS/JwfQu+mMOrsolyZxaa+?=
 =?iso-8859-1?Q?VJf+OharmlT3qUQO/X58Rsb9MOWPY7hpiyh3gKTwlYst5zuMxElaJFFQia?=
 =?iso-8859-1?Q?/IJZzjayVL7o5WFCw32onFfSw3l1TpQ8uuoEuMw7TYY7iLtD/UOj0wjsiG?=
 =?iso-8859-1?Q?OTll2DirnsX2/jFLjJJToMABh5FnDEqe9boOVvJta9NNJu7l6PLWEQ6PFB?=
 =?iso-8859-1?Q?34c7FRynPjQiJNYcc4x7W8/p31C68V8gZgcDRCuAJ46+XJNLyDUsotiC5V?=
 =?iso-8859-1?Q?612HcemR2IdUof11jscjwOP6JSZztNYBQENRhp++EHTbtTF3kruT36VDoI?=
 =?iso-8859-1?Q?pSdRMf7FCfQMf1oravjeuou6Cn8AABtvVRmE3LZoH/FrWaMbGnXDs2RlNP?=
 =?iso-8859-1?Q?IZUv9T31t8kohgwr7t4VZLbMEYa/W2V0bFTPnnwJUe6tWjdoBBKgcE5p66?=
 =?iso-8859-1?Q?ssUlSKwsI1xS0inCy31gtb5pUb3Gpek+O177tS4H3uhagg5kQcuNIxlMuF?=
 =?iso-8859-1?Q?z+Bi0+4gjbYJ2rOYl0+t+GDco19QD+gSDLp2RxEnG7Q8biIjDEqEF9fmMY?=
 =?iso-8859-1?Q?vXqRj8r8w00rlR0yVLS6249TZxMdQq4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?cCA2EtZa3zRUEEYGk1XsvXhIWR7SotsLnyTe4P8bUIJU+IWT2UE7qSTrby?=
 =?iso-8859-1?Q?U8UPxDBSkJACwCM4WvFKgDRsnuRlWe/yWDa/SPpCktitpykHUmcJG2ZUyR?=
 =?iso-8859-1?Q?JO2hQPb+r72+qu6Fh67pKjp3j5va0jhxdaNl6y4/1UkOG+FdxMWalXTKRG?=
 =?iso-8859-1?Q?M/7T6R61QphxwxgZN/RDHOnALzLfGEoVGvOlRXwXifslBwuv99yscgGWyW?=
 =?iso-8859-1?Q?byMWue1WztY4Y/7QCdw70nODByFrPn+gRhJI+who5xjJb57vWO80TbsbSA?=
 =?iso-8859-1?Q?5Nid7kdJFmuQhuPqe3tEXMUGRBhqDdVHUo0w1ACqHfSuBlLpHC12mPgZlS?=
 =?iso-8859-1?Q?qvV3YTsysm1Jt2Bi1XuWJH0EUz1RpUH3E1leVsbw/hLo5E2A+zd9dASaL1?=
 =?iso-8859-1?Q?6LZcur7iEBa1zDnKSOEeNcqKhr2CxcQ/BlT/755xsdhGLDFgrev/Copf1d?=
 =?iso-8859-1?Q?o9eJ4CFuyiRy13/+a5q4LE4Yu6eEGh5w9ygxrDKZONIbXBPNtAO0Fuhpjl?=
 =?iso-8859-1?Q?LXwi6qav/JuGJ6WVEe+Bl7D95XogWiVlBEEfgkqwSo7DhgJVgotecSxeWu?=
 =?iso-8859-1?Q?usQVfCMxUwzISeKx5lTPn3n0vC8nmT7fsViUMcwrqzSdKqD5wuJHyp0C/N?=
 =?iso-8859-1?Q?MoaK9fLZIcDjQrQ17I37jVVj/oYRRpuaQDNBfdKF3eeAnI8CgHB46g/Bwn?=
 =?iso-8859-1?Q?VPRmCiNW5DrXNtFVcxgUeaoEfMzfAcVK7YFk/xhvClKTN+vg6IW9+y+KPQ?=
 =?iso-8859-1?Q?kpVMs/r7cbmbOY/dQkfoI6PbHPoKmrF9VR/p0TkRqQulkgL0J3ZtAfHIl0?=
 =?iso-8859-1?Q?ZnxLFanEqqWg4kzeTufbYU2BgRc+Rl0gP094wOcAMrhQotN/4of9iSLecv?=
 =?iso-8859-1?Q?kus6oCxN9MoT2/vVMRZcNKMZpRHXJOtwJRr8EnqUtgFs649ZInNPg2YW5F?=
 =?iso-8859-1?Q?HjRNf2hjR6Ngn8V6rJkcEhWtPYGBEzLoMCwsya4vrL8w8SwYpbnX3DP107?=
 =?iso-8859-1?Q?EfL7P/RtZ1+JKV9a8gvG3CyV8pyXoC3Pfe8Ugcfz//pMand5DU2dEmNeVc?=
 =?iso-8859-1?Q?H+ErLcozQSn5E5sZlLwyks7mDmVwD8A/EoOhI12ScFXYXW5IE9egUFz1TP?=
 =?iso-8859-1?Q?nlbyDVs6RS8/zoKX2iUBFi29BCvt59Cg33x5ixhYzUV6/00lzqbL26cYO8?=
 =?iso-8859-1?Q?gyG7xCtJG+2Iq27EG+c8yALDHa56rYWKNw+q7NJLi1AfBETVTum/GETFbX?=
 =?iso-8859-1?Q?0TZcnzKoKEGWoMNG9DG42s2JnucliES1sp/DTGt/M4A8JO6AhC5w0gUv7Z?=
 =?iso-8859-1?Q?48W/dR2pSB1he0pnwxJEZXil7XL2FNl+E8NXU9cDEzcq1nj3r6gUZcICht?=
 =?iso-8859-1?Q?9750jlSHOv+jD2dQFeXmYRnzy6Mz452DZ9toaHJDZma8jdhh+QuNC9uRg7?=
 =?iso-8859-1?Q?4RHBXHMpNTNtv+ZO82O1/XqBMaJrCS9u+6yId6GXn+bXYX5u0xfQBBFGmo?=
 =?iso-8859-1?Q?pxSLPSDYqOg3ZG//c4SRpEq6hDaDaZ95d1T/mt0ND2Heioh9fY+9+dPYmO?=
 =?iso-8859-1?Q?ecAMSJDaB1RsOvpFCbtWttwVTblYNil2Uq0QLKSr8DF0dgIDlfQn/FEm+f?=
 =?iso-8859-1?Q?z/AKAXPAUUK/B8WhRT9TBMuToxJ/Hyw5pC++CTusuQGiNnxDOagAK4lQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2285cc0-416d-4b61-f0d2-08dca0507c15
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:51:12.2351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LXPAo7+EzmTR8QCC6etp8We36fRuKe70toOJFGikVZjqFBViHbDWp6givtvKalIs48NB03Q496ou7vqCFKCk+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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

On Fri, Jul 05, 2024 at 05:52:38PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract intel_fbc_max_plane_size() from intel_fbc_plane_size_valid().
> We'll have another use for this soon in determining how much stolen
> memory we'd like to keep reserved for FBC.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 29 +++++++++++++++---------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 8f3b8f2cbf7b..08a431cfbbb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1110,25 +1110,32 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
>  	return effective_w <= max_w && effective_h <= max_h;
>  }
>  
> -static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
> +static void intel_fbc_max_plane_size(struct intel_display *display,
> +				     unsigned int *w, unsigned int *h)
>  {
> -	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> -	unsigned int w, h, max_w, max_h;
>  
>  	if (DISPLAY_VER(display) >= 10) {
> -		max_w = 5120;
> -		max_h = 4096;
> +		*w = 5120;
> +		*h = 4096;
>  	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
> -		max_w = 4096;
> -		max_h = 4096;
> +		*w = 4096;
> +		*h = 4096;
>  	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
> -		max_w = 4096;
> -		max_h = 2048;
> +		*w = 4096;
> +		*h = 2048;
>  	} else {
> -		max_w = 2048;
> -		max_h = 1536;
> +		*w = 2048;
> +		*h = 1536;
>  	}
> +}
> +
> +static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
> +{
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	unsigned int w, h, max_w, max_h;
> +
> +	intel_fbc_max_plane_size(display, &max_w, &max_h);
>  
>  	w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	h = drm_rect_height(&plane_state->uapi.src) >> 16;
> -- 
> 2.44.2
> 
