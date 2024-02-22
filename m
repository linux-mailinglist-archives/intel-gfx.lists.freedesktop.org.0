Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE365860535
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896B10EA9E;
	Thu, 22 Feb 2024 21:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ot+kr2yK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A063110EA9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638871; x=1740174871;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bdnS1Jyc1wSUU8ucnrjt/xUR3ZlHhVpwl+PzoBP5uj8=;
 b=Ot+kr2yK8gtqRMLOxjTYcicGviAQZnn4I4+rJqAuSOfVsNOuqPKv+v2P
 JG2Cse7AHSdce3ANcNjk4TQxnDo4fRWvJaB5HR6+q0Dc12xZ0xzK/3BN7
 7nU4yWYQzbUO+uq+NoG/o+wYWOU+QjzRIzC3BqIc99TdGrWC25mYFzx2P
 PujMUnXumu/BVKMCymLOlK8nNazvIeI7AsI7UJ8ekfVzlftC6HvHDV95Z
 eF922tKiZQQBzxleDE6aQRI9nQ0TRQv11kV4E5ibXwVouZ0DWqBzRjFzD
 IKx7cC2EaDufJ1E6PaVDw2yaE0od55rUMy6VXgsySl2ghiiwsQs0/bSJ2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13526005"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13526005"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:54:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5940988"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:54:23 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:54:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:54:22 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:54:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVw1GZRd3icjyg0ZtHpYmYkNg/qzkjFlj4Ca6SWfgYVP+j4EIYRnm3R3i10lKmbxMyLEXEB28DKQdVP/4yA6YmlPoxLe140wwxnqUAsmBq/FjiywN3P8zr410A0NG5k03Y1HQ5cVsxNhX+h9OUfCfDpIfHJBMJXk3+ZLwJ9oeaiQ5X6UL+nxXM6m3JoljZjkiiNWfgaDc/DIGg6U2/VgHy0wpB7JxXcesjDgyo8DWIs9w1UUlnLWubrzqD/nlJBuTL0hYHzBNXL5/0LalC+cr0Z1Fm1zoyKqpZBt3UiqdEDNflzvXCDqLtFkXSUT0jv6hskM7SMjr52vM8u4qAy2Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WWtgCFw6fqKDuMIbLXIie/4sQRKV4ehscQuMuee310Q=;
 b=NVsceQ0zzgOMryTR3Z1N/yzRD7hUrBBR0Nr25RPWuFVoQXI/qpS6k91yyZLh31AFz3278xRQ7+EUAMmSHxhfxNhPt4+ooMc9RYqUVYW7McNR3EKqiMf/pvig3AFKkoTCJUKtvCrBf5LldnIugReHP9M3wrx8OZ3gqyYyVGjxbK/7/fIUMw1dS7A+ryBNYRoP/6XoySFRLZlrIXMfJr9wFgRc5xdVHpMKhoc1g++3nGSZDiKNTISjvo+nh1iCs+xbwclVMfBQIK/3ccPbhiCvPaXXXN5D2zitjHoDgK9Fob5+kKe6oSyVSr4focFz86qpWAqlQGWwZ5qrq4jqrDo4rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6018.namprd11.prod.outlook.com (2603:10b6:8:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.44; Thu, 22 Feb
 2024 21:54:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:54:11 +0000
Date: Thu, 22 Feb 2024 16:54:07 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/12] drm/i915: Convert intel_dpll_dump_hw_state() to
 drm_printer
