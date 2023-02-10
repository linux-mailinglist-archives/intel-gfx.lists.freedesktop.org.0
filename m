Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C4969151C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 01:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C5610EBF9;
	Fri, 10 Feb 2023 00:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D6710EBF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 00:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675987722;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BSw5daY010qcHCZuSVoAgV58dbuNqE0exBdvxUMk52M=;
 b=HDE0rLv7PaKa9k+BCNUOkYm1dyzK1TdKJnvBXeg33z2jS6RrcA0a33ZDkGdCA3lXVnRaly
 fPq4IwBm2HeMhJJuPABSGAMRMQuEjbHzNF3W3/r9MLteNrmYdeaPiVq8OU34puPcgZzwDt
 +76FQ1kQ9NAMb3pyNDm4QoZ5MdK9FLM=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-577-3xM2F9M3NOez-3n-n5GegQ-1; Thu, 09 Feb 2023 19:08:41 -0500
X-MC-Unique: 3xM2F9M3NOez-3n-n5GegQ-1
Received: by mail-qv1-f71.google.com with SMTP id
 gw11-20020a0562140f0b00b0053b81ec39dfso2231442qvb.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Feb 2023 16:08:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BSw5daY010qcHCZuSVoAgV58dbuNqE0exBdvxUMk52M=;
 b=dvm7xoYgJrvxWcv9PIxtcbNfbBiZ724nVtthLiV+6qLt4psAIg+v04FwWsVV1jXRXw
 4cdcv0WJ6TEMhr0uju31dDSEj6D2BWwAiM+xtC5d6pkrNisuAbKVSuI++wm4Ki4JUNCu
 C4gBBHrdp4uCariL7rH2MlYDX0xv85eeNxsYepido+Nif+4HWRMV99LELf3LPh0HFbvV
 Cq2FAZY/BRZpM5aKBlxvPH1ftgmYe/bkQJQH1aHEcx/E7LzgpN90EcTwjrbVhZ6hxkRf
 HzUZ144rLVb6coyZqqLiGS/p5ZVT6eRUQXsOZnLWrFetgcwBV/sAs1XT/23rlXTAItoH
 4FLQ==
X-Gm-Message-State: AO0yUKUAeAYMoM0Iu/cw7RhUZ/ZohZYEDGHKtjHPdAAgP33AtKfNQPp2
 oW0t8IT0xiI5ErITPe2UNs+IQhHxBfJ4cQlMLtcr40AoMkXnPUW1010omwflOa6N7lj6FQN4sjO
 MTm0f06iQffiQQvGIIeQ26NJRdEkpEka9u60Oc2UauCGa
X-Received: by 2002:ac8:5dc6:0:b0:3ba:8c0:8f89 with SMTP id
 e6-20020ac85dc6000000b003ba08c08f89mr2003777qtx.89.1675987721134; 
 Thu, 09 Feb 2023 16:08:41 -0800 (PST)
X-Google-Smtp-Source: AK7set/5wZzJKpTlmro2WCCkMZCDMF0ZKN/0KTX+DGUF/pDMJLqFMcVYxsSLUcdNimpD7Zma28DTdnHBiJyhmcXCLF8=
X-Received: by 2002:ac8:5dc6:0:b0:3ba:8c0:8f89 with SMTP id
 e6-20020ac85dc6000000b003ba08c08f89mr2003771qtx.89.1675987720917; Thu, 09 Feb
 2023 16:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20230210104720.365557d8@canb.auug.org.au>
In-Reply-To: <20230210104720.365557d8@canb.auug.org.au>
From: David Airlie <airlied@redhat.com>
Date: Fri, 10 Feb 2023 10:08:29 +1000
Message-ID: <CAMwc25r3EQG7hHkC7SU9omHWFGqto7RuUY9uVNkC6vXUF_hVtg@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: duplicate patch in the drm-misc-fixes
 tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 10, 2023 at 9:47 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> The following commit is also in the drm-fixes tree as a different commit
> (but the same patch):
>
>   94d8b6572a1f ("nvidiafb: detect the hardware support before removing console.")
>
> This is commit
>
>   04119ab1a49f ("nvidiafb: detect the hardware support before removing console.")
>
> in the drm-fixes tree.

Just FYI misc team, I've force pushed drm-misc-fixes to drop this
patch, please make sure any local misc fixes don't bring it back in if
we can avoid it.

Dave.

