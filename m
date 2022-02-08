Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1A64AE5B4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 00:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3583D10E190;
	Tue,  8 Feb 2022 23:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC9710E42B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 23:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644364769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1B+HhoEdav6Cob3bPb/BF6nu8D/2OQMn0TX9fIjaHGQ=;
 b=MpG1YVdKKkPEFDUJvs6mn4lY75+PRwhYzgNTZg9E+F+dkOPh0BuOiVc6IsyuRd2/rPFEjP
 hKzxJ50W0LNFgXPhURghc/394aKVeXcAZ/1iCZUFZEJ5OLkrC1/s8EG4+siRmOh9quq12M
 IaVWte4WoxtVI3kyTZ93epggKtRCMpQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-106-SvxUUnCgPYqOa1LFlDbEww-1; Tue, 08 Feb 2022 18:59:25 -0500
X-MC-Unique: SvxUUnCgPYqOa1LFlDbEww-1
Received: by mail-wr1-f70.google.com with SMTP id
 k20-20020adfc714000000b001e305cd1597so284545wrg.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 15:59:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=1B+HhoEdav6Cob3bPb/BF6nu8D/2OQMn0TX9fIjaHGQ=;
 b=5IuB5tQIezFlB+gZaJ5wXW1VnyDMVvoEv3dGXxbUgBtb0mGsnlLOw4ePVpeHC+dHHu
 cwEwPhcwg02RU/bM7RCRtI+G7LS2/UlC8IGEqo7Tz2VFRbJumHha5TC1obt2iW1VRgsJ
 rwwT7XNs1+U6gKwUcrD3w5H+4POA9w/z0yUja93c+Q3dLNY1B53oO5IBN9qHLbQAivCA
 /lnZ7pvVfkENVp9XF4w1+9eGPOL3Z7w9X4ibDtxFtP2LckxJkc4mRQjwIC+qzD50R2Cm
 PcwUL2PZKIK0k/dOGYQ9p/HzODiZtKQJ6irXKrBHcU9bUNih1z53YoRHa9uVHhPkzfwf
 MUlw==
X-Gm-Message-State: AOAM532SsBQsrNzDAauIvH/iG8AwzQMbMp9L0qYlXWFDvPnPnoxlwJXb
 Q/bGRgqU66LPZQZlx95df9CtcBA3H0D0GHUkK3FydRt5ki4Ew3xEs/kGjGbRcH07VA8acEzTkC2
 NN9ERvPgl2CbDNWvaheHjUIt5V3Av
X-Received: by 2002:a1c:4c19:: with SMTP id z25mr302722wmf.105.1644364764703; 
 Tue, 08 Feb 2022 15:59:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwyxrdx5PAN39E9zDPgBt3t7VCZ+YkAG7VKuS1GxY71C3wn6MOzwm1KHjgao+aMLB+p3UZbTg==
X-Received: by 2002:a1c:4c19:: with SMTP id z25mr302707wmf.105.1644364764502; 
 Tue, 08 Feb 2022 15:59:24 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id l24sm3859205wms.24.2022.02.08.15.59.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Feb 2022 15:59:24 -0800 (PST)
Message-ID: <c58f7b96-8d8c-030e-9fd2-358e259127e4@redhat.com>
Date: Wed, 9 Feb 2022 00:59:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
 <20220208210824.2238981-7-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220208210824.2238981-7-daniel.vetter@ffwll.ch>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 06/19] fbcon: Use delayed work for cursor
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
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Daniel,

On 2/8/22 22:08, Daniel Vetter wrote:
> Allows us to delete a bunch of hand-rolled stuff. Also to simplify the
> code we initialize the cursor_work completely when we allocate the
> fbcon_ops structure, instead of trying to cope with console
> re-initialization.
> 

Maybe also make it more explicit in the commit message that the delayed
work is replacing a timer that was used before for the cursor ?

> The motiviation here is that fbcon code stops using the fb_info.queue,

motivation

[snip]

>     /*
>      *    This is the interface between the low-level console driver and the
> @@ -68,7 +68,7 @@ struct fbcon_ops {
>  	int  (*update_start)(struct fb_info *info);
>  	int  (*rotate_font)(struct fb_info *info, struct vc_data *vc);
>  	struct fb_var_screeninfo var;  /* copy of the current fb_var_screeninfo */
> -	struct timer_list cursor_timer; /* Cursor timer */
> +	struct delayed_work cursor_work; /* Cursor timer */

A delayed_work uses a timer underneath but I wonder if the comment also
needs to be updated since technically isn't a timer anymore but deferred
work that gets re-scheduled each time on fb_flashcursor().

The patch looks good to me and makes the logic much simpler than before.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

