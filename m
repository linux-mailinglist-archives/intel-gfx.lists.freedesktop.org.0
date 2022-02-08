Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AC94AE532
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 00:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F236E10E358;
	Tue,  8 Feb 2022 23:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E4210E358
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 23:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644361596;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9Hq44IoeTfJkZkwVY9Vl9iSJryds5VqEFOHSRWPT7XY=;
 b=TTlCFI2C/79D3lqHjzv5sQHi+1oQHPGTiKoaS0upNUi6ud9sJSwUQYQ+RAVi9YwVDd7LZ4
 Q0kuuaRvllQcyr4HvAF4/hMS/5Wh13A9uwFY6V+sobaGceX8C78/5djKqYHLiRXjcOOviY
 F6fh7cpKs/4Puv0PiWKESzxBp/aOqrQ=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-82-NNX0VWkBNF2tVbB8REHa2Q-1; Tue, 08 Feb 2022 18:06:33 -0500
X-MC-Unique: NNX0VWkBNF2tVbB8REHa2Q-1
Received: by mail-wm1-f71.google.com with SMTP id
 h82-20020a1c2155000000b003552c13626cso1737557wmh.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 15:06:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=9Hq44IoeTfJkZkwVY9Vl9iSJryds5VqEFOHSRWPT7XY=;
 b=vFIFJHLyQyVRLK555QteVmIMgDv/Ads5pnclmLSiJj824M5CriS1aKblzwN5rjSilU
 smOvnVR2jLrH+UDuZMNu106bDociTgv89KHL5BsAUrraIZoHmf9XZvvQ0CArBnhdWY/V
 d3P7+NXSBd012gQw/awkdq5Qgrmh1itB5yX2BPVh59GqpeVXNgXEunN++D+HuPGdpcop
 /L1gaE07FMJcrlYjOYzKWdQX4deIV/ha7ITTja+HERV+D924i3AujwBe58tVpL3hVnLl
 W+8Vuguo2P19BSR/2X/0v4iLBRl7q9rr8QHS0YKVg4hK/tkMs1hKz6IH8/fZw1HxTCQo
 2RTw==
X-Gm-Message-State: AOAM5320mFMDG7tgOtY7jhRzhnxeroRiKZMgxMi0iBT2q9J+xmAwxSmh
 eCPHQ4PLSHQAp0lpxxg7eMrdIGsbjxuN+eFhqfBwIOR4PvURkeuClEswc5eLYqWe3W8OohobyBZ
 Nm+KLMF68aM8hl6OvguFRdVSr9q/H
X-Received: by 2002:a05:600c:1f06:: with SMTP id
 bd6mr188793wmb.98.1644361591979; 
 Tue, 08 Feb 2022 15:06:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwmNuGMQwcN6QexrJL10FFKZYDdF5TN06r7ebrBGFi7sK9RD4aMR2dVzQHHgAbW45sC7ClvFg==
X-Received: by 2002:a05:600c:1f06:: with SMTP id
 bd6mr188768wmb.98.1644361591694; 
 Tue, 08 Feb 2022 15:06:31 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id l26sm2975339wmp.31.2022.02.08.15.06.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Feb 2022 15:06:31 -0800 (PST)
Message-ID: <4f5a94f9-404f-e803-1b61-41653c9de388@redhat.com>
Date: Wed, 9 Feb 2022 00:06:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
 <20220208210824.2238981-3-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220208210824.2238981-3-daniel.vetter@ffwll.ch>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 02/19] fbcon: Move fbcon_bmove(_rec)
 functions
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
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/8/22 22:08, Daniel Vetter wrote:
> Avoids two forward declarations, and more importantly, matches what
> I've done in my fbcon scrolling restore patches - so I need this to
> avoid a bunch of conflicts in rebasing since we ended up merging
> Helge's series instead.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

