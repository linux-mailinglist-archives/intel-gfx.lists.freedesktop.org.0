Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0764320A5E3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 21:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44EE16EBDF;
	Thu, 25 Jun 2020 19:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14546EBDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 19:32:40 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id 9so7805317ljc.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=2GJAtRH9T/t6rsYpwymJz7NZ3quPblWVnWNExi0VC3w=;
 b=poxHilxizzpgK0T/qA5etk+uGw8EXcjAHPXHAJKfjg1wYDl2Vn3dTJCYj8Gy5sGMg7
 EHP4Q1dCobF5ApwhPoyND7JR4xRbXt5w8yEho9r6hxZsh6Pxr8hKjBZCZi0OSTFmX3LN
 r3qx5tvWp41sEVC3d6V71i1VxKu7DCPps5/r2Cmbos8b1fCP07euilUsiCrCqn3OUJBy
 heaHctRuUGCAmoz7ecKo/eehdmDeI3HM/mQM0Mkc3hu6ZATlmf50GXpa4BJshHb1HUqw
 jli8fsFRKP6jLfEp2Z+axezLzZ1LS4/1YSXvcEECJVEN2ExPmtGQwnVUz+rQfPnsxHQU
 pZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=2GJAtRH9T/t6rsYpwymJz7NZ3quPblWVnWNExi0VC3w=;
 b=Aqrw0KGl2ZnFs+s2/w2vGwyrrkYTUP1+5ZfMpBAocNBNv5nE9FieZ7DZWLaig8GodU
 KJXgMWvzfLLmrkhfvvhj1/ZcFEgs8r+s0aCfnoViZ79hjXr1s7RwQg5bmwkRolLUIzo4
 X7p9WWlaoVQmyvwblbX3UzND+542Lklejfus17C7gHmnylEOLfzqbh2ZdcumUf+qXxAi
 no8/XWzKx28NBbRag4Leo5yHr68BlUl+y0LV27dUkflJgo7a5qjTHuMTa1gcaW0ugzzu
 e3gD+jpdQXP93cK6ecGL8SRlRVYC/Kte6Ov7dulB5fL6PxmiZLW+obGvZgsmV/T4oIFi
 07Lg==
X-Gm-Message-State: AOAM532jSb42WwwbFOCcUJ5Sr7TIM98VP0Q4fihGlYACVg0spejhwkY/
 ClCG1h0cdgA4CovcovBTV9Z+YtW2pOA=
X-Google-Smtp-Source: ABdhPJzPknOsYi0P1tkL3FZVBtTlHmbpTNcHB/S/pyrD4yCBe73c4iDTgoGzwfXVpbP2uLdB3126GA==
X-Received: by 2002:a05:651c:50d:: with SMTP id
 o13mr18341871ljp.181.1593113559089; 
 Thu, 25 Jun 2020 12:32:39 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id y188sm7171324lfc.36.2020.06.25.12.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:32:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-4-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-4-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 21:32:37 +0200
Message-ID: <159311355771.202818.11936703389418397996@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 3/8]
 tests/core_hotunplug: Add unbind-unplug-rescan variant
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTApCj4gQ2hlY2sg
aWYgdGhpcyAzLXN0ZXAgcHJvY2VkdXJlIGV4aGliaXRzIGFueSBpc3N1ZXMgd2l0aCBkZXZpY2Ug
cmVjb3Zlcgo+IGFmdGVyIHVucGx1Zy4gIFN1Y2ggaXNzdWVzIG1heSBpbmRpY2F0ZSBpbnN1ZmZp
Y2llbnQgZGV2aWNlIGhhcmR3YXJlCj4gcmUtaW5pdGlhbGl6YXRpb24gcGVyZm9ybWVkIGJ5IHRo
ZSBkZXZpY2UgZHJpdmVyLCBvciBvdGhlciBrZXJuZWwgYnVncwo+IG91dHNpZGUgdGhlIGRyaXZl
ciBjb2RlLgo+IAo+IHYyOiByZWJhc2Ugb24gdXBzdHJlYW0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBK
YW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CgpB
ZnRlciBhZGRyZXNzaW5nIGNvbW1lbnRzIGZyb20gcHJlY2VkaW5nIHBhdGNoZXM6CgpSZXZpZXdl
ZC1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKLU1p
Y2hhxYIKCj4gLS0tCj4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCA0MCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
