Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9773BDD35D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB90010E3A3;
	Wed, 15 Oct 2025 07:52:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KU1ZYWOy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830E410E3A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 07:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760514765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MHykXUHzy3P15VrWtRxCqfqVXwzZ2Ylga+RWIrK7dZE=;
 b=KU1ZYWOyDIwp4S0YN5O9G5v4PiTcyS4tN2OQ/zFd0tL87xUu7N5utJO4rRX6rfjM5Tep26
 Bu+ls5UIsYWtXP0m1ccwoy7RBnvhQu42i7X6UWwHXKRfzSKKL01F0/My/kbWlUsQI+uqgl
 mdqwvQiqrlRTGWgul8yBE/ZqBjORHc8=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-457-hGMVmezONX--u6db5mlG9Q-1; Wed, 15 Oct 2025 03:52:44 -0400
X-MC-Unique: hGMVmezONX--u6db5mlG9Q-1
X-Mimecast-MFC-AGG-ID: hGMVmezONX--u6db5mlG9Q_1760514763
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-46e36686ca1so56133945e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 00:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760514763; x=1761119563;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MHykXUHzy3P15VrWtRxCqfqVXwzZ2Ylga+RWIrK7dZE=;
 b=K0hEdGCs2BZXrGPnP97h8cV3k4bjALwcIoe/bsJdp3kVzeNvOMRUshBnpVBm4GbcPB
 gSXeaShLqklxFtj4mN0zeCC1/GE1zlxn5vdpReSfTlBXkhWydd5E7B4aPUm57qxAL041
 DDtBb5+oxMcHmIo1RtEwc1hEJhY2JHZwrRxR+TlvjYX9XW9piFdUib6HwZzBqW3XHrwq
 H94tOZ8ZhVP6hxpKqZdJ8Fk2IAPz7I3oOgBp/Dn7NSOjHqzHuwU9bmnNsD5iq8lcrIbr
 BIDhmfsj7eq93ETFsW8SaKvteytZxr4QOywomTZ53PC/lncJ0nxDli55Sy80YEm66lQJ
 A+3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMGEZanC+IZZ1esy59C9B26PBd6oC1rkzHYhPGu7d9CkpHAd+UchySgiedG5hc4/1pEcGtNqMo3SI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxhkstg+byZcYHZWjHpcXBbDLcj2l9gBVefvqYJKiCabf1YY7o2
 +Hn2PtwfVKaCakgz5jxP1S6Lfa1xZ2cLp0PRv7srb/J/5vL/L7eoiPdIclAWdy7mzzHQGeB49SO
 SaPoB/SXnFm3mBfN5rCFYzHPsb+ZlqdQrF9kifFS44Xtg/wyOcOp9Ly6kbc4dhSSLQJWp0tzGej
 bl9xOH
X-Gm-Gg: ASbGncuIVomWH34QL5A4hKwuCKuyW+nvLulgA6joGYrZ5Y3GSBJpTRLpk8RVEMrny7Z
 PyTWpPEbizGqetxs3qTkPjj4fkJ7YAKLXarH7XLUGufbHyGqlzD8/pG2kAL+m0ymE4iO9Ds4n9f
 55ufIzoPPgsOD7viPF+tVQhQUV6X72aeYxBEeSFQP4Z7EE3ZFlSQ0ecbBGU5iOSfmLPxSHToIJd
 F7m56UiaMANmDbWYIoh9qtfQMuSfj87vqFGD1VCAHN8DDRGNUcl9l0rq3+rZuuT7IE8PhHILTDP
 NLlEpGnPKMt9VERuzLLA0C4+aZdXBvRo3Pb9TcddOIE7O0V5cJv7Pu/7u+HgyzUEvVW+d1VnWqT
 AdOuW
X-Received: by 2002:a05:600c:34cc:b0:46e:59dd:1b4d with SMTP id
 5b1f17b1804b1-46fa9aa2076mr211303545e9.16.1760514763152; 
 Wed, 15 Oct 2025 00:52:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHW2ZDBPJxUfYCX0H6nLEKOLye2i61674dJQY/ZLYYwFVcv5Uohdp1HeQRReQYkGVWqF+Eh1g==
X-Received: by 2002:a05:600c:34cc:b0:46e:59dd:1b4d with SMTP id
 5b1f17b1804b1-46fa9aa2076mr211303305e9.16.1760514762767; 
 Wed, 15 Oct 2025 00:52:42 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47106fc97adsm2155395e9.9.2025.10.15.00.52.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Oct 2025 00:52:42 -0700 (PDT)
Message-ID: <3d07c6ba-02d6-4d3f-8684-65a41b128539@redhat.com>
Date: Wed, 15 Oct 2025 09:52:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/log: Do not hold lock across drm_client_release()
To: Thomas Zimmermann <tzimmermann@suse.de>, javierm@redhat.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org
References: <20251009132006.45834-1-tzimmermann@suse.de>
 <20251009132006.45834-3-tzimmermann@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20251009132006.45834-3-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: N7EvIiDoIdDpzmKL6eF5QXttc070uiQqd5B7LNuh_mE_1760514763
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
> When calling drm_client_release(), the client is already quiescent.
> Internal locks should therefore be dropped before the caller releases
> the client.
> 
> In the case of the DRM log, concurrency originates from the console or
> from client events. The console has been unregistered in the previous
> line. The caller of the unregister callback, drm_log_client_unregister(),
> holds clientlist_mutex from struct drm_device to protect against concurrent
> client events. It is therefore safe to release the client without holding
> locks.

Thanks, I agree, it should be safe to move drm_client_release() after 
the lock.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>   drivers/gpu/drm/clients/drm_log.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/clients/drm_log.c b/drivers/gpu/drm/clients/drm_log.c
> index d239f1e3c456..116e0ef9ae5d 100644
> --- a/drivers/gpu/drm/clients/drm_log.c
> +++ b/drivers/gpu/drm/clients/drm_log.c
> @@ -302,8 +302,8 @@ static void drm_log_client_unregister(struct drm_client_dev *client)
>   
>   	mutex_lock(&dlog->lock);
>   	drm_log_free_scanout(client);
> -	drm_client_release(client);
>   	mutex_unlock(&dlog->lock);
> +	drm_client_release(client);
>   	kfree(dlog);
>   	drm_dbg(dev, "Unregistered with drm log\n");
>   }

