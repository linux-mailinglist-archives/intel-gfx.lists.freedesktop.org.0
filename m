Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 686C3258FAC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 15:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7A36E086;
	Tue,  1 Sep 2020 13:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792CF6E086
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 13:58:12 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id r9so1321351ioa.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Sep 2020 06:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9zpF9MsNKtN8t19Yn2uCYiUG9jZqSffkVs5xq9jvYE0=;
 b=FbXg/39hbf9v0Wrrydws2CKKppgqfsWKa+ptwZOtkvuswzMQ0OLO7bVjU9z3QZdRfp
 XIWjmsWBXVuirZIqFHXrd8cYBSdXSFZ8BtvV9zn3+P6XRfclV975v0S79xCmACIFfg0p
 B9iaaMJEarFonChP5+5/rNCSmRkFH6EfgN4W7d5RtMMk5yhex54ShF+A3KeFrOuZnMrP
 mx30j7USnbIR3SPq/XcBTNmdhYb7utB3oLJISnpbAV19+eEkxTAAZQtZUwlpJ+7jNmMn
 df345mm9BI4A1uvV6EbbggrvhUHqSP5emEs3gwZSGg18unsq1ubQ6ASt2TonHQUMUQjA
 5Rug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9zpF9MsNKtN8t19Yn2uCYiUG9jZqSffkVs5xq9jvYE0=;
 b=Nvj1xL7dU21hHtaQrrIbPJAvcp1do5fifbBIZFcDW5B5WiXZ/PkRUJRNNTNi5qrbvQ
 2Jx2RFv7XQRB1J6zvVhyJbOsdR5mhTVIelR9MSZw+j3tOVR6k2miFrBR8TvyNVW8iSiI
 49GiifdPeLmAUXkej4CNuIevFBQHhVXhabfo5B0UzxsIt88vjorN9QqpnhLmKAgFObFG
 pRub3PEyX18LxAjISPWtPf6unyqOjKRPqy1zbX4A4PUswPqiLh5Yf+i/NseoZ2sHeFg9
 6oXA56VGEH43ud3jGtnaZrehjxChfWcukdQ6gV3PJJfrF/JFM1IXbTVyMCDQL0BsDy2B
 v63A==
X-Gm-Message-State: AOAM532hX1e4ixkTKnw2jXohexNpWPrIcbFS/nCOLRv1MaT9xuOB3RZN
 Oi//NKzFGw15qKHOSlqgJ8zHF2MtFhSb2oMxgne4PyYU8ps=
X-Google-Smtp-Source: ABdhPJwKUN4gnWlzLYYRE02nmcsmmU2j5yERYu99nOveZ3IGHfSWtAz6CDnwyUWyHnYfASsIa7tOj4RICBhT4PNvqzI=
X-Received: by 2002:a02:a816:: with SMTP id f22mr1482851jaj.118.1598968691505; 
 Tue, 01 Sep 2020 06:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200901121041.8793-1-anshuman.gupta@intel.com>
In-Reply-To: <20200901121041.8793-1-anshuman.gupta@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Tue, 1 Sep 2020 09:57:35 -0400
Message-ID: <CAMavQKK9jgKEdmK=ETozGr3XWrC_MLOGMoWQOSi0AsYaQV8Bbw@mail.gmail.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [RFC] drm/i915/hdcp: Gen12 HDCP 1.4 support over DP
 MST
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 1, 2020 at 8:22 AM Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>

Hi Anshuman,
Thank you for sending this along! I have a few comments below.

> Gen12 has measure changes with respect to HDCP display
> engine instaces lies in Trascoder insead of DDI as in Gen11.

*instances
*transcoder
*instead

>
> This requires hdcp driver to use mst_master_transcoder for link
> authentication and stream trascoder for stream encryption

*transcoder

