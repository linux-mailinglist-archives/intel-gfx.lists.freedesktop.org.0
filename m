Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E724BB3EF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 09:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919AA10E2A4;
	Fri, 18 Feb 2022 08:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9BC10E2A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 08:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645171877; x=1676707877;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LiZID4fxZQB45UMYWDRtM12C6tUj2HvyWmZuzV7VBmk=;
 b=kAj2Zicq91Bese5HdnlBXAB+74pqMPherAlxmATvfRmBRCewI9YBUJyl
 SWC117OcLklO0if1GCDoNAo5zjUDW7y2nSO7MYn3+2MeA7CDl/gCnPFr5
 m29F8VhEDOWS5acbXf/uKwvV/1Gy8b/AoLGSUx5wYJb4+xbTVJpngQhUj
 RIHI95MC0u5dEAOyRGjU+AmZpe7sROsh2kbfePbpxaNsh4e78Sx9yMfLo
 RbT7ID/5YeJGqhyxXHRMV32ndlecG8Bl5v1JZKQEBwyuMw0z0ushdLVHw
 e7dKvYkrkSQPB5i1HzyRcn/4yt6+mxYpPlNa6pDwRoSDgONKMN2c9JOTH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="314341995"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="314341995"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 00:11:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="530823335"
Received: from tmgallag-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.23.60])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 00:11:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220217085243.izxxie7zi3ttsyo4@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220217083938.3587465-1-jani.nikula@intel.com>
 <20220217085243.izxxie7zi3ttsyo4@ldmartin-desk2>
Date: Fri, 18 Feb 2022 10:11:10 +0200
Message-ID: <87y2283881.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 17 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Feb 17, 2022 at 10:39:38AM +0200, Jani Nikula wrote:
>>The variable should obviously be local, not static.
>>
>>Fixes: a421d8a99216 ("drm/i915/dp: rewrite DP 2.0 128b/132b link training=
 based on errata")
>>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
>>index 9197cc1734d2..5d98773efd1b 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>@@ -1408,7 +1408,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel=
_dp,
>> void intel_dp_start_link_train(struct intel_dp *intel_dp,
>> 			       const struct intel_crtc_state *crtc_state)
>> {
>>-	static bool passed;
>>+	bool passed;
>> 	/*
>> 	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
>> 	 * HW state readout is added.
>>--=20
>>2.30.2
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
