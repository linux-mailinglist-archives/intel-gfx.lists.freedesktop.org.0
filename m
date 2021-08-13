Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB83EBBCD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 20:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA066E8BA;
	Fri, 13 Aug 2021 18:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948AD6E8BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 18:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="213754316"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="213754316"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 11:01:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="486043882"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 11:01:59 -0700
Date: Fri, 13 Aug 2021 11:01:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20210813180158.GB1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210813115151.19290-1-jani.nikula@intel.com>
 <20210813115151.19290-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210813115151.19290-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dg2: add SNPS PHY translations
 for UHBR link rates
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

On Fri, Aug 13, 2021 at 02:51:51PM +0300, Jani Nikula wrote:
> UHBR link rates use different tx equalization settings. Using this will
> require changes in the link training code too.
> 
> Bspec: 53920
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Matches the bspec values.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 29 ++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index ebb39624bfc9..796dd04eae01 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1002,6 +1002,30 @@ static const struct intel_ddi_buf_trans dg2_snps_translations = {
>  	.hdmi_default_entry = ARRAY_SIZE(_dg2_snps_translations) - 1,
>  };
>  
> +static const union intel_ddi_buf_trans_entry _dg2_snps_translations_uhbr[] = {
> +	{ .snps = { 62, 0, 0 } },	/* preset 0 */
> +	{ .snps = { 56, 0, 6 } },	/* preset 1 */
> +	{ .snps = { 51, 0, 11 } },	/* preset 2 */
> +	{ .snps = { 48, 0, 14 } },	/* preset 3 */
> +	{ .snps = { 43, 0, 19 } },	/* preset 4 */
> +	{ .snps = { 59, 3, 0 } },	/* preset 5 */
> +	{ .snps = { 53, 3, 6 } },	/* preset 6 */
> +	{ .snps = { 49, 3, 10 } },	/* preset 7 */
> +	{ .snps = { 45, 3, 14 } },	/* preset 8 */
> +	{ .snps = { 42, 3, 17 } },	/* preset 9 */
> +	{ .snps = { 56, 6, 0 } },	/* preset 10 */
> +	{ .snps = { 50, 6, 6 } },	/* preset 11 */
> +	{ .snps = { 47, 6, 9 } },	/* preset 12 */
> +	{ .snps = { 42, 6, 14 } },	/* preset 13 */
> +	{ .snps = { 46, 8, 8 } },	/* preset 14 */
> +	{ .snps = { 56, 3, 3 } },	/* preset 15 */
> +};
> +
> +static const struct intel_ddi_buf_trans dg2_snps_translations_uhbr = {
> +	.entries = _dg2_snps_translations_uhbr,
> +	.num_entries = ARRAY_SIZE(_dg2_snps_translations_uhbr),
> +};
> +
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>  {
>  	return table == &tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> @@ -1587,7 +1611,10 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		       const struct intel_crtc_state *crtc_state,
>  		       int *n_entries)
>  {
> -	return intel_get_buf_trans(&dg2_snps_translations, n_entries);
> +	if (crtc_state->port_clock > 1000000)
> +		return intel_get_buf_trans(&dg2_snps_translations_uhbr, n_entries);
> +	else
> +		return intel_get_buf_trans(&dg2_snps_translations, n_entries);
>  }
>  
>  int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