> separately.
>
> It also requires to validate the stream encryption status
> in HDCP_STATUS_{TRANSCODER,PORT} driving that link register.
>
> There is also some changes over existing HDCP 1.4  DP MST Gen11
> implementation, related to Multistream HDCP Select bit in
> TRANS_DDI_FUNC_CTL need to be required with respect to B.Spec
> Documentation.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 12 +--
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  6 +-
>  .../drm/i915/display/intel_display_types.h    |  9 +++
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 73 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 35 ++++++---
>  drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 16 ++--
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  9 files changed, 121 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a2b7dcf84430..5d6e4fd7bccd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1849,9 +1849,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>         }
>  }
>
> -int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
> -                                    enum transcoder cpu_transcoder,
> -                                    bool enable)
> +int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
> +                              enum transcoder cpu_transcoder,
> +                              bool enable, u32 hdcp_mask)
>  {
>         struct drm_device *dev = intel_encoder->base.dev;
>         struct drm_i915_private *dev_priv = to_i915(dev);
> @@ -1866,9 +1866,9 @@ int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
>
>         tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
>         if (enable)
> -               tmp |= TRANS_DDI_HDCP_SIGNALLING;
> +               tmp |= hdcp_mask;
>         else
> -               tmp &= ~TRANS_DDI_HDCP_SIGNALLING;
> +               tmp &= ~hdcp_mask;
>         intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
>         intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
>         return ret;
> @@ -3967,7 +3967,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>         if (conn_state->content_protection ==
>             DRM_MODE_CONTENT_PROTECTION_DESIRED)
>                 intel_hdcp_enable(to_intel_connector(conn_state->connector),
> -                                 crtc_state->cpu_transcoder,
> +                                 crtc_state,
>                                   (u8)conn_state->hdcp_content_type);
>  }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index f5fb62fc9400..69d9e495992c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -43,9 +43,9 @@ void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
>                                          struct intel_crtc_state *crtc_state);
>  u32 bxt_signal_levels(struct intel_dp *intel_dp);
>  u32 ddi_signal_levels(struct intel_dp *intel_dp);
> -int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
> -                                    enum transcoder cpu_transcoder,
> -                                    bool enable);
> +int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
> +                              enum transcoder cpu_transcoder,
> +                              bool enable, u32 hdcp_mask);
>  void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
>
>  #endif /* __INTEL_DDI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 413b60337a0b..dc71ee4d314a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -317,6 +317,13 @@ struct intel_hdcp_shim {
>                                  enum transcoder cpu_transcoder,
>                                  bool enable);
>
> +       /* Select/Deselect HDCP stream on the port DP MST Transport Link */
> +       int (*toggle_select_hdcp)(struct intel_digital_port *intel_dig_port,
> +                                 bool enable);
> +
> +       /* Enable HDCP stream encyption on DP MST Transport Link */

*encryption

> +       int (*stream_encryption)(struct intel_digital_port *intel_dig_port);
> +
>         /* Ensures the link is still protected */
>         bool (*check_link)(struct intel_digital_port *dig_port,
>                            struct intel_connector *connector);
> @@ -410,6 +417,8 @@ struct intel_hdcp {
>          * Hence caching the transcoder here.
>          */
>         enum transcoder cpu_transcoder;
> +       /* Only used for DP MST stream encryption */
> +       enum transcoder stream_transcoder;
>  };
>
>  struct intel_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 03424d20e9f7..8a6427f3690b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -16,6 +16,30 @@
>  #include "intel_dp.h"
>  #include "intel_hdcp.h"
>
> +static unsigned int trasncoder_to_stream_enc_status(enum transcoder cpu_transcoder)

*transcoder

> +{
> +       u32 stream_enc_mask;
> +
> +       switch (cpu_transcoder) {
> +       case TRANSCODER_A:
> +               stream_enc_mask = HDCP_STATUS_STREAM_A_ENC;
> +               break;
> +       case TRANSCODER_B:
> +               stream_enc_mask = HDCP_STATUS_STREAM_B_ENC;
> +               break;
> +       case TRANSCODER_C:
> +               stream_enc_mask = HDCP_STATUS_STREAM_C_ENC;
> +               break;
> +       case TRANSCODER_D:
> +               stream_enc_mask = HDCP_STATUS_STREAM_D_ENC;
> +               break;
> +       default:
> +               stream_enc_mask = 0;
> +       }
> +
> +       return stream_enc_mask;
> +}
> +
>  static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
>  {
>         long ret;
> @@ -622,24 +646,51 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>  };
>
>  static int
> -intel_dp_mst_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
> -                                   enum transcoder cpu_transcoder,
> -                                   bool enable)
> +intel_dp_mst_toggle_select_hdcp_strem(struct intel_digital_port *dig_port,
> +                                     bool enable)

*stream

