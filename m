Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACF6987A2F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD9E10EBD2;
	Thu, 26 Sep 2024 20:50:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJItaKCx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DF110E189;
 Thu, 26 Sep 2024 20:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383801; x=1758919801;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VaQbwOaJQgEcLUJGxpcUEMHdPahHco95oPi9Mw/umIM=;
 b=GJItaKCxy1h47mqu3KW2wFIiN+NbISR2/hyuXpWkGNU1QvPN+Lhj+j2+
 8sR5qhrkM3ZGxqYA6S8y9tcd1d6RdKJysJ1htS7ZuZl2AFsgb794wyfXD
 SbJFLoIMZZJYXuqjkUPRA8BQHxV9fF8dUbeRu+TqNcB2F+UZB/yp0a6XI
 46jBIJUvEdwIUVZBNjX6CQ013VmWjntXpNy8VFYHjxz6T40ol3WVEspdo
 lnGvGPP1HPu6v33iutbn+adqH6YxQAmoL0txoXjknWyt2ieFsvenbcNvF
 D10fVSTg5VoAQbjMOewWKwsQo7YqFxBI/4hL3koxx8FT25N9JoOzkAb11 A==;
X-CSE-ConnectionGUID: t+M6X+/5RMSvy7ewZ/dWTw==
X-CSE-MsgGUID: IKJjStvGQzm33n7Mg434bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26679574"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26679574"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:49:56 -0700
X-CSE-ConnectionGUID: 9uBY1iFMQs2uLDvLShmfmA==
X-CSE-MsgGUID: dacTuzTDSEu/v3aI70KiCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72601011"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:49:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:49:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:49:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jwv25rY/9zZGZ3mxl3nmqQu9piAmuVdop32Q4g5FEePlX3lKJvwrkdx7buSK66rdT9wz1pxmsa5lSZzve4hUrj9oR6+PedONpyVWTMXEAdpzBG00GZVPxN92k82jQwoovsiuDA5Mm2f9Ep4qx794JGR3xoID2ke1GQqQ4Cq//DEsWgg+U7FxcduzNPaWo4rETUhA0B8m4Y0EUM4WSczU8EnmpmqBTCRc6Nf59zIHpd57zCIqvrooZid1BIk3uIUvPfrhWzYwcv+YqnEPYNX/hqMXyOk4VBkyauwBRG9gPh1e+qx5GT32Q78b3+r6aGA44X0L+JhvO4QmJOUZG0/XkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77rpoVBh34K12Pui78+ap2xvo9zAl7L6s9u8U57MMrY=;
 b=OHGCtJRbCuLPoD5iSyf/omzgg4pI2hkmzJdx1cvIH+S09hwGW70SBXExq6cpYNFaRvOZ/d/wMY+g4zEfFUmm7i3ts5D4GpMbZP+aTUDv4zK0ZN7Uk16z0LSg+KosaJe4zELHcx649A/b73qrBGrJC77VwibD0q7tQEu1fPQyX7RwboICR3FqSFjsX+i75Qyy47Hu+T1zy9JHH84vBtfm7or1RJaUQgIeSrxoVM9jCMgK0SX2ABVJjayfDAtLUXSjc65wtPhNsvp7Ec7mU2B7nZKKuTaY4kCHIWiiTsqjcvmCkWIAGa7Q3QhZ3uswWHAFY7igYf6snbHcCYzwHs3k7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA2PR11MB4780.namprd11.prod.outlook.com (2603:10b6:806:11d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Thu, 26 Sep
 2024 20:49:53 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:49:53 +0000
Date: Thu, 26 Sep 2024 16:49:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/6] drm/i915/audio: be explicit about intel_wakeref_t
 conversions
