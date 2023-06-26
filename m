Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C3873DE76
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6115510E1F4;
	Mon, 26 Jun 2023 12:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BD710E1F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687781234; x=1719317234;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=H8dqRFtlr4xZqq0dkECqhl+tnqlCQ8m3jMcIwLihfB8=;
 b=fH5URp3aMywlLLeE5cb+krEu4+UxNbjPfIALUKTLAnArAB7GLvX99pD6
 28WzOGwpEBsCGqGdaNR+MkfYe5hhhI3eeotfpPIAyogk2hpIS+yBpyhvu
 JByax4EzToRQE6FS8PiO5wYwXjb1JSbzmzPNz5GN7fhgiMUaAd01JyS/2
 quXniTdyZQoLAeHD0+RLdR8+fDdK7vVzQWIikoI6jKfGQYxLCJPaGZZqi
 ZV+gTKR6YgnUv3zcCa6B5+pVeP7giypATgcd06zZ5hlUqnYSPaz9IYn/D
 hV+1ixQB3MyaOtWtC5JivsQVDQj/7bbiXmwo30N2fOgvrXk8gXgTI3TfB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447636840"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="447636840"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:07:13 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="751055025"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="751055025"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:07:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 26 Jun 2023 15:06:55 +0300
Message-ID: <87r0pyv34w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration
 for struct seq_file
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

On Mon, 26 Jun 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> With change [1], visibility of struct seq_file is lost in
> intel_display_power.h leading to build errors. Add forward
> declaration.
>
> [1] ef104443bffa ("procfs: consolidate arch_report_meminfo declaration")
>
> v2: Use forward declaration instead of headerfile inclusion [Jani]
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Hey, thanks for the patch, this would've been fine, but looks like Imre
just pushed commit f4fab137dd2b ("drm/i915: Add missing forward
declarations/includes to display power headers") which adds the forward
declaration among other things.

Sorry for the trouble.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index be1a87bde0c9..0ba268e566b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -16,6 +16,7 @@ enum port;
>  struct drm_i915_private;
>  struct i915_power_well;
>  struct intel_encoder;
> +struct seq_file;
>  
>  /*
>   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances

-- 
Jani Nikula, Intel Open Source Graphics Center
