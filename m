Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BDC371EB3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 19:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3376E110;
	Mon,  3 May 2021 17:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB53B6E110
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 17:33:18 +0000 (UTC)
IronPort-SDR: bi8VcdtJaXBmtIaImJzOi2vnqvrdW8yCVsao8RxCKOIYXgyiiAOcrrEbWolunhQvT/ox0J6aQ7
 h/IkD/G9C7jA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="178004857"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="178004857"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:33:17 -0700
IronPort-SDR: xVCQTnRoUGTBKVKnj87p4cSM6yfklvMKG7QOEsxPK41of6rdOQd7erKdaq1acFYIWWmFge5Op5
 Z3yE/sGEY3Ug==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432845314"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:33:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
Date: Mon, 03 May 2021 20:33:13 +0300
Message-ID: <8735v3204m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct downstream caps for
 check Src-Ctl mode for PCON
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 29 Apr 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Fix the typo in DPCD caps used for checking SRC CTL mode of
> HDMI2.1 PCON
>
> Fixes: 04b6603d13be (drm/i915/display: Configure HDMI2.1 Pcon for FRL
> only if Src-Ctl mode is available)

Correct format for Fixes: is this:

Fixes: 04b6603d13be ("drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available")

You'll get it with 'dim fixes <sha1>', along with some suggested Cc's.

BR,
Jani.


>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dfa7da928ae5..b3e82aa8b4f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2112,7 +2112,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>  	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
>  	 * -sink is HDMI2.1
>  	 */
> -	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
> +	if (!(intel_dp->downstream_ports[2] & DP_PCON_SOURCE_CTL_MODE) ||
>  	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
>  	    intel_dp->frl.is_trained)
>  		return;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
