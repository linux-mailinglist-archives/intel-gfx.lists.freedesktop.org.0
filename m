Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094AF12D809
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 11:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA266E20A;
	Tue, 31 Dec 2019 10:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC9E6E20A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 10:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 02:38:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,379,1571727600"; d="scan'208";a="213598073"
Received: from heer-mobl.ger.corp.intel.com (HELO localhost) ([10.252.51.86])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Dec 2019 02:38:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191223195850.25997-9-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-9-lucas.demarchi@intel.com>
Date: Tue, 31 Dec 2019 12:39:03 +0200
Message-ID: <87fth0lqyg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/display: refer to vbt info as
 vbt_port_info
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

On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Now that we maintain our static port info, rename the places that refer
> to the port_info from vbt to use the vbt prefix. This is just a
> preparation step for a following change in which we will use the
> port_info variable name.

Side note, I intend to get rid of dev_priv->vbt.ddi_port_info[]
entirely.

For output initialization time, you'd have to call some function in
intel_bios.c to get the info you want. Maybe at that point you'd get an
opaque pointer to struct display_device_data which you could use to
query the child device data. You'd stick that pointer to intel_encoder
(or intel_connector), and subsequent queries would be based on that,
instead of figuring out the port and indexing something in dev_priv.

In the mean time, the rename for now seems fine.


BR,
Jani.


>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 1bdf63845472..a1b7075ea6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -902,7 +902,8 @@ icl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int rate,
>  
>  static int intel_ddi_hdmi_level(struct drm_i915_private *dev_priv, enum port port)
>  {
> -	struct ddi_vbt_port_info *port_info = &dev_priv->vbt.ddi_port_info[port];
> +	struct ddi_vbt_port_info *vbt_port_info =
> +		&dev_priv->vbt.ddi_port_info[port];
>  	int n_entries, level, default_entry;
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>  
> @@ -943,8 +944,8 @@ static int intel_ddi_hdmi_level(struct drm_i915_private *dev_priv, enum port por
>  	if (WARN_ON_ONCE(n_entries == 0))
>  		return 0;
>  
> -	if (port_info->hdmi_level_shift_set)
> -		level = port_info->hdmi_level_shift;
> +	if (vbt_port_info->hdmi_level_shift_set)
> +		level = vbt_port_info->hdmi_level_shift;
>  	else
>  		level = default_entry;
>  
> @@ -4783,15 +4784,15 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
>  
>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  {
> -	struct ddi_vbt_port_info *port_info =
> +	struct ddi_vbt_port_info *vbt_port_info =
>  		&dev_priv->vbt.ddi_port_info[port];
>  	struct intel_digital_port *intel_dig_port;
>  	struct intel_encoder *encoder;
>  	bool init_hdmi, init_dp, init_lspcon = false;
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>  
> -	init_hdmi = port_info->supports_dvi || port_info->supports_hdmi;
> -	init_dp = port_info->supports_dp;
> +	init_hdmi = vbt_port_info->supports_dvi || vbt_port_info->supports_hdmi;
> +	init_dp = vbt_port_info->supports_dp;
>  
>  	if (intel_bios_is_lspcon_present(dev_priv, port)) {
>  		/*
> @@ -4852,8 +4853,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
>  
>  	if (intel_phy_is_tc(dev_priv, phy)) {
> -		bool is_legacy = !port_info->supports_typec_usb &&
> -				 !port_info->supports_tbt;
> +		bool is_legacy = !vbt_port_info->supports_typec_usb &&
> +				 !vbt_port_info->supports_tbt;
>  
>  		intel_tc_port_init(intel_dig_port, is_legacy);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
