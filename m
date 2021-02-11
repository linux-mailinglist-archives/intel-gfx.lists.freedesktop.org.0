Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450231831D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 02:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4D76EDAC;
	Thu, 11 Feb 2021 01:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1B16EDAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 01:36:15 +0000 (UTC)
IronPort-SDR: qm/PLqnWxdecZa7Ud49dQ+vJuujq3XAw3M5Mf5zhAFyPj3jPIKov3IdGCGedbMPagNgk3ZvKhU
 3kZNQTRatvQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169306280"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169306280"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:36:14 -0800
IronPort-SDR: bQsJ4V4DpHcUy/0cnH+//JRUV4hetTDA9mOtc52KLu+DesLDogbzSh6FD3y5aeKiHa1R1ElNwe
 AnndT1iS2C1g==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="421275526"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:36:14 -0800
Date: Wed, 10 Feb 2021 17:36:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211013613.xx5hf5fupr3mkq4r@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-9-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-9-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/18] drm/i915/display13: Handle LPSP for
 Display 13
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:24:03AM -0800, Matt Roper wrote:
>From: Uma Shankar <uma.shankar@intel.com>
>
>Enable LPSP for Display13 and get the proper power well
>enable check in place. For Display13 it is PW2 which
>need to check for LPSP.
>
>Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>Cc: Animesh Manna <animesh.manna@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 +++++++
> 1 file changed, 7 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>index d62b18d5ecd8..2af7d74d5960 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>@@ -1316,6 +1316,13 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
>
> 	switch (INTEL_GEN(i915)) {
> 	case 12:
>+		if (HAS_DISPLAY13(i915)) {

does it still make sense to check for gen && HAS_DISPLAY13? Shouldn't we
be checking only by HAS_DISPLAY13(i915) here, outside the switch()?

Lucas De Marchi

>+			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915,
>+								   SKL_DISP_PW_2));
>+			break;
>+		}
>+
>+		fallthrough;
> 	case 11:
> 		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
> 		break;
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
