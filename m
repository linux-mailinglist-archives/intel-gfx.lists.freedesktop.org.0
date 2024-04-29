Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0268B5B32
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2792C10FE86;
	Mon, 29 Apr 2024 14:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOFG9jxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874EA10FE86
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400753; x=1745936753;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=glp2bR3F7xOx/n61hX1pD6zlfEADdKJ74rQXqSGrM/w=;
 b=IOFG9jxv8Xd7N3T+W0vI9fWLAgYcGfrV+B100hxXfMBDRWyrsYyMrSv/
 XhfatAGaQgM6s6Sq6D0/nS9ZfuOHathYhOUdeSopgGywTosE1xdYYHWXD
 4CnzS80+yBaUIfoFxOW19pc5UseoRLhP+vwoGXdAKyrxPJw7b7Fviw2dg
 9YqpkShs+OUxSLquJkdiyAx/pFBsmohlYiRq+MZesVKzQxMtWRfzXKdW4
 0QMMQ3OJjDy4jDtFBX+D0jOOqyvudSS0CDC++l0TW51rVR8CyGn9hq7HB
 2XqUHI34hG55wNok4PBQf7MxD+CJ0+4x+JLWIkQq0OwG91rI0SjYIS2/w Q==;
X-CSE-ConnectionGUID: ibpU918uTFaOmnvY64YNIw==
X-CSE-MsgGUID: 7qHcHMJvTti0q2zt6jgEtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9896186"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9896186"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:25:52 -0700
X-CSE-ConnectionGUID: KY0uPVOuQmiTIY6jrqxRTQ==
X-CSE-MsgGUID: SZa4zEJhRXOGA/T7SWgApg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="30772734"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:25:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:25:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMM+UVhawI4SgCQ9ai+CRgh5ewxocb0gSnNaqvnLoyrelNMRY6xzpRO0u9e/f3FbuqCHH05bpqziKBU6wBFMCXg4G09ORYJk3cBLcT722sCgJRXaKnERogOD4TlT8OIzsAmVd4tjWRX4ACKm8UWVBwErO2sDnDtv+cQKQGGvdrtNo9nuYiTKE0D9vGTzXmU2I0i5J+cfJ7vsR5J2uGefiqfCQlPb7IP+WBYytK4HW6ww3L+W9wUBnU0xg5/2JQrnPGABttX2t1wuiSHuGtoOjANXw4ImNpZp+qGCkVjAogX9/XjiwSRIWoDQjCjDTf2sa88mr8uNiYr47M8hRoJqrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1anlmeev8OWvMUMg0Mg5ipePsqcvC+k1IXN0+hiics0=;
 b=F9DVfoZZ7OuSFcS9uVS4uZi2jdxjhXXC+xFUsJkvgpa+zYCzG3mtI6ViZzZXxAW+KViho1LY/EiYDysWuRFRWH/cyQHv0Iw4sE/6DNPkJNnEYLCOwRmf8C9AG7avi4JFiWhBrpUucJcTQgvQDxd4lze2iTDcc7i3mdA/m7SG6Yn3lgUfDbQpfCju+3ATT9I2JbEV0TRtosuUhU88GxLZ9y3lRY+fPa9JMKnkcw423uDzt5+WQCVughqJ7tSYGIMGLh9wyZcnvd2jv7yXabPeC3dYawWQUH2IOS5i3Ug+wqJp1RzUUkzqGpIYCub+cfqi9DxtCE/XDcq0xbyOyv6elA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 14:25:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:25:49 +0000
