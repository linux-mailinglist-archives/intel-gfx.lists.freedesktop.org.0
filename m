Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3029320A63C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 21:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767816EC12;
	Thu, 25 Jun 2020 19:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDDB6EC0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 19:57:11 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id t74so3899761lff.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=kAOe4w+/k2CQF4HYJ29JNLRmNIOX/Hs/Kt3qGHLUeV8=;
 b=rqzFvBy7DGpIzVXJ/YH2RxE6AP9Jj50so5A9DM4goVhgL5E/8HQNldBZmwYzwhIXHY
 uOx7AW9W7BdZVrfv43/8DeqB4wpd+4I0Mwd66h0EYKaarBK+Q8Hxsxpr7HSykwCS4PEa
 pRmx6r53xRkq5oK1P/0Pp7e03Qo/QU+mtXQr405qFpvsr83qbkNbQjj98b6WFOM8J4e0
 TSwdEg5PSD3Vvrkm5TzeGXwM7GbsomzmKrGLUQx4TNBJtUvhoxit06eOIkUekLzj88Jy
 h04kRwEcVaaZ2ZWZllLuNCISuj455c0wH3azjoDXdyAiwR0UqxYSahVqJLQ9t93GGHLN
 HzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=kAOe4w+/k2CQF4HYJ29JNLRmNIOX/Hs/Kt3qGHLUeV8=;
 b=sODJtisZ+qpFNO0Lq4yHtXa2aLQNWd4KmRhIcQTwhAkcB6/eK5xxTVQ7A+/eT6KQba
 RKUxwRewq1DKFYbLkeSMstzSOOmGZ8gX/U6hqar49j6XufX6W9GP5fBxYzo5HQ27QRC8
 nOzW1ErEdnRCp5SKrOrbIJUwABAFQCs7Y3hPfUIa1cqv9LKTRTB/m0vBXCvKv/2Baphg
 qO3ZlsH30FMVD/ozW3MXyKfTBpYN9rWTzMfY2wFN7cKbT8KKZx/9Z88DTTdFtyz6Ydyu
 hSncYjyIodKdkEq54iiXpp0E2wNqGm52ZClp4ve6XHlk5cgX4urTCgcpuI/YI4jd8iex
 D2WA==
X-Gm-Message-State: AOAM532eK7rvgMagOsWa+oVjxgdvg2GxzNIRg9+CjicAuGA8t71DdQeQ
 X8vAWVmwdYmWkRF8bTJgpwHtW6atUOc=
X-Google-Smtp-Source: ABdhPJwbb1dmpynqggXkAnSprE7fpZTqCyyz9jDApbl2E9BFfLTpIRp8/lkdC3J+khePXbJDDCB+Sg==
X-Received: by 2002:a19:ca48:: with SMTP id h8mr19253707lfj.161.1593115029614; 
 Thu, 25 Jun 2020 12:57:09 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id b11sm2678103lfa.50.2020.06.25.12.57.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:57:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-8-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-8-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 21:57:08 +0200
