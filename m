Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 128C48B9B1D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF2610EFC4;
	Thu,  2 May 2024 12:53:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3qFiZwE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CAC10F0FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714654392; x=1746190392;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fztusrBNMp5V9s7D0vSVc7xAVj3Z/op8o9jLZa154Nc=;
 b=U3qFiZwELoHrG2sn6PfgXVjaZMjZJUQfT3DEd//uR0C8rKMJLQW2LVDw
 BFwqC46eArJrL6n+0Fbb4qqSvqbS+SuKC9iqxZZRcKQhH6roxFuj9xjOb
 r8hkl7SCkC+O3Xqd6PN9jglVxD9wsJbghZJbOPx7wP2FjUuqZrWQ65E5a
 NNWkJLxIsENo+C/RkQWCxhxipcopa6UKntSXEkeDJWcdPQA+lGScTnw60
 Aa/Ss/kcDte1aoG5VMn84Sv3f55EbofIQkrYUGRZuWsRvHMvbQAdWkQbG
 /zyKizjeDH+yle0qQVhwgFVk0eSi9POi3aZYvSbKd6hIpMet9wbf6bFWH w==;
X-CSE-ConnectionGUID: CrwlVFnyRTGp4XzI6KkGKg==
X-CSE-MsgGUID: 0X8sW9Z4RbWT6B8Sv3lyhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10574484"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10574484"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:53:11 -0700
X-CSE-ConnectionGUID: oynWQygsSqaknaRbwdXZCw==
X-CSE-MsgGUID: 5cgWn0cOSQ+arumS5/MgEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31578606"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:53:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:53:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:53:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:53:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:52:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGcDGAJBAHuHgBK8gD2T2/Lf1JZ2f/E8wMTHhAtBZfAF2bc2+Vp6WtaPBnhBY+oQoCtTMKkjDV0s26lfw+AjeGDpUXnHRKnbHlrjVLWteW7NECL6JDe6wdb9hLrGxwrafTn0teNzJvmg+1PvoGhPG7KPQEJKh9vFuUwODXemOk2am0cfgKaD7zY8+wdx8wTDuUGWlv5nuOg0tr7b4fM+uWmfm+xMiCnViqG8rhB2294X5xLJXWp8cKwt6aWmakPIYUATrbEOYrOd/5GSWESfBqSupsFKlg6VFU0aApT2X+qlu31uvpmX+oJQxfZ2REgjv3XLZ4cO2yYszzMsprr6qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pLiRU2PCeKnwZ1beuAYOuXR6Qw4mLcqpQisFCol1va0=;
 b=fqiahqt03edMQ/NbxK5jPjaQrVMsUgyMUR+wiyJtRke0RbO28nK6dAxr6AvfCwjbK5hUV95tgfI4rrEAVJ1BeEyd62MXby7Edq/9vJUi9Imu69xMR4G7XtiCTaMkepXkadgcziBdQoD+EsHgKa8grMYwMi/bD3GcpGrFgIKqn9iEIXEBUiosJwHfQWrFcE2fnKofHqZBYGw0FCI8XusuTvurkoz3TiF8Nyfv7gb6ETEb+SW1ks4ziUf8ZRhpiFD9RzID+TsXTMZqK/bc4+/RG5ZTsNVxHfBSQBZQD6/N0guTXzNH60ceF4afZFtyyUxGhfcEceFhXLjBi72XNJxSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7405.namprd11.prod.outlook.com (2603:10b6:8:134::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Thu, 2 May
 2024 12:52:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:52:55 +0000
Date: Thu, 2 May 2024 08:52:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915: Fix HAS_REGION() usage in
 intel_gt_probe_lmem()
Message-ID: <ZjOMoxKY3GipUpcq@intel.com>
References: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0086.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7405:EE_
X-MS-Office365-Filtering-Correlation-Id: 9298cf3e-f446-4997-8ca2-08dc6aa6c8f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3JdJUSKQeS26eXE0qc7C1BW/Je05XXIICd5GLKakiFDfGFwmaSiOB7L61e?=
 =?iso-8859-1?Q?52tv45L9Y9go1+1LxuxzH38NiNYchQ+EBWW0jVDZ8Lq8Ll0vVGAVo8PFWe?=
 =?iso-8859-1?Q?JIHHyotns2t1Y9Y8DXNxKCyY4XROi1clZ08Tmd+UvyCRXnnKQwUD4ixbF6?=
 =?iso-8859-1?Q?OrbgVPt+Y7zxHmY2fi2SON9hpkhZeFqaiWhltROJAmWUX8IyifB65WD2cz?=
 =?iso-8859-1?Q?5YLivqSztw5YL+IKKwyLCI4NnlG6zXKr5MD89KycApqQTMuxx8MVPqr1Wk?=
 =?iso-8859-1?Q?Udp3h3O1OD6PovFUGw1S+Tieto83B/Mzyhm8jqEcsQQHKAZjbLXUWHCyjT?=
 =?iso-8859-1?Q?Xk7cug8QqfyqgpieIlDkEVB7IgN7RdThjPkh0Mhoah1EyIVqNaq8zlonXU?=
 =?iso-8859-1?Q?scgqBlJVze7vcAEEKQ1/rHibkgl5vQVA+vH8SM2tDCuS3LJrJrPbWrUw00?=
 =?iso-8859-1?Q?+52UqHUiHScMcZfNYIeXXOMPI0NtXKBzeNRgi8VwI2ptfT1nyarD2DHMbm?=
 =?iso-8859-1?Q?ed08O0DHbrqt6aADnCw5PshxK11S8bR8t7lApDHCDxJbT3Y0azhStaLk5q?=
 =?iso-8859-1?Q?HCJIswrtFfuKFkcT6RqNoifAPWsxHANG6YaaRBAWKe5H2KA4ltKDZm62RK?=
 =?iso-8859-1?Q?Fb6FUCIPND/GYCgY/hd+LefTyzz4iUz+Rw3DS630+Vmao3uKbS44+Xic4V?=
 =?iso-8859-1?Q?GxQoXU9Ku00yD7qUHnL0dByxd/2g/G73b3Y6BSawYMKNuDhiD1YkaIZn/z?=
 =?iso-8859-1?Q?N2bwP5xphJKCCmUzuLEpGxXeYIidVFbdGATqH0vgq8WKn4Or3jMJPzSakt?=
 =?iso-8859-1?Q?SSIFsJKryX5wqDuaH+vbKfhqg56fs0rpQFAqh2TCUyZkkTpyCaq/h3lYJJ?=
 =?iso-8859-1?Q?lagj2lr1zJdA0l/A3kC8xn3Q/u149dyQhc8JbSp1pNEA/XpeEcQb0/ljKP?=
 =?iso-8859-1?Q?nqdmuepD36athBWyyTI6n/lMxLJZXu1rBlQrRTlFDrAXcybCx8TKdea+EY?=
 =?iso-8859-1?Q?6e26tv/9HhL4o86Ebrxk3+a9zddAZ1VLLf02haUja91FQQhzENmxWbfOts?=
 =?iso-8859-1?Q?20shPtmvGgB0vYLTLVyChbfQNMBHJoBHgTpVOKn3pz1rhiFop56KJ/7bLj?=
 =?iso-8859-1?Q?wxERbPQOgy1eeaeBqUkhdn9b51jLI6NeT3L+fumsCeQ8MHPowPR5ay6N0t?=
 =?iso-8859-1?Q?TtDEUQA0q87zjrPTctLLOIq9qkocwSqgyNSDIybkflpmO7h35Ai6izZPg8?=
 =?iso-8859-1?Q?2jpy0djm2DsAEi2lUKvm3ZZQjpvvAMcYmQfcJ1SdVlKSCeYfZH57HXUy1D?=
 =?iso-8859-1?Q?XmH1mPx6/9G5lBEskJPo5a0RXw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?IZw7xvea4CAs7WFYex45H3YgYBIW8gEar+ALV8UpFPQsOoiUr4mQecU2vG?=
 =?iso-8859-1?Q?6Q4+5zdxfSmNVP/vgIgpVwj5THD4EXTDaO1KfFhCqs2/TDFmxTJk+aBRQi?=
 =?iso-8859-1?Q?YBn555pSkkIJ8NXFUWwlzLZQwo+pxipVvyg8qis+3TUPfJaZ503aH0nYJx?=
 =?iso-8859-1?Q?kR89ZRiSaYGSsPLwYNWoalS8fbfkcnqtMagRGEpJ/MbAK2MrZFGcT2HItd?=
 =?iso-8859-1?Q?oSMXWMXFso77heMFHyH7mZcNWejFaC4qLSZckbG3V/jH0xXD4Iz22qOcrI?=
 =?iso-8859-1?Q?fNQ0vcXoydfD+FfJoQchCuiriQzb5ZKr8GoF2VFTeeaSIdPT0EE2KgRsyn?=
 =?iso-8859-1?Q?d9uASUduJvSlBs2AhNPTxZtE/9mXaafNITKaqdMEm5+5tj5RqpoIV1johO?=
 =?iso-8859-1?Q?ZdUbKaSeY47kD9+t1cALHTfAa8aEe9au2xFMgcl5u6S3uoLCOHnfYm6E7w?=
 =?iso-8859-1?Q?jN8A/RdtMLLLNge/tKLJSaWCtwNdNuBM1NC1aoGNpIFrA0tuh1xcvo+cJk?=
 =?iso-8859-1?Q?mjXfQ7peRSCazzYVQtsIKgMc9evloE89MkQuaw7RcGLE80Yr8bnrpQBR9E?=
 =?iso-8859-1?Q?2d7yEdDHEDCOyJdTDw2gG6T5z8BknQ2/kWMjwPaYsINbRGZfnP6l+ofTOq?=
 =?iso-8859-1?Q?qJIJLIyku0TMiNNwpwhwHDT2tuLTOY+Ff9UcZnptnpFKf0X/eM/zE1c4I+?=
 =?iso-8859-1?Q?VlQtZhN7CwUV9gYWLCeZAZgY5X514Fo+EO/PMWezpxmLIqKD4B9Jemanu7?=
 =?iso-8859-1?Q?AveI3fo9Sy9fqOlrrBvK4Rjoof+vPuwR7F7/JMseIK4a8H2LRJXWmtgxS0?=
 =?iso-8859-1?Q?rgxQGgD+VNTngNia+fYPzrZE5zXqW8KeBMLgOp3jtcnXkvnA7ixxGSgHTq?=
 =?iso-8859-1?Q?ffLEBzGKvrsdnC3Ax8Ws6mLKrWX7ZZ5jCSOcvM282aYxO+tPh09bfnF13o?=
 =?iso-8859-1?Q?ZmipCBR1jOpMwEvth/8G+z5ybp8nUBXVojqO9EEe8+RGBv/WIzbevaqvQR?=
 =?iso-8859-1?Q?z7gN3KgpJe0Az0dACUi2szWGtc4PKQ8xNtrez1eC+JP6Pi61QK23+P4kh7?=
 =?iso-8859-1?Q?mOprZkb+K8pMaQS4vNTB14DyMxqx1brOjVkljnv4Ubgx0n5uBXGDuGtklS?=
 =?iso-8859-1?Q?Nt6WpnNdUOowDxqOOFt49+B2aPxEqamFQUXxbrxRP+WYMhjd4f97E4WJeU?=
 =?iso-8859-1?Q?2J1zx2i5kC8qUIOpouecrszv6qMzK2vV/fKoEEScAWQTpXx0SnVme0Ex2M?=
 =?iso-8859-1?Q?UzfgjHYEkuw50Xu4rlbhzYPgu3wl0sfX0hMAx4MzoeNqRdNdf77Kxb9gtE?=
 =?iso-8859-1?Q?auksHSrqd2DHBzggKYSkgKbbYix6jEIWvT6DQzUV93s28Te+mw2AMIdApq?=
 =?iso-8859-1?Q?IeeLl/H7KfvNgkGqIZyE7pbjJUWoHuW9YI3rcKBByBfxL7yN7pWQrnJ1Sj?=
 =?iso-8859-1?Q?cUzqULPHn5HqWP5USXUyzLuaBVLPDKUQDzMYE50uCA/KkLVqehRpxECq3v?=
 =?iso-8859-1?Q?34/uVQ+aQdAMuDTKfJ4aMqGRwoSCiE93dgutHg/DEPbB6FYibp0/79+71R?=
 =?iso-8859-1?Q?NwK5MZB6R+v2cP75ckIKiZZJu6UYAJFsvN9am/1zxDp6JRledkMBMb7KkW?=
 =?iso-8859-1?Q?fIKFnD2UHRcTpuC6We1IbdfplhtnIAskzH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9298cf3e-f446-4997-8ca2-08dc6aa6c8f3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:52:55.1371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/+gq9M4HtZWxVqUcXEIkqBfdNiKxmNLBxQ8lLE0xzPI5iVKazbr1NUE5M+O4YHnstAOi/bC2Ljk9gqNdaLOyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7405
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

On Thu, May 02, 2024 at 03:14:21PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> HAS_REGION() takes a bitmask, not the region ID. This causes the
> GEM_BUG_ON() to assert that the SMEM region is available rather
> than the intended LMEM region. No real harm since SMEM is always
> available, but also not checking what was intended.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 626b166e67ef..5a7ecf823ae6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -105,7 +105,7 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
>  
>  	intel_memory_region_set_name(mem, "local%u", mem->instance);
>  
> -	GEM_BUG_ON(!HAS_REGION(i915, id));
> +	GEM_BUG_ON(!HAS_REGION(i915, BIT(id)));
>  	GEM_BUG_ON(i915->mm.regions[id]);
>  	i915->mm.regions[id] = mem;
>  
> -- 
> 2.43.2
> 
