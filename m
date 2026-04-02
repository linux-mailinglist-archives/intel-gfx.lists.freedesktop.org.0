Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHyHEtGVzmkBowYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 18:14:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19EA38BB28
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 18:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B6F10F300;
	Thu,  2 Apr 2026 16:14:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="clPT0Vw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6039A10F2FF;
 Thu,  2 Apr 2026 16:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1775146443;
 bh=s2CUUZ2Fms9wFK5hdhsvbXU3XIA1Je2RIT4u1Pft+uE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=clPT0Vw0/RzZzt7CNm3lc332c+BAA/Otm2qxkUnvJsXyTGUJVIhpoNCSKAFR4ml4P
 t64SYMHpfIjAuSfd6pu9lafh9w0LAgUcQrGUj/1Sxnj3vViBgzUlhqAbsjd+jEysNy
 VnA7G7VB0Nzv3G1L7Z06eFi9snO9tAcMk27oUbR/Yzuqtz2RArYhsFv+912X1kmLyH
 6ODxTb+7y7VMZm4A5QpI75IEMiUMQX+JOybSCTy1llLCLcwOQl8gC3D8jNX2+b14wb
 N6fUjipa2shETiUWr5AbLLAL4qP9q5Dst6PJMv6fXMVhUQMfVMZl9jTiFGn64ymrkP
 zTORrt+UlpVBg==
Message-ID: <59096db1-aac5-4b3c-9689-43fbc29c5911@lankhorst.se>
Date: Thu, 2 Apr 2026 18:14:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/3] drm/display: Add drm helper to check pr
 optimization support
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Imre Deak <imre.deak@intel.com>
References: <20260330133620.3750559-1-animesh.manna@intel.com>
 <20260330133620.3750559-2-animesh.manna@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260330133620.3750559-2-animesh.manna@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: A19EA38BB28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-03-30 kl. 15:36, skrev Animesh Manna:
> Add api to check panel replay optimization supported or not to
> drm-core DP tunneling framework which can be used by other driver
> as well.
> 
> v2: Split generic drm changes from Intel specific changes. [Jouni]
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Acked-by: Maarten Lankhorst <dev@lankhorst.se>

> ---
>  drivers/gpu/drm/display/drm_dp_tunnel.c | 17 +++++++++++++++++
>  include/drm/display/drm_dp_tunnel.h     |  6 ++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
> index 6519b4244728..08dc5d26b2c5 100644
> --- a/drivers/gpu/drm/display/drm_dp_tunnel.c
> +++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
> @@ -149,6 +149,7 @@ struct drm_dp_tunnel {
>  	bool bw_alloc_enabled:1;
>  	bool has_io_error:1;
>  	bool destroyed:1;
> +	bool pr_optimization_support:1;
>  };
>  
>  struct drm_dp_tunnel_group_state;
> @@ -508,6 +509,8 @@ create_tunnel(struct drm_dp_tunnel_mgr *mgr,
>  
>  	tunnel->bw_alloc_supported = tunnel_reg_bw_alloc_supported(regs);
>  	tunnel->bw_alloc_enabled = tunnel_reg_bw_alloc_enabled(regs);
> +	tunnel->pr_optimization_support = tunnel_reg(regs, DP_TUNNELING_CAPABILITIES) &
> +					  DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT;
>  
>  	if (!add_tunnel_to_group(mgr, drv_group_id, tunnel)) {
>  		kfree(tunnel);
> @@ -1036,6 +1039,20 @@ bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel *tunnel)
>  }
>  EXPORT_SYMBOL(drm_dp_tunnel_bw_alloc_is_enabled);
>  
> +/**
> + * drm_dp_tunnel_pr_optimization_supported - Query the PR BW optimization support
> + * @tunnel: Tunnel object
> + *
> + * Query if the PR BW optimization is supported for @tunnel.
> + *
> + * Returns %true if the PR BW optimiation is supported for @tunnel.
> + */
> +bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel)
> +{
> +	return tunnel && tunnel->pr_optimization_support;
> +}
> +EXPORT_SYMBOL(drm_dp_tunnel_pr_optimization_supported);
> +
>  static int clear_bw_req_state(struct drm_dp_aux *aux)
>  {
>  	u8 bw_req_mask = DP_BW_REQUEST_SUCCEEDED | DP_BW_REQUEST_FAILED;
> diff --git a/include/drm/display/drm_dp_tunnel.h b/include/drm/display/drm_dp_tunnel.h
> index 87212c847915..4aa3ce9fd829 100644
> --- a/include/drm/display/drm_dp_tunnel.h
> +++ b/include/drm/display/drm_dp_tunnel.h
> @@ -53,6 +53,7 @@ int drm_dp_tunnel_destroy(struct drm_dp_tunnel *tunnel);
>  int drm_dp_tunnel_enable_bw_alloc(struct drm_dp_tunnel *tunnel);
>  int drm_dp_tunnel_disable_bw_alloc(struct drm_dp_tunnel *tunnel);
>  bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel *tunnel);
> +bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel);
>  int drm_dp_tunnel_alloc_bw(struct drm_dp_tunnel *tunnel, int bw);
>  int drm_dp_tunnel_get_allocated_bw(struct drm_dp_tunnel *tunnel);
>  int drm_dp_tunnel_update_state(struct drm_dp_tunnel *tunnel);
> @@ -140,6 +141,11 @@ static inline bool drm_dp_tunnel_bw_alloc_is_enabled(const struct drm_dp_tunnel
>  	return false;
>  }
>  
> +static inline bool drm_dp_tunnel_pr_optimization_supported(const struct drm_dp_tunnel *tunnel)
> +{
> +	return false;
> +}
> +
>  static inline int
>  drm_dp_tunnel_alloc_bw(struct drm_dp_tunnel *tunnel, int bw)
>  {

