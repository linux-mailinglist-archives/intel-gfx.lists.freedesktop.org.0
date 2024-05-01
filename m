Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D188B844C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FB4112FF4;
	Wed,  1 May 2024 02:20:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3MUDvbh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817EA112FF4
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530005; x=1746066005;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SRzoQUo+43cEVqEJahjarZBTa1JKXpftOXIXAycu/O0=;
 b=H3MUDvbhaaVi30/iMou3DrOHo9ggMuwAKJ/ktrlIU0L2z4SgD5vh/huh
 Mb/fo9bm8kijO4vIune4KHcaeuyoC8akTSYZ5MoB+CqPG3d3gXqNUvdfc
 9KnVqaz+EfrBpo1CElrqCO1qUMFlfRj6KhClZbYn6QlVJA6mgbtPxrk3q
 MrgI3Y2sM8HbLvMUk+v1zfEdED0YSgwivffrvOE7qXzmhsZbFz6HlT6oh
 aTrUuL2/0LkdDGgaOW9an3VbamqJeotdb521wrI9J9ZYmK3DrEhgc9wyI
 e4n/iwf4TmvYLj/V4gLKKmRDpmxMYkWAnTlbreqnuEkjheqmHmb/IRKdF g==;
X-CSE-ConnectionGUID: dIM9uF/QRHi4w8qK3T+2FA==
X-CSE-MsgGUID: vELxdNFpQpGgkJaj+CvnSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058662"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058662"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:20:05 -0700
X-CSE-ConnectionGUID: sXrslv8uR9aee6VmMxu1tw==
X-CSE-MsgGUID: /v/S9Xc3S7eLUHvIMbi1YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27155603"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:20:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:20:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c11TQ0ZSdNDnwyQ6W+3cajXIsBcX+5FUlWyJgO7azwG9cIeFKa6PvSytzQHLoqyW/OoHpVCeEQg2IWo36Sitx6Bnx/ybtZET6JcPzjhbAf9JKe1zDZHoJzScI5WGOxBE5UgQNL3RGSMl+LjiQiMJmbB2USGpwMCuJCtm4d5dKyQVzEgyfr93TGQ7h+1oKM5T/rjIA/Kiit9cPGIh2hhTg5/Ge3CgZLzilQgIUlyoKSDBcHokX5ratkJWSbsBSaap3R72RvPUwWnCGRvwabVoARYXhBgR/IubwwVx4Y/8pL/SpyJnduMLjG8zSfnLnldttj2t/iRAc2zhZUk/5RO+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zSb2q9QuE/F68jrB7GMVu6yw/VPhx43dhm6kp5wQVrI=;
 b=N7xGPnQjgCdI+w7AHNDkLYFRICIN80Y+UK8TTKby5XA0DObZusYCd7+UHNH5I1/Pd3aX7IZ/riMblN8O+AmjO6WRtmCdb4PK6UzQnHufI9tMiKZYb24qF8yMbdAiOgHwOSyDhrLC1kR+KnsRx/Z69zJtJsaM69v6mjlwYy28U08ZJdI/pjfRMNKID2GC+sdk+1BWhsZs+fA/3yuTFk+SJAQc3TJLdJRUHvwwfmW0wYHmSWvO9LdrRZElRdW6+DP9vUgwEwXDx+fSPU5ibv6a8KkyIm+r/4B0fq82U5/hz7c3CXMhECiwbJYSl3up9K/vhmNj89W6ZvWWsTo3y3iy2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:20:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:20:02 +0000
