Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBB74353BD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B982B8931D;
	Wed, 20 Oct 2021 19:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAB98931D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634757811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F9uSSB9q2/D0g0m9nNMQcDLuIXxHDB6JblWrJEAdFgk=;
 b=KyyUVMlwbAtvhhIzO9zmHAB4VriXSwWjp3HlEoyzyCH9/2WAb3JwTi5BsAdqd4l6/wiWyo
 avlhFawtTAAn+RX6S7mPB+cJ+V375uS1FvHuOCqhAltpO9A1iw8ueVIjzyL/qUnIQyLgGS
 luMVGPzP0GORDG+xjaQaT3JeDrgsLEA=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-XKHibbWPOfCF4oGaQH_myA-1; Wed, 20 Oct 2021 15:23:29 -0400
X-MC-Unique: XKHibbWPOfCF4oGaQH_myA-1
Received: by mail-qv1-f72.google.com with SMTP id
 ey7-20020a0562140b6700b00382cf3eb480so3576844qvb.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 12:23:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=F9uSSB9q2/D0g0m9nNMQcDLuIXxHDB6JblWrJEAdFgk=;
 b=krPUrJI4dfeVpeW/5S5LnYO6Sz4LRVUUwIBTAi6L1EYCbH4EtVjvWf+8HSSZPA0SSq
 ByW83lNcJ+S7CUZj3VD3kfgizce8i4JSj76Y7S/BI+ILZpgmfbZi2GDRrD2zY34b30KH
 n5FcVWqRKOyJx4bo7w2FfzC5K9hqes7HTRl94Bplgb8QgmH7yNMFGGBGyIfgvWXPuh30
 O6zRbJF/6OqJ5qrJufw45JBj2kN/0xenvYBC+gJePIRt3JHxvp/P7NSdRaygBAwrW2vN
 5fDpE0zLp6o176uk5AZIH4tk14jWbts8cbIihwlHYcvnLfY4cEfmHEG850mH3O6mJD0K
 1J1Q==
X-Gm-Message-State: AOAM533pG71iKNFZ+YSJC6GBiij1iLSaBDCIZ2JpJ24WI7PQZrthQCcr
 4Z4YLpcW7GrPPfOSUa8yUX+H9n4XDPXl0kKPS5yAv02aK6bKySVdMITcReuoc9EmiVQiVDDBcS7
 1TpKCFfAvJQisLtR4pg3vXvqCG0gx
X-Received: by 2002:a05:6214:154d:: with SMTP id
 t13mr612310qvw.40.1634757809525; 
 Wed, 20 Oct 2021 12:23:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyi/WpfzZroD4l2O2TiTUJFwUzG99fDvBlsFUQ0eyaoeaNvenzUPS3I4Kc3HT3gxaqg8DBRsg==
X-Received: by 2002:a05:6214:154d:: with SMTP id
 t13mr612279qvw.40.1634757809230; 
 Wed, 20 Oct 2021 12:23:29 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id i85sm1440530qke.61.2021.10.20.12.23.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 12:23:28 -0700 (PDT)
Message-ID: <db4376f7b61cdf6c3534f29a35ab84ff90ad9dc7.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Jerry.Zuo@amd.com, 
 dri-devel@lists.freedesktop.org
Cc: Harry.Wentland@amd.com, Wayne.Lin@amd.com, Nicholas.Kazlauskas@amd.com, 
 Mikita.Lipski@amd.com, intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 15:23:27 -0400
In-Reply-To: <20211020141603.19452-1-Bhawanpreet.Lakha@amd.com>
References: <20211020141603.19452-1-Bhawanpreet.Lakha@amd.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Remove slot checks in dp mst
 topology during commit
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

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Wed, 2021-10-20 at 10:16 -0400, Bhawanpreet Lakha wrote:
> This code path is used during commit, and we dont expect things to fail
> during the commit stage, so remove this.
> 
> Signed-off-by: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> ---
>  drivers/gpu/drm/drm_dp_mst_topology.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c
> b/drivers/gpu/drm/drm_dp_mst_topology.c
> index ad0795afc21c..5ab3b3a46e89 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -4332,10 +4332,6 @@ static int drm_dp_init_vcpi(struct
> drm_dp_mst_topology_mgr *mgr,
>  {
>         int ret;
>  
> -       /* max. time slots - one slot for MTP header */
> -       if (slots > 63)
> -               return -ENOSPC;
> -
>         vcpi->pbn = pbn;
>         vcpi->aligned_pbn = slots * mgr->pbn_div;
>         vcpi->num_slots = slots;
> @@ -4538,7 +4534,7 @@ bool drm_dp_mst_allocate_vcpi(struct
> drm_dp_mst_topology_mgr *mgr,
>  
>         ret = drm_dp_init_vcpi(mgr, &port->vcpi, pbn, slots);
>         if (ret) {
> -               drm_dbg_kms(mgr->dev, "failed to init vcpi slots=%d max=63
> ret=%d\n",
> +               drm_dbg_kms(mgr->dev, "failed to init vcpi slots=%d
> ret=%d\n",
>                             DIV_ROUND_UP(pbn, mgr->pbn_div), ret);
>                 drm_dp_mst_topology_put_port(port);
>                 goto out;

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

