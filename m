Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB40C1975
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Sep 2019 22:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8A06E330;
	Sun, 29 Sep 2019 20:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E0B6E330
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 20:21:51 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id h33so6744199edh.12
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 13:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/CVt/vLJtBjg+T9O+xWd34W6CPNXiOTrjXGXhqyE4Y4=;
 b=cvZtSKd/ExOfVcl8OX81QoqiO4u+jnNVPrV/2SbYjWYDyh3Fw1cqFj2F1pB/9IlbhT
 2P0+z+pW/vN/wGKjaCg+c3jwMoui8rcHF3xW90HpZsQCMbQ5nGY5bNIw0t2AFGS7Z2C0
 kNsUUH+6b6bTqUBpS4ek42JfyiDAsVqYCE/nPyx4B7XNAzyl1TqHq0tZa2fuV82ZB07r
 VGT0sa/mIUzyj8RtdXP33INo7iqzfcUmIO7b01KbIfChER9mtqL6AZTaYeXb1GUYB6Y3
 gDhM1ZQVc/WxCDwuQTpNRatY6W0snwK14ZiHgr50ErctpGQXxNKY1ED4hxp4MrRTcz81
 2imA==
X-Gm-Message-State: APjAAAXlXBxCH1TT+phII8dPN6Xokg6g2vFcd15Cg5jfqsfTfCggvE4B
 o+IVfwP/+DFTapdCoslVOFjbYg==
X-Google-Smtp-Source: APXvYqw0Xe1a2UNI2ulgsLY3l1OlAI7XERAIvvAsujPSwcPQkpK0D+mRjLYp+QM71d8lRu9f9PF4TQ==
X-Received: by 2002:a50:fa83:: with SMTP id w3mr15958065edr.262.1569788509849; 
 Sun, 29 Sep 2019 13:21:49 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-115-35.cgn.fibianet.dk.
 [5.186.115.35])
 by smtp.gmail.com with ESMTPSA id f36sm2019864ede.28.2019.09.29.13.21.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Sep 2019 13:21:49 -0700 (PDT)
To: Alexey Dobriyan <adobriyan@gmail.com>, akpm@linux-foundation.org
References: <20190929200619.GA12851@avx2>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <f99ca43d-1ba2-95fb-b90f-6706a06f8ce6@rasmusvillemoes.dk>
Date: Sun, 29 Sep 2019 22:21:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190929200619.GA12851@avx2>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/CVt/vLJtBjg+T9O+xWd34W6CPNXiOTrjXGXhqyE4Y4=;
 b=UlGoRVxLOvOnW6xzDkMA5QeopjV40q5Qkvbds6GzjMXoxAsOrxfjJhTEzThD1SQkHl
 ix+CHa4EHdQU9v6X8b9rtw+0V2FlyDAlvVbXloRaN5wK4Y8/nSGxjC35A4yY6ZlYKnOi
 YfnDQEcEp1AY86CgHh5QxCvOGwor+A7/6MjeM=
Subject: Re: [Intel-gfx] [PATCH] Make is_signed_type() simpler
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, mingo@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjkvMDkvMjAxOSAyMi4wNiwgQWxleGV5IERvYnJpeWFuIHdyb3RlOgo+ICogU2ltcGx5IGNv
bXBhcmUgLTEgd2l0aCAwLAo+ICogRHJvcCB1bm5lY2Vzc2FyeSBwYXJlbnRoZXNpcyBzZXRzCj4g
Cj4gLSNkZWZpbmUgaXNfc2lnbmVkX3R5cGUodHlwZSkgICAgICAgKCgodHlwZSkoLTEpKSA8ICh0
eXBlKTEpCj4gKyNkZWZpbmUgaXNfc2lnbmVkX3R5cGUodHlwZSkgICAgICAgKCh0eXBlKS0xIDwg
MCkKCk5BSy4gSSB3cm90ZSBpdCB0aGF0IHdheSB0byBhdm9pZCAtV3RhdXRvbG9naWNhbC1jb21w
YXJlIHdoZW4gdHlwZSBpcwp1bnNpZ25lZC4KClJhc211cwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