Message-ID: <ZvXI7vLZzcQfwowX@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <9d2a2c2399e70f36e0d68d88136ac688f02988fe.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9d2a2c2399e70f36e0d68d88136ac688f02988fe.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P222CA0013.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA2PR11MB4780:EE_
X-MS-Office365-Filtering-Correlation-Id: ffe4c593-34ca-4097-500f-08dcde6cc571
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iq7daBTIUlG/f3m9PyO6Igy3tuJA92lHLJt6FjJWmXptBmc0gNdYyEcAdzH7?=
 =?us-ascii?Q?gZZtU1w7lzId3AUtkD2986I7LDPiKPh6w3xCFH2FLohaxBTrIhwFL601r5cZ?=
 =?us-ascii?Q?yqGdVb6t3n4r4iciSwIx4fnh6teoPGMrmppEoO6ogGuSn1OuAXE8rynz8dJS?=
 =?us-ascii?Q?/kgfCAcKIfJelWVhx5ga/pWa6F+rkeTtsBTjjJIFKnX+2B6Y2TPycmCVog7X?=
 =?us-ascii?Q?oKUjohZMeWPSGe18CtFpyLPc6K8AttcDb35nCjZjT54EaIFvkfLx9I8ZYQ6f?=
 =?us-ascii?Q?Gx1HNwaKhO2pn50AjpQLMyaTXLH//V9qystGP/FjVNvDblRRNqGjOb8RT8v2?=
 =?us-ascii?Q?c73g2C6t4SD+CuyZhRLDDZERfHUarCVkPSeqkc7l6Q9LJ6xC26LZIVQbYtmn?=
 =?us-ascii?Q?RRMPYVgRA2l0A12fVkYCJPRjxkZXfB5h95aWK58Wwuv/EErk7pXGNmhSKR+1?=
 =?us-ascii?Q?lQ7iklquooCjhj7KOeQVwMFBkZRFUj3SJcxKDapZKPgx/fUzII+Vy6Tu3CZx?=
 =?us-ascii?Q?ezM1/dKjzNN3w4/psJjdJpxiCPWmgFQho7/8O6C5tpJ3bfOliGxxneKAayaP?=
 =?us-ascii?Q?+bWaMKFv/O1YVlgKsPJmpqH++W4Vk3mUbghgBYUztHGMypiJoIUEk2pnW54P?=
 =?us-ascii?Q?+EVAAR/DqOQShFoDh2chrGwAG/OdClFXVOeioif+2kYh5g/HiIdUMrny2+db?=
 =?us-ascii?Q?XDdNEAeFEhxXdaZsTdMb4zcW1vgnOU/zLeKLR9wZ4To3n2t6XUWOBfhliUHQ?=
 =?us-ascii?Q?1BEY1Vu8Am+EPZP58Bt7LHJh346Y/ntrl+LMFQfxZu4nv9etayxhiL6PI872?=
 =?us-ascii?Q?dmlwKVB1QsUwhgRM3tRoqRpR3E0RlsYgC0VcTP+fcLKcJ1vuO8SV37DPSl91?=
 =?us-ascii?Q?FSx94WjMwLLz+m/GwjyCp0hcuJl2m4UCQ+eQMTjfRfo0HCa8SYa96CXG0QXA?=
 =?us-ascii?Q?bDtX5HF216Inv7KSSvXswFz7QkRG417wwnu9QTNvrK4BDDKG2pwYMfJ5vPcc?=
 =?us-ascii?Q?5wK9WAzRWEiM3Yty88Gi8+thATzM08nRO9ezQWiTwNWXZLpTQcRvnAZ7c4HR?=
 =?us-ascii?Q?p69hobnuS3HllhmnMCa8mJbuV2I8QXrvH1lo3GovZ4Qn6BAT1Z6ZQhjAyBmk?=
 =?us-ascii?Q?FkarrRvI/gCHChd5FDSMOqc+Q/P4mWS09fkaFcoc2AhU6iHBC4dckAAp3hl2?=
 =?us-ascii?Q?JPns/A2O+qer58CSMP+GUqGnotw0rTfR4JucnGNOxvzQoVbAorxl5aB7kLyb?=
 =?us-ascii?Q?PEvn3kp6FQ7k6YYjFjtx07NNEP/LbEfsWpEzfjmOnInGm9sl+uryW+HrsmPg?=
 =?us-ascii?Q?rcCBYfwgNyKdzpUyAbrz1UJ+3lNL1GjS03ZuVLPEzkNX9Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cm32XyNInEURLJbgdfXZKCDUmn6DybUzVCBegmx4G5J+JyCVumvD08gEt7yn?=
 =?us-ascii?Q?J7zzGudxd2wF/KkKRHIKZ9s2f2tNiQYWdrgeTptpEq1EIJPj8nIc6C7YyKh+?=
 =?us-ascii?Q?WMGqivdoP2+DGJotzhYzNk2nXpE3+QW4C0LbZL4lKNMMNQLi/6XwC+0S14CF?=
 =?us-ascii?Q?sZcsMyZ7M3xXv6i0SyZayaagEFxccM4wDqSsOz9/WXQoeX1p8gdSG+Y8DdUP?=
 =?us-ascii?Q?m7ri+7RakjO+PvuXND3kRn95yVNsKJkB86mD1S7vYrpigeFpqjEpMR1UVWEG?=
 =?us-ascii?Q?svwjYL5FpFlg0+kP2mA6yLr1gRYZl2jS2wQU+PWctjMsO5Aq/ug+CahsNd99?=
 =?us-ascii?Q?z4y4jIwehjDLYAvpfELygNuCRoYDWkrghrU9BOdmqHiEREL7yGtfG4V2/Agm?=
 =?us-ascii?Q?+A1Iht/z4t64mmJNhiMY4SxR1zPpeXcu4Du/wtu/WPnusWsJGwl4dQiMkQoy?=
 =?us-ascii?Q?2RMruDxSYUKJ0+90qrtv5WySDqXHZ61AylyCIEZPNBgQ35xknNnkj8St9vrh?=
 =?us-ascii?Q?r17FeAuahetov+UB2XplN2wUePEscj4bbH50LZRmsY/b0rdcwJRiHRCIkhze?=
 =?us-ascii?Q?eS90qsJIfvbBNmRNDVMuK+UrA80wihtprRNiLs6zz257PkWV1ernTJWiBGws?=
 =?us-ascii?Q?rBT8V1mY2s2sqOYQnjWMuqwGIv3maplWus0pupzC12rrijTofWpdN0tL4rb4?=
 =?us-ascii?Q?cSNXSNAafutGD3DkB+dFMq5g032/J86BqeCC37mgqzLOLcPcNHxYH2P/fmXj?=
 =?us-ascii?Q?R9TquzzY+frM3pbrANOFUrlsggOTvZQh4mGDrBXRN3WQX2uHfUhHHVoSDBTC?=
 =?us-ascii?Q?9ZpNlJ7cAC01R+sYkS21P+FE6wI5E24bjfXZIbKRWoCecm7j4bc6SdYO96MG?=
 =?us-ascii?Q?GHU+1QFijCndxczkVkxrjFxBFm1w5sLU4YRkqJCTQEY+wUdkY9uABN/J5ddV?=
 =?us-ascii?Q?4kjKGbXEt8oKczQShXddCEqkAySmwd9pk9H5nDQd1fv8x368ZzSiEI6LU7Vt?=
 =?us-ascii?Q?WESRXfLeoLRgNGWf4hdkloh4mOMAB3Mt0Xq+skdNCcTb0J0esiNt4oIBSkGJ?=
 =?us-ascii?Q?bwOVEZCRlzqVLUfXtoFjsdqd0r7EM/IZHBGUuaezEQ/+84WKXVSPE+ibnyXx?=
 =?us-ascii?Q?oICmxnWih+SqkrNYkDSklRtJ43kGYuE5Ci1QYODVa3mCQNDb715+oUhePKk4?=
 =?us-ascii?Q?5V1pcD6lzkERw0HTfid1cx7hQYl9sqFQlnzxwSaOrqc/qGe1nsZpPT9t7WSx?=
 =?us-ascii?Q?43c2nh/6sIKBtSJUl1brgeVTGQOLajPUTjuz9dGUNC0fhogl9gqtGlNVjqew?=
 =?us-ascii?Q?Prju7c76286/4NpjDkkKs0DPIo+gKzl0goprEUiRnnewmoZHEA5pnRDrwO/I?=
 =?us-ascii?Q?NtSxZSjsPEhp/po/ZG+Sd9fBDqqgXvS12UbqCGRKTPan6Qpv0BkIvwyg0mF8?=
 =?us-ascii?Q?/TLQIrXDwQUJvphEZBfYJzhMEEATVv204oIz5hEQM4XFoG+IU/l31eJJf4Hs?=
 =?us-ascii?Q?CtJudEajd713u8oqfhA2ASoQC6Xly+8ZIY1SqwbOkLizMXUMTv1Z1skOpSQG?=
 =?us-ascii?Q?4CdekEMQScjo4bX+j3O1JqK9y39ia/kh2mYr6DudDCiJM/9HNhm+RTmJkmwD?=
 =?us-ascii?Q?Jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffe4c593-34ca-4097-500f-08dcde6cc571
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:49:53.4012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5XCS1qGVVK5Za3G9zAT2EROY+kqsCGLys6sSi0p325yUc8Una5zSdgDm6ECgz3g4QHTewe+t25PFjWBjV0T5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4780
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