Date: Mon, 29 Apr 2024 10:25:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C22
Message-ID: <Zi-t6fdiq4NnLL8i@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <0a07f615c574040094b37c861078e41daf53c706.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0a07f615c574040094b37c861078e41daf53c706.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0012.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: f2c75fd7-dc3e-4ec5-5069-08dc68584432
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MUSabQE8ZdvAiH0E+VO05WRIOJatqEWUXG/PVGGP4IlIZgdwNUARMNOeQmQA?=
 =?us-ascii?Q?+KrMQ5EeYwphZU/glDXTcHXUdTNoIevjAMoLVdb//Q9g1QMLcVR2JsHRyiSS?=
 =?us-ascii?Q?M9NzJhtDH9Tn3U/DT8OqyQSYLZzNki1W8yvbQZO4mmvNTJEvS85DqCu7t8rU?=
 =?us-ascii?Q?Fh2pu8KXkAuEXHbc85S8yDAeGtsAzDq5HLBEYIEmm4zPFO4pLu+jGvZsBKpL?=
 =?us-ascii?Q?uOdTk3dc927D3II+682LxJRQ8cfUsyAnaqI7Wh2o6uO4MI/RJSpl6yNWOhWW?=
 =?us-ascii?Q?gKcftAETXjk9pLOGFcxA2YTBTILrEdD0MbSTcQtoZDXyZypD7HO11j7gKe8a?=
 =?us-ascii?Q?yhe0Ea7Ig483CxGfBnd63SufS7ECNwdBFj/CwaMWQibjCJosevevF7uEs2bM?=
 =?us-ascii?Q?5W6it+29W804SKDitmQV7RItb5wu4W7hGDGBF/JANSbAAZtwBPljdynNyYYW?=
 =?us-ascii?Q?2FBkq77eVhNEdUs0h5QC9txzbI8VM8VfkUIg8+5dSpRd7Yfk0HBtS4UtuwTd?=
 =?us-ascii?Q?uzFfz3Z//ywf+oURYB0YLwERGsj4GY0wAdlwUJJ0jZkgfXnXgd7R10Uy8Z/3?=
 =?us-ascii?Q?vHWJQr+AT6NaTWiRQsNYuf2d93zsnMgMAT/hXXFSskewKVwrt8VsPNwAEcfI?=
 =?us-ascii?Q?+mmkeSbRNj9ca28X6H4jFrx8CInZVoivmHILl7Iwb+HORWuM9CpU5UCF5ZNG?=
 =?us-ascii?Q?mUHaLH5Qj/e5dy1SB5xZJoHCM5vdK3E905K3jDxGm8GOd6h0BwZM284cEpRM?=
 =?us-ascii?Q?2YN5DXYPW5JBYrm8ZGFKrAGMCdpf4TPhD+1FFG1EURxMNH771I1LuVaTgxFq?=
 =?us-ascii?Q?u4lqRgqvxXK+3OqXIf+LxVsA7u1PvjPROyueHiqS6uiXul9blSYhgytunu5E?=
 =?us-ascii?Q?OPxICU7NYOn8d94u//UbYX586J+CJITR7wj1OHkXB8RzaFUCEus9+2OHnTm8?=
 =?us-ascii?Q?8nDxvmucrycbHORBZUI5IhfDK7H5JZLu2Q+sthkKVUHXIlkHILfim3MKnOVv?=
 =?us-ascii?Q?vo46OtRWr5HYoUnb4Mj3xNLfokVKG6ehAA5VAH7dS24PLS5/SfwegZ9adJGp?=
 =?us-ascii?Q?sKVZMBKrxGU2/mYAGXH/GzzBOEvzsmqWE01pwtwiPv4q/Q5rGZw7pes/PHnx?=
 =?us-ascii?Q?Oz1DJhJEmToH9FHm4ax5U885AuhsR581zWfBZB+++zvfYBItoHCw8VUZBhWz?=
 =?us-ascii?Q?3zrJe58o9Kk0rAPLiyZi92a2vBSfKOXBamNS5emXaz+kzuf5H8qtygJy+Vr8?=
 =?us-ascii?Q?ivUxjIkh9rejL1pVNuKEdV9h24YPuJrjJLt53Pk2wA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FlfP+96O+PCK7YQFtg6XgWzBLKiSXwnM30IGGNI1+c1nt9lkcmIUj4DLmUNp?=
 =?us-ascii?Q?H5Xf3h1cEkxkSXqdThSon6zWAPee+ACJVR3ETQ3MdVn1uVGOs8i8HmEG5hls?=
 =?us-ascii?Q?QpVSfEcExmI5rHcCh8I9tT8idYqODmlD4VtLb35P1wvJ8AUx+59IK3kqTxrR?=
 =?us-ascii?Q?6b3/xFb+88JWly0aeD5TrAmOgmDp4NuGf1EGU6MCkW887Dhwi90nzSe6BgYl?=
 =?us-ascii?Q?GsOFkDKVpgOhn23BHOaU04qsiDrhwKts3RZ8dUH95iVx5J9FJ2oqJvQDnxw9?=
 =?us-ascii?Q?ppJTw6rX5enQDPeh6UgVoLZmy9TRUK6TUskhR+nSWujAjWwj2TwwWhY8g2J2?=
 =?us-ascii?Q?Z0QNc1mwRTRoW0LoHxLta6CMUpaN/mNaRwh3rvNUzagbiX+7kUQ636USZN5Q?=
 =?us-ascii?Q?c8vMIlgfowUkP4xFvXLtnSVYkMJgoctR1kOAXaukCGFHP/wBWAKx/mKlTcpX?=
 =?us-ascii?Q?xbIuHJ50+vGLj2ICML0qj/XLYdVb+bTt9c5JEB+V9uJj1/rEZ5pfTm0VRuUD?=
 =?us-ascii?Q?1plkaaIUMheclzQ9qdsriznHbci6zUwwDkmGJ7fOfa5Bq8pm4TfagktYjKr4?=
 =?us-ascii?Q?2xjmLCP9ledv2UwRe1CX+IkW8E9MI2Ts+6bXYMoz45mpTJ1Slag+zNg/1Az8?=
 =?us-ascii?Q?JshWRRk5kPF4hyhukHVF+HCVZ2AEH4GINMRK70t8v1J+J0xHShBfuzrZJEvK?=
 =?us-ascii?Q?Ndn+Bam7ZRxpEty6TubH/TuPTlNRhdgf1J3c/4Su2piqVQwAKlyKbpC3AbCv?=
 =?us-ascii?Q?gUqjHehh+57tr+UG/sNF3stagpvfIPORcm1TbmwvjXSsToN+wDy8iVBUeb/6?=
 =?us-ascii?Q?L6+A/KfjiyHcrfFigOURfS0jxWNWW/hkJaZirvB/4LSGXfKaQyg8g4cCPUlz?=
 =?us-ascii?Q?a0aFYOk38eyXsdpRo+4nQdM1GQcuFpWymwIzWrWoxFjqqShhQnje1+xcDCca?=
 =?us-ascii?Q?gfofzTOvApGuU+e8bXzt6xCpHhfUF8s/7ytXhDzxBMjPhaFvq8jDvpi2R11d?=
 =?us-ascii?Q?6YrFIpNxSNVvdeWCk+R84GNZQiu9BIPdFwxrx25orrUdK+UKTsBJMhzB4Txk?=
 =?us-ascii?Q?KYztkfTRL/deUg/4ivvpwX+xjs7n+ILfHC36VbvQ8sqM/6h66Vft3JUe3kHG?=
 =?us-ascii?Q?vCugK7mfU5i/LT8/wHhTUFx8TnofemuusFQKp+/GjLcoR0IG970bDJ+cDbBp?=
 =?us-ascii?Q?EQH8lkUtBb/zTeWN/5aATawkFiIK7R+8Lg7oU2nJdHhWdnfrdrj3eRkcEVQ5?=
 =?us-ascii?Q?OAtpBHe+4ZeDNzZPxNO6u7CH6O5KvNJ/0ANWHf4rf+aET7kHcl92pVzfFwFp?=
 =?us-ascii?Q?ppY5VPDo8WhScVhqvzoIWsHMxfso2QyWxKTFHVlb2jsq9LzOJH6qHLDYQ+X9?=
 =?us-ascii?Q?BoLnrStGBxUJaZKj2nxCSu664GtOeGmIyxz628lihFOM1KE/D9l9qV4pOmOE?=
 =?us-ascii?Q?RLpoyLLS5aVpY1uGGHPDxbTwFmbLoNmrfqeBfKWem/yWiuB2prEnoQGg7M00?=
 =?us-ascii?Q?UmFlY4WDAuf0Mf0UbdpMnKKxwtwIlnDPkvgri682cKaw3opF+4XBzx+Whnkg?=
 =?us-ascii?Q?f/XKJKDzXPgSX7Yet3jtgQw0biiRgjsJrH7uQc7vIssBgWZ55ZaQHLL+O1TU?=
 =?us-ascii?Q?/Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c75fd7-dc3e-4ec5-5069-08dc68584432
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:25:49.3338 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1WV6WlTk5P7XP89aZHSd2oXQUQ1z9CuODM799mJNmQqpNBTeAMnn3kgJgUAeucnaaMgkeyd4YGgJr6byFovdhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
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

On Mon, Apr 29, 2024 at 05:02:21PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C22 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index fc27c1bda676..d23163dc64d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -628,7 +628,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe),
>  			  csc->coeff[7] << 16 | csc->coeff[6]);
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C22(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe),
>  			  csc->coeff[8]);
>  }
>  
> @@ -657,7 +657,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	csc->coeff[6] = tmp & 0xffff;
>  	csc->coeff[7] = tmp >> 16;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C22(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe));
>  	csc->coeff[8] = tmp & 0xffff;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index c2e06ccf96c4..bb99ea533842 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -261,7 +261,7 @@
>  #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
>  #define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
>  #define PIPE_WGC_C21_C20(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
> -#define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
> +#define PIPE_WGC_C22(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
>  
>  /* pipe CSC & degamma/gamma LUTs on CHV */
>  #define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
> -- 
> 2.39.2
> 
