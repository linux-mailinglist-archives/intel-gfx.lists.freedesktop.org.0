Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA37B89BFAC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 14:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E9B10FE70;
	Mon,  8 Apr 2024 12:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cH/wFVXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DECE10FE70
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 12:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712581161; x=1744117161;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qp+FK7pw4UzkzQnrk3fvi55x6VLKoTzghllOuZKfbMI=;
 b=cH/wFVXmIiyKLllKWlfMQ+oyaEGtx3LnRkp88wCvIllOfg9OL2O11mVN
 lz0LiifMt1e8GnEaDHI4zUcFGlK2v03XGIE7dgASNDhaef10sPc1qkhuk
 Wy68hIvVPM4PJAL0O6HrE8GT1lkSUwwElHZqjxvCOc10kUlanb80vP6jT
 b/XXz6ym/XesE211CeOKRFGC2M0+GP1Fbd/KEp1pDRHo23tfHrbTVa0dS
 eYlVAQY7HcV52EmqI9Tx87k9tKoepiuWP7yhUrukPDPvRZS2D32i/NSs9
 sG1jUf9sCucLIycqIRBoX+fXzESFZ+EfIWXusaxgzAlfJkPycZkjHX+om w==;
X-CSE-ConnectionGUID: KhrTa7rYQiWIpBgEhYa8EA==
X-CSE-MsgGUID: kbibQnDTTW2MM/Wthk+aVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18999038"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18999038"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:59:21 -0700
X-CSE-ConnectionGUID: MoIvxbb6REWao7c5VhHEnA==
X-CSE-MsgGUID: 6GmKhsooRC+vb8tFZq1e9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="43043182"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 05:59:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 05:59:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 05:59:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 05:59:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGTSP6aC0GsXyQQexlgDHl0GHbJfb8NNo+G0hkw87h8KL+rIAUxEHI0GYg7YxsPbH8jUaCAl362ZimqrK33fVx72ar64TZvQQF1B35b1MqSN4/wpTrEJJV8F+4gBxv/6YSx8x4CAu7W3lVfx4Mj++srZyp5dFXR2OsnI5CP/h+Vvr41yXBz+Ph0icd5D8o9RtsMvdlXmtYZilSul1AJnA/TyZqDOvhHuIiVotRcEPpqrFEyUUrs5gtSwFpXUkaxhEhYnGq4BRpvPh3ft96DrB6Vt0QUE80C5gmwllrpT1Wf1JcgZ3eFEY9noAGgF6z+lcBvsNJDa0rQtac3PkP6HuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McxbH29LxvlacWwnAviynbLW/0Q1EJZCJ450MSb3zrU=;
 b=N7ytus6wXuotZCoD++ogoHECGmcP907L0aIy0axkPG0hiQUlGOCM0ekCMkZqIxJNOuIBpltV5N/Hm7SZ+xKHRm0r+eCy2ibXSvxBdjJpVu9XQC3g17pHIwXi2LEsAe7ASyRbPEkhYWDbG/UXNH+TY8eAnk15/3yHzFw4VykouUZP61cGzdRpAsY2bDWpicyb49JNRSMEJ0y/JJZUdj9HTrJYBc5VNt7cG0A6utcwdAXezTl3AQF3W57NAo0qcgwNQtAEwM1DMZo6qV4CIQB45eS2sr4EOGRT0UmP2Ndkp8INh/tM86dAGicfwnid0kD/0pdgLXgdrDlEKr4d2HBdhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5243.namprd11.prod.outlook.com (2603:10b6:408:134::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 12:59:19 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 12:59:19 +0000
Date: Mon, 8 Apr 2024 08:59:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] drm/i915: use check_add_overflow() and drop local variants
Message-ID: <ZhPqIejwwbEppXUr@intel.com>
References: <20240405202625.2525671-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240405202625.2525671-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:a03:254::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5243:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jq53BJ5wPpH8mv9F1+Ff3uB+/rmr+RT3WUY374vNUEkrg+1kPAnQozlODcoGGQuRdruGTj3U4kf3sLGm1gqO5vRB6CX2dUapEmWRqfeGUlkqwC/XOjBzsZa2mO8EW4eP9TpWdE1HErkXy939o6CyWlR9k2N1Wd2GYqH2MJBeepBVFeOmVQthmAXsgVpAydSQtkci4tkr92268w4+D789FXxhFuq/t8Rx8RWW8vtdWTe7J+w3dG42cchMVeUqwhJzRtQyrQytCkYZkN4JyBZuhMv9xeQp8KzysQNS/pM2bcQUVaeXKSbdGQ9YQ72IZNZ602oyYtHsBppx+30+d+yC03UQgDXc6bHnCjg1G3AjV+nQGL71AjRBGP2zpsKts6WGAxp7tSGTwevHFaavq8L6cYVQX3SWQESnxirBtmzwDXqFyY1oV9KT+mVQJxzLpvl4JLgPFKEUqyBLe5B/lKjryC1f7fcPupdVXorb8p4PrLFXsQhacY01iIqexdId3X7p/XHhdZr3P2i+8PsuPr3dFc21nLU3NbLJY0A4k5OnrVwJKEeZ5AJO+BkMqRzyWBrFqzsiGEZcq0YMGhCzNARFGLgOlDV9GE7zWC2xHmu1MRqL9WpQvxPlfusy4rWei4G+60d3HjQoj5cAiqOOxdSWHeHDqoxZykVjOsTV/fd4aXw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CmiYmpA/Gwy7ly098NXTatYWCHWLhlkeTq7pNCtu5u4bw1ZMZaxbbHlkpRi+?=
 =?us-ascii?Q?KRSVykRELIkkKMzk2CUZphRakA56q/tyACeJ2p4LTAvESKQKlcQAn0mdUiw7?=
 =?us-ascii?Q?Gf0gJOxI4NV0/E2fPJtcfv2TKeT7leIBVgk2MGtwoRhZPaCdlGqbCtxwFjsI?=
 =?us-ascii?Q?url/hF/scRfp+Z2afkOHgByhshYaHS/0uPDCstpnkKwfyahATWv5jgBW0D6K?=
 =?us-ascii?Q?RpXj2Nyk1EJNiCnbnehMItqgPzy86PzzQ/6K7zrs3zfd5lAMPhpAv47jZiwe?=
 =?us-ascii?Q?+/wfHhb4DIdU+xK+lQ0SsFhoLBDEBYs9me0ZJCjJ4x4Xd+iWG23KmuhiEBL+?=
 =?us-ascii?Q?+XhXYQwI+PqwMaF+b6iF5JllCpXw5dnquEzW7ok3wk8WUZfthlU7wLNpiEMI?=
 =?us-ascii?Q?dK/pBgiWJdL593NeX5C5qZt+uCLkGaB5U4BvLJ9oSBVa7BDZmSO/UECzSWHu?=
 =?us-ascii?Q?qhBwWuJKhV3aYUSyLKvsqt7IUOtRJ8HLSl3ldRL+q1zZMB/vAuwZYhNerHDi?=
 =?us-ascii?Q?9yQBWsZu1cQIykUxGn8DuMK43pNUZSgFis5bfcCtrrMAk1cbFmdX+wo570xO?=
 =?us-ascii?Q?Dbmhvz2zVW3+GgA3zOOhyz+oTqGb/ZiRyv1XN8qZhX3y66+fjWIZrpoXv4EC?=
 =?us-ascii?Q?ef5eObYgGEIYWKe2kdRJ9lqYTdwo5gqNBP/ULz5SIsFi0g3B9rms3KShbQKm?=
 =?us-ascii?Q?Wu/YqMU2yiIwLnl6RK+YObywNt1pVmMfU0yXw2qcvwH2vmxOO35gMu7Gh1Ii?=
 =?us-ascii?Q?IwO5eR/4FE3TVOMEPsG87VACX0lMO6rnf/w+2I/eA0Nd+ri7Ln1nWu1L591k?=
 =?us-ascii?Q?r+kXslHxbygejjOKRt3rA/tWW7QFTzulkqCWBrkDA0WZgos1WmW2bHbFy8e5?=
 =?us-ascii?Q?SX8jBYW/rU/PCLtV/rnIsBhWEjkicEeYI/1f9HPx006ciKbjQkMjcaEYIHgL?=
 =?us-ascii?Q?ZUlLNHOEB3UkrCfa9kmjSJp9on4nMC2KiBPw78JfNB6PdJmn1nSROIE+DNDp?=
 =?us-ascii?Q?7VouAQpVmjwkp5LGFmSUhcgaOAHgKfosqhHTUXqBrVXrLoAWiUDzFU5NQ4nI?=
 =?us-ascii?Q?gcw2+26FDW9ea2Jz5NQ4pKmWkBcm1DHnIqaEqGu5CjuUMKqqIvffFF2U2iwp?=
 =?us-ascii?Q?YQ9cV1U5qTHM6vI6PGPwiJdHqdal/P8KHaylVoItRqDbfwHQ41ap2dABS+Ju?=
 =?us-ascii?Q?tkw48RJv4t9zLk28YciPOYSEQZwxDcL/Ldzb/NjqPz1aXhyh6lzFsWXvfiTZ?=
 =?us-ascii?Q?KF5WosWA1z97HhJRe3Jt+mKz5OKjW5WiST0AtXkP3GAvONwNi2r9wjDl8zfc?=
 =?us-ascii?Q?D69G8ETcAqoqkQjpyGjtROkSqarxHsC0ficxcgkrd7MpAN4tOoYmt9LP2CHL?=
 =?us-ascii?Q?0RWqYkTQsJ5lJFIUcP7IyldvVSIEWVNp//hR5igDZZy+YmB4fb/bv1uaXqA6?=
 =?us-ascii?Q?RJ2avP+q+sb67tRPOlio/0wEadSEOptymWcWkHEcM3V1MkoKdV5A3plxtTnE?=
 =?us-ascii?Q?/tX37d+uin3Vn4kaSP9rcNmdTi3n1IAHcvNGn+305eI/MbZVU6BrH5jGLja4?=
 =?us-ascii?Q?IzElupnWYShAMUTWklrI5YrCPbHRKXlQBuJ4rar6u5NRMyzyz4MMcT0/cIlo?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d147e255-8979-4af2-f0d8-08dc57cbb3c0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 12:59:19.0179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EDRilttMcxhYk3G84Gkk7H/E9l/sSsNCt2j2VFo28myINjr0fIleMomzQynGjqHHgxbezdnDbqJWRn8T9tEVoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5243
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