Message-ID: <ZdfCf75LfRW-VBJn@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-7-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:a03:333::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: aff15456-e357-4d33-f164-08dc33f0cd8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UtcZwaLemD72RGcOx8CvRBxC3i0oG4Y2jtahVmdE6bT7NlXIDB/C1/gyPDPQ5HebdDUrGQK1yG38Zif0JmdLaX6LvaizgqtRfuygKA513YriZwHOFfwXqlnBMdHXV6ERxFmh4504lfyQ/W2Goxr4Jx85eRj4ig7eHdfyhL0cd5Q4/FR3nIi+R55WbLpqw36R1dYLaXfjAeTT+QmfusNYfIn8+aayK7wIn01dXewT19LOAT/X6p3Io8P/5HK8lKtcJEJvfUDj7bZSIHkoVRbqGTlkV1kG+I4O5l3jrqc5DQxwEjAhN66K34ZkmXaKR5n6f24+5XFHux8TelmhB7zg9kKePkQIZBWn/yUQzT8FCANVyYQmusKdWNyImqQX9t8Kmkoj56OECuYiWwP0sJZG3+3st2KR+n2MrdGKsKKyuevGivYsp9lsF+3bVyiohh8Rj+XQjtHII9kkBurgP4FFkzqBYIWmEOlJvElXxuDukgUYDTMYJmhxpYFO49ZWGGBmfswhaHGB3EIBPOKsFXOUaHg/JEcJKdG75nKsva/7gbU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?jrmKMDBZu8anr/Cs+2HhCWS4h6GaqcsI0PZV/JEiAVpTc+RVZTpR0czooj?=
 =?iso-8859-1?Q?MMq1X6DAUPNFNd1vp+SpMUTB5j0VM6fr1UE1v4y1jBa7yPDbIAOF1DuuUn?=
 =?iso-8859-1?Q?Z5S2UtBqLbySah2ywkjTDk1FK1wbY/JBvxGc0Wa5viIeoU3ajCuN4Kr8Zu?=
 =?iso-8859-1?Q?nefN6TjxC+cxqGbbk4OOaWgTyVuzMCp4HPrgeVjy3b2DiG850JfHidw7yx?=
 =?iso-8859-1?Q?eFY2CABQt65q1LdYjiR3BCVwYjwMgQ1yRtxz067IHd2L+ZnaWmdTI1j7JC?=
 =?iso-8859-1?Q?1CAIAHv0xnPHKaRXmQhIBjsWIHKIQZHFSI6xupSrATSxYtnF0VtoAAQecE?=
 =?iso-8859-1?Q?XpDznyyJ1z6XmKr2h+BSi11Poe3Iq+GLK06R9kYBkxLhbsWAC0s40rH/Rz?=
 =?iso-8859-1?Q?Q4g1wGY7y9Y3BW/x20ZM5owbhjelt2Sfv+BeqSIuV3xGsSrG3HY3OcgxrP?=
 =?iso-8859-1?Q?/8ZIMW94CgKcp291+W8gffjxmnreQbf8Lw9XfwtvykmbCQtYelH2hJo7C1?=
 =?iso-8859-1?Q?tdmo7X22gHkSiQPZ9gcJtO6Wi5daIKZ8UuQ5FD+Mds7s+XrzhJDwhGJJHC?=
 =?iso-8859-1?Q?l9oAVSyqYFlT2mbYZ+EjLgY+sOfF4bNYiZT1XGZp0mnybl9vmtkozwR7PU?=
 =?iso-8859-1?Q?b/sD8PQeUL2gEVeLJ/S51h8T3GK76gOV70H90puma296KIZkMzpCI2qlgH?=
 =?iso-8859-1?Q?12/4juS6FHxTwFWuTcYurV/7t/M03RHzlzgBPswi8OjO9SfTtaHED+UiON?=
 =?iso-8859-1?Q?lDV+XWqrsjr5uS2YIWafI+qPKwdMYl/y4cJZxshSX3zXJUSzIEmwG0kWw7?=
 =?iso-8859-1?Q?kK1oGSA4+u1QrrGfMFFvMhQV5GXPW9QG3SzlvHQEzErt+BAUGKM6+EdqoG?=
 =?iso-8859-1?Q?hsZ2q1SDONG8et2p1oBDRrhEx5myyJYhqN2jAjaGGgT6V1E/WXj1KmekfV?=
 =?iso-8859-1?Q?Q8J+pRO88qSp/uvsIbe3da0nmMbV+KGkpRBqMTEEGAy29b4F5GYpRdNPrz?=
 =?iso-8859-1?Q?gljMjiKU99Og8Kp0A7EujGf0N2zH/Dyerm4Z26dA/gO5tVQi+2Cehts93Z?=
 =?iso-8859-1?Q?/xqHD6vBeCgoKdUk42l/0J9G8R9X+lBimqRjQajl0Ex9GOg3Koxzw+U3HQ?=
 =?iso-8859-1?Q?uhqrlVACcuW9VriEg/Ubl0N8bDSY0UGa/chmwjVwDonMnesFF1arg6XlER?=
 =?iso-8859-1?Q?l3xxPVvbXzBphMC9GovRR5tplVrG30LD8ssMsdYDcd0Q2fz/wUqAs6HWMO?=
 =?iso-8859-1?Q?P0e1RY9218k9d0b5oDrlCTQ0NNXKclm5NYmp4vS5rQCrNb4YyEfQ3EEn4x?=
 =?iso-8859-1?Q?SLwPG09mtQnljlnkWH/bT8DUXdP7oc1YzJnl/Z6WT4XnFLcZFonA8fp0nU?=
 =?iso-8859-1?Q?Aazfr0v7NoLjyk0S8aSRv6W3FgTDJpspShDKbzs8FOm6l1T+YPCtzAR/+B?=
 =?iso-8859-1?Q?/f6JyE2qIeFznZQH6NLtl9Fj/BRoobUzzkS0J6LyE71olyfShnQglne5kG?=
 =?iso-8859-1?Q?1IkSY4n7+gyHeO57E2fqAewDqND6b8G0qGJsg1BQd8wY49rfbNRbfdsG4g?=
 =?iso-8859-1?Q?rlcW9zpRCa0pyvk7O4hdN18LIm3fKdJxiYR5Clyp3HjwuQPUOId8A3JIbY?=
 =?iso-8859-1?Q?Jq6aJVA8QV6pTHEmT5v1FmicYoqJ1cONc99Z3S4tQmqY6ASijCDFmq9Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aff15456-e357-4d33-f164-08dc33f0cd8a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:54:11.5269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nbtvAOKhmC13T4KPNqQuyHhkt1qYs8V5ut4VXvMnheV1C/+oEhT65esBsWyow8CWCuqv0wGZp3FspiAcLrBPKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6018
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

