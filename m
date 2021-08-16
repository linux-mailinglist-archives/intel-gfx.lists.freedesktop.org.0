Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A283EDDFA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 21:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9056E049;
	Mon, 16 Aug 2021 19:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0B36E049
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 19:39:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="279669281"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="279669281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487615583"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 16 Aug 2021 12:39:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Aug 2021 22:39:29 +0300
Date: Mon, 16 Aug 2021 22:39:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Message-ID: <YRq+8cwGtj2PF6NG@intel.com>
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-9-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210722054338.12891-9-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/bios: Only use opregion
 panel index for display ver 8 and older
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

On Wed, Jul 21, 2021 at 10:43:37PM -0700, José Roberto de Souza wrote:
> On newer platform this opregion call always fails, also it do not
> support multiple panels so dropping it.

We only use the panel type from opregion on specific machines based on
aa DMI match. So this patch is basically a no-op.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index d1ad6d625e521..6c848384a2ada 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1924,7 +1924,7 @@ static void parse_integrated_panel(struct drm_i915_private *i915,
>  {
>  	const struct vbt_header *vbt = i915->opregion.vbt;
>  	const struct bdb_header *bdb;
> -	int lfp_inst = 0, panel_index, opregion_panel_index;
> +	int lfp_inst = 0, panel_index;
>  
>  	if (devdata->child.handle == HANDLE_LFP_1)
>  		lfp_inst = 1;
> @@ -1937,17 +1937,12 @@ static void parse_integrated_panel(struct drm_i915_private *i915,
>  	bdb = get_bdb_header(vbt);
>  	panel_index = get_lfp_panel_index(i915, bdb, lfp_inst);
>  
> -	opregion_panel_index = intel_opregion_get_panel_type(i915);
> -	/*
> -	 * TODO: the current implementation always use the panel index from
> -	 * opregion if available due to issues with old platforms.
> -	 * But this do not supports two panels and in SKL or newer I never saw a
> -	 * system were this call returns a valid value.
> -	 * So will change this to only use opregion up to BDW in a separated
> -	 * commit.
> -	 */
> -	if (opregion_panel_index >= 0)
> -		panel_index = opregion_panel_index;
> +	if (DISPLAY_VER(i915) < 9) {
> +		int opregion_panel_index = intel_opregion_get_panel_type(i915);
> +
> +		if (opregion_panel_index >= 0)
> +			opregion_panel_index = panel_index;
> +	}
>  
>  	if (panel_index == -1)
>  		return;
> -- 
> 2.32.0

-- 
Ville Syrjälä
Intel
