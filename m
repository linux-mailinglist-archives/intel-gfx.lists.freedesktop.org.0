Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B99AD25C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90D010E7E4;
	Wed, 23 Oct 2024 17:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgjxjAjc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BDD10E382;
 Wed, 23 Oct 2024 17:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729703917; x=1761239917;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hE/cGLalllM1tRKk+1pBtZKT/Z8VWmSLdmYPuScI3I4=;
 b=FgjxjAjcf0Mha/3VHTpnnPAA/4C/VP2YTMzNnzTF3sgaR6KBv1y7DYQ3
 Kb7E0F6jOqqBByyoGENdDIBy6W3KNP2TaQH5yhqTv3s/n/OluuNndhna3
 9ncNPVtUkYkjqNaF6ZNiN2f+fyAZcB+g7e6zl6vf73nYcjIZpQoMdHbOS
 mDwtr4QWj016boywpcLsMohU9aePzsyQ0MKjp0kC8PCCIOWlCo9PcgoUM
 PpkT2lAwOgswEadYpPtVjwRzHWkWnijp4OHJl8v/T3Nnk3qzd24LrP8qs
 uSvC2vuIBfuS8qzy2qdOcr0rtP4IYxsD2giJaQqjQCq2oNIlE8FCbdx6Q w==;
X-CSE-ConnectionGUID: wRmor20ZRGSUvhblohr/dA==
X-CSE-MsgGUID: MtbWlPt2QhiBxudI2C/zcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33000822"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33000822"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:18:36 -0700
X-CSE-ConnectionGUID: R1NF+gt3Q26MKnlpyeqpRw==
X-CSE-MsgGUID: Gx+xw7cxQA67QOsM6oGYqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80619205"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:18:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:18:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:18:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:18:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uiVeyk+DA2DhfwBZGTpADmLI0LN5qVSLxumUkoTeZvm5JcG/Z6y/V8G7fdOyR60IvB11g9oQGGm5bOmpEpn5eDMrtiqwIxCYfNGjJV8ByL69WMF8EKN1KkIBAP8K8iusjeKm1pQK83HwCsHEeVntFu0yNQRzve2BmuSakSYNzjMl9pTXOGA59matn8RGoQ8E4qN+rH6y6bThir9pTyb33TFZNzHgTRzq1X0QvMeNsHdmulHO9UO2olFSWFN7v0PNylXhYYq/UbI8sziDlmn1Z2iyZ29aJljbrNv9VwHyA5dsQxcpK7l1ciAPI5OdIMcC111JlzSOkETG2oeLUlv7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zriE4VHnlhLgq1N1KMa3tiQkrsxwAAPW76XoTVkZBLE=;
 b=wf2LGNFq4SOUjECQiB1gY9JW+X82nY+vpD9c4Y6otBNcEv/wPiVT0fNrtQmsGe0l1u3AowBEOfM2Ayv3UsIZwpGodjQB+iVSeg363WxNoGvwqhtmcpMmxWwkXObmga1WFiLaSb7GtN+4kG52r7wH6XwQdKcqZG1U9w7W+nSLxws1lvpiwOixgWCF6JLbcm1E21DCYqR8xpQsy5BXDGjiIMXdA+fZS+Uu+iVeclCmbKWrDB3ZMrUFdlonpoVVTWJA9DFdZrEBzfkTiennPFY+Kd9qqlfmTqxoLs0xb4ImCaeYY/pPTVtdvB/s7RsOxYgp+Tix+TKoZeCWWFGM/++Ryg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 17:18:32 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 17:18:32 +0000
Date: Wed, 23 Oct 2024 13:18:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/11] drm/i915/display: convert vlv_wait_port_ready() to
 struct intel_display