>  {
>         struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +       struct intel_dp *dp = &dig_port->dp;
> +       struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>         int ret;
>
> -       if (!enable)
> -               usleep_range(6, 60); /* Bspec says >= 6us */

Is this no longer needed on older generations?

> +       ret = intel_ddi_toggle_hdcp_bits(&dig_port->base,
> +                                        hdcp->stream_transcoder, enable,
> +                                        TRANS_DDI_HDCP_SELECT);
>

Remove blank line

> -       ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base,
> -                                              cpu_transcoder, enable);
>         if (ret)
> -               drm_dbg_kms(&i915->drm, "%s HDCP signalling failed (%d)\n",
> -                             enable ? "Enable" : "Disable", ret);
> +               drm_dbg_kms(&i915->drm, "%s HDCP select failed (%d)\n",
> +                           enable ? "Enable" : "Disable", ret);
>         return ret;
>  }
>
> +static int
> +intel_dp_mst_hdcp_strem_encryption(struct intel_digital_port *dig_port)
> +{
> +       struct drm_i915_private *i915 = to_i915(idig_port->base.base.dev);
> +       struct intel_dp *dp = &dig_port->dp;
> +       struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
> +       enum port port = dig_port->base.port;
> +       enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
> +       u32 stream_enc_status;
> +
> +       stream_enc_status =  trasncoder_to_stream_enc_status(hdcp->stream_transcoder);
> +

Remove blank line

> +       if (!stream_enc_status)
> +               return -EINVAL;
> +
> +       /* Wait for encryption confirmation */
> +       if (intel_de_wait_for_set(i915,
> +                                 HDCP_STATUS(i915, cpu_transcoder, port),
> +                                 stream_enc_status,
> +                                 ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> +               drm_err(&i915->drm, "Timed out waiting for stream encryption enabled\n");
> +               return -ETIMEDOUT;
> +       }
> +
> +       return 0;
> +}
> +
>  static
>  bool intel_dp_mst_hdcp_check_link(struct intel_digital_port *dig_port,
>                                   struct intel_connector *connector)
> @@ -673,7 +724,9 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>         .read_ksv_ready = intel_dp_hdcp_read_ksv_ready,
>         .read_ksv_fifo = intel_dp_hdcp_read_ksv_fifo,
>         .read_v_prime_part = intel_dp_hdcp_read_v_prime_part,
> -       .toggle_signalling = intel_dp_mst_hdcp_toggle_signalling,
> +       .toggle_signalling = intel_dp_hdcp_toggle_signalling,
> +       .toggle_select_hdcp = intel_dp_mst_toggle_select_hdcp_strem,
> +       .stream_encryption = intel_dp_mst_hdcp_strem_encryption,
>         .check_link = intel_dp_mst_hdcp_check_link,
>         .hdcp_capable = intel_dp_hdcp_capable,
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b6424bf5d544..8d06931e0805 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -564,7 +564,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>         if (conn_state->content_protection ==
>             DRM_MODE_CONTENT_PROTECTION_DESIRED)
>                 intel_hdcp_enable(to_intel_connector(conn_state->connector),
> -                                 pipe_config->cpu_transcoder,
> +                                 pipe_config,
>                                   (u8)conn_state->hdcp_content_type);
>  }
>
> @@ -811,7 +811,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>
>
>         /* TODO: Figure out how to make HDCP work on GEN12+ */

I think this comment is no longer valid