On Fri, Apr 05, 2024 at 11:26:25PM +0300, Jani Nikula wrote:
> Prefer common check_add_overflow() from overflow.h over the locally
> rolled versions of it. While check_add_overflow() does require a
> variable to assign to, unlike add_overflows_t(), it's still better than
> having multiple versions around.
> 
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c |  6 +++---
>  drivers/gpu/drm/i915/i915_utils.h       | 14 --------------
>  2 files changed, 3 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 3ea6470d6d92..86b443433e8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1106,7 +1106,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  {
>  	struct drm_i915_private *i915 = to_i915(fb->dev);
>  	unsigned int height;
> -	u32 alignment;
> +	u32 alignment, unused;
>  
>  	if (DISPLAY_VER(i915) >= 12 &&
>  	    !intel_fb_needs_pot_stride_remap(to_intel_framebuffer(fb)) &&
> @@ -1128,8 +1128,8 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  	height = ALIGN(height, intel_tile_height(fb, color_plane));
>  
>  	/* Catch potential overflows early */
> -	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
> -			    fb->offsets[color_plane])) {
> +	if (check_add_overflow(mul_u32_u32(height, fb->pitches[color_plane]),
> +			       fb->offsets[color_plane], &unused)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
>  			    fb->offsets[color_plane], fb->pitches[color_plane],
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index b45ef0560611..06ec6ceb61d5 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -73,20 +73,6 @@ bool i915_error_injected(void);
>  	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
>  		      fmt, ##__VA_ARGS__)
>  
> -#if defined(GCC_VERSION) && GCC_VERSION >= 70000
> -#define add_overflows_t(T, A, B) \
> -	__builtin_add_overflow_p((A), (B), (T)0)
> -#else
> -#define add_overflows_t(T, A, B) ({ \
> -	typeof(A) a = (A); \
> -	typeof(B) b = (B); \
> -	(T)(a + b) < a; \
> -})
> -#endif
> -
> -#define add_overflows(A, B) \
> -	add_overflows_t(typeof((A) + (B)), (A), (B))
> -
>  #define range_overflows(start, size, max) ({ \
>  	typeof(start) start__ = (start); \
>  	typeof(size) size__ = (size); \
> -- 
> 2.39.2
> 
