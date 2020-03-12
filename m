Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F77183CC8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A348995F;
	Thu, 12 Mar 2020 22:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6378995F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:50:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="354239408"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2020 15:50:14 -0700
Date: Thu, 12 Mar 2020 15:51:37 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200312225137.GD8846@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
 <20200310153745.22814-6-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310153745.22814-6-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 5/7] drm/i915/dp: Add debugfs entry for
 DP phy compliance
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 09:07:43PM +0530, Animesh Manna wrote:
> These debugfs entry will help testapp to understand the test request
> during dp phy compliance mode.
> 
> Acked-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 1e6eb7f2f72d..ab20b7ea26f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1326,6 +1326,16 @@ static int i915_displayport_test_data_show(struct seq_file *m, void *data)
>  					   intel_dp->compliance.test_data.vdisplay);
>  				seq_printf(m, "bpc: %u\n",
>  					   intel_dp->compliance.test_data.bpc);
> +			} else if (intel_dp->compliance.test_type ==
> +				   DP_TEST_LINK_PHY_TEST_PATTERN) {
> +				seq_printf(m, "pattern: %d\n",
> +					   intel_dp->compliance.test_data.phytest.phy_pattern);
> +				seq_printf(m, "Number of lanes: %d\n",
> +					   intel_dp->compliance.test_data.phytest.num_lanes);
> +				seq_printf(m, "Link Rate: %d\n",
> +					   intel_dp->compliance.test_data.phytest.link_rate);
> +				seq_printf(m, "level: %02x\n",
> +					   intel_dp->train_set[0]);
>  			}
>  		} else
>  			seq_puts(m, "0");
> @@ -1358,7 +1368,7 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
>  
>  		if (encoder && connector->status == connector_status_connected) {
>  			intel_dp = enc_to_intel_dp(encoder);
> -			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
> +			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
>  		} else
>  			seq_puts(m, "0");
>  	}
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