Message-ID: <Zxkv5DpkTMOtg07v@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <bf48a3b21e2d07859a733b503b911c1e4d8cdecf.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bf48a3b21e2d07859a733b503b911c1e4d8cdecf.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8107:EE_
X-MS-Office365-Filtering-Correlation-Id: c591d888-7e6f-40c3-59c8-08dcf386b783
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cKq3ikvs9h33YH70ndHBpKd97588X1rbqbvimRpvN2nMJbDsQhQYB0fXUIdc?=
 =?us-ascii?Q?/fY+qAPgEYHXz8MRWT1ECp08KihGWvBJcwfvkJKRCVwgp+Sf1WqsTvdlbrOF?=
 =?us-ascii?Q?ayPgltwucaVll+GA6gFU+h7TWCM6qSu16Tauzv28Q+3k9fmS/ZRQcbb5P2a6?=
 =?us-ascii?Q?LShCSqAjv9IDpnueQWpP6va28xMgzGc+/y+l2HvGTafOKsi3HlJLjII7Xf8C?=
 =?us-ascii?Q?RzOaELepB+XvlAcesESzKZW1/CafRD+L86k8GJXqhOXTot6h5m8N872BTiLf?=
 =?us-ascii?Q?qEtvNgqh3MkM1RL5UhKOEKv9tsHojD2nGBQsdErvICWpmBRW9qv/UTH5UZBU?=
 =?us-ascii?Q?Nj6mnqJl+JCd3y51WJxv9LR93vjSh7e9/qOBI1fuf5FzRcl0vgPWnJn0F6Q5?=
 =?us-ascii?Q?U2wksxaiOTThsJ+BDJE0xvg8XDnf7EFzbGU8zG4jF+ES26M5Zz5hMLqGpfiS?=
 =?us-ascii?Q?gV6duP6Lwmc2fGu0hcqNVP3L3GDL/0jyP3NdDtn8p0CCb4DlP8/kg+DSh8+W?=
 =?us-ascii?Q?ibZSUgps4guRPUGwnirTxOwi+QrsZilVDSIpbW9HhQZ2xzbh2QuD1yX3sywm?=
 =?us-ascii?Q?G0ILwmfRkMc+jswzDTUbCbojtDBLWk+9Abc0Q3mg7m3M7/DiOiwO2rKIeDlY?=
 =?us-ascii?Q?BsFZmMWpVxgYW3xZa+md2tn/T7geOxQkQc+qpb8euzKiDMSlN5XqjbXuiBw+?=
 =?us-ascii?Q?o3IxC821QuxbVxhi824tUFriVC/H0PoycD7lVgU6laYovAPDt8prGa0hxHVX?=
 =?us-ascii?Q?nWCBNeTeQux3k7YhIzgZhUL70PC/PfYmECHZxVoeU/fj/mEkUmh992ExOg8v?=
 =?us-ascii?Q?euqGCGN1wMhwsZecU+GORznHr+tyOCraVmQnELEw2jb5YbORDDsWPdVSql7Z?=
 =?us-ascii?Q?1nSYZpDBW4Re8hnYRE0TtayLGjDc/K0FUDSl0dQJhFOuU9k6JlQrDS+93wz4?=
 =?us-ascii?Q?jVaJM1XlHde6sA9UqQg8Y95+Z41cSGlj9SBuqdb/HORVcJ8hEU5mkcs0X+SV?=
 =?us-ascii?Q?HkUbw4QXB5PhhHk569wOKSxxWIveDrrBh1ubyUcaY4Icj+XoXNQ8lJjnCVyT?=
 =?us-ascii?Q?AZXRiiL35WuQkY0eBP4IXnOC2w7D6B1bHcTgh0bpNnOvOdM22BJ8QVRVdY+y?=
 =?us-ascii?Q?BDvA0UGz6dRZoEXS3wjoRibseBkplpY1PIUMh97Ea1aKlvOScPq2nG8umGxG?=
 =?us-ascii?Q?YnW7GxZ7TJ/GXpd+CeJWmcbXX6m9G+CSutNPi0lBCkYw6s0ar+8vxMhnVg26?=
 =?us-ascii?Q?CMpegiXZ5rvPGvE5AFoN2iiTAKFLX5liN0FmIqoTLn/3vaudG3mQkOXJRM1+?=
 =?us-ascii?Q?8rKVxDVBK57w+fKydEnwXG94?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a57w9F63fZrKZGTiSCyNaWr3MBC3BzYHzZD71JfmGoy6I235FjMOo3DAXyPD?=
 =?us-ascii?Q?yClO1t4VMVO5YcrDbPMVUIxE0wUakbi+/PtJGGSSER5CHlEcUoz1+gbnL9Ts?=
 =?us-ascii?Q?4GPlAsoS7rINuZvDr6zxuQ0WYwoFj9wEf4UJHwcJ1uieesbslxl3j4lcY0st?=
 =?us-ascii?Q?Xt/CxqiNRjsgRqEOt3ofjCliYvPD3IvA3GvwjtrSYibWHfxPb7ssk6wjFYmy?=
 =?us-ascii?Q?uR7Alxd3BM4ZKURPxOStea9f8/hcJcMJYIh3LPTjkmlIhzLNC+Pt7pyUv3k+?=
 =?us-ascii?Q?7ammZMfTKecZY3ZuVb30fP3v1Co+OMyEtaY3waSQ1CWDbfTiUfAFCfcM1gLx?=
 =?us-ascii?Q?3Xo/1godP+kPu2qbaScAcjDThvZwaL3yPo65PzIuFHcWGyeC2Acx2p0cU99S?=
 =?us-ascii?Q?otz3vX9rGfOBSvz70iCs0nw6YP9M8mU1pOayILRkVayV2Zs73QqXUQOl3yTx?=
 =?us-ascii?Q?Sfjk+4WPtDVyi80z3KlKN2fY/m7zVHJfRPCF6SnbEj335HmMpt1qdtQJL94Z?=
 =?us-ascii?Q?h12ClPAnc3cZ0+b6yamP3v8QmnvTPLOFtfcgvQclqT0LPqmzx83+0bWrNKks?=
 =?us-ascii?Q?OTsiSGlT8K2iIduwEwz5mgdJyOwAyhdDrWXWPrdSi5r+x2qwHT3vJBNaCKsL?=
 =?us-ascii?Q?oZnZfBa8u8Vv4mLJ7UFO+pySY13kQj/eAsCOyrFFLhN8nQne/uazaBdf4cxw?=
 =?us-ascii?Q?smChbMVb07t4T1d+mcBmj6x5J/Tq/6CnSERATcf8JQODxOw6pmWx0dsj0rmF?=
 =?us-ascii?Q?nJMobAxNxlTCBsYgeG7nc6CFjfz5H8RiWSundC2MQYWMVkxFS4YH+ZQSvAmH?=
 =?us-ascii?Q?XH2VAvYpet5+/CFDcr6aKM0HqFe3WlZ9yKkcQSalzNSJjPAMNXymJyyfaNlX?=
 =?us-ascii?Q?HKjL2/cKySgeFv4Y+8AN8Kwnv74/hgx+6GipB7oOJQkcA2V8usZr0jpD3n09?=
 =?us-ascii?Q?/WOnbMPjOXdPv43EogmKRvLdVn3k52n1TtIxRqiniqr3W+rFMEiVSGnUy1nA?=
 =?us-ascii?Q?v23FQdF70NlTbxkFCStXWHsMyQzVHnR4raGarJJZhxLFbvbLa3FGDcBIJN7w?=
 =?us-ascii?Q?Yi/hb8hSmcZ/13s1Vxwy7aJRuhZMmTKyMtceMGfYSr1coSVUu3UwhrN9yaoL?=
 =?us-ascii?Q?96JlYUpyMt5JV05DycziDGMdua/CbPrD2MM8yJ3aNgIfDNNpyajOfrfvcpwD?=
 =?us-ascii?Q?aGk3HVJgmjg6vNMOZ1o7CgRHx/KxgcAxBarPCuYVMd33VmHzQeYWQtBdTfi8?=
 =?us-ascii?Q?ynX4664QvSbl5Dmnps1KNhhI2oCeizj0lW/Kow+X5B1ieInaZxe6qGCSV2m5?=
 =?us-ascii?Q?Uc3zdu9zJzUunL5p0oPkvFnNNes3TBpIEVCKd9v5iHV1bTGn67uq/6BYNe8m?=
 =?us-ascii?Q?orjclhIvKUj9Qu9pqN2oPbjHO+IIGkvzkQj+lY4jpsnuSuFuq12uG9+bTPnz?=
 =?us-ascii?Q?5VDW8sYCMhSXxXQIjeOxYp5cXGDj+xdDHxHCrzHkKjSs6HoCIj2Oj5eLbVlV?=
 =?us-ascii?Q?QapY1x2h9YTK3hv+c9XM5tClptqeBlwODnsXj6/i5EWpA4rbG58AO7jIjWsh?=
 =?us-ascii?Q?wWZlWHtdPj0E9VYFCI7rhRSlQGJFRSKBgIdQNz9URTbSSvNgWIAAn+tHtfjp?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c591d888-7e6f-40c3-59c8-08dcf386b783
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:18:31.9306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WOp0Wz5CCDVO/kGIQybEKSc9HFihGcvNW1xePyWpFIyPDV+4CYUVpM7WfL5j/N76lgQ4oFPmILasKxDb657qEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8107
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

