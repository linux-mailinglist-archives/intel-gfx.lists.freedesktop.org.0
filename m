Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BFB12F5E6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 10:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA7156E19B;
	Fri,  3 Jan 2020 09:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3C26E19B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 09:03:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 01:03:18 -0800
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="221591108"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 01:03:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200103150737.17934-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200103150737.17934-1-shawn.c.lee@intel.com>
Date: Fri, 03 Jan 2020 11:03:11 +0200
Message-ID: <87y2uosyi8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix incorrect test parameter
 for DP link layer compliance
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Jan 2020, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Run intel_dp_compliance would failed at video pattern related
> test case sometimes. DP test applet read incorrect test type
> from kernel to cause this symptom. Add a "\n" (newline) in
> seq_printf() then DP test applet will get proper parameters.
>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Fixes: eb3394faeb97 ("drm/i915: Add debugfs test control files for Displayport compliance testing")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 0ac98e39eb75..74180158a909 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -3167,7 +3167,7 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
>  			intel_dp = enc_to_intel_dp(&encoder->base);
>  			if (intel_dp->compliance.test_type ==
>  			    DP_TEST_LINK_EDID_READ)
> -				seq_printf(m, "%lx",
> +				seq_printf(m, "%lx\n",
>  					   intel_dp->compliance.test_data.edid);
>  			else if (intel_dp->compliance.test_type ==
>  				 DP_TEST_LINK_VIDEO_PATTERN) {
> @@ -3209,7 +3209,7 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
>  
>  		if (encoder && connector->status == connector_status_connected) {
>  			intel_dp = enc_to_intel_dp(&encoder->base);
> -			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
> +			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
>  		} else
>  			seq_puts(m, "0");
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
