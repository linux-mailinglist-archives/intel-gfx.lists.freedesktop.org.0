Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C345651CE6
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA6F10E341;
	Tue, 20 Dec 2022 09:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F6310E343
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671527437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nkva43Ev6FmONs/91WyhlWJwflJzPv43uZcJFYvlalU=;
 b=JzBWdQOszQ7DlHvTb0wSn8Tf1GCTLLK10xId6uF2YQIQ914Kxxi9ub5Cam8pK0D55BVThL
 g4zTUdGjkSvhx77Fjh4k3+fkswYcSzF01TsVZK4g2GIY/ATw8im/zjRR7F5EGAVOeyEOTs
 ncE15wSmZIKhfZaj7UBYA8UJCr4TU/c=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-459-Tge_k7_qNsa-M8KYbzWxnw-1; Tue, 20 Dec 2022 04:10:36 -0500
X-MC-Unique: Tge_k7_qNsa-M8KYbzWxnw-1
Received: by mail-wm1-f71.google.com with SMTP id
 r129-20020a1c4487000000b003d153a83d27so6294544wma.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:10:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nkva43Ev6FmONs/91WyhlWJwflJzPv43uZcJFYvlalU=;
 b=388+q/x5cnJcOSqL0tH1T2bdN1PYxvj72MZTQMpR60+mPP/QbpgPzmUWdqL0G3dOPY
 UkrMLaJ7sOxBdlEH0/a4wkKengJB90xE7LKwm7hcFtWF52OTACfFhMRyJciJa+9jx4Oc
 yEqqBu72vqwxdZYen7mnwzfkF7YpDH3kSP5Ha/PToF+3duEkIw+282j98Fmxk81aCvkc
 MftYvqMu+OUCHhCET09G2KybKKayxgAXFguQo+nlkpmqDR+JjTJV3Sm2gGqw72b6prPl
 Zyc8D7+iOdzHWN45m++p16tANOZHwmgzf6bVqpX/aEHsvW4vcmuCzspP3HW2SG+u9AAa
 h/mw==
X-Gm-Message-State: AFqh2ko2FlI5EHo9Uvn3l3Nf5hKuYe8jLJ3ZXIo276W6OeIvuYQQRr7R
 23RHNPDGg6axef/XDI8odnETyRb45bt1VNJ0faNAzfL6wCcxEHYujyR0K8utR824azvilNf8vS+
 E2QbElit+Vy8hjZcCq+fvJQJUEKTN
X-Received: by 2002:a5d:624a:0:b0:242:19b3:67 with SMTP id
 m10-20020a5d624a000000b0024219b30067mr748871wrv.37.1671527435422; 
 Tue, 20 Dec 2022 01:10:35 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvZ4T3pjgbBye4AD0pnUB9As/CnLPdlMjMDQrxm4f9mLfnMBPQihgpuK1r6jSAdZ8wsH7ZV9g==
X-Received: by 2002:a5d:624a:0:b0:242:19b3:67 with SMTP id
 m10-20020a5d624a000000b0024219b30067mr748861wrv.37.1671527435215; 
 Tue, 20 Dec 2022 01:10:35 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 v5-20020a5d59c5000000b00241fea203b6sm12177113wry.87.2022.12.20.01.10.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:10:34 -0800 (PST)
Message-ID: <1ba311d8-efe5-c3f0-761e-1b5695dd5ba2@redhat.com>
Date: Tue, 20 Dec 2022 10:10:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-2-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-2-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/18] fbcon: Remove trailing whitespaces
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

On 12/19/22 17:04, Thomas Zimmermann wrote:
> Fix coding style. No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

