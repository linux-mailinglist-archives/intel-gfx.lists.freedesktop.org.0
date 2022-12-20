Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7693651DD8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160EC10E36B;
	Tue, 20 Dec 2022 09:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948E110E36D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=bMNfBpnQ0R4k+ZK8hL0B6FvdIHuE2a82b6uq5TwyVbtjv66Bs6gClwvEX1W6Fp3/8xwXD2
 dqhZCRE0PLbY6sGXEU4B8doc9gx/9iHlNxoiEiwYCKyUlTRJCUDkQO3LpaklI1gpIPUkiz
 d8HmCBKJ4wvs+IM57SvO4ncgFUGRrYA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-358-MkzbcCHmNC2DVUiNw3KVAg-1; Tue, 20 Dec 2022 04:43:56 -0500
X-MC-Unique: MkzbcCHmNC2DVUiNw3KVAg-1
Received: by mail-wr1-f71.google.com with SMTP id
 x1-20020adfbb41000000b002426b33b618so2084839wrg.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:43:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=TEu3/Tcq5Oj6cKYkHinQRAkoCzc1rG1uLyJ9rGYxk8gMwovJXM47DHojjffJCkEdeZ
 Myk23rm6Dr5FjI2Tz2BVubME44wEI4sdp/6O5OrWGocAGcYjou3YhbSURPO3f5D/v5l9
 O/PjIwbkv5/CzrUXFO5b8s5cx6UlCKX5GibufS2VzMwxFVfHvCPH8q7xbnfHAmZmFRie
 0TLjaogn8xj5H5JNrIAhl6ml7/m/tWJf1w/kwTTNpGNfJdno2h+2h+BiwFPouc44KSiy
 AFFWLWrnbfG0jztkwW9ZMfhuYeFPnM4YwojaFZ6BHq1BKOIYpsuhFNSSahsJAmYZnChk
 9NCw==
X-Gm-Message-State: AFqh2ko7iTbsMtZgDoLpoCsiexvaQSXk3w0dJ4DGXzV0aYzm1dZ8nI9i
 4XErmmcvR7+8HvvkAK1dNY44fmpygYmeEo1JnUirFZI/RAk0PwJbAQOu96qDtAR7sphceqDKXtT
 8EryIojXdd4osWmlQiXz0wmSol99j
X-Received: by 2002:a05:600c:4311:b0:3d2:3e75:7bb9 with SMTP id
 p17-20020a05600c431100b003d23e757bb9mr994920wme.34.1671529435450; 
 Tue, 20 Dec 2022 01:43:55 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvfI2fbHCkuQqRJ76jLZpFV0pKFd9I/EWHnHADcWJc2WmgvjMGHFvYEzSGe6w+l7QXDUqu6sg==
X-Received: by 2002:a05:600c:4311:b0:3d2:3e75:7bb9 with SMTP id
 p17-20020a05600c431100b003d23e757bb9mr994914wme.34.1671529435238; 
 Tue, 20 Dec 2022 01:43:55 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 y7-20020a05600c364700b003d33ab317dasm17144094wmq.14.2022.12.20.01.43.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:43:54 -0800 (PST)
Message-ID: <c9a34fd2-3dc5-18d7-20b4-b5c9e69ad039@redhat.com>
Date: Tue, 20 Dec 2022 10:43:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-17-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-17-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 16/18] fbdev/vesafb: Do not use struct
 fb_info.apertures
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-hyperv@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/19/22 17:05, Thomas Zimmermann wrote:
> Acquire ownership of the firmware scanout buffer by calling Linux'
> aperture helpers. Remove the use of struct fb_info.apertures and do
> not set FBINFO_MISC_FIRMWARE; both of which previously configured
> buffer ownership.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

