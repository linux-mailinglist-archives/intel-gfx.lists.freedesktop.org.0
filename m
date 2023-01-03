Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855A665C574
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 18:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E499C10E27A;
	Tue,  3 Jan 2023 17:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A18910E27B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 17:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672768495; x=1704304495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VxpRBZGo5l/LDf7mt61kxtrJAnIX3ojxZBPOX+pF9DE=;
 b=ITCx5LuLlw7Q4sA1NSHvxK6+iNZ5d+Zj0Z9NuSbqiPe2v6ZHI5HD7lWL
 1eNU6yaFmpv8MCADtU6n4+rpY5DhghfPXLAT4shWGucKvSGWHhDQ+BeL/
 Zlhmg51Q0miOIPVUOaiAbY81JaV/uLFNA2Xdw8mogAfO00zVFxysrCqeJ
 exAIehMhjf/XomuuguY9xil41d8w+o8+Z0POjMjxi4Fzq4aAVIS/9j/mF
 1syJfUSowwtDWWrdogEt9Av43wGwqO+7F7LWUrLIlcczxI9cQl/r3yBJ7
 2viggpRBokq6nBpT1xGdYyMTwmicuHA7D0BtNun2OYS6Er2dF/UI8SAye g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="309488152"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="309488152"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 09:54:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="828909956"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="828909956"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 09:54:26 -0800
Date: Tue, 3 Jan 2023 09:55:32 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20230103175532.GA2503709@mdnavare-mobl1.jf.intel.com>
References: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix timeslots argument for DP DSC
 SST case
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 02, 2023 at 03:23:06PM +0200, Stanislav Lisovskiy wrote:
> We now accept timeslots param exactly how the variable
> sounds: amount of timeslots, but not ratio timeslots/64.
> So for SST case(when we have all timeslots for use), it
> should be 64, but not 1.
> This caused some issues in the tests.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Looks good to me,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 13baf3cb5f934..362fb394d613c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1696,7 +1696,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> -						  conn_state, &limits, 1, true);
> +						  conn_state, &limits, 64, true);
>  		if (ret < 0)
>  			return ret;
>  	}
> -- 
> 2.37.3
> 
