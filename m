Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 327AE4B9B82
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:52:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6B710EB7E;
	Thu, 17 Feb 2022 08:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B8E10EB7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645087965; x=1676623965;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IG7Hwi67TpuGWFF3Wigzas2EkuuEzxomyqXHrsaZnvI=;
 b=jxSdVAk/MISrYIx4sJki9uV6+tCDbao/8jvCxyBQInJg+AZ+bipaDHvF
 4kpKgmeWS3AsseWqUMBkA853UKx+4jv59gtoL4NUdQG+Y1k+xRASEUuSf
 8pYLVL7LJxxy2BIIaTNKk6kiMsn2McCWCikHS73myBFM9k95QW/u9pEKZ
 qGhATEjx+KJlk6hDqOW824z+nsBGYNxgbwEh7jkAkIwbDPLLEYS1awuss
 xZIJ46Jx7Mf7Dn+MsDAj+wEbyhkaZv04rkrxJ39ZuQml2n3SEDjV3GdDk
 nF46j+KE/ObjyDJYf7qu2QtknToydoy6y17aU5rzkyVtSkmvR1xokdIjh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248425633"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="248425633"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:52:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="625900940"
Received: from zcmahone-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.137.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:52:44 -0800
Date: Thu, 17 Feb 2022 00:52:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220217085243.izxxie7zi3ttsyo4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220217083938.3587465-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217083938.3587465-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: remove accidental static on
 what should be a local variable
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 17, 2022 at 10:39:38AM +0200, Jani Nikula wrote:
>The variable should obviously be local, not static.
>
>Fixes: a421d8a99216 ("drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata")
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>index 9197cc1734d2..5d98773efd1b 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>@@ -1408,7 +1408,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
> void intel_dp_start_link_train(struct intel_dp *intel_dp,
> 			       const struct intel_crtc_state *crtc_state)
> {
>-	static bool passed;
>+	bool passed;
> 	/*
> 	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
> 	 * HW state readout is added.
>-- 
>2.30.2
>
