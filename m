Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A167179B55
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 22:55:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CBF66E102;
	Wed,  4 Mar 2020 21:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1DB6E11D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 21:55:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 13:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="240598695"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with SMTP; 04 Mar 2020 13:55:46 -0800
Date: Wed, 4 Mar 2020 13:55:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Caz Yokoyama <caz.yokoyama@intel.com>
Message-ID: <20200304215546.GA1102100@mdroper-desk1.amr.corp.intel.com>
References: <eed742e2de036d4050308fa064a92060a5736b45.1583340549.git.caz.yokoyama@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eed742e2de036d4050308fa064a92060a5736b45.1583340549.git.caz.yokoyama@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc
 flush workaround"
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 08:52:25AM -0800, Caz Yokoyama wrote:
> This reverts commit 36a6b5d964d995b536b1925ec42052ee40ba92c4.
> 
> The commit takes care Wa_1604544889 which was fixed on a0 stepping based on
> a0 replan. So no SW workaround is required on any stepping now.
> 
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>

Matches what I see in the bspec and WA database.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I believe the maintainers prefer that we also add Fixes: notation for
reverts now, so

Fixes: 36a6b5d964d9 ("drm/i915/tgl: Add extra hdc flush workaround")

too.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 20 --------------------
>  1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b9b3f78f1324..f9425e5ed7ea 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4145,26 +4145,6 @@ static int gen12_emit_flush_render(struct i915_request *request,
>  
>  		*cs++ = preparser_disable(false);
>  		intel_ring_advance(request, cs);
> -
> -		/*
> -		 * Wa_1604544889:tgl
> -		 */
> -		if (IS_TGL_REVID(request->i915, TGL_REVID_A0, TGL_REVID_A0)) {
> -			flags = 0;
> -			flags |= PIPE_CONTROL_CS_STALL;
> -			flags |= PIPE_CONTROL_HDC_PIPELINE_FLUSH;
> -
> -			flags |= PIPE_CONTROL_STORE_DATA_INDEX;
> -			flags |= PIPE_CONTROL_QW_WRITE;
> -
> -			cs = intel_ring_begin(request, 6);
> -			if (IS_ERR(cs))
> -				return PTR_ERR(cs);
> -
> -			cs = gen8_emit_pipe_control(cs, flags,
> -						    LRC_PPHWSP_SCRATCH_ADDR);
> -			intel_ring_advance(request, cs);
> -		}
>  	}
>  
>  	return 0;
> -- 
> 2.21.0.5.gaeb582a983
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
