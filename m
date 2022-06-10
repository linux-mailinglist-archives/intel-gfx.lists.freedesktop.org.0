Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372055461C9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 11:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A40710ECBE;
	Fri, 10 Jun 2022 09:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2BC1121DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 09:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654853021;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ui+GefT7glVYbZJx7tAzYAgsijo4mtXjq2iJjZnCAk0=;
 b=VwiEIxe/LaExm6l2og1pbF5h542CfsUbeaCks3VXGwCXMuri4GoOLcGYT7NYJiHxON0kbF
 N52CeSOpi7/at0/StowzFU8+kVk/IN/nAti+lkk3oCThaK31fSeS1zPE7BG02REVvqwXGz
 DuXY7lOLypFxDE0DFFuHtqzSll0OGc4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-416-H3KtOtXENLqXpoiTqsqpfQ-1; Fri, 10 Jun 2022 05:23:40 -0400
X-MC-Unique: H3KtOtXENLqXpoiTqsqpfQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 l3-20020a05600c1d0300b0039c7efa2526so174547wms.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 02:23:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ui+GefT7glVYbZJx7tAzYAgsijo4mtXjq2iJjZnCAk0=;
 b=aVuIxU/+KBBqvmy+gUMjw17nDEkeUKkz17voVM2IFFztc9WZvel98XHY0NlSVdobhp
 woRYEQR0SpY6muckiYbl/Cm9FdgrWXBICTYog3/L741PSt5M/pJMnUJKFTI73FmV2BZI
 cLBYjK1iZI2s2WwModtazljA4hIKzU8HhCWWL2rc9z7BNwC3TkbA/BzTxckayG/SJuto
 Dyq59TwH/wOqskf3KLHIhl86f3+sEtrhoypT5cNELrz+I+J4edRxJS31bCw5eNHyXP7M
 j0aIVevwf5upV1q7g0G5n8ZtOQ/cBGMaj+ucMAwJ7o2lqB9s2BoMdTc+P2rNSmEENjYa
 kwXw==
X-Gm-Message-State: AOAM531Th+KkY3/04n4yOdNj5uF7qlsTzeQLgpO8mKCzCH5o4q9Pee0d
 ijniGLKCUzaccXdbX4EIu4iVJchO5aRkVOwpuAOWdbTM9KjX5yuoG23rIkbUF7S4b43CQ3kqcBJ
 Xb2caAm6rzboE61NqYIA2pta+j8a7
X-Received: by 2002:a05:600c:1e2a:b0:39c:51f8:80d4 with SMTP id
 ay42-20020a05600c1e2a00b0039c51f880d4mr7909006wmb.192.1654853018892; 
 Fri, 10 Jun 2022 02:23:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzors8lrVCLvoMtZbR/XO1Cue4ykhrTN0Lh/orNjpsTm7XBIYzUbhU/YNQRJll7iilJG9sY3A==
X-Received: by 2002:a05:600c:1e2a:b0:39c:51f8:80d4 with SMTP id
 ay42-20020a05600c1e2a00b0039c51f880d4mr7908984wmb.192.1654853018625; 
 Fri, 10 Jun 2022 02:23:38 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 e16-20020a05600c255000b0039c4b518df4sm2814684wma.5.2022.06.10.02.23.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jun 2022 02:23:38 -0700 (PDT)
Message-ID: <3babc5cc-2f03-4b25-1cb3-82f039e3c40d@redhat.com>
Date: Fri, 10 Jun 2022 11:23:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
References: <20220610144958.5b90e8d3@canb.auug.org.au>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220610144958.5b90e8d3@canb.auug.org.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Stephen,

On 6/10/22 06:49, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the drm-misc tree, today's linux-next build (powerpc
> allyesconfig) failed like this:
> 
> drivers/firmware/efi/sysfb_efi.c:29:10: fatal error: asm/efi.h: No such file or directory
>    29 | #include <asm/efi.h>
>       |          ^~~~~~~~~~~
>

I noticed that this header include is not necessary so I posted [0] to
just drop it, and mentioned the build error too with your Reported-by.
 
> Caused by commit
> 
>   fa0e256450f2 ("fbdev: vesafb: Allow to be built if COMPILE_TEST is enabled")
>

I posted a revert [1] for this but for a different reason (since after
[0] I believe the issue in powerpc should be fixed), which is that the
patch led to linking errors on arches that don't define a screen_info.

[0]: https://lkml.org/lkml/2022/6/10/323
[1]: https://lkml.org/lkml/2022/6/10/316

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