On Wed, Sep 18, 2024 at 08:35:47PM +0300, Jani Nikula wrote:
> Use explicit casts to convert between intel_wakeref_t and unsigned long,
> to not rely on intel_wakeref_t underlying type remaining unsigned long,
> allowing us to change it as needed. (And yes, this is indeed preparation
> for changing the typedef for intel_wakeref_t.)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index f5e7eefab2f1..32aa9ec1a204 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -982,12 +982,12 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> -	intel_wakeref_t ret;
> +	intel_wakeref_t wakeref;
>  
>  	/* Catch potential impedance mismatches before they occur! */
>  	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
>  
> -	ret = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
> +	wakeref = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
>  
>  	if (i915->display.audio.power_refcount++ == 0) {
>  		if (DISPLAY_VER(i915) >= 9) {
> @@ -1007,7 +1007,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  				     0, AUD_PIN_BUF_ENABLE);
>  	}
>  
> -	return ret;
> +	return (unsigned long)wakeref;
>  }
>  
>  static void i915_audio_component_put_power(struct device *kdev,
> @@ -1015,13 +1015,14 @@ static void i915_audio_component_put_power(struct device *kdev,
>  {
>  	struct intel_display *display = to_intel_display(kdev);
>  	struct drm_i915_private *i915 = to_i915(display->drm);
> +	intel_wakeref_t wakeref = (intel_wakeref_t)cookie;
>  
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
>  	if (--i915->display.audio.power_refcount == 0)
>  		if (IS_GEMINILAKE(i915))
>  			glk_force_audio_cdclk(i915, false);
>  
> -	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
> +	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
>  }
>  
>  static void i915_audio_component_codec_wake_override(struct device *kdev,
> -- 
> 2.39.2
> 