Date: Tue, 30 Apr 2024 22:19:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 09/19] drm/i915: pass dev_priv explicitly to EDP_PSR_DEBUG
Message-ID: <ZjGmzXQ1-QyxCzTw@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <187dd49632d46e67705bd258ed7f9eabdeb108b2.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <187dd49632d46e67705bd258ed7f9eabdeb108b2.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0053.namprd17.prod.outlook.com
 (2603:10b6:a03:167::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 34ea57ea-8a21-44f7-da53-08dc698534e9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0xuLpF2hGnUGiu+9lq2IxRFwcqoR3qTA3NbjkBQttES+NDxmEMRRsCaYDsTH?=
 =?us-ascii?Q?3fvkpw3RkRMmkvQov3vSKCfnjbfHcgE2C+iUt0Qtw5QrOH7yXDc4XtZ4ftCG?=
 =?us-ascii?Q?qMdo+O3GlL7rluZzAuC7zbO0VbOs0pN3dKLYYOQCoLjDgF1tatoR163WWnIX?=
 =?us-ascii?Q?tAPdWhKB8LgexjSQjn+m9ymJBOpRcSH/hOjk/i6RvsWb0sXS99cGtrDjC0XM?=
 =?us-ascii?Q?Qw5qC4aTr+mBWuDlbSjwabvW7a9B/er9xxExerSa1wGE9yZMFdKcz/+sccgl?=
 =?us-ascii?Q?VBnee7u+vLrna5TVbdeDTCAcYzG85aHgHQUbUxLyDVhekT2zLGLMaS5JFGvY?=
 =?us-ascii?Q?2iqu0jJV6SBJHff4mR8QvEH4JhNNI4BEYaoMqVNKB9+kzh8Yr46gN4Oe5K6A?=
 =?us-ascii?Q?47BmvySHfBlGn4+oXWpckaBId+U3Nc/FdwPZN5zenhWaOKdJfzOBnHIHU+81?=
 =?us-ascii?Q?CT/gNsEnlnRzktzFeVPN3+V1lOQnGwqMCXW6ep5ga4WMtXV4AOlh8cd3WkAc?=
 =?us-ascii?Q?PqTL/qKCL31XUWx7rbDPpMe+qtW1qIGxfgr8HfHGl6Yf1meibTKW/jFWh7d9?=
 =?us-ascii?Q?Ff80ADIaTPPNDiHqbaMpOUEeQkwwaIRLfzdHY6xWoHNjMh2SYwFN17UhB1Fh?=
 =?us-ascii?Q?V7VejXfsPq7L0IEvWay9BNIsyHAGWfDu/++YtI5QpkM5TFlDMz8KNhhlANa3?=
 =?us-ascii?Q?vfmw3WoPb399I3ROGvHXM6J7HhLoSoVv94D+Z3R9OpDdpi7VFibLjvTBXj1v?=
 =?us-ascii?Q?ejtW7RrAN3fXNL1b+PmqB5fFfguwc/X+tPo+vMOCrRT3Akym+9/BJmrf3hsR?=
 =?us-ascii?Q?adFzMtvy2h5yOUNNpluXnEcYPYi6KU9xwDc2f9CknRURpJEdi6vRsVohGzQn?=
 =?us-ascii?Q?iHFdKh+PnUyvgT0fx8qGHYqzPH/ycz59OZXV2YPfDAqhTpUfvx8D/IozP4KG?=
 =?us-ascii?Q?HteyQ8F3X0uNsdii+X/eTUuvQ6mbO7Nw1iggtXdUY9iDcarW0XW5022FRWjW?=
 =?us-ascii?Q?n4xEzXr0SY0W11bfeqdiO6KBajXQRT7g/HwwNGZIYw8kj9bWHR0aYpvjGdzQ?=
 =?us-ascii?Q?mg5rhKvQenWcmsn0plGT0dBjrgNToBfVU3ypboc4PZeFxwlly3FXvwa3kEeO?=
 =?us-ascii?Q?yImhGSyb/+1zetf4phtYC3lZBYaHAhOPwG+/Tz/3x+7W0XavG//077e2gquy?=
 =?us-ascii?Q?1+qQVQFBsfMQEaixre2w8oSUsr8OOEsxbRaEPX9puRvhmFOCfJiCGrlBQM2B?=
 =?us-ascii?Q?O8l+wvsJHkMIGkUGBfVzUw7JBRLV+B13PoRuc1yICA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SKZKRKOQMo7zHwCtF5Bf0loM9EatLrI748zAHLSrHtI9cACCEb/YsEMI3P+s?=
 =?us-ascii?Q?K94WfJOqHCjLLTpAA/KyF16Sd+Eg74qlXeiti7cUBBqft3dQP+Zk6oEa5gzq?=
 =?us-ascii?Q?nNOUBNLnDK4LkQZexnWTxi9FkGin/5FEr7g9Ae+bS3bSqSV0tQlZAAidE1S+?=
 =?us-ascii?Q?3vr9oA/cL0Sv5SjRh14xkb4e4VgDod+Js5W1USYVYMaCJaXzZhvygDFQ76/P?=
 =?us-ascii?Q?l/jBv1GyTe0jqb8jFMlAbIGl+1P4eKuExwMBHgW8jvT+MrXoZQu5HucByy5P?=
 =?us-ascii?Q?IVFDUs1JJ4YICGzeep9aZgz1qzZfBFtYSUrfV9uQxMycgctaH4ENEgrlWYwz?=
 =?us-ascii?Q?9W/zPxuiDcHe5AqN2kPVcZZqXkgix/Fh0qGiCRUr+Bbw/KzDmcoIEdb4yVOo?=
 =?us-ascii?Q?BLPXBCfkE326k5ODb0yGcOXCCLYNvoUXK49wu2GEck5MiC6tcMMPT0Z6g+6Y?=
 =?us-ascii?Q?nS+kCddqnDLNEtt6b5sZxSOvvjUkRonoHPd33nyb9oxHZZ7VQjmlFanxeh88?=
 =?us-ascii?Q?/MdWjjZ/50dFuNP2FyPA31Mvma18/R1H7Q/j/HXWI2uKnIBkR9MwYPcBMk7c?=
 =?us-ascii?Q?eH6t1GO84a1g8f/w9z3sppiO7xbqqcYecN6ChL/iPaLYRdwPV5cSMmKQPVMt?=
 =?us-ascii?Q?SwEulg3MhK9DumOqNADrRlYljThBxZdfpoONQN9DQXAPnu+UhjiToio+IF2q?=
 =?us-ascii?Q?eBsmr2RrNQmWMMyuna/1eu7OyUCKaK/ntMmJRaa1/V1n0WSQPNEbgQ0taFhP?=
 =?us-ascii?Q?THrJp8giU8h0eZ/WEOxkQH+5CUA5HmUu9LbyCRA9MZs6Cx1wK9IXFgX+039b?=
 =?us-ascii?Q?OjgSiJu1+NXfQK7U2iZIS10yaC9ZryWSgOBhIzZlAvzDQtzVbS9YYk0fpPiH?=
 =?us-ascii?Q?VYxYBulei8kJ42g01mdYijqbjiIXtFWbdDWxfHVL631kV+LHFqXTvYn/Oppx?=
 =?us-ascii?Q?lh02GTJNkKuePYmMCWbhFah9K3idw22W15+8IrR4obudVn3zOCyUTW8UHZk4?=
 =?us-ascii?Q?EOi9M/ZiWVy7qJogTVUmApe+5xPRUS/arjN8Iq4/U1vCi1RhOo943QaveeGd?=
 =?us-ascii?Q?/McJID6N3Ans5sHJXnVztEUf9KaQNJNke22JGl4ljGlBA6T5v4V9Ci6j7lVL?=
 =?us-ascii?Q?dRQOfWuPOlH4Sw0A/5MJz/jWjK68x5nm8DzXMhnh15JpPZohC2r5VpRYvuxW?=
 =?us-ascii?Q?Fk+Af85GaiMs9CYNfY1CZfuNwm1qsvzbm2bFfj4un2HIoXVYk/H2DPbRFkM6?=
 =?us-ascii?Q?y/GLY8FVH165mg55uNEKoObzvLhRoD2JaH4XK5/exEiUqtV+rojH/qIccB+7?=
 =?us-ascii?Q?RoKqRTz9koEF9TvRjWCQmaoFtRWaPyaY34a3uM/ePGvl+XkCx1dpWj9GlboX?=
 =?us-ascii?Q?rEMfOj6e+iz+0DVaENMEA1JqciIVjjyJbMcOGSpBRGuBMYjtlFhOQ4NGQmAk?=
 =?us-ascii?Q?ek0GAHxAX2/HvJWL2JagpiJq1zgBX9a/xEQC58aYaC3mnSb0otm9AJgiMVXa?=
 =?us-ascii?Q?bedrUQlM4H3kkz4E/q88bf/P7CAX679sw7IkQ5sx9YTzIoKEaGA7tklshuBD?=
 =?us-ascii?Q?s9aCSBwwImfXUeqznLGamGcrEkVYpVhPNUBb06055AEmrQrg6uHaCe9Y7VYK?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ea57ea-8a21-44f7-da53-08dc698534e9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:20:02.1258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k5z5ZnbRogYmRx2KTlGZfYU75Zb7sFfCBRugTajAFlgyFid44d7PWYOEnjgH7zaLP8MRM46RneTkGf/jUixbLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:03PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_DEBUG register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 162dd07c243f..fa1fd04d3b4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -278,7 +278,7 @@ static i915_reg_t psr_debug_reg(struct drm_i915_private *dev_priv,
>  				enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_DEBUG(cpu_transcoder);
> +		return EDP_PSR_DEBUG(dev_priv, cpu_transcoder);
>  	else
>  		return HSW_SRD_DEBUG;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index ef7f32c98d55..a74705aedbb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -133,7 +133,7 @@
>  #define HSW_SRD_DEBUG				_MMIO(0x64860)
>  #define _SRD_DEBUG_A				0x60860
>  #define _SRD_DEBUG_EDP				0x6f860
> -#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_DEBUG_A)
> +#define EDP_PSR_DEBUG(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_DEBUG_A)
>  #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP		REG_BIT(28)
>  #define   EDP_PSR_DEBUG_MASK_LPSP		REG_BIT(27)
>  #define   EDP_PSR_DEBUG_MASK_MEMUP		REG_BIT(26)
> -- 
> 2.39.2
> 