> -       if (INTEL_GEN(dev_priv) < 12) {
> +       if (INTEL_GEN(dev_priv) <= 12) {

Is there any benefit to limiting this any longer? Perhaps just delete this now.

>                 ret = intel_dp_init_hdcp(dig_port, intel_connector);
>                 if (ret)
>                         DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 5492076d1ae0..1436fb2910d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -23,7 +23,6 @@
>  #include "intel_connector.h"
>
>  #define KEY_LOAD_TRIES 5
> -#define ENCRYPT_STATUS_CHANGE_TIMEOUT_MS       50
>  #define HDCP2_LC_RETRY_CNT                     3
>
>  static
> @@ -700,6 +699,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
>         ret = shim->repeater_present(dig_port, &repeater_present);
>         if (ret)
>                 return ret;
> +
>         if (repeater_present)
>                 intel_de_write(dev_priv, HDCP_REP_CTL,
>                                intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port));
> @@ -771,6 +771,11 @@ static int intel_hdcp_auth(struct intel_connector *connector)
>          * XXX: If we have MST-connected devices, we need to enable encryption
>          * on those as well.
>          */

This comment is also obsolete now.

> +       if (shim->toggle_select_hdcp)
> +               ret = shim->toggle_select_hdcp(dig_port, true);
> +
> +       if (shim->stream_encryption)
> +               ret = shim->stream_encryption(dig_port);

Instead of adding 2 new hooks, couldn't you just combine these into 1?

>
>         if (repeater_present)
>                 return intel_hdcp_auth_downstream(connector);
> @@ -797,12 +802,13 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>          * it. Instead, toggle the HDCP signalling off on that particular
>          * connector/pipe and exit.
>          */
> -       if (dig_port->num_hdcp_streams > 0) {
> -               ret = hdcp->shim->toggle_signalling(dig_port,
> -                                                   cpu_transcoder, false);
> -               if (ret)
> -                       DRM_ERROR("Failed to disable HDCP signalling\n");
> -               return ret;
> +       if (intel_dig_port->num_hdcp_streams > 0) {
> +               if (hdcp->shim->toggle_select_hdcp) {

Combining these with &&?

> +                       ret = hdcp->shim->toggle_select_hdcp(dig_port, false);
> +                       if (ret)
> +                               DRM_ERROR("Failed to disable HDCP signalling\n");
> +                       return ret;
> +               }
>         }
>
>         hdcp->hdcp_encrypted = false;
> @@ -2072,7 +2078,7 @@ int intel_hdcp_init(struct intel_connector *connector,
>  }
>
>  int intel_hdcp_enable(struct intel_connector *connector,
> -                     enum transcoder cpu_transcoder, u8 content_type)
> +                     const struct intel_crtc_state *pipe_config, u8 content_type)
>  {
>         struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>         struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> @@ -2088,10 +2094,17 @@ int intel_hdcp_enable(struct intel_connector *connector,
>         drm_WARN_ON(&dev_priv->drm,
>                     hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
>         hdcp->content_type = content_type;
> -       hdcp->cpu_transcoder = cpu_transcoder;
> +
> +       if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
> +               hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
> +               hdcp->stream_transcoder = pipe_config->cpu_transcoder;
> +       } else {
> +               hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
> +               hdcp->stream_transcoder = INVALID_TRANSCODER;
> +       }
>
>         if (INTEL_GEN(dev_priv) >= 12)
> -               hdcp->port_data.fw_tc = intel_get_mei_fw_tc(cpu_transcoder);
> +               hdcp->port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
>
>         /*
>          * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
> @@ -2202,7 +2215,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>
>         if (desired_and_not_enabled || content_protection_type_changed)
>                 intel_hdcp_enable(connector,
> -                                 crtc_state->cpu_transcoder,
> +                                 crtc_state,
>                                   (u8)conn_state->hdcp_content_type);
>  }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 1bbf5b67ed0a..36a1b81aca16 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -19,13 +19,15 @@ struct intel_hdcp_shim;
>  enum port;
>  enum transcoder;
>
> +#define ENCRYPT_STATUS_CHANGE_TIMEOUT_MS       50

Now that this is exposed in a header, best to make it more descriptive:

#define HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS

> +
>  void intel_hdcp_atomic_check(struct drm_connector *connector,
>                              struct drm_connector_state *old_state,
>                              struct drm_connector_state *new_state);
>  int intel_hdcp_init(struct intel_connector *connector, enum port port,
>                     const struct intel_hdcp_shim *hdcp_shim);
>  int intel_hdcp_enable(struct intel_connector *connector,
> -                     enum transcoder cpu_transcoder, u8 content_type);
> +                     const struct intel_crtc_state *pipe_config, u8 content_type);
>  int intel_hdcp_disable(struct intel_connector *connector);
>  void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>                             struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 0978b0d8f4c6..955d2250b86f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1495,15 +1495,18 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
>                 usleep_range(25, 50);
>         }
>
> -       ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
> -                                              false);
> +       ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
> +                                        false, TRANS_DDI_HDCP_SIGNALLING);
> +

Remove blank line

>         if (ret) {
>                 drm_err(&dev_priv->drm,
>                         "Disable HDCP signalling failed (%d)\n", ret);
>                 return ret;
>         }
> -       ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
> -                                              true);
> +
> +       ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
> +                                        true, TRANS_DDI_HDCP_SIGNALLING);
> +

Remove blank line

>         if (ret) {
>                 drm_err(&dev_priv->drm,
>                         "Enable HDCP signalling failed (%d)\n", ret);
> @@ -1526,8 +1529,9 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
>         if (!enable)
>                 usleep_range(6, 60); /* Bspec says >= 6us */
>
> -       ret = intel_ddi_toggle_hdcp_signalling(&dig_port->base, cpu_transcoder,
> -                                              enable);
> +       ret = intel_ddi_toggle_hdcp_bits(&dig_port->base,
> +                                        cpu_transcoder, enable,
> +                                        TRANS_DDI_HDCP_SIGNALLING);
>         if (ret) {
>                 drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
>                         enable ? "Enable" : "Disable", ret);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ab4b1abd4364..f6e40a458f7b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9945,6 +9945,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_DP_VC_PAYLOAD_ALLOC (1 << 8)
>  #define  TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE (1 << 7)
>  #define  TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ (1 << 6)
> +#define  TRANS_DDI_HDCP_SELECT (1 << 5)
>  #define  TRANS_DDI_BFI_ENABLE          (1 << 4)
>  #define  TRANS_DDI_HIGH_TMDS_CHAR_RATE (1 << 4)
>  #define  TRANS_DDI_HDMI_SCRAMBLING     (1 << 0)
> --
> 2.26.2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
