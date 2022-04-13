Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA24FF327
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 11:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF7C10FFB1;
	Wed, 13 Apr 2022 09:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E6610FFB1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 09:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649841373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xTXTo1j2VUzZu94UXW2jvU9sHQZzZe8BCpBqmf/05N4=;
 b=aBSm8wCgKWkEXeg8QE4r3Ho4HjQXG2rno9OMRt7maE1LlmEvE8RWHqK8riLfrWzg6dinfB
 rPJc4KxMsNizfljMi7nkK51xV9eU5fdatisARDztyu000AOL+LDMEP/6qhw65AzAxIKJwi
 h9QZ6thEcf6s2vpo3aAszofrBBrFmXM=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-275-S83LAa8OOwKkQRIMFHhBQw-1; Wed, 13 Apr 2022 05:16:11 -0400
X-MC-Unique: S83LAa8OOwKkQRIMFHhBQw-1
Received: by mail-wr1-f72.google.com with SMTP id
 j67-20020adf9149000000b00203e6b7d151so198363wrj.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 02:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xTXTo1j2VUzZu94UXW2jvU9sHQZzZe8BCpBqmf/05N4=;
 b=a8w34NYWehz9NKSTuKUcPlfPY2tv1Z5sdngwwYZgWk1UxD4q5wYxmepQ3/vYwhKufF
 +elEJ3IDmLPZj+nDolMqqTuHA8PKzP2i13Zy+BydoDe1YgfSD+qqpC9w9Ue4ZBcnbQRV
 9LSPKRbrOExrA5pYRIayOAYnMjNhiqXkRRlJXDzjcuhmQVNksg81oxWH6QWAX0eD0ch+
 SpLRU/UyR10cmpOZUYTMZzVJOP6S+gn50tn5fRL+GV03WvfV3/G2LGP2co9k7MXh7o6I
 KpCdjkogfEUBbkFCchWV+6uPEHQim7fB8E4O9UcAz4id4mTBklDxR9Xdh0KLPrS9Dyhq
 O75w==
X-Gm-Message-State: AOAM5304YsENXEhJGri8SVuC93a8VQeCCAP/0nCw9TNSTyn+Z7C9XV8X
 Z4ACV0hqdr3rsFdgVTUlco38kllgQFziMTBoaqa/xq9YE6sXzh80oCGeB3Wa9e+bLLCT0hrJLub
 FDmxvar63Izc5mp/bDqdx8hipmWlY
X-Received: by 2002:a05:6000:1a87:b0:207:84f5:910c with SMTP id
 f7-20020a0560001a8700b0020784f5910cmr24438292wry.213.1649841370597; 
 Wed, 13 Apr 2022 02:16:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJySRabLECdiItraTQv0py5YvPUKpfTU2p6RY/EGuaFBjLkXKvBBb/NmgSnN7ZPDhTTGz+S+cQ==
X-Received: by 2002:a05:6000:1a87:b0:207:84f5:910c with SMTP id
 f7-20020a0560001a8700b0020784f5910cmr24438275wry.213.1649841370344; 
 Wed, 13 Apr 2022 02:16:10 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id
 g7-20020a5d64e7000000b00204a13925dcsm33593418wri.11.2022.04.13.02.16.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 02:16:09 -0700 (PDT)
Message-ID: <955400a5-a785-57af-92d4-42710c55ce99@redhat.com>
Date: Wed, 13 Apr 2022 11:16:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] fbcon: Fix delayed takeover locking
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
Cc: Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, Matthew Wilcox <willy@infradead.org>,
 Nathan Chancellor <nathan@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Daniel,

On 4/13/22 10:21, Daniel Vetter wrote:
> I messed up the delayed takover path in the locking conversion in
> 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister").
>

Maybe a few more words of what the issue is ? Something like the following:

If CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is enabled, fbcon take-over
doesn't take place when calling fbcon_fb_registered(). Instead, is deferred
using a workqueue and its fbcon_register_existing_fbs() function calls to
fbcon_fb_registered() again for each registered fbcon fb.

This leads to the console_lock tried to be held twice, causing a deadlock.
 
> Fix it by re-extracting the lockless function and using it in the
> delayed takeover path, where we need to hold the lock already to
> iterate over the list of already registered fb. Well the current code
> still is broken in there (since the list is protected by a
> registration_lock, which we can't take here because it nests the other
> way round with console_lock), but in the future this will be a list
> protected by console_lock when this is all sorted out.
> 

[snip]

>  
> -/* called with console_lock held */
>  void fbcon_fb_unbind(struct fb_info *info)
>  {
>  	int i, new_idx = -1;
> @@ -2822,7 +2821,6 @@ void fbcon_fb_unbind(struct fb_info *info)
>  	console_unlock();
>  }
>  
> -/* called with console_lock held */
>  void fbcon_fb_unregistered(struct fb_info *info)
>  {

Removing these comments feels like should be in a separate patch or at least
mention in the patch description that should had been removed in the commit
6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister"),
that made these functions to be called without the console_lock being held.

The changes themselves look good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