On Tue, Oct 22, 2024 at 06:57:24PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch vlv_wait_port_ready() over to
> it. The main motivation to do just one function is to stop passing i915
> to intel_de_wait(), so its generic wrapper can be removed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        |  3 +--
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      |  9 ++++-----
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +-
>  4 files changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 440fb3002f28..a22781d21110 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -706,8 +706,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  		if (IS_CHERRYVIEW(dev_priv))
>  			lane_mask = intel_dp_unused_lane_mask(pipe_config->lane_count);
>  
> -		vlv_wait_port_ready(dev_priv, dp_to_dig_port(intel_dp),
> -				    lane_mask);
> +		vlv_wait_port_ready(display, dp_to_dig_port(intel_dp), lane_mask);
>  	}
>  
>  	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 46f23bdb4c17..d1a7d0d57c6b 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -480,8 +480,8 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	vlv_phy_pre_encoder_enable(encoder, pipe_config);
>  
> @@ -496,7 +496,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
>  
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>  
> -	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
> +	vlv_wait_port_ready(display, dig_port, 0x0);
>  }
>  
>  static void vlv_hdmi_pre_pll_enable(struct intel_atomic_state *state,
> @@ -557,9 +557,8 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  
>  	chv_phy_pre_encoder_enable(encoder, pipe_config);
>  
> @@ -573,7 +572,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
>  
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>  
> -	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
> +	vlv_wait_port_ready(display, dig_port, 0x0);
>  
>  	/* Second common lane will stay alive on its own now */
>  	chv_phy_release_cl2_override(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2479ca0a02d9..53e81b0030d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -474,7 +474,7 @@ static void assert_planes_disabled(struct intel_crtc *crtc)
>  		assert_plane_disabled(plane);
>  }
>  
> -void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
> +void vlv_wait_port_ready(struct intel_display *display,
>  			 struct intel_digital_port *dig_port,
>  			 unsigned int expected_mask)
>  {
> @@ -487,11 +487,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  		fallthrough;
>  	case PORT_B:
>  		port_mask = DPLL_PORTB_READY_MASK;
> -		dpll_reg = DPLL(dev_priv, 0);
> +		dpll_reg = DPLL(display, 0);
>  		break;
>  	case PORT_C:
>  		port_mask = DPLL_PORTC_READY_MASK;
> -		dpll_reg = DPLL(dev_priv, 0);
> +		dpll_reg = DPLL(display, 0);
>  		expected_mask <<= 4;
>  		break;
>  	case PORT_D:
> @@ -500,11 +500,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  		break;
>  	}
>  
> -	if (intel_de_wait(dev_priv, dpll_reg, port_mask, expected_mask, 1000))
> -		drm_WARN(&dev_priv->drm, 1,
> +	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
> +		drm_WARN(display->drm, 1,
>  			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
>  			 dig_port->base.base.base.id, dig_port->base.base.name,
> -			 intel_de_read(dev_priv, dpll_reg) & port_mask,
> +			 intel_de_read(display, dpll_reg) & port_mask,
>  			 expected_mask);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 61e1df878de9..51fd8d109f7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -492,7 +492,7 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder);
>  enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
>  
>  int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
> -void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
> +void vlv_wait_port_ready(struct intel_display *display,
>  			 struct intel_digital_port *dig_port,
>  			 unsigned int expected_mask);
>  
> -- 
> 2.39.5
> 
