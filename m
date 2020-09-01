Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E2B259DE9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 20:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EAC6E8BC;
	Tue,  1 Sep 2020 18:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7790E6E8BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598983972;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IWJWzTx3pX3egCxzBZ3TdwdiVQLffbFj5Plb9sh0KXs=;
 b=ClaS905F7e+LoY18CBeS3rXBNGO3StInu3FhcX5WbmOHoRJ5ehvjAcdsewCCFSsVRu3Pl/
 TpXzORFnUa+hwUji7pSb7Nd3JProbEYrTGiPMb1naViQk3mhzPZu1LZZggcJnkhKxZmcU0
 bWDMesmQ7DIk6+wHRH2OyvAeK/+GTIE=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-CQAZ7Hu_POeCWZ4xymIk1Q-1; Tue, 01 Sep 2020 14:12:49 -0400
X-MC-Unique: CQAZ7Hu_POeCWZ4xymIk1Q-1
Received: by mail-qk1-f200.google.com with SMTP id u23so1514097qku.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Sep 2020 11:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=IWJWzTx3pX3egCxzBZ3TdwdiVQLffbFj5Plb9sh0KXs=;
 b=kaXx58Os1EVQzw7sp2dqu4AwKptj5olxhOydPyDrICCZizXIMwO5L3hmfrv24/8uNf
 sfQBVHexHbkM/HeDXmFc581VfIfvOsdHL9gRXtb1omkMh7/uL5/BaPtGxxJ4OypeKxgN
 4uHRFT7qx2IXusaSqNqkxSVhEe9RI+h5iZsOiTgJzlqEB5dA2ehjIaI4oHE3WWhb2pcB
 CUXqACOlz6NVQDh7jFAHg9j+HLASDNKbpGJLLHkd1vVtBcac7TfsydN6OGTfTYJCM1ck
 kT8NqjcQFjIEkjL1JsOLOYnQVcBpsTLjk3Xq1D3Sbvy8xhhGUd4IAgoT2Qplv153TXQ2
 fJ2w==
X-Gm-Message-State: AOAM532yeiDhO59tWEzU/jhIK7virt+kIRfnSKHqB2QlWaoXLlN76I89
 WHZU2HAZoXW2gxXjJ9KzbQhjKb3ZU71bzWMgaul6AWOZhiPBm3eVAUZG6NflRYmTPqAzKOTIVP7
 /p9hkY8e9ziTeZKYUfHeGxE2LrJbx
X-Received: by 2002:a05:6214:2a:: with SMTP id b10mr3340972qvr.0.1598983968888; 
 Tue, 01 Sep 2020 11:12:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMFVD50LRbeLmFF2tTs1knZvE6PFEKHFE2d0b5K8leymqWgcabiNSeotgtbFvAUGv3vnf48g==
X-Received: by 2002:a05:6214:2a:: with SMTP id b10mr3340951qvr.0.1598983968552; 
 Tue, 01 Sep 2020 11:12:48 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id d9sm2462883qkj.83.2020.09.01.11.12.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Sep 2020 11:12:47 -0700 (PDT)
Message-ID: <c5caee2875a86e68fc66c7bf2eae03393289aded.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Sam McNally <sammc@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Date: Tue, 01 Sep 2020 14:12:46 -0400
In-Reply-To: <20200901162133.4.I900b1b80709b7632a47d0ddb4cd375b4a3616c9e@changeid>
References: <20200901162133.1.I8693156f555875e5c8342e86ab37ce968dfdd277@changeid>
 <20200901162133.4.I900b1b80709b7632a47d0ddb4cd375b4a3616c9e@changeid>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm_dp_cec: add plumbing in preparation
 for MST support
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 David Francis <David.Francis@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, amd-gfx@lists.freedesktop.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Ben Skeggs <bskeggs@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Leo Li <sunpeng.li@amd.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Mikita Lipski <mikita.lipski@amd.com>,
 dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Super minor nitpicks:

On Tue, 2020-09-01 at 16:22 +1000, Sam McNally wrote:
> From: Hans Verkuil <hans.verkuil@cisco.com>
> 
> Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
> [sammc@chromium.org:
>  - rebased
>  - removed polling-related changes
>  - moved the calls to drm_dp_cec_(un)set_edid() into the next patch
> ]
> Signed-off-by: Sam McNally <sammc@chromium.org>
> ---
> 
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
>  drivers/gpu/drm/drm_dp_cec.c                  | 22 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/nouveau/nouveau_connector.c   |  2 +-
>  include/drm/drm_dp_helper.h                   |  6 +++--
>  5 files changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> index 461fa4da0a34..6e7075893ec9 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> @@ -419,7 +419,7 @@ void amdgpu_dm_initialize_dp_connector(struct
> amdgpu_display_manager *dm,
>  
>  	drm_dp_aux_init(&aconnector->dm_dp_aux.aux);
>  	drm_dp_cec_register_connector(&aconnector->dm_dp_aux.aux,
> -				      &aconnector->base);
> +				      &aconnector->base, false);
>  
>  	if (aconnector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
>  		return;
> diff --git a/drivers/gpu/drm/drm_dp_cec.c b/drivers/gpu/drm/drm_dp_cec.c
> index 3ab2609f9ec7..04ab7b88055c 100644
> --- a/drivers/gpu/drm/drm_dp_cec.c
> +++ b/drivers/gpu/drm/drm_dp_cec.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_connector.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_dp_helper.h>
> +#include <drm/drm_dp_mst_helper.h>
>  
>  /*
>   * Unfortunately it turns out that we have a chicken-and-egg situation
> @@ -338,8 +339,6 @@ void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const
> struct edid *edid)
>  	if (aux->cec.adap) {
>  		if (aux->cec.adap->capabilities == cec_caps &&
>  		    aux->cec.adap->available_log_addrs == num_las) {
> -			/* Unchanged, so just set the phys addr */
> -			cec_s_phys_addr_from_edid(aux->cec.adap, edid);
>  			goto unlock;
>  		}

