Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA8E6008F6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E574610E0E5;
	Mon, 17 Oct 2022 08:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547C910E0E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665996249; x=1697532249;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+E8Gs0n/rgsqPkQhEsEhfJBvraNvAuAwsVck22p5UcY=;
 b=DTAzee3E3r94MZ3hjvPJJ5i4RetIcsVvVu1cfGOXS6fzTdqoCp5aOEIU
 V1UEy/Wo+J6CMjWvA098VYeKTDCNNsP5T1zpp0St9RW9lRUYHhSJf3u01
 2fplebn/xXfh+YppZ657m3Ri9XX8CJJ35dW9GvMx4mF1sJlYhsYuRR8/V
 TDd7DcHSIzc/7NNF688LhMTKpziwORTtPDCVtq0dsL0iJ4N2HJ0bPKqbe
 Cs2xXrcrzm0Fm5tR9ptuDEG6qoJowe2sDBvCB+FrE2vU0xw+pp8XnfKHJ
 Zjz/FuOg4cRJZBCSXjKF3sw5NtBQ0EucfNewGcOLtLkwpQfTSg316AMV5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="304485362"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="304485362"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:44:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="691275054"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="691275054"
Received: from ggeogheg-mobl.ger.corp.intel.com (HELO [10.213.233.137])
 ([10.213.233.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:44:00 -0700
Message-ID: <fb41a0fb-232e-a3b6-5fc6-6317298f89b5@linux.intel.com>
Date: Mon, 17 Oct 2022 09:43:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-3-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221015035952.1741319-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add compute reglist for
 GuC error capture
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


On 15/10/2022 04:59, Alan Previn wrote:
> Add compute reglist for GuC error capture.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 290c1e1343dd..da3a09c11d12 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -169,6 +169,8 @@ static struct __guc_mmio_reg_descr_group default_lists[] = {
>   	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
>   	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>   	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> +	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),

Does this means error capture on ADL-P was incomplete aka should 
something be sent to stable?

Regards,

Tvrtko

>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> @@ -182,6 +184,8 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
>   	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
>   	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>   	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
