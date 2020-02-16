Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB0C16039B
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 11:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A946E283;
	Sun, 16 Feb 2020 10:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 312 seconds by postgrey-1.36 at gabe;
 Sun, 16 Feb 2020 10:38:30 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC36D6E283
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Feb 2020 10:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581849509;
 bh=n6eEdEk02lW7Xt/XB5651S3Ui2/aB1gpBA9ygHK1Qjs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=PgCTWkXsc1zvbsXZ1jlovFW4rQ3FRy11Gx9EVH0cy32hNbqpe2kiTWBKJFTKZf8xB
 ReS6oa2Qoqubmge5rJe5fvkD9mDeaGmOmW4a9kyvz0VfTMkDHGNnXPS3LPE2ZrXHkx
 l0Iq9Tg+JtZ8t9nCiQ5J6CJRIjIy74XaefCLx/uc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.24] ([77.0.113.245]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MA7KU-1jARxq2aNO-00BadG; Sun, 16
 Feb 2020 11:33:04 +0100
To: Hillf Danton <hdanton@sina.com>
References: <20200216032625.11452-1-hdanton@sina.com>
From: =?UTF-8?Q?Toralf_F=c3=b6rster?= <toralf.foerster@gmx.de>
Autocrypt: addr=toralf.foerster@gmx.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <978318e5-0d39-0e65-dab8-9d5f63073300@gmx.de>
Date: Sun, 16 Feb 2020 11:33:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200216032625.11452-1-hdanton@sina.com>
Content-Language: en-US
X-Provags-ID: V03:K1:oYJ8OxhIr14hMqWHeOr4ArnsK5ejW5X2OzgF9SmjKltpfWPSxiI
 IkSvTMKNmv92C5g6YklVvZTDoej0BnNK7yK+x/4nxXL+FD8+1kX1maRbKE1KtYobwOfIsHN
 OBxP24HJT+8DklNFDCQPVQwbjgzll3F8C9NnZ1bCF3KAgE5I4hMWk56O6oKaG29Cxwfe+HK
 UykhFif4+HR5cESGeusfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ojAIdfvrkfc=:oAdrNh6ErsnkR+Z0v0j86J
 GmF/AONmYA9vdrBWZ0jq/ArIw5cUqb9uDHx3Z9gvNr0GUZed/p4BTEM1ItgsY7e3as6NRDHb1
 vFZd6zdLYf1i1Jv4k3grpXXLDG6Oua6l2uSZeR9CCU2s9zHuTaLCQobz2HuaS3o0q+7yFz9kL
 vBESG26/fEZxXhMOApi5ti4zZ5fj2ZanoYkHfoku5DBW+HQBws3xPdrTPcyxQPfCLkq8kNEMH
 ojBQK3tlfoSI7Hl6SS9SmRfVJ6DS5TtgQKvEVZEREwwh/sfxxQEf8qUs+Qy4UPWG48xszONW6
 T1yRbLDp7Nf2CTMTcBCus6ExtOKvRUdudbAys5x7WozDggO/CjCbFKgSvuldSQaJW5SAks2Np
 kPuvPrEpdSZwFMXNLbPoMagqNLIR4BwBrz6xkMIrmY4ase3UyYgsTGkZgu1UwsFfoFuSTOAXw
 jrWfJcjvF8GTinmALev8tnkA8+mf9ibLjUqRiAtD9skSOfw41mUDxf17/jHJHclMK8zwQ5qVN
 2Pa7CNCFJAHJfwHfxBbgWycR5v73XuG/yJ4q2EbijPMG163yJ5YiXgqcZ7gigNcXjKaBvPbVA
 K30TfRN+sCi4zgkAUJTlyd4Ze8Y8UXpyxwtgIL0sDZFi1TAq+ErQh5RU4txNJkSK1s5CsDqt4
 WPt+c1cM3aa376SUjodbKP7xao0mS0F6CbZeWrvGFIQSylbPHoqQKBzUIFp595IlkdAy0Gn2u
 YC504j6RxCpGhdjkvxGHGxfmmJZcEs4yZ+xskANbub96Ft8E49jrJYjzXmvawJZNk18pWUk6x
 j8r5WhYO+qAq+P/1kruqJ4KQoDB6VA4NC7LkKIeTXUg1xjYL2CKBRpnTQiBsm3w/+jfyf2chJ
 MnU0Qwc2ZRF0qwY6OauAIU2Sw9HuGPogZcWs7K8F3P6BwgmX3slBi3ApnWeM2EsUn9I2xPBBK
 mnJncA2Ntgns0PfB+9BE6V9hXtIW/LMxn4RSHn05B7CB06uKZsYwOKvvXp55V8Rj8hLdJxd93
 tmkOAJz0tZqaS3h0jUg2Sv70522pl0m+2cAIaR07ctsf8Ur3EA9tPNWVTTFD9mCTFyuLlImiz
 /+RDpj4rguma25JU2uOQFs7rUBHpodd8SS4/jSZQPHIk2SebaJ2qkM4UqGxVfIwCylXMf7Tau
 PozZS5d9PFVH9MhtOrX+n3QvG3vFzNParmSmbU1gQYWuM27rVE+p/5qXQo5GOUqb81kWPWMjT
 sRYid2EZqtmjSEYxd
Subject: Re: [Intel-gfx] kernel 5.5.4: BUG: kernel NULL pointer dereference,
 address: 000000000000000
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/16/20 4:26 AM, Hillf Danton wrote:
> Looks like a stray lock counts for the above NULL dereference.
Hi, the patch applied on top of 5.5.4 breaks the internal display now even in the boot phase.
Gert just a black screen after few seconds, nothing in the logs except:

Feb 16 11:21:57 t44 kernel: elogind-daemon[1431]: Removed session c15.
Feb 16 11:21:57 t44 start-stop-daemon[6462]: Will stop PID 1431
Feb 16 11:21:57 t44 start-stop-daemon[6462]: Sending signal 15 to PID 1431
Feb 16 11:21:57 t44 kernel: elogind-daemon[1431]: Received signal 15 [TERM]
Feb 16 11:21:57 t44 kernel: elogind-daemon[1431]: segfault at 56264c000000 ip 00007fddfcf76882 sp 00007ffc98c721b0 error 4 in libc-2.29.so[7fddfcf0c000+15a000]
Feb 16 11:21:57 t44 kernel: Code: a8 02 75 4c 48 8b 15 05 e5 13 00 64 48 83 3a 00 0f 84 f2 00 00 00 48 8d 3d 2b f2 13 00 a8 04 74 0c 48 89 f0 48 25 00 00 00 fc <48> 8b 38 48 8b 44 24 18 64 48 33 04 25 28 00
00 00 0f 85 f8 00 00
Feb 16 11:21:57 t44 start-stop-daemon[6549]: Will stop /usr/sbin/dnsmasq
Feb 16 11:21:57 t44 start-stop-daemon[6549]: Will stop PID 2764
Feb 16 11:21:57 t44 start-stop-daemon[6549]: Sending signal 15 to PID 2764


>
> Btw, send pure text message please.

Ick, I do sned plain text to LKML, or?

>
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -254,8 +254,7 @@ bool i915_request_retire(struct i915_req
>
>  	spin_lock_irq(&rq->lock);
>  	i915_request_mark_complete(rq);
> -	if (!i915_request_signaled(rq))
> -		dma_fence_signal_locked(&rq->fence);
> +	dma_fence_signal(&rq->fence);
>  	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
>  		i915_request_cancel_breadcrumb(rq);
>  	if (i915_request_has_waitboost(rq)) {
>


--
Toralf
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
