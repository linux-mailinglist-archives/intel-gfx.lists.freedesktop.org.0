Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC05651E893
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 18:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45CA410EB00;
	Sat,  7 May 2022 16:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5337F10E53E
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651941621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=inhGipBUDTXnB2qKEYfxvYqIWIZ4u692zATmOyojLEY=;
 b=P2xdkMOrnlXMmJ2ZZzyFgYr7WSjkqWUx+j3Qib3wqZUx9ChFlbVZMIW4CDgQrCFj1sA8tQ
 yUCByAcKeVcf4uhttGMjJlrLkisWHKlesBgltXvx9ThLIHt/H5OCV6KuGrL0E+2/Jyycpf
 zXkBdKbRBZYy1yGKl9bJuS3mkKeQUy0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-iiGXPijQMqGdgcN1HbkzaA-1; Sat, 07 May 2022 12:40:19 -0400
X-MC-Unique: iiGXPijQMqGdgcN1HbkzaA-1
Received: by mail-wm1-f71.google.com with SMTP id
 k35-20020a05600c1ca300b003946a9764baso3853395wms.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 May 2022 09:40:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=inhGipBUDTXnB2qKEYfxvYqIWIZ4u692zATmOyojLEY=;
 b=uhsH1gr1eZtW7j7H4wtB+XUY5+NGjCQaFU39T737CKH48xmKzhabr/P773BbwTZ4rJ
 tPa+24/n/gB6wNvqXkm8ah2l19Vm9sjmGpIiOW9XQ7VtBdfeN5ClHQIQAFrSgAM8fOal
 so+u1Si7Xjx7uUvg32Mdxv7ob+jcOKs5ljwHHyXMR3XpEu75wDw0WZdk/URPmVmw5cVQ
 YwxpsLKBqQuUyIoLFGYMl0pe1kzTvW2eY8vtWz/HCQkqDGHUNSO16PVIlz7qiZ/7phE4
 bNszfwYJgaa+ZFpZEbSV0FB3TrVnr9PAFfw7r2nHsjuIMlTYuy4ypSDMLPj1IQCpWuxN
 H+EQ==
X-Gm-Message-State: AOAM531v6eu7t1cNmXK7aYX+yzD1U2VnHq44Oe5hXhRpH6ZTQ46WLdUe
 2QYqcEdMKYbH75Nar+cEF6NRwzRBGoSP4pmQs2iZmyi9bSq35GwmsbZoVRGeQZspz9ORTDLGHI6
 V2KVl51tAqR/afkAZ8ccrgtTOHM6A
X-Received: by 2002:a1c:f705:0:b0:37d:f2e5:d8ec with SMTP id
 v5-20020a1cf705000000b0037df2e5d8ecmr15431654wmh.21.1651941618626; 
 Sat, 07 May 2022 09:40:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykhasS4dK4eppFGtBqCb2g0PaleaocuXsAQca/dvV5qInWX6ynRAZXrO0TJxqEd2vidA73gA==
X-Received: by 2002:a1c:f705:0:b0:37d:f2e5:d8ec with SMTP id
 v5-20020a1cf705000000b0037df2e5d8ecmr15431630wmh.21.1651941618195; 
 Sat, 07 May 2022 09:40:18 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 e2-20020a5d5942000000b0020c5253d8e1sm7951521wri.45.2022.05.07.09.40.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 May 2022 09:40:17 -0700 (PDT)
Message-ID: <981d7ed4-8554-73ca-bfd1-2d89e4e91af3@redhat.com>
Date: Sat, 7 May 2022 18:40:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220506132225.588379-1-javierm@redhat.com>
 <20220507162053.auo2idd5twvnxatj@ldmartin-desk2>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220507162053.auo2idd5twvnxatj@ldmartin-desk2>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] fbdev: efifb: Fix a use-after-free due
 early fb_info cleanup
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Peter Jones <pjones@redhat.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Lucas,

On 5/7/22 18:20, Lucas De Marchi wrote:
> On Fri, May 06, 2022 at 03:22:25PM +0200, Javier Martinez Canillas wrote:
>> Commit d258d00fb9c7 ("fbdev: efifb: Cleanup fb_info in .fb_destroy rather
>> than .remove") attempted to fix a use-after-free error due driver freeing
>> the fb_info in the .remove handler instead of doing it in .fb_destroy.
>>
>> But ironically that change introduced yet another use-after-free since the
>> fb_info was still used after the free.
>>
>> This should fix for good by freeing the fb_info at the end of the handler.
>>
>> Fixes: d258d00fb9c7 ("fbdev: efifb: Cleanup fb_info in .fb_destroy rather than .remove")
> 
> are these patches going through any CI before being applied? Maybe would
> be a good idea to cc intel-gfx mailing list on these fixes to have Intel
> CI to pick them up for some tests?
>

I Cc'ed intel-gfx for this particular patch. I should had done it for the
previous patches too, but I wasn't aware that Cc'ing that list would make
it run on your CI.

I tested locally the offending patch on an EFI platform before applying it
and I don't know why it didn't fail there. Sorry all for the inconvenience.
 
> pushed to drm-misc-fixes where the previous patch was applied.
> 

Thanks.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

