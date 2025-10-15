Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1062BDD366
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322FE10E74D;
	Wed, 15 Oct 2025 07:53:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bmXn9JrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B07C710E74D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760514801;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t+HZgDzRdpaVTxvZqJl2rTn2R8LelhY8vbHUCgBN35M=;
 b=bmXn9JrQpnXIgBIw9B+OdbBlL8xcHTvHbrxrnsbTtxgjCncHiCTt/DbEuiDjvVFwMjndkt
 2PF5rM9yjd+e8qgJFXmy1tTrldkMDEyfLeAHj/CHvWU5dvO8oY0t7++1wlpYSvR/9/ede6
 m/NfpDIEEpnp+bHWCnjX1QcxhEFbKqA=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-62-4Fe0J-y-Pyy4vPfmfriMZg-1; Wed, 15 Oct 2025 03:53:20 -0400
X-MC-Unique: 4Fe0J-y-Pyy4vPfmfriMZg-1
X-Mimecast-MFC-AGG-ID: 4Fe0J-y-Pyy4vPfmfriMZg_1760514799
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-46e509374dcso27163435e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 00:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760514799; x=1761119599;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=t+HZgDzRdpaVTxvZqJl2rTn2R8LelhY8vbHUCgBN35M=;
 b=oG5keTbcW9TMOy9a/nVa1ySgmPOWT9i6/lEDd6nw1Qkh0lZiL7EYKtcJP4SSxQp2SZ
 Vxq2GjD4p4AcNbm868rB31l+cT/g8Am2o8V0FKTGd0WrSlL+HXjL9sHwesNQrWVGhn8Z
 qssI7sB39JuTW/rUGpb5VH4ee3iZZzblEdljjhTqn6HQ5O5ptLxJgx77IjB/auqf8RNv
 leasPqr2Injv5xADLEZpHVf9tZls1eXPLB0tj1IlZRogVwP6oeXNdo6RTvVgWGw5ZqBQ
 BJRJmCPaUBfulp3ygM8imnhpR8meWRq9jrBXrgfdFZ/5uWRmiY3aEs49fPZsXL1a5YlS
 9W6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFcXQ8DOhmRbVAWs923MnOJO4aVGYyikZ4KwGY2FEiR9CAOcx7m86GxWD8Mwe/Gn+NKqa04mG+1CQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YznXGpg92YfoXJ7iw3ldCnt868CTd0QRSDbwopo0Yuz+7I/MIlc
 JuIMAltbRzcojzgZ40HEVYrgQoyf7i5kAyBUu2D8p1FwhP0lmBGVB+jJEMQvnLIfeXf9hsEriUz
 MR5LDs/wSV0p9N3TPbSWcMjMlwUPhPeMSwhmtOZuMUgYoj9DH6P1zCu77xN7sg6YbmpAi1g==
X-Gm-Gg: ASbGnctQxJ2kMC6A00eilDigzACZoQc8RxNBjLrjc/WjzbdkqaC8Gd/IAQiVur3OOeP
 iXyRUAm5S+wN9vAr7qvTnxx5nGnX6Rnr561lWz8Diq9dOklZKe3dLh7Yf/VbsHCqz7IqBTOMgfq
 prUTh3shKtdbxPqSqHz5qrBQnAR+kdiPQGbRL5bmuO3eY5taNWz9US6J8ITaG6pcijTeVG8z+DF
 oZJ7Un1ab5RDqg3jn4Qwr2r4xctU9wtXrHal8z3gtP+56GgM2fijtY2t9LXXpOmyo2/sGfM5XE5
 UTq39gxOtFS09zx3MeNdRSmBvhR8Yp+UfMZ6K3US1Yd1MuoKdfxP2qgntg8+pWulrwCMSPGCrpt
 +Un9W
X-Received: by 2002:a05:600c:1e28:b0:45b:47e1:ef6d with SMTP id
 5b1f17b1804b1-46fa9b11746mr202661435e9.36.1760514799494; 
 Wed, 15 Oct 2025 00:53:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZf7d9TK63edfjPsh4LrX74Y6wRlhtOgKLsjlyk6mKGtY9U4BbM1bQ2mcLbjosAJUslcGWjg==
X-Received: by 2002:a05:600c:1e28:b0:45b:47e1:ef6d with SMTP id
 5b1f17b1804b1-46fa9b11746mr202661265e9.36.1760514799084; 
 Wed, 15 Oct 2025 00:53:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47101c21805sm14875785e9.10.2025.10.15.00.53.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Oct 2025 00:53:18 -0700 (PDT)
Message-ID: <c256b8d9-ec9e-4841-9136-1198ad2d590a@redhat.com>
Date: Wed, 15 Oct 2025 09:53:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/log: Add free callback
To: Thomas Zimmermann <tzimmermann@suse.de>, javierm@redhat.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org
References: <20251009132006.45834-1-tzimmermann@suse.de>
 <20251009132006.45834-4-tzimmermann@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20251009132006.45834-4-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NPfVGcxnJP2qoZLSvNo-16rbT5j8S4Nw9tOmTZQxDRA_1760514799
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 09/10/2025 15:16, Thomas Zimmermann wrote:
> Free the client memory in the client free callback. Also move the
> debugging output into the free callback: drm_client_release() puts
> the reference on the DRM device, so pointers to the device should
> be considered dangling afterwards.

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>   drivers/gpu/drm/clients/drm_log.c | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/clients/drm_log.c b/drivers/gpu/drm/clients/drm_log.c
> index 116e0ef9ae5d..470df4148e96 100644
> --- a/drivers/gpu/drm/clients/drm_log.c
> +++ b/drivers/gpu/drm/clients/drm_log.c
> @@ -293,19 +293,26 @@ static void drm_log_free_scanout(struct drm_client_dev *client)
>   	}
>   }
>   
> -static void drm_log_client_unregister(struct drm_client_dev *client)
> +static void drm_log_client_free(struct drm_client_dev *client)
>   {
>   	struct drm_log *dlog = client_to_drm_log(client);
>   	struct drm_device *dev = client->dev;
>   
> +	kfree(dlog);
> +
> +	drm_dbg(dev, "Unregistered with drm log\n");
> +}
> +
> +static void drm_log_client_unregister(struct drm_client_dev *client)
> +{
> +	struct drm_log *dlog = client_to_drm_log(client);
> +
>   	unregister_console(&dlog->con);
>   
>   	mutex_lock(&dlog->lock);
>   	drm_log_free_scanout(client);
>   	mutex_unlock(&dlog->lock);
>   	drm_client_release(client);
> -	kfree(dlog);
> -	drm_dbg(dev, "Unregistered with drm log\n");
>   }
>   
>   static int drm_log_client_hotplug(struct drm_client_dev *client)
> @@ -339,6 +346,7 @@ static int drm_log_client_resume(struct drm_client_dev *client, bool _console_lo
>   
>   static const struct drm_client_funcs drm_log_client_funcs = {
>   	.owner		= THIS_MODULE,
> +	.free		= drm_log_client_free,
>   	.unregister	= drm_log_client_unregister,
>   	.hotplug	= drm_log_client_hotplug,
>   	.suspend	= drm_log_client_suspend,