May as well drop the braces here

>  		/*
> @@ -364,15 +363,16 @@ void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const
> struct edid *edid)
>  	if (cec_register_adapter(aux->cec.adap, connector->dev->dev)) {
>  		cec_delete_adapter(aux->cec.adap);
>  		aux->cec.adap = NULL;
> -	} else {
> -		/*
> -		 * Update the phys addr for the new CEC adapter. When called
> -		 * from drm_dp_cec_register_connector() edid == NULL, so in
> -		 * that case the phys addr is just invalidated.
> -		 */
> -		cec_s_phys_addr_from_edid(aux->cec.adap, edid);
>  	}
>  unlock:
> +	/*
> +	 * Update the phys addr for the new CEC adapter. When called
> +	 * from drm_dp_cec_register_connector() edid == NULL, so in
> +	 * that case the phys addr is just invalidated.
> +	 */
> +	if (aux->cec.adap && edid) {
> +		cec_s_phys_addr_from_edid(aux->cec.adap, edid);
> +	}

And here

>  	mutex_unlock(&aux->cec.lock);
>  }
>  EXPORT_SYMBOL(drm_dp_cec_set_edid);
> @@ -418,6 +418,7 @@ EXPORT_SYMBOL(drm_dp_cec_unset_edid);
>   * drm_dp_cec_register_connector() - register a new connector
>   * @aux: DisplayPort AUX channel
>   * @connector: drm connector
> + * @is_mst: set to true if this is an MST branch
>   *
>   * A new connector was registered with associated CEC adapter name and
>   * CEC adapter parent device. After registering the name and parent
> @@ -425,12 +426,13 @@ EXPORT_SYMBOL(drm_dp_cec_unset_edid);
>   * CEC and to register a CEC adapter if that is the case.
>   */
>  void drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> -				   struct drm_connector *connector)
> +				   struct drm_connector *connector, bool is_mst)
>  {
>  	WARN_ON(aux->cec.adap);
>  	if (WARN_ON(!aux->transfer))
>  		return;
>  	aux->cec.connector = connector;
> +	aux->cec.is_mst = is_mst;

Also JFYI, you can also check aux->is_remote, but maybe you've got another
reason for copying this here

Either way:

Reviewed-by: Lyude Paul <lyude@redhat.com>

...Also, maybe this is just a coincidence - but do I know your name from
somewhere? Perhaps an IRC community from long ago?

>  	INIT_DELAYED_WORK(&aux->cec.unregister_work,
>  			  drm_dp_cec_unregister_work);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 82b9de274f65..744cb55572f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6261,7 +6261,7 @@ intel_dp_connector_register(struct drm_connector
> *connector)
>  	intel_dp->aux.dev = connector->kdev;
>  	ret = drm_dp_aux_register(&intel_dp->aux);
>  	if (!ret)
> -		drm_dp_cec_register_connector(&intel_dp->aux, connector);
> +		drm_dp_cec_register_connector(&intel_dp->aux, connector, false);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c
> b/drivers/gpu/drm/nouveau/nouveau_connector.c
> index 49dd0cbc332f..671a70e95cd1 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_connector.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
> @@ -1414,7 +1414,7 @@ nouveau_connector_create(struct drm_device *dev,
>  	switch (type) {
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  	case DRM_MODE_CONNECTOR_eDP:
> -		drm_dp_cec_register_connector(&nv_connector->aux, connector);
> +		drm_dp_cec_register_connector(&nv_connector->aux, connector,
> false);
>  		break;
>  	}
>  
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 85513eeb2196..12bca1b9512b 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1495,12 +1495,14 @@ struct drm_connector;
>   * @lock: mutex protecting this struct
>   * @adap: the CEC adapter for CEC-Tunneling-over-AUX support.
>   * @connector: the connector this CEC adapter is associated with
> + * @is_mst: this is an MST branch
>   * @unregister_work: unregister the CEC adapter
>   */
>  struct drm_dp_aux_cec {
>  	struct mutex lock;
>  	struct cec_adapter *adap;
>  	struct drm_connector *connector;
> +	bool is_mst;
>  	struct delayed_work unregister_work;
>  };
>  
> @@ -1746,7 +1748,7 @@ drm_dp_has_quirk(const struct drm_dp_desc *desc, u32
> edid_quirks,
>  #ifdef CONFIG_DRM_DP_CEC
>  void drm_dp_cec_irq(struct drm_dp_aux *aux);
>  void drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> -				   struct drm_connector *connector);
> +				   struct drm_connector *connector, bool
> is_mst);
>  void drm_dp_cec_unregister_connector(struct drm_dp_aux *aux);
>  void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const struct edid *edid);
>  void drm_dp_cec_unset_edid(struct drm_dp_aux *aux);
> @@ -1757,7 +1759,7 @@ static inline void drm_dp_cec_irq(struct drm_dp_aux
> *aux)
>  
>  static inline void
>  drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> -			      struct drm_connector *connector)
> +			      struct drm_connector *connector, bool is_mst)
>  {
>  }
>  
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
