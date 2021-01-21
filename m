Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACB42FEC2A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 14:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 481E26E8C1;
	Thu, 21 Jan 2021 13:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7BF6E8C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 13:45:26 +0000 (UTC)
IronPort-SDR: vaD/5VQNOEWHxtYkDXu+ic7mievjY7fceYFe5ChYA9iEmIq1WpIik38sF+kR7sW3TOjG9JDCH+
 9Rs0II+sq3uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="264084918"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="264084918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 05:45:19 -0800
IronPort-SDR: UxiNZfO81eQqu7baRqbEv4TICYfwxsqMp9GyRG/nPqBQALbZT3m0+XX862ehEjRjYvY1C3NuUc
 RN12SbF5yWPg==
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="356471397"
Received: from declanmu-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.25])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 05:45:17 -0800
MIME-Version: 1.0
In-Reply-To: <20210121132558.2893-1-chris@chris-wilson.co.uk>
References: <20210121132558.2893-1-chris@chris-wilson.co.uk>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <161123671371.35611.15857856708687828724@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 21 Jan 2021 15:45:14 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Add missing forward decl of
 intel_vgpu for HDRTEST
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2021-01-21 15:25:58)
> ./drivers/gpu/drm/i915/gvt/cmd_parser.h:53:44: error: \u2018struct intel_vgpu\u2019 declared inside parameter list will not be visible outside of this definition or declaration
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/gvt/cmd_parser.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.h b/drivers/gpu/drm/i915/gvt/cmd_parser.h
> index d5e95b7026a1..416d345e2816 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.h
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.h
> @@ -40,6 +40,7 @@
>  
>  struct intel_gvt;
>  struct intel_shadow_wa_ctx;
> +struct intel_vgpu;
>  struct intel_vgpu_workload;
>  
>  void intel_gvt_clean_cmd_parser(struct intel_gvt *gvt);
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
