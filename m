Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E2A86E4EE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 17:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7130110E3DA;
	Fri,  1 Mar 2024 16:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNZi3bwt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7892F10E3DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 16:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709309093; x=1740845093;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TdxmXnizjJ6FHqEPPyDcqEYG9sAu7ZTOD1P4hc1GpEU=;
 b=UNZi3bwt6lSi4/fHMgk7U7Gc5x0BjCvAe1ScOdb1JRV4sUOrYSnkYpey
 /CxbvbiveG4HfXDNMovsvb5HkqEP8DaR/5oNto+K5W6OG7iNpNBQ7aUoN
 cg8lC1hdPeUu8iHPfOKCz2tPjIMr341I6Plrq5XDZHFnXuSwKV7vEQtRZ
 huFPLwL8Ab9XzSM8uaFRZrv2vDp4b7mVMCYuTy2+DdMv6eE5F3XsUwhoA
 Uv64N7NSHMmmd0q5ZdLKvWAMX+TJ1+qNtCVXTkdavleQ1yRgnBS0QUfmD
 n8s/qJ9rF87vTw1Lhxdk66g235hX6vtC3Nbnn5st/D57pdaMP5vsLGofa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3708976"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3708976"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8659876"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 08:04:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 08:04:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 08:04:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 08:04:46 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 08:04:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2z8bt75WMJG6YKDvjC/Y+U6ga3AcuWnVwHNKuRUUpdjo9m0XT4xVJL2QjRUPOae+t3ccyypgtO99piyv359pLTJ/wiouNdim5Rhbzkxw/aFfr5PAHnggnrF1KNmkvS2NGZyGiJwqzu0/2rii5GwfnA1T66qilhLruGsV7ysSHjWXI4dFrHDVq2UYVL7q1Au2CwSfPY2XAcCROe2jj6WWp8HLRPnduzNBN5EKtn2diYF2jf5pQBy4rGVlscgumnBjBfXkW1N3pDdK8B8h2tn3RZmiowmB/e76+8mmLMXE0w4fI5o2VkVjpcZ2cavtF1W9vUZKbCYojVXblLJZc7gfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZknO+6RzHQXPI410O/XGtd8B01j/Eo8zRnYIBdgbmg=;
 b=b9uM1OW1LDGzTewR2I3nQRZ3lqHghva9OuhEa9DFLKynqkS51NPzmAIT7HOYydoDrXpbDYk8ihMmA6CU4jYGBqceS84e3m93D28zi/2NhfMOPD4a4Vxnd0jQVM3uKYaH4Dv8E3t80tFxFbQ9sWaTLoMnsWxVHz9eCRWLo7vGUIb4hxd3pCn6/mr2ENfivHrcWYANgGI9nEaF+OmqMhAzbcQxJyp83ZIhxC9XBvn6X8orizQYsJHXGBAfQH93rudhW4P39eBQSYxEF3F/ZoaumwIQcZyKqLD7ZZgoTWiyS+2fVvi2NrYV6qT3mofi5ukRjLUTLlr9UN/029GEdmvO/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB4918.namprd11.prod.outlook.com (2603:10b6:510:31::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Fri, 1 Mar
 2024 16:04:41 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.017; Fri, 1 Mar 2024
 16:04:41 +0000
Date: Fri, 1 Mar 2024 10:04:38 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
CC: <sfr@canb.auug.org.au>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: fix applying placement flag
Message-ID: <zuimrdjaghf7mqykkkmvw7uejsblvi4ryvtch23miqmdq6plyi@u5dwnsxipydf>
References: <20240226142759.93130-1-christian.koenig@amd.com>
 <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
X-ClientProxiedBy: SJ0PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB4918:EE_
X-MS-Office365-Filtering-Correlation-Id: 508d7b88-4830-402c-72d5-08dc3a094d90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vAHVym32E81CuiG/fLzwHRdaQ+v2q+z0l/ro/ZryQSUqY+NMQoYrtyiIwLzaD00vVijSGCyshJT3B1MDebqXJY2ecM2ebFPcl4WQ//9/JUtIYlk/RUCf9F8w7MRLc/2qLIOOMN2lNJZyEYBl8VunL/WB4lhS3pHqjrqlj2LC9r0YhcuiTHem+1T7rQbGcPcDjQx5KHQlElpcBzy3PeAgPmmVgs6+WzqCu+cUc70a21MXeJ3e1XZFcpTcwh0p9xgIGgY8MNL0mNVQcZfejkV1IstF4DIpKa5nG1f4GOw4vWZ98Yx7FLrU8yyLG0Lh+qiooo18vn6BqvWHiwKUBE2ZjLWP0hZlKLUsubeArvx+msUKvCptYDcxwUeyUG7b5hOMpGSxyIHfDi23YbHt0mfi8S5VHo2eketz25tEanHMYUZtd7NVx/AySH/CxLwWEwRPKg7roZu1w3oY+l/KfYL0DfvKW/ky0yPCl4mwSv1WFDQE1tjzCFHBYwCKx2Fw4+hrmQGYB185HZwSz1YEnzx1l13klvNM8dp8IPNO+UFjqwWG+ay8DEC1+Rjcukhh2XIVArqte6UtErGnDFbm54JSH80P/IiLp6jX55Ipn+5pW+gd8jwFLt4vWGAdEbAa9TiqUiErx3CC1DMKw9/0JG8MFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8YKJoRnNgwFGVUghyPE16rsghgsdt7ijJ2NMqapldXAFMlFBbAFVHYFFZB?=
 =?iso-8859-1?Q?HyK8lItxv7aColxJzFMrVF3Kv6tBqOqV6GxnqJ7I0iDwdziNYhZZxcHTrl?=
 =?iso-8859-1?Q?AZakcZ7XIUWWWFqD8UUeTMmFaCkNbo5OpE8dXwu3XvaJdzypMqaT/v/KMt?=
 =?iso-8859-1?Q?6AI381L37m27OhDZh9O675CMCIDWU09cx8WuSoJwmo14SbQd/ESECao+AW?=
 =?iso-8859-1?Q?fmdctsXvVilLeRb0RqHW+9iwloGrynAeg0jrX8Hr+U/jfNQ4GA9XuZvYVr?=
 =?iso-8859-1?Q?XKiyK7RR2AqX3WaXIY3+eZZV8RSe/A9u03hWU9VFOsbYZ1LqkIEeMDGO36?=
 =?iso-8859-1?Q?XnVPHAxEv4SeAoLsZ9+TWWA9+hlKykaec1V9nL5iVyvCLTNsAcow7zkaR2?=
 =?iso-8859-1?Q?dk8hbQHenB1vhuTSW1e8BqAvWAtJCHcNF+R1qz68sbepwWZfm+8z4elfq4?=
 =?iso-8859-1?Q?hksMJ5P2yPgzvtru9SEK1wQTXZG7wwd/nfhhoUPnBTwpxq9bE7jPmd57GV?=
 =?iso-8859-1?Q?au0xOEJ0XfrPDnbDz/CNqnSQjxZJhT3A6fVlTDt5/aidOZTW2hQ8yZBreB?=
 =?iso-8859-1?Q?MRQLMPSDCilYG4D6ZvrUxrDurtQrUeJnrtwjBMci0LEYfr7mo0hlopCu00?=
 =?iso-8859-1?Q?sOS9dIBr1sZ1d8AKU5ksB1LlGjrMau450edi2mSVz/5MeE3alzrXRsZMhS?=
 =?iso-8859-1?Q?Eg+zuVesi0VCAZjlMvsWKuAJEAvsd3jTdAvbsAe3d9Uit+LqkIRCxe3bsA?=
 =?iso-8859-1?Q?qDcvVwnsO8uuP2Bb9z1SC55MrqzrpENDXbwZcduIG1k3xrdSAdbzT6Giys?=
 =?iso-8859-1?Q?9oJynnyJ5zSrUjmzwvFMqEcPxig9njWFCY7k85O9gUpPa5hdu8pqjHSXVW?=
 =?iso-8859-1?Q?Sa5atUzZ1DUL6pa+7bJSgg9oOzepFlZunpqYuf4oMmOxQGXUW+x0n/3qxt?=
 =?iso-8859-1?Q?uTj2qpVciO0DIUCceKNo04x9a5YIr3I6acY10dC02F+CV4FsVNnjDjzbpu?=
 =?iso-8859-1?Q?INgg3sUkQJm8QxOin/MuSUNtyvxNURQlAZgNrCQgQjRBppktAbXXT6EYLU?=
 =?iso-8859-1?Q?+KA2h8bxxbiCUhKGTbNjEfnrBbIRVuejxlOU1akSjLQQ6sGz5mRVyQuUDq?=
 =?iso-8859-1?Q?imbdLFTc7f0WHK/BmHEc9cs9AbbNcCv9ZUGl3nptJddoIW+nfFvZMfZqf8?=
 =?iso-8859-1?Q?9h6tNwWJSVbGO/Hg5/aN5OG6ON3cwRtIfEe54wMmIEuw3cWRevMpfUdraR?=
 =?iso-8859-1?Q?KxyL88PfXUvW4KH1P6ppNeU97jzoCS8oD/JIhS5spV8Wn35ueCkt4iXAEI?=
 =?iso-8859-1?Q?Dyo9vj6EPmGsPBtozfYy8/UhhdktNmlZNhLB+gkSkMZF/yqzwQtuSteTky?=
 =?iso-8859-1?Q?Kn69O8Dukk+p0IVEmN3pAofzf2RxtYZpaDTPWbExLKAKvi+gn8nz+/y4Bg?=
 =?iso-8859-1?Q?KaIhWWxVD9+L5g1HhiU71FI4O04LCXXm8dtmp26V9YhGm7HROScOMfmuTs?=
 =?iso-8859-1?Q?RHbm3uC2/KoEJ/aeCYTdCj1A5ZnEWgff1FAA8JIKb9NrF80r1QjhbcF3F0?=
 =?iso-8859-1?Q?mstV4llgA2YAUNkeKEAOXMQMOUoPqFrduPTs8QWwvtwwvYjcHmY43+ww0U?=
 =?iso-8859-1?Q?ZkTVROjvaC9nAMLNNsWDiCvFfi7+Ak7r/YccvGEQrzIf0oKcTqyiVbmw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 508d7b88-4830-402c-72d5-08dc3a094d90
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 16:04:41.2679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: slSuawHKz/7jIG/BKaDQ8Vqst1eaatnfOVXbPJ3RGjHSHQRb/txF0E+tKAOP9LcoNW6zDSQqZUrwmlHCDJFBEd2m+rQF0WxIBdt3lGLqLHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4918
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

On Thu, Feb 29, 2024 at 02:01:05PM +0100, Christian König wrote:
>Gentle ping. Can I get an rb for that?
>
>Thanks,
>Christian.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

For some reason CI failed, but can't be related with this change.
I re-triggered it to see if we can get a green run before merging.

thanks
Lucas De Marchi

>
>Am 26.02.24 um 15:27 schrieb Christian König:
>>Switching from a separate list to flags introduced a bug here.
>>
>>We were accidentially ORing the flag before initailizing the placement
>>and not after. So this code didn't do nothing except producing a
>>warning.
>>
>>Signed-off-by: Christian König <christian.koenig@amd.com>
>>Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>>Fixes: a78a8da51b36 ("drm/ttm: replace busy placement with flags v6")
>>---
>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>index a6b0aaf30cbe..7264fb08eee8 100644
>>--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>@@ -162,10 +162,10 @@ i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
>>  	unsigned int flags = obj->flags;
>>  	unsigned int i;
>>-	places[0].flags |= TTM_PL_FLAG_DESIRED;
>>  	i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
>>  				   obj->mm.region, &places[0], obj->bo_offset,
>>  				   obj->base.size, flags);
>>+	places[0].flags |= TTM_PL_FLAG_DESIRED;
>>  	/* Cache this on object? */
>>  	for (i = 0; i < num_allowed; ++i) {
>
