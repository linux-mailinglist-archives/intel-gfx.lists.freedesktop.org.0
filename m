Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA888CC78A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 21:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4477E10EFE9;
	Wed, 22 May 2024 19:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JlbZPgQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6F210EF16;
 Wed, 22 May 2024 19:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716407935; x=1747943935;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=abXSV2qLmgvzY0d6W7MsPQFvqYd7sJMXTZKqWGvzbIg=;
 b=JlbZPgQgMb4wly7t6BwrYNy7ll5jqvA1skjqkY8vN+Uz3Q97rdqzvUB6
 5rL2n80u/Q6s4gvo6XqC6fmVZlmNZqvZaZMssjuKNU/jWAkWpPGJKKfmr
 5rMytHgQ1sfOark/mP635SEq15in6lpyyfRbBHZ5LVrMLrB2SnqFdKz8p
 bOSt+8zqCxGtIh0bM4KFke4HtL+BjOKd5UE7c9QjzBzYWdfymJo4rZtn6
 u3htMuetLvp6VgWQlcJQAEmwEhWPHJ6UZUaS9F509q4ZhLADs7Imby/27
 ICQjZgyhYXLg9g1W7BiZa/ST4Qbp8dhpW49Tc7FRlHKBXV4H2qpayT2IZ A==;
X-CSE-ConnectionGUID: 2KQGIr4qTsGDi0H12omBWg==
X-CSE-MsgGUID: I8/X1UOLRWCbcqFq1UERxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="16529572"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="16529572"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:58:55 -0700
X-CSE-ConnectionGUID: n/qRkLIqS/eoOz1HaSZ8JA==
X-CSE-MsgGUID: BDN08QSfTeCOF9sHLaIIYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37786998"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 12:58:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:58:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:58:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 12:58:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 12:58:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H47hTA25Jp9wiWxTTeHEY0enFAyRgDMO9iDfBl6oOC7FPG5wPsIG+jjASdiWwm34GDB4vnVqkGmN9+yKjXbCjHoqW95rPNwvJZH9u8ZfRnWwQXy6mf7UyFi3/7MKpZ8G2TuFdY7e4lSPEDLc3KOX0n9xpmeWoXZHUP242LOcC1OJIkptpUgRHBPI/zv5ICM3yIFknizsxOes8nlV6Scb98C5YjEWJBX7UPhIl8G+Z8vWwr7/bInYv7kBJjChnpXXJY64pNoHy5whQaWgYqs9nvGXZie922iB39eBykeoir3e88ZDoUOWFN0M7iuwxW1xkRZvgacZFaqybjPcXnz62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c/3Pp37kk7RyuVrLYGueTjbUyXZLFa1PwN5sQr5/em8=;
 b=NGhGbsCP66d1tq8H64MKkQUJv5vCiDcAKdDqjm133rk/b9AFq7/iPHs0R32ggaaLRsusyQeWGXlC/tc15L7UhLzJWu8VQT5fjb5RHcag9JOtnQ9sT/zjXK8G7tnHJXIJvMz1QTt7STWQc58z7FwJfKBhRi6a630ekY/fWhWcsUZyycVh4iDMM/bWTyoVpnsmWdCbmDNnsLrJMPLL9w9ZXipculIxCrbbG4ZtJBSGX1vlNnmHt6wxso2FcwtsUSg4wgUTWE2qzqIf5l+lQCtCmG7NKESzVaeX2zmC504xC2jheTZgjMuIKKaJeIdS1VNgb/74yRKd/O4kP6v6DCcQyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Wed, 22 May
 2024 19:58:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 19:58:51 +0000
Date: Wed, 22 May 2024 15:58:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 03/10] drm/i915/display: check platforms without display
 one level higher