On Thu, Feb 15, 2024 at 06:40:49PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Utilize drm_printer in pipe_config_pll_mismatch() to avoid
> a bit of code duplication.
> 
> To achieve this we need to plumb the printer all way to the
> dpll_mgr .dump_hw_state() functions. Those are also used by
> intel_crtc_state_dump() which needs to be adjusted as well.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  27 ++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 105 ++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
>  4 files changed, 67 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 4bcf446c75f4..59d2b3d39951 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -205,9 +205,12 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	const struct intel_plane_state *plane_state;
>  	struct intel_plane *plane;
> +	struct drm_printer p;
>  	char buf[64];
>  	int i;
>  
> +	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> +
>  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
>  		    crtc->base.base.id, crtc->base.name,
>  		    str_yes_no(pipe_config->hw.enable), context);
> @@ -356,7 +359,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		    pipe_config->ips_enabled, pipe_config->double_wide,
>  		    pipe_config->has_drrs);
>  
> -	intel_dpll_dump_hw_state(i915, &pipe_config->dpll_hw_state);
> +	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
>  
>  	if (IS_CHERRYVIEW(i915))
>  		drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e5010049d52e..d7f39ad84138 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4927,26 +4927,27 @@ pipe_config_pll_mismatch(bool fastset,
>  			 const struct intel_dpll_hw_state *b)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_printer p;
>  
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>  
> -		drm_dbg_kms(&i915->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> -			    crtc->base.base.id, crtc->base.name, name);
> -		drm_dbg_kms(&i915->drm, "expected:\n");
> -		intel_dpll_dump_hw_state(i915, a);
> -		drm_dbg_kms(&i915->drm, "found:\n");
> -		intel_dpll_dump_hw_state(i915, b);
> +		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> +
> +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
> -		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> -			crtc->base.base.id, crtc->base.name, name);
> -		drm_err(&i915->drm, "expected:\n");
> -		intel_dpll_dump_hw_state(i915, a);
> -		drm_err(&i915->drm, "found:\n");
> -		intel_dpll_dump_hw_state(i915, b);
> +		p = drm_err_printer(&i915->drm, NULL);
> +
> +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	}
> +
> +	drm_dbg_kms(&i915->drm, "expected:\n");
> +	intel_dpll_dump_hw_state(i915, &p, a);
> +	drm_dbg_kms(&i915->drm, "found:\n");
> +	intel_dpll_dump_hw_state(i915, &p, b);

forgot to convert here?

