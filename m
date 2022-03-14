Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B1E4D8A25
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 17:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4108710E974;
	Mon, 14 Mar 2022 16:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C78C10E939
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 16:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647276681; x=1678812681;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7v93Nu9VYE39QluVMsWagBDdes3h0s2zc2TIZHWT/+c=;
 b=gEDPAWNQMxNUrTcO7jfEAoMS2Yy/0zdcRHtARHHnybfM+zALu6s0/Y7+
 +7ehwImpdnVBiefsaKUlXqOUwaAeZEQEJCUAYjf3MKq/lmuhyMoAEUJGu
 LPanv+ZlmrW0huTixDdUc1nedLcei7KFvHW87WWRQoj5DUZwkxPXlafLr
 a/Tl3GZiUMMBC48JNa2hQn+mrpGl5RDUEEQZnFw/jO4K5oMBBSD1WWU81
 tak3JVqxlW7uxEc4ACDpeO0kBBhhOvdU8HXFrq5ETGIwDcuntFVpPznTQ
 cjF8fCLKXRbDQqs1S6XVr4WuvLLyxpHSHh3Vns6o29doo6PIBc7kbRCvE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="316805256"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="316805256"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:51:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="515507071"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:51:20 -0700
Date: Mon, 14 Mar 2022 09:51:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yi9yh8+e/zRYDZJm@mdroper-desk1.amr.corp.intel.com>
References: <20220314152753.85081-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220314152753.85081-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/adlp: Update eDP voltage
 swing table
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

On Mon, Mar 14, 2022 at 08:27:53AM -0700, José Roberto de Souza wrote:
> Up to now alderlake-p was using the same eDP voltage swing table for
> frequencies up to HBR2 as icelake but now it has its own table.
> 
> BSpec: 49291
> Cc: Clinton A Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Matches the spec.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> ---
>  .../gpu/drm/i915/display/intel_ddi_buf_trans.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 934a9f9e7dabb..9a2b14927895e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -931,6 +931,20 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[
>  	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };
>  
> +static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] = {
> +							/* NT mV Trans mV db    */
> +	{ .icl = { 0x4, 0x50, 0x38, 0x00, 0x07 } },	/* 200   200      0.0   */
> +	{ .icl = { 0x4, 0x58, 0x35, 0x00, 0x0A } },	/* 200   250      1.9   */
> +	{ .icl = { 0x4, 0x60, 0x34, 0x00, 0x0B } },	/* 200   300      3.5   */
> +	{ .icl = { 0x4, 0x6A, 0x32, 0x00, 0x0D } },	/* 200   350      4.9   */
> +	{ .icl = { 0x4, 0x5E, 0x38, 0x00, 0x07 } },	/* 250   250      0.0   */
> +	{ .icl = { 0x4, 0x61, 0x36, 0x00, 0x09 } },	/* 250   300      1.6   */
> +	{ .icl = { 0x4, 0x6B, 0x34, 0x00, 0x0B } },	/* 250   350      2.9   */
> +	{ .icl = { 0x4, 0x69, 0x39, 0x00, 0x06 } },	/* 300   300      0.0   */
> +	{ .icl = { 0x4, 0x73, 0x37, 0x00, 0x08 } },	/* 300   350      1.3   */
> +	{ .icl = { 0x4, 0x7A, 0x38, 0x00, 0x07 } },	/* 350   350      0.0   */
> +};
> +
>  static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr2_hbr3 = {
>  	.entries = _adlp_combo_phy_trans_dp_hbr2_hbr3,
>  	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr2_hbr3),
> @@ -942,8 +956,8 @@ static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_hbr3 = {
>  };
>  
>  static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_up_to_hbr2 = {
> -	.entries = _icl_combo_phy_trans_edp_hbr2,
> -	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
> +	.entries = _adlp_combo_phy_trans_edp_hbr2,
> +	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_edp_hbr2),
>  };
>  
>  static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] = {
> -- 
> 2.35.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
