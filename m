Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA92425399
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 15:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63FB6F46D;
	Thu,  7 Oct 2021 13:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F80F6F46D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 13:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633611710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ARhL598TB2m+TX0EI9Ao+MzjmMSRgdGPOREMZbTcPE8=;
 b=NZGBOvYiZMpTNihML5UZ0ijccLvwvfmLbkJ33ZnDvsN/cI+AqXmQBLRU4948+4K91JXofd
 qmKfavx7iKIr2vO3eLLjpc6F32WltwkPWcXrWwaw6GlkJPUN7CAflJDT/p3DQqhCVgx8fr
 sDSk1f78z3xB6FfU1YScWZJPYwi9/30=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-vD4dBLOcNFi9d2N2GzJ9rw-1; Thu, 07 Oct 2021 09:01:49 -0400
X-MC-Unique: vD4dBLOcNFi9d2N2GzJ9rw-1
Received: by mail-wr1-f72.google.com with SMTP id
 e12-20020a056000178c00b001606927de88so4620047wrg.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Oct 2021 06:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ARhL598TB2m+TX0EI9Ao+MzjmMSRgdGPOREMZbTcPE8=;
 b=ORTOaIBb8xQTWV05dVboTsu1+JZHISM7N/OwibUFhMMKpvn9Dhs65WAr34+CXlHb0r
 HEzvnWLsp0S+m3bBFTihOhecvEXBIdubk8pHVRyet1xGLxb/xqoHOg4DDsJ5b/cwpXNO
 pPiCXJvXfKLRKhuxND7TLWjg/hGiKQ5GT21gMtSY02vfKmZSNB2opDH6J6X2IZ5pafiI
 EmUjcWntcjzSAWuAzQp1YdASbW6G5niDgOanytkaA3OGZUMVJtmz1gKC+8I/FUFWNvyV
 201b8XhtskkYrgYK9wuSDi9PWIqw182nwt/zLYSncPGyv4GjB+luKyjIgzgxiHMsDFTY
 vwlQ==
X-Gm-Message-State: AOAM531JpgD2JhyaxfOMrhM1w/aEry1HC3B5KXx9gTOvzFrTQ7rpRh7L
 KLzZB+RGSxLb2jqz7nzMJXoMwpj5o3nPJtMC/f6DAzuJTxUkEnisxdRFix3Dz8V5pW5f3ZV4iyj
 guegvv39cL7QFdexGOUrbEa7IDxNm
X-Received: by 2002:a1c:790e:: with SMTP id l14mr3229289wme.99.1633611708509; 
 Thu, 07 Oct 2021 06:01:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXlRBY7taxAQbZGMBqlAHc6poQUcD9zUp0wzsvJ0bJpC6/k22124IC5QYnqoHbzRteaQG46w==
X-Received: by 2002:a1c:790e:: with SMTP id l14mr3229256wme.99.1633611708288; 
 Thu, 07 Oct 2021 06:01:48 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id m4sm9193730wml.28.2021.10.07.06.01.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Oct 2021 06:01:47 -0700 (PDT)
Message-ID: <4d93315b-d370-c178-7c68-3dce1c95b42f@redhat.com>
Date: Thu, 7 Oct 2021 15:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Johannes Stezenbach <js@sig21.net>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <YV6hBl5ybMxm5Dln@sig21.net> <YV7qVorGtO5NHKkC@intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <YV7qVorGtO5NHKkC@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [bisected] suspend broken by DRM fbdev name change
 on i915 IVB
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

Hello,

On 10/7/21 14:38, Ville Syrjälä wrote:

[snip]

>>
>> So the ABI change in /proc/fb causes the pm-utils scripts to
>> skip the --quirk-no-chvt and apply other quirks,
>> /var/log/pm-suspend.log says:
> 
> Nasty. This pm-utils quirk stuff really has no business existing IMO,
> and so I recommend nuking pm-utils from your system as soon as possible.
> Back when I still had it on my machines (due to some silly dependency
> I think), I just created empty override files in /etc/pm/ to permanently
> disable all the quirks.
> 
> But as long people might be using it I guess we need some kind of
> revert/fix to put the "drmfb" back into the name. Javier?
> 

Yes, the change was just cosmetic because we had confusing names such as
"simpledrmdrmfb". When it was proposed, the agreement was that /proc/fb
shouldn't be considered an ABI but now we found that people are using it.

So I agree that would be better to revert this patch. Johannes, will you
post a revert or do you want me to do it ?

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

