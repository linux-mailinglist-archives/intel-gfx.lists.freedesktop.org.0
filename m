Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F126F55F1A4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 00:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6849B113B49;
	Tue, 28 Jun 2022 22:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544B71133DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 22:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656456961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jybXg/FUgJez1sldBOUSITHswGwsCdpMTH0/zg4mKAQ=;
 b=LJ+Pw089Uk6eFpjVMb4BwvzZ21MA2IiCXY76EpkkhCuacbekSrOAX19jdM89OZ3jnTdorf
 ntbNxP7HBUmDOPkmXYpnz7bjAPuBQ1fFptCZCCW+5TCCcSJ48rGFVQdk0g69QDwIzl6V2o
 J1sjN/pGO5OmYMO7Q4vkdT1QHN1Ac7c=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-nli493a0NAa-zYvovN9asg-1; Tue, 28 Jun 2022 18:56:00 -0400
X-MC-Unique: nli493a0NAa-zYvovN9asg-1
Received: by mail-qk1-f200.google.com with SMTP id
 m15-20020a05620a290f00b006a74cf760b2so14875147qkp.20
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 15:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=jybXg/FUgJez1sldBOUSITHswGwsCdpMTH0/zg4mKAQ=;
 b=CGUNhxPMehvcVr3tX9azoL152x6Om8uJv3LgUVBGquNnQr6F7PRqfCxrNLvnW/BKKK
 1ooAL2n8qGe0aMayd3iCdEbIpMKw6WEccethJS1+mrv+1s7TH+TpR8RBuH+PpLvYrNr0
 IbE7C69VHZfwT5silO1bz6++gdi1IFHWEQy+6jPu7DHQIyckQHRLxn6Mcts/3lcJ7hjJ
 0X7z2xFhLRCepMTJ2UJuoWsuDwqCNXNBIaB5EbfrfRtwAAIhjOyGNwLUBkLLN4MFyi4R
 kggLPhcWSkKaO+TNofqcoYrR3pPW4y9M5HjXXo4KreEdpOOlWfsOUeZfv3hU4L8qDZ+E
 QDdQ==
X-Gm-Message-State: AJIora+FhRwJTqJ36unbFrSdyucVdu15jf0xhbfjsdpdHrYrzi4KrG3U
 Bz+q+mjVEnce+hiuqchgPHyCtKe/VcxdYq6YOzLp7ylatYNsgebLHFMBn5jN/6ulO+zzynWF3tH
 8eMVTRCwxZZ0ki6N1fDzFrOccDyA7
X-Received: by 2002:ad4:5b8a:0:b0:470:9844:82eb with SMTP id
 10-20020ad45b8a000000b00470984482ebmr4500437qvp.80.1656456959704; 
 Tue, 28 Jun 2022 15:55:59 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uv0diZbu7DdlAqriM5qJnTjzPu331swtoRWodUD0GwGzVbEhqdjcba19pYI3CvpJYTRfV0qg==
X-Received: by 2002:ad4:5b8a:0:b0:470:9844:82eb with SMTP id
 10-20020ad45b8a000000b00470984482ebmr4500421qvp.80.1656456959441; 
 Tue, 28 Jun 2022 15:55:59 -0700 (PDT)
Received: from [192.168.8.138] ([141.154.49.182])
 by smtp.gmail.com with ESMTPSA id
 r4-20020ac84244000000b00317ca023e33sm9361586qtm.80.2022.06.28.15.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jun 2022 15:55:58 -0700 (PDT)
Message-ID: <4119ed8c7ace96e1fa46b34fd9e8404828c3e57d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hangyu Hua <hbh25y@gmail.com>, jani.nikula@linux.intel.com, 
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, 
 tvrtko.ursulin@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch, 
 ville.syrjala@linux.intel.com, jose.souza@intel.com,
 matthew.d.roper@intel.com,  anshuman.gupta@intel.com, heying24@huawei.com,
 james.ausmus@intel.com
Date: Tue, 28 Jun 2022 18:55:57 -0400
In-Reply-To: <20220624022813.10796-1-hbh25y@gmail.com>
References: <20220624022813.10796-1-hbh25y@gmail.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH RESEND] drm: i915: fix a possible refcount
 leak in intel_dp_add_mst_connector()
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Nice catch!

Reviewed-by: Lyude Paul <lyude@redhat.com>

Will push to drm-intel-next

On Fri, 2022-06-24 at 10:28 +0800, Hangyu Hua wrote:
> If drm_connector_init fails, intel_connector_free will be called to take
> care of proper free. So it is necessary to drop the refcount of port
> before intel_connector_free.
> 
> Fixes: 091a4f91942a ("drm/i915: Handle drm-layer errors in
> intel_dp_add_mst_connector")
> Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 061b277e5ce7..14d2a64193b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -839,6 +839,7 @@ static struct drm_connector
> *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>         ret = drm_connector_init(dev, connector,
> &intel_dp_mst_connector_funcs,
>                                  DRM_MODE_CONNECTOR_DisplayPort);
>         if (ret) {
> +               drm_dp_mst_put_port_malloc(port);
>                 intel_connector_free(intel_connector);
>                 return NULL;
>         }

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