Message-ID: <Zk5OeIVHqxoHdlZ-@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <78d5d326c4c89f1942f120655c279c9274e96bfb.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <78d5d326c4c89f1942f120655c279c9274e96bfb.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0214.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_
X-MS-Office365-Filtering-Correlation-Id: e94169eb-0053-4050-cfc2-08dc7a999a07
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g8Yqgnh83Ukycp4zR30LnFqqyeR8cRT+6yrzc6XHV63aUZut/j77tMFynvqU?=
 =?us-ascii?Q?2TVZqH5ix1XPeEsw+RamO+I4Se9J8zAy1p3IihN7kVNfqRKNssQef4VXln5y?=
 =?us-ascii?Q?PesFlPQrc3z9KbsZTj2L9vZ1U+AFQRm9zROe1EQd+C29/oO52q9B1RuAAr81?=
 =?us-ascii?Q?qJ2qI8FYFvdB+PcdBlz7ZlbvT/9Pn/UiAig9JtoKS/fKqWSJ9BbwnMi4ibqH?=
 =?us-ascii?Q?mRUJKcJnaiHv2p7e0a5Mm0M3HbNBSVvbz64RzD2EqeaJc6qkcXEqN6HVQxly?=
 =?us-ascii?Q?glJhsUiTRAxMkivxK+qTvbqf2177x2KPe6cEHwY2WrZvFtTj/GfvTXbZSe8X?=
 =?us-ascii?Q?JmMmWZkXw7llNMMcT2+eyi8ul4wit5Ytk50VQouoFFaz5hfQ4lpx5YxWsyyz?=
 =?us-ascii?Q?JfkyeKO+XX+lORjXdPI4MGFliKtf9ggXfeUZ4aaIMMZ89RgLDxacd6tXOlX2?=
 =?us-ascii?Q?p2eGpi/bbbQsLI9bVEWRgx54hrvan60f48/WwdpqO4FXbuoCkjd9I5cbX2Uk?=
 =?us-ascii?Q?EpIu+fx00czGXFzQtut5MO2lOTbjjs6sIs12EYqMTeAEcaNj6sgPweEgoXiU?=
 =?us-ascii?Q?rKEzbIaF3DUnHYWBVJMhmZaitblx7/Pt60M+JKPGcbt6DGUbtuEwa+B1kXhZ?=
 =?us-ascii?Q?0VJAcwq+vJls84wJYFXKnJHEfsQednU+U2N8HWaBPgi3o9krB/CFjIYI89SJ?=
 =?us-ascii?Q?GkFkPu6Vzu4OpUHhXeUfSBQzxlpL8h0whN+cL67mQfsYSYyR1yOXLVrUL6dA?=
 =?us-ascii?Q?9rvOB1C5xuOW+r7FvFFe1Hn8bQRVg50hz74MQxyGkDZcZq+pYAm1Fgp5axcJ?=
 =?us-ascii?Q?NfCukpU7vM12P2ORjkTDPNYZddNhN6gwYhLuZBi4GMwLfMsmKq5vH1oBG/yX?=
 =?us-ascii?Q?zT+3aJ0lMF9884MffKA03zjuR1W4M5X2D8pMczG/TMYXq8Gv3G5BHvPM36rY?=
 =?us-ascii?Q?ixAe9dUAolZ7UXeyv14hT9UjRW4W9HspmIp97DtEpNcimSVdoCOA5T6wQMZu?=
 =?us-ascii?Q?lJj8Ivh+dTMVyBmhHa0K/HOtx7F2E5ZPHFP63Ltz6QfzFwpAWbyhWkSIWSxh?=
 =?us-ascii?Q?UyAxBsbFNqWRG2y7r+h2yYCqF+Tc51w5n+p+MZiPn82aD7GkBcmFTvQKSmQe?=
 =?us-ascii?Q?46WQEP3TK3rmXFwhw6VO8rXRnjqJw+Z8K+CDKopSLYO9Lebk7KDYckZs8JDh?=
 =?us-ascii?Q?GCa4JtlnmgvAbOA4YekWULKT8g5VH7c6FSu4yO8jNfvR/IRrIRbS+ETknmVY?=
 =?us-ascii?Q?kogmH6+9GsaD+ecfCpEvsZO8OtlK9aVARIkVxlkdJA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R9jCdHq45s+J27Adb+TT5fHzOZfyjdIfHF2hfO3rHMRssB/jw40DMk7d3qLR?=
 =?us-ascii?Q?pSgMa7sqOWK2lQyijl0c7H7Q34ZxEZKxmsK6FIcBRYzznu7IWO6p9I9EdIUq?=
 =?us-ascii?Q?wEqR0UCioTac47r7YKoCfT6Sh9w+EqAfsRHej5dURhoRjuHBZVf+A7/dgFpU?=
 =?us-ascii?Q?TWys8CYhDXizdVYE/jpv2AcNxO7i3s0C779fpRReNEoUkvwDZjLKxNVx1vrj?=
 =?us-ascii?Q?NQMgapaeHquEXU9LnfGS4tuZLEvaCbIBnWBQuQCNt9ob/avy8iiuDSrPhqwv?=
 =?us-ascii?Q?80NpCt9PNVSpcI1kJ089Prtdvisbo2dijAVefAM8VEOEJvUD0uoCF0H/9B9l?=
 =?us-ascii?Q?E6oDg6Znt1has9Wb2792cGWsNWBXm11xqwHjGTeu1T34TZLG8ohoKFZetlEY?=
 =?us-ascii?Q?sMP49+1BOkKb5CByLD04FM/cN+hxH2ajtLexitq4LJAgfWFW6BGPFvXJKDfB?=
 =?us-ascii?Q?GhjZ+RUK5gwonT2auSdoFjuZ58xRIza13gp7wxOEwSKddl5aF7s7LBcTrsp5?=
 =?us-ascii?Q?INp7zcWW/OlDIsQH/fqj/goDel1mRvus6GllucIXIEurkZBfpo6ojPc94oDS?=
 =?us-ascii?Q?Sm2qf3zhmZ79vhqrpvwDeJgrppU3HLqeiNdZ0hImvUwBCXgFKznbktap5d37?=
 =?us-ascii?Q?ACV/OkxDsIm2yFZOO1vKPsM1yOMcqFXp0wlrto9PZgqPqrMlq/IHpzfK4Egl?=
 =?us-ascii?Q?sToNvh1srCFmxuddfBLakIUe/7zD8xmadQeRq6jRNkt1/z8zLdJBBQ+bq+jK?=
 =?us-ascii?Q?RH8tSMoH91Jj7zFd3v3/uBsCBaLv4DNkWfWJpucpFFvNbsGB9w5ZsTIje3LM?=
 =?us-ascii?Q?SA53nCPXfMLN6yi/UGyPf1CS+YFySHfWBvaOe4sKMVxpi/b6EMDA8QfgAd4T?=
 =?us-ascii?Q?/aCltOMQtAxzcKV5AjN7rTDIATg92WBQIHwYJ+Gg7PUqY+NdyqbTqkkbXPp7?=
 =?us-ascii?Q?tudGxkS3ewmNg6s1KnD2IBa96QnlEdkHQ9G1lmGhuBHbBrZpFHLSsBo6fgwG?=
 =?us-ascii?Q?djcIP3RLxVSdGKtv5EkQUlTQK3BCx/fm7AfMddHkdnooNUSdEa/EwZKKfEZk?=
 =?us-ascii?Q?k8WHkqfxioVJwdyJphFLIUf3kOoPP7reQH/LE8ngqkjC5Ec5udSsYh2PEjF3?=
 =?us-ascii?Q?w0MTu8rQ3widpNtuuPR7vu/l8LT8i9hlkk1AvA8aXPxq1PSM3eKG7Ttmdwd7?=
 =?us-ascii?Q?bDqG8d3B08WUeJ9JeR2E8UiRsBQ2IhlarY2njr3GYVtD8IgmA2r/tCtVGKMF?=
 =?us-ascii?Q?n6FpttatAKwPDQFGw7UchvkJyjYzIKxe5PgHGX6gJcBM/mkcZxcj82ghLITp?=
 =?us-ascii?Q?XS+/FHogNcJUF1MgKTpTqVnMwhKA0w7sxdo3Z6x9hUL+lbuif34gnHe916i1?=
 =?us-ascii?Q?BX/yyQHHOCy9gwyW5EMIArGCahIg7nF/qxyE3/gZEBQE6YHHQfDVRlPhYjVk?=
 =?us-ascii?Q?nZryGS6c6UHH0k1nQfdRcyMOjA+oLZrbHUqdA1eP6LAzFuSJlzLpmIyH3UBE?=
 =?us-ascii?Q?kFbYBgzojKuY54zQFBYK+A9gFbJZR85Z8QN3Oq6934w1aE6692sl8oWAp6DE?=
 =?us-ascii?Q?gfVirTK/IfbqkV3w38gTR5UihH9Vc/T4D1pnSzKTEFYgpDs+QdEb9p6zTsPy?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e94169eb-0053-4050-cfc2-08dc7a999a07
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 19:58:51.4590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dep4V0OcFbsjSTHa2lcQ1NGp4/lgJEGGFKRn0Lhe3jshX06cPcIsL3fkYMg2UIGBlaPZcRdS+NV5GXfJqFcJRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6059
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

On Wed, May 22, 2024 at 08:33:40PM +0300, Jani Nikula wrote:
> The main change here is that the check for platforms without display is
> now also done for GMD ID based platforms. However, without matches, the
> end result is the same.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 03181bb79d21..f548a7b0ec23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -912,11 +912,6 @@ probe_display(struct drm_i915_private *i915)
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int i;
>  
> -	if (has_no_display(pdev)) {
> -		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
> -		return NULL;
> -	}
> -
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
>  		if (intel_display_ids[i].devid == pdev->device)
>  			return intel_display_ids[i].info;
> @@ -930,6 +925,7 @@ probe_display(struct drm_i915_private *i915)
>  
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	u16 ver, rel, step;
>  
> @@ -938,6 +934,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  
>  	intel_display_params_copy(&i915->display.params);
>  
> +	if (has_no_display(pdev)) {
> +		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
> +		goto no_display;
> +	}
> +
>  	if (HAS_GMD_ID(i915))
>  		info = probe_gmdid_display(i915, &ver, &rel, &step);
>  	else
> -- 
> 2.39.2
> 
