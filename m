Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E2B12FE2A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 22:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD99891B4;
	Fri,  3 Jan 2020 21:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86F95891B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 21:00:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 13:00:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,392,1571727600"; d="scan'208";a="421540577"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jan 2020 13:00:23 -0800
Date: Fri, 3 Jan 2020 13:01:27 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20200103210127.GA2608@intel.com>
References: <20200103150737.17934-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103150737.17934-1-shawn.c.lee@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 03, 2020 at 11:07:37PM +0800, Lee Shawn C wrote:
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
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com

Thank you for fixing this,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

>
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
> -- 
> 2.17.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
