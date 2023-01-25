Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D767ADFD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041D210E74F;
	Wed, 25 Jan 2023 09:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026FA10E0DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 09:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674639070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e/WkTUKbzuIyITLmeh/5Sbr5wRBScMiQq+Y/7HiPtGw=;
 b=d+zH8qUgX6rL7h9v6iS7Rth5k846BgCuMAA/BpSgdP2T0Yvbdh8CzP5G8n2/Allc2cs2oT
 d3G+a+bSi9bvvtYg6YBjKmeRjNerclb5K6tjF1mzh1fetz+R0gK//+VnvO/6wmHDP/iYXd
 aNdN3G6T117/IOgJsqeZyAd8HiY+MYE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-624-GmaJLzukMguTOkVkc5lusA-1; Wed, 25 Jan 2023 04:31:08 -0500
X-MC-Unique: GmaJLzukMguTOkVkc5lusA-1
Received: by mail-wm1-f72.google.com with SMTP id
 bi18-20020a05600c3d9200b003d991844dbcso798505wmb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 01:31:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e/WkTUKbzuIyITLmeh/5Sbr5wRBScMiQq+Y/7HiPtGw=;
 b=y+9UfUwLy9U5k3q5Kjfq1eZQeuyg1h7xHq7fVJK4A9Pw3KVTAqT/i9pY2vrORFcvLu
 8cXCly8BqtVWyVOG72NmkbM/J7v9JhnxvrvAJsw3ESCFrtlcSbVNl7RCrplru4GMwQEN
 GAlYBzK2Uc+/rWm8lREsPAG/kLR8+lnPL/u5FTLTciLvQ25evLbqwAolbCKZudtO735L
 3Qkeq88oEtsCtA/8U9+gbHm1nhNKqZY8Z88x+rpcYz+33K9ijkZ/wF29KYssG7ZzP5yI
 kHTr8PbH/wB8Uhz0QDcObTxvB2fCpgrJTkWv22NOORFOcvgW7j6oPMpdBGxvftfrDV8Y
 ddEA==
X-Gm-Message-State: AFqh2krx0KtJ8RbtYeLTrwvIqP33dpwQIfKNyktmW8R/v7WbeV4wnhJb
 uwCV2jjle/k/U2tMWCuFRtfEPE6HnlEWl+yZAo89Us07CtJkOxHPcz4HMuC34lqVCL9Be1IoNDR
 ptGQruKokW5sI7pF5kmt8/ZrvTd87
X-Received: by 2002:a05:600c:c10:b0:3da:f5e6:a320 with SMTP id
 fm16-20020a05600c0c1000b003daf5e6a320mr35822715wmb.22.1674639066889; 
 Wed, 25 Jan 2023 01:31:06 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtFX/Kp2mSluNmLe5a+pgmO0l5es7cQOLhWqEKWjvp22TqYJWLpxeu0OJ4sOlzZNMpRvS8iog==
X-Received: by 2002:a05:600c:c10:b0:3da:f5e6:a320 with SMTP id
 fm16-20020a05600c0c1000b003daf5e6a320mr35822702wmb.22.1674639066649; 
 Wed, 25 Jan 2023 01:31:06 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 t20-20020adfa2d4000000b002bdcce37d31sm4573358wra.99.2023.01.25.01.31.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 01:31:06 -0800 (PST)
Message-ID: <6bb09a17-2f13-4920-b156-3be80e507f48@redhat.com>
Date: Wed, 25 Jan 2023 10:31:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
References: <20230124134010.30263-1-tzimmermann@suse.de>
 <20230124134010.30263-6-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230124134010.30263-6-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 05/10] drm/fb-helper: Remove
 preferred_bpp parameter from fbdev internals
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/24/23 14:40, Thomas Zimmermann wrote:
> Store the console's preferred BPP value in struct drm_fb_helper
> and remove the respective function parameters from the internal
> fbdev code.
> 
> The BPP value is only required as a fallback and will now always
> be available in the fb-helper instance.
> 
> No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

That's much better indeed.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