Message-ID: <159311502818.202818.9312691111674456282@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 7/8]
 tests/core_hotunplug: Add 'PRIME handle' variant
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTQpCj4gRXZlbiBp
ZiBhbGwgZGV2aWNlIGZpbGUgZGVzY3JpcHRvcnMgYXJlIGNsb3NlZCBvbiBkZXZpY2UgaG90dW5w
bHVnLAo+IFBSSU1FIGV4cG9ydGVkIG9iamVjdHMgbWF5IHN0aWxsIGV4aXN0cywgcmVmZXJlbmNl
ZCBieSBzdGlsbCBvcGVuCj4gZG1hLWJ1ZiBmaWxlIGhhbmRsZXMuICBBZGQgYSBzdWJ0ZXN0IHRo
YXQga2VlcHMgc3VjaCBoYW5kbGUgb3BlbiBvbgo+IGRldmljZSBob3R1bnBsdWcuCj4gCj4gdjI6
IHJlYmFzZSBvbiB1cHN0cmVhbQoKV291bGQgYmUgaW50ZXJlc3RpbmcgdG8gc2VlIHdoYXQgaGFw
cGVucyB3aGVuIHNvbWVvbmUgYWN0dWFsbHkgaW1wb3J0cyBhbgpvYmplY3QgZnJvbSB1bnBsdWdn
ZWQgZGV2aWNlIChvciB0aGUgZGV2aWNlIGlzIHVucGx1Z2dlZCBhZnRlciBpdCB3YXMgaW1wb3J0
ZWQpLgpCdXQgcGVyaGFwcyB0aGF0J3Mgc29tZXRoaW5nIGZvciB0aGUgZnV0dXJlLgoKQWxzbyAt
IHRoZSBuYW1pbmcgc2hvdWxkIHByb2JhYmx5IGJlIGtlcHQgZGlzdGluY3QgZnJvbSB0aGUgb3Ro
ZXIgImxhdGVjbG9zZSIKdGVzdHMsIHNpbmNlIGhlcmUgd2UncmUgY2xvc2luZyB0aGUgZGV2aWNl
IEZEIGJlZm9yZSB0aGUgdW5wbHVnLgpNYXliZSBqdXN0ICJwcmltZS1ob3R1bnBsdWciPyBCdXQg
dGhhdCdzIHVwIHRvIHlvdSAtIGVpdGhlciB3YXk6CgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5p
YXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKLU1pY2hhxYIKCj4gCj4gU2lnbmVk
LW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIHwgMzYgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3Jl
X2hvdHVucGx1Zy5jCj4gaW5kZXggYzMwZDk4YTY5Li43Y2I2OTljYzIgMTAwNjQ0Cj4gLS0tIGEv
dGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+ICsrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiBA
QCAtMzc5LDYgKzM3OSwzNSBAQCBzdGF0aWMgdm9pZCBnZW1faG90dW5wbHVnX2xhdGVjbG9zZSh2
b2lkKQo+ICAgICAgICAgaGVhbHRoY2hlY2soKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgcHJp
bWVfaG90dW5wbHVnX2xhdGVjbG9zZSh2b2lkKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaG90dW5w
bHVnIHByaXY7Cj4gKyAgICAgICB1aW50MzJfdCBoYW5kbGU7Cj4gKyAgICAgICBpbnQgZG1hYnVm
Owo+ICsKPiArICAgICAgIHByZXBhcmVfZm9yX3Jlc2NhbigmcHJpdik7Cj4gKwo+ICsgICAgICAg
aWd0X3JlcXVpcmVfZ2VtKHByaXYuZmQuZHJtKTsKPiArCj4gKyAgICAgICBsb2NhbF9kZWJ1Zygi
Y3JlYXRpbmcgYW5kIFBSSU1FLWV4cG9ydGluZyBhIEdFTSBvYmplY3QiKTsKPiArICAgICAgIGhh
bmRsZSA9IGdlbV9jcmVhdGUocHJpdi5mZC5kcm0sIDQwOTYpOwo+ICsgICAgICAgZG1hYnVmID0g
cHJpbWVfaGFuZGxlX3RvX2ZkKHByaXYuZmQuZHJtLCBoYW5kbGUpOwo+ICsKPiArICAgICAgIGxv
Y2FsX2RlYnVnKCJjbG9zaW5nIHRoZSBkZXZpY2UiKTsKPiArICAgICAgIGNsb3NlKHByaXYuZmQu
ZHJtKTsKPiArCj4gKyAgICAgICBsb2NhbF9kZWJ1ZygiaG90IHVucGx1Z2dpbmcgdGhlIGRldmlj
ZSIpOwo+ICsgICAgICAgZGV2aWNlX3VucGx1Zyhwcml2LmZkLnN5c2ZzX2Rldik7Cj4gKwo+ICsg
ICAgICAgbG9jYWxfZGVidWcoImxhdGUgY2xvc2luZyB0aGUgUFJJTUUgZmlsZSBoYW5kbGUiKTsK
PiArICAgICAgIGNsb3NlKGRtYWJ1Zik7Cj4gKwo+ICsgICAgICAgbG9jYWxfZGVidWcoInJlY292
ZXJpbmcgdGhlIGRldmljZSIpOwo+ICsgICAgICAgYnVzX3Jlc2Nhbihwcml2LmZkLnN5c2ZzX2J1
cyk7Cj4gKwo+ICsgICAgICAgaGVhbHRoY2hlY2soKTsKPiArfQo+ICsKPiAgLyogTWFpbiAqLwo+
ICAKPiAgaWd0X21haW4KPiBAQCAtNDY1LDQgKzQ5NCwxMSBAQCBpZ3RfbWFpbgo+ICAKPiAgICAg
ICAgIGlndF9maXh0dXJlCj4gICAgICAgICAgICAgICAgIGlndF9hYm9ydF9vbl9mKGZhaWx1cmUs
ICIlc1xuIiwgZmFpbHVyZSk7Cj4gKwo+ICsgICAgICAgaWd0X2Rlc2NyaWJlKCJDaGVjayBpZiBh
IGRldmljZSB3aXRoIGEgc3RpbGwgb3BlbiBQUklNRS1leHBvcnRlZCBvYmplY3QgY2FuIGJlIGNs
ZWFubHkgdW5wbHVnZ2VkLCB0aGVuIHJlbGVhc2VkIGFuZCByZWNvdmVyZWQiKTsKPiArICAgICAg
IGlndF9zdWJ0ZXN0KCJwcmltZS1ob3R1bnBsdWctbGF0ZWNsb3NlIikKPiArICAgICAgICAgICAg
ICAgcHJpbWVfaG90dW5wbHVnX2xhdGVjbG9zZSgpOwo+ICsKPiArICAgICAgIGlndF9maXh0dXJl
Cj4gKyAgICAgICAgICAgICAgIGlndF9hYm9ydF9vbl9mKGZhaWx1cmUsICIlc1xuIiwgZmFpbHVy
ZSk7Cj4gIH0KPiAtLSAKPiAyLjIxLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGlndC1kZXYgbWFpbGluZyBsaXN0Cj4gaWd0LWRldkBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2lndC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
