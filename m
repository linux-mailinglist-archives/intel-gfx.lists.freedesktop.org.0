Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA002611F1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 15:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD486E029;
	Tue,  8 Sep 2020 13:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599E16E029
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 13:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599571228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kk/MzQpl2YW+BRjUs+jKB6CtH3juIQy3EW0uS3+0BVs=;
 b=VVhCXbtogALha8HgF/EJvCIEP9bsyIT6TZjXycVfa64aMJAzcohRF5XT2gdXC6QxQGJRTP
 Sqh//fLGBt8dRs1jPvLaxzgrlC51nSszh0N2bjzZ/3Z6STs40UfW6+m2CfqEkz38hBApUo
 GXS2NuuqfbGSARk4yyZzK6K0PZOueqw=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-545-mJPFcnypMOCxj1rW7UJYxg-1; Tue, 08 Sep 2020 09:20:26 -0400
X-MC-Unique: mJPFcnypMOCxj1rW7UJYxg-1
Received: by mail-ed1-f69.google.com with SMTP id b12so6194954edw.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 06:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kk/MzQpl2YW+BRjUs+jKB6CtH3juIQy3EW0uS3+0BVs=;
 b=A4yNgeXZNslu2c0qpC3os+1PWy7t173N6iilX3kP/IieDw0IEnngpdjisOL2Wg4Ktg
 VjF/GxbzN4Kd/rmKDt+ll4ff7qvoroMDfbMlPeCiWeGghFzkk8OpTRVPQ3rGtHzkQ7P3
 3NoK1+5nEarG9TKkHT651L5zZ46Kep82/mqFNpqDTvTdZqn4X/YkNK1Rd4sgA8UKgLNq
 JbwBRupb5MW7O+ZvhBKaoS+A26/OORBUXvFcrDqKC8ZeOmYDh7GTFTxRMc2lkdGJEr6e
 WREj18MerOMlAb1Y/zmeRfljdffAF2lKGJ32kjRHTxzIY+vNDl6Mskmsm9F2zSNkRH6R
 Pxpg==
X-Gm-Message-State: AOAM532TDGaqHIWFYfy8ovNVzH2Mi0kLzCIgNlOrl/JTh2sSNoWEOphk
 TmWSBFsRG74DMeUDd+w1IwgC1KhYPIATXol0RTfxnONEuiAi53weEzKRFVyvpGAAMS6fV6LkiRM
 exe9trq7Z9O8Xw+OJqpa7RejtxNMp
X-Received: by 2002:aa7:d697:: with SMTP id d23mr27729574edr.13.1599571225752; 
 Tue, 08 Sep 2020 06:20:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJSCXKpUVVYMUY6y6pGIlWBQF6oylam73BShkdtH0Ngf5e1fkNihiTDrhP7Zi2Gs3qSlHKgQ==
X-Received: by 2002:aa7:d697:: with SMTP id d23mr27729530edr.13.1599571225337; 
 Tue, 08 Sep 2020 06:20:25 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id n11sm14190638ejs.38.2020.09.08.06.20.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 06:20:24 -0700 (PDT)
To: Stephen Rothwell <sfr@canb.auug.org.au>
References: <20200908140022.67dd3801@canb.auug.org.au>
 <db369f50-a3a0-2504-0628-ce5e6780d31b@redhat.com>
 <20200908210449.1a4f8e52@canb.auug.org.au>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d5c2cb83-8fc0-069e-7d4b-64a8ecf9a6b4@redhat.com>
Date: Tue, 8 Sep 2020 15:20:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908210449.1a4f8e52@canb.auug.org.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-intel tree with
 Linus' tree
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
Cc: Guru Das Srinagesh <gurus@codeaurora.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 9/8/20 1:04 PM, Stephen Rothwell wrote:
> Hi Hans,
> 
> On Tue, 8 Sep 2020 10:22:06 +0200 Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> On 9/8/20 6:00 AM, Stephen Rothwell wrote:
>>>
>>> Today's linux-next merge of the drm-intel tree got a conflict in:
>>>
>>>     drivers/gpu/drm/i915/display/intel_panel.c
>>>
>>> between commit:
>>>
>>>     f8bd54d21904 ("drm/i915: panel: Use atomic PWM API for devs with an external PWM controller")
> 
> This should have been
> 
>    899c537c25f9 ("drm/i915: Use 64-bit division macro")

Yes that makes more sense.

>>> from Linus' tree and commit:
>>>
>>>     6b51e7d23aa8 ("drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller")
>>
>> That doesn't sound correct, those are both commits from the drm-intel tree.
>>
>>> from the drm-intel tree.
>>>
>>> I fixed it up (I just used the latter)
>>
>> Just taking the drivers/gpu/drm/i915/display/intel_panel.c contents of:
>>
>> f8bd54d21904 ("drm/i915: panel: Use atomic PWM API for devs with an external PWM controller")
>>
>> Is the right thing to do, the problem is a difference in a line which gets
>> removed in that commit.
> 
> Which is what I actually did, I guess :-)

Yes, looks good.

> Sorry about that.

No problem and thank you for all the work you do on -next.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
