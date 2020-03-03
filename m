Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A32177063
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 08:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1197F6E9C1;
	Tue,  3 Mar 2020 07:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D0256E9C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583221798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xjWuGi8VoxEa/7IRUsNT8IH5t1orQDQx/dOZifSCRPM=;
 b=VhrYt/KyDHSrfkNZFdlbGxZ6T2IccNvKWUD3keoE4ZufZEAaW1Ba3z165NPiIk6IOXa4gW
 5+8jhLHNoMGLus8tqQ5hs0ua+kmwl4mq5dRXOMOoMYOCv45zcxEg5Cg9Yo+GuolqDIlD/q
 xCFSbyszbvjIkUNhmbfdPWKT1uWgMVY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-bIB_i_uoPcON9DfTKFpabA-1; Tue, 03 Mar 2020 02:49:54 -0500
X-MC-Unique: bIB_i_uoPcON9DfTKFpabA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76FD31005512;
 Tue,  3 Mar 2020 07:49:53 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 172C75C1D6;
 Tue,  3 Mar 2020 07:49:53 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6E3FD17449; Tue,  3 Mar 2020 08:49:52 +0100 (CET)
Date: Tue, 3 Mar 2020 08:49:52 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200303074952.qjpmolrwuzyoevms@sirius.home.kraxel.org>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-28-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
In-Reply-To: <20200302222631.3861340-28-daniel.vetter@ffwll.ch>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-gfx] [PATCH 27/51] drm/bochs: Remove leftover
 drm_atomic_helper_shutdown
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 02, 2020 at 11:26:07PM +0100, Daniel Vetter wrote:
> Small mistake that crept into
> 
> commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab
> Author: Gerd Hoffmann <kraxel@redhat.com>
> Date:   Tue Feb 11 14:52:18 2020 +0100
> 
>     drm/bochs: add drm_driver.release callback
> 
> where drm_atomic_helper_shutdown was left in both places. The
> ->release callback really shouldn't touch hardware.
> 
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Acked-by: Gerd Hoffmann <kraxel@redhat.com>

> ---
>  drivers/gpu/drm/bochs/bochs_kms.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
> index 8066d7d370d5..e8cc8156d773 100644
> --- a/drivers/gpu/drm/bochs/bochs_kms.c
> +++ b/drivers/gpu/drm/bochs/bochs_kms.c
> @@ -166,6 +166,5 @@ void bochs_kms_fini(struct bochs_device *bochs)
>  	if (!bochs->dev->mode_config.num_connector)
>  		return;
>  
> -	drm_atomic_helper_shutdown(bochs->dev);
>  	drm_mode_config_cleanup(bochs->dev);
>  }
> -- 
> 2.24.1
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
