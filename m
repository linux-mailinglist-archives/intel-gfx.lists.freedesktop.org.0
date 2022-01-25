Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA4C49BAF4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 19:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FB310E3EA;
	Tue, 25 Jan 2022 18:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B7F10E2CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643134053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZEfQf7NJua62SjggPAfI7hi2kkuG+WaxVV42whKfUgw=;
 b=SxwrE1gXNyRvENGNhtGrefoxdx+iyoOEg/3kebCsCzeHP7u7AsV5q9SqL4wDX8kW4AjKrH
 BodoXa6TB0xHr51gwWVP2swlzOd7Mgvc6QMvcgAiufNFhBxC7krElgBuVlm4ddFL/7dG7z
 +TsL2AtqablD1il6AXuTvEVp57IoC9E=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569-8SK_mAANNvywcw8Ho3uqnQ-1; Tue, 25 Jan 2022 13:07:27 -0500
X-MC-Unique: 8SK_mAANNvywcw8Ho3uqnQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 p20-20020a05620a22b400b0047ecab0db4fso2280013qkh.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 10:07:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=ZEfQf7NJua62SjggPAfI7hi2kkuG+WaxVV42whKfUgw=;
 b=aB57pLaFf9RJvi9VQIkfbHWw+JIZ1MuP7J/tUWVwyTIeHluNK5wrgtYnFxLbjz0bvC
 xbOVEt6d+7RDiSMh1uQpPv2In0WVSxb32mZFmDn0ZWZuzpXpVONbVyIqPqI/obfGZM8o
 el45I4sm/nRQzxK5kG3EMcBGBZmZQXNmOMYpDDLBtw+frgrvgP8jyF4jOAhC3J168yfd
 0p1LwswxLbw/67LbZl3nJWZu7Ul0oomIqn3LHag3UNMSWNOYQ5dsbbxFR2B3WsEG2BMj
 B63cTkrbHpNlvDrCTDnBX8t21VREFBmli37WLJMyxaPEjIKbXisvBbv86tvsjWYzdLNb
 XsDA==
X-Gm-Message-State: AOAM533cYxP/+qsfVqJgQuFMXguT7y9ciRmmuS2D2irTU8Bu6kmwv8/r
 5sf5a+CYPlevOb4DX98O9emFpk3ccj5Sm093OkjQX8EBC32wBYCrJzKxxJ2NjM6KbMlxFKkeCeg
 f7llhn/VyK+TXpuK0+1jhcGF8hy0D
X-Received: by 2002:a05:6214:e49:: with SMTP id
 o9mr11684588qvc.74.1643134047197; 
 Tue, 25 Jan 2022 10:07:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz5chA1vWVixULaoENxsvSdrIfoqll1Vej8L3M2v9UTip4BQdiu3GfisVfZJchwq8FB79GEjw==
X-Received: by 2002:a05:6214:e49:: with SMTP id
 o9mr11684554qvc.74.1643134046889; 
 Tue, 25 Jan 2022 10:07:26 -0800 (PST)
Received: from [192.168.8.138] (pool-98-118-105-43.bstnma.ftas.verizon.net.
 [98.118.105.43])
 by smtp.gmail.com with ESMTPSA id a128sm3603859qkf.1.2022.01.25.10.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 10:07:26 -0800 (PST)
Message-ID: <9ba9d47695366babf06778a783d91794fbb00367.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 13:07:24 -0500
In-Reply-To: <ccf5ad6358dbce333da2718b72b06e69ffceb552.1643130139.git.jani.nikula@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
 <ccf5ad6358dbce333da2718b72b06e69ffceb552.1643130139.git.jani.nikula@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/mst: update slot information
 for 128b/132b
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
Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-by: Lyude Paul <lyude@redhat.com>

BTW - I made a ton of progress last week on getting all of this stuff moved
into the atomic state :), mainly just trying to get amd hooked up with this
now (and need to rebase):

https://gitlab.freedesktop.org/lyudess/linux/-/commits/wip/mst-atomic-only-v1

So we soon won't need this slots hack

On Tue, 2022-01-25 at 19:03 +0200, Jani Nikula wrote:
> 128b/132b supports using 64 slots starting from 0, while 8b/10b reserves
> slot 0 for metadata.
> 
> Commit d6c6a76f80a1 ("drm: Update MST First Link Slot Information Based
> on Encoding Format") added support for updating the topology state
> accordingly, and commit 41724ea273cd ("drm/amd/display: Add DP 2.0 MST
> DM Support") started using it in the amd driver.
> 
> This feels more than a little cumbersome, especially updating the
> information in atomic check. For i915, add the update to MST connector
> .compute_config hook rather than iterating over all MST managers and
> connectors in global mode config .atomic_check. Fingers crossed.
> 
> v2:
> - Update in .compute_config() not .atomic_check (Ville)
> 
> Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 +++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b8bc7d397c81..ff75e22bde5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -99,6 +99,27 @@ static int intel_dp_mst_compute_link_config(struct
> intel_encoder *encoder,
>         return 0;
>  }
>  
> +static void intel_dp_mst_update_slots(struct intel_encoder *encoder,
> +                                     struct intel_crtc_state *crtc_state,
> +                                     struct drm_connector_state
> *conn_state)
> +{
> +       struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +       struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> +       struct intel_dp *intel_dp = &intel_mst->primary->dp;
> +       struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> +       struct drm_dp_mst_topology_state *topology_state;
> +       u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
> +               DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> +
> +       topology_state = drm_atomic_get_mst_topology_state(conn_state-
> >state, mgr);
> +       if (IS_ERR(topology_state)) {
> +               drm_dbg_kms(&i915->drm, "slot update failed\n");
> +               return;
> +       }
> +
> +       drm_dp_mst_update_slots(topology_state, link_coding_cap);
> +}
> +
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>                                        struct intel_crtc_state *pipe_config,
>                                        struct drm_connector_state
> *conn_state)
> @@ -155,6 +176,8 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>         if (ret)
>                 return ret;
>  
> +       intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
> +
>         pipe_config->limited_color_range =
>                 intel_dp_limited_color_range(pipe_config, conn_state);
>  
> @@ -357,6 +380,7 @@ static void intel_mst_disable_dp(struct
> intel_atomic_state *state,
>         struct intel_connector *connector =
>                 to_intel_connector(old_conn_state->connector);
>         struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +       int start_slot = intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;
>         int ret;
>  
>         drm_dbg_kms(&i915->drm, "active links %d\n",
> @@ -366,7 +390,7 @@ static void intel_mst_disable_dp(struct
> intel_atomic_state *state,
>  
>         drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
>  
> -       ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
> +       ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
>         if (ret) {
>                 drm_dbg_kms(&i915->drm, "failed to update payload %d\n",
> ret);
>         }
> @@ -475,6 +499,7 @@ static void intel_mst_pre_enable_dp(struct
> intel_atomic_state *state,
>         struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>         struct intel_connector *connector =
>                 to_intel_connector(conn_state->connector);
> +       int start_slot = intel_dp_is_uhbr(pipe_config) ? 0 : 1;
>         int ret;
>         bool first_mst_stream;
>  
> @@ -509,7 +534,7 @@ static void intel_mst_pre_enable_dp(struct
> intel_atomic_state *state,
>  
>         intel_dp->active_mst_links++;
>  
> -       ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
> +       ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
>  
>         /*
>          * Before Gen 12 this is not done as part of

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