>  }
>  
>  bool
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index ff480f171f75..9542e62186e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -107,7 +107,7 @@ struct intel_dpll_mgr {
>  				   struct intel_crtc *crtc,
>  				   struct intel_encoder *encoder);
>  	void (*update_ref_clks)(struct drm_i915_private *i915);
> -	void (*dump_hw_state)(struct drm_i915_private *i915,
> +	void (*dump_hw_state)(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state);
>  	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
>  				 const struct intel_dpll_hw_state *b);
> @@ -634,16 +634,15 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static void ibx_dump_hw_state(struct drm_i915_private *i915,
> +static void ibx_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm,
> -		    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
> -		    "fp0: 0x%x, fp1: 0x%x\n",
> -		    hw_state->dpll,
> -		    hw_state->dpll_md,
> -		    hw_state->fp0,
> -		    hw_state->fp1);
> +	drm_printf(p, "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
> +		   "fp0: 0x%x, fp1: 0x%x\n",
> +		   hw_state->dpll,
> +		   hw_state->dpll_md,
> +		   hw_state->fp0,
> +		   hw_state->fp1);
>  }
>  
>  static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -1225,11 +1224,11 @@ static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
>  		i915->display.dpll.ref_clks.nssc = 135000;
>  }
>  
> -static void hsw_dump_hw_state(struct drm_i915_private *i915,
> +static void hsw_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
> -		    hw_state->wrpll, hw_state->spll);
> +	drm_printf(p, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
> +		   hw_state->wrpll, hw_state->spll);
>  }
>  
>  static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -1939,14 +1938,11 @@ static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
>  	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
>  }
>  
> -static void skl_dump_hw_state(struct drm_i915_private *i915,
> +static void skl_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: "
> -		      "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
> -		      hw_state->ctrl1,
> -		      hw_state->cfgcr1,
> -		      hw_state->cfgcr2);
> +	drm_printf(p, "dpll_hw_state: ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
> +		   hw_state->ctrl1, hw_state->cfgcr1, hw_state->cfgcr2);
>  }
>  
>  static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -2402,23 +2398,16 @@ static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
>  	/* DSI non-SSC ref 19.2MHz */
>  }
>  
> -static void bxt_dump_hw_state(struct drm_i915_private *i915,
> +static void bxt_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
> -		    "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
> -		    "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
> -		    hw_state->ebb0,
> -		    hw_state->ebb4,
> -		    hw_state->pll0,
> -		    hw_state->pll1,
> -		    hw_state->pll2,
> -		    hw_state->pll3,
> -		    hw_state->pll6,
> -		    hw_state->pll8,
> -		    hw_state->pll9,
> -		    hw_state->pll10,
> -		    hw_state->pcsdw12);
> +	drm_printf(p, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
> +		   "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
> +		   "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
> +		   hw_state->ebb0, hw_state->ebb4,
> +		   hw_state->pll0, hw_state->pll1, hw_state->pll2, hw_state->pll3,
> +		   hw_state->pll6, hw_state->pll8, hw_state->pll9, hw_state->pll10,
> +		   hw_state->pcsdw12);
>  }
>  
>  static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -4026,28 +4015,26 @@ static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
>  	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
>  }
>  
> -static void icl_dump_hw_state(struct drm_i915_private *i915,
> +static void icl_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm,
> -		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
> -		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
> -		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
> -		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
> -		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
> -		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
> -		    hw_state->cfgcr0, hw_state->cfgcr1,
> -		    hw_state->div0,
> -		    hw_state->mg_refclkin_ctl,
> -		    hw_state->mg_clktop2_coreclkctl1,
> -		    hw_state->mg_clktop2_hsclkctl,
> -		    hw_state->mg_pll_div0,
> -		    hw_state->mg_pll_div1,
> -		    hw_state->mg_pll_lf,
> -		    hw_state->mg_pll_frac_lock,
> -		    hw_state->mg_pll_ssc,
> -		    hw_state->mg_pll_bias,
> -		    hw_state->mg_pll_tdc_coldst_bias);
> +	drm_printf(p, "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
> +		   "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
> +		   "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
> +		   "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
> +		   "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
> +		   "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
> +		   hw_state->cfgcr0, hw_state->cfgcr1, hw_state->div0,
> +		   hw_state->mg_refclkin_ctl,
> +		   hw_state->mg_clktop2_coreclkctl1,
> +		   hw_state->mg_clktop2_hsclkctl,
> +		   hw_state->mg_pll_div0,
> +		   hw_state->mg_pll_div1,
> +		   hw_state->mg_pll_lf,
> +		   hw_state->mg_pll_frac_lock,
> +		   hw_state->mg_pll_ssc,
> +		   hw_state->mg_pll_bias,
> +		   hw_state->mg_pll_tdc_coldst_bias);
>  }
>  
>  static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -4514,22 +4501,24 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
>  }
>  
>  /**
> - * intel_dpll_dump_hw_state - write hw_state to dmesg
> + * intel_dpll_dump_hw_state - dump hw_state
>   * @i915: i915 drm device
> - * @hw_state: hw state to be written to the log
> + * @p: where to print the state to
> + * @hw_state: hw state to be dumped
>   *
> - * Write the relevant values in @hw_state to dmesg using drm_dbg_kms.
> + * Dumo out the relevant values in @hw_state.
>   */
>  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> +			      struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
>  	if (i915->display.dpll.mgr) {
> -		i915->display.dpll.mgr->dump_hw_state(i915, hw_state);
> +		i915->display.dpll.mgr->dump_hw_state(p, hw_state);
>  	} else {
>  		/* fallback for platforms that don't use the shared dpll
>  		 * infrastructure
>  		 */
> -		ibx_dump_hw_state(i915, hw_state);
> +		ibx_dump_hw_state(p, hw_state);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index cc0e1386309d..d4d97e40440a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -36,6 +36,7 @@
>  
>  enum tc_port;
>  struct drm_i915_private;
> +struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -377,6 +378,7 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915);
>  void intel_dpll_sanitize_state(struct drm_i915_private *i915);
>  
>  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> +			      struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state);
>  bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
>  				 const struct intel_dpll_hw_state *a,
> -- 
> 2.43.0
> 
