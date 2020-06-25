Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5124220A64C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 22:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397D06EC13;
	Thu, 25 Jun 2020 20:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06426EC0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 20:02:14 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id u25so3912775lfm.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 13:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=WbmGKbX1ILhnzruJ1q4kb/8ZDa7euyBSx3+YJHEZSrs=;
 b=g8abOikRcWeCXpvDrvOae8hIkbL3KpF8Qe7X7De8ZSYlSXMNy+BbT5wlcQ6IAJ6uPQ
 DwhAAot257Kdo+ydXSoWGTx45P6klD+fE6uXNbQyc/y2i1WROVM1wa67cR8g9geH/K+g
 E3ZBRuKDmeWb+8Ce1ybYO3YRwsI7vKV3q7Saw5Y5ZNcaHAl85lBh/evydEWBKkttS6m+
 fZU8wZt8o6F0Xv3x+vD9txk/65ZMQc3IxreFekbsKpBhIV5wrOFCcW+bFpn290+VJDjl
 zapjm4YXhgDYeQvGjbmYD8wEiz7QRFIWXicxik7eQRBEMTm9nvQMuQF/+SRWINTmSL3f
 pQRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=WbmGKbX1ILhnzruJ1q4kb/8ZDa7euyBSx3+YJHEZSrs=;
 b=RxNXYxGOYuJ6IUVzhQY9CXAI7L8Y+B5AByKSu0IzGvfbarM1eaau8l3Uq0nUqBVX1E
 qoZsY5SifjG3pzJBxvlX55qGiWcdNMqFg6T7zPJXONoW/+HlqdjXCZ7Zt0loSY5zSOlL
 95sD9WsOKb8Ma2BWvcHwDDFAMNc2znDjG6qpObJ74KwtNCA4UGT/rbEVKGz3GVFHHMqz
 QoisKnLVbhkWooze7Z+opPpc2slCqwHPQUzjj5JRuBkxUsXviYWJDERHl6kNYyjnUHUI
 AnXH/S+4VrkpCgdq6Oy9XXR1gXUOMnTsPPCGhF9CvPPSbbQaCO5eTWM3fCKHAN8kMSuk
 kCZQ==
X-Gm-Message-State: AOAM532cWHAMpWV+K+FXy0rRVOHNet8VbwGh3Xqq6x2eWJM99KUs7qfM
 UB+3izaZV52DoplyNy9CaH2DAQKLVJ4=
X-Google-Smtp-Source: ABdhPJyKYuMSQz2Is3j3NUid8dleYvRyDBpm7CcCjtTDqvyKv+Klfz5GB8HbJPz6DFzq6A1aewSLaw==
X-Received: by 2002:a19:c50a:: with SMTP id w10mr13214875lfe.48.1593115332604; 
 Thu, 25 Jun 2020 13:02:12 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id j4sm3935143lfb.94.2020.06.25.13.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:02:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-9-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-9-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 22:02:11 +0200
Message-ID: <159311533123.202818.8673731295694520597@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 8/8] tests/core_hotunplug: Add
 'GEM batch' variant
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTUpCj4gVmVyaWZ5
IGlmIGEgZGV2aWNlIHdpdGggYSBHRU0gYmF0Y2ggam9iIHN0aWxsIHJ1bm5pbmcgb24gYSBHUFUg
Y2FuIGJlCj4gaG90LXVucGx1Z2dlZCBjbGVhbmx5IGFuZCByZWxlYXNlZCwgdGhlbiByZWNvdmVy
ZWQuCj4gCj4gdjI6IHJlYmFzZSBvbiB1cHN0cmVhbQo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVz
eiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiAtLS0K
PiAgdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiBp
bmRleCA3Y2I2OTljYzIuLjY3MmZmNjYxZCAxMDA2NDQKPiAtLS0gYS90ZXN0cy9jb3JlX2hvdHVu
cGx1Zy5jCj4gKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+IEBAIC0zMyw2ICszMyw3IEBA
Cj4gICNpbmNsdWRlICJpOTE1L2dlbV92bS5oIgo+ICAjaW5jbHVkZSAiaWd0LmgiCj4gICNpbmNs
dWRlICJpZ3RfZGV2aWNlX3NjYW4uaCIKPiArI2luY2x1ZGUgImlndF9kdW1teWxvYWQuaCIKPiAg
I2luY2x1ZGUgImlndF9rbW9kLmgiCj4gICNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKPiAgCj4gQEAg
LTQwOCw2ICs0MDksMzIgQEAgc3RhdGljIHZvaWQgcHJpbWVfaG90dW5wbHVnX2xhdGVjbG9zZSh2
b2lkKQo+ICAgICAgICAgaGVhbHRoY2hlY2soKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgYmF0
Y2hfaG90dW5wbHVnX2xhdGVjbG9zZSh2b2lkKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaG90dW5w
bHVnIHByaXY7Cj4gKyAgICAgICBpZ3Rfc3Bpbl90ICpzcGluOwo+ICsKPiArICAgICAgIHByZXBh
cmVfZm9yX3Jlc2NhbigmcHJpdik7Cj4gKwo+ICsgICAgICAgaWd0X3JlcXVpcmVfZ2VtKHByaXYu
ZmQuZHJtKTsKPiArCj4gKyAgICAgICBsb2NhbF9kZWJ1ZygicnVubmluZyBkdW1teSBsb2FkIik7
Cj4gKyAgICAgICBzcGluID0gX19pZ3Rfc3Bpbl9uZXcocHJpdi5mZC5kcm0sIC5mbGFncyA9IElH
VF9TUElOX1BPTExfUlVOIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgSUdUX1NQSU5fTk9fUFJFRU1QVElPTik7CgpEbyB3ZSBuZWVkIElHVF9T
UElOX05PX1BSRUVNUFRJT04gaGVyZT8KV2UncmUgYWxzbyBsZWFraW5nIHNwaW4gaGVyZS4uLiBB
bmQgSSBkb24ndCB0aGluayB3ZSBjYW4ganVzdCBjYWxsIGlndF9zcGluX2ZyZWUKYWZ0ZXIgdW5w
bHVnLCBjYW4gd2U/CgotTWljaGHFggoKPiArICAgICAgIGlndF9zcGluX2J1c3l3YWl0X3VudGls
X3N0YXJ0ZWQoc3Bpbik7Cj4gKwo+ICsgICAgICAgbG9jYWxfZGVidWcoImhvdCB1bnBsdWdnaW5n
IHRoZSBkZXZpY2UiKTsKPiArICAgICAgIGRldmljZV91bnBsdWcocHJpdi5mZC5zeXNmc19kZXYp
Owo+ICsKPiArICAgICAgIGxvY2FsX2RlYnVnKCJsYXRlIGNsb3NpbmcgdGhlIHJlbW92ZWQgZGV2
aWNlIGluc3RhbmNlIik7Cj4gKyAgICAgICBjbG9zZShwcml2LmZkLmRybSk7Cj4gKwo+ICsgICAg
ICAgbG9jYWxfZGVidWcoInJlY292ZXJpbmcgdGhlIGRldmljZSIpOwo+ICsgICAgICAgYnVzX3Jl
c2Nhbihwcml2LmZkLnN5c2ZzX2J1cyk7Cj4gKwo+ICsgICAgICAgaGVhbHRoY2hlY2soKTsKPiAr
fQo+ICsKPiAgLyogTWFpbiAqLwo+ICAKPiAgaWd0X21haW4KPiBAQCAtNTAxLDQgKzUyOCwxMSBA
QCBpZ3RfbWFpbgo+ICAKPiAgICAgICAgIGlndF9maXh0dXJlCj4gICAgICAgICAgICAgICAgIGln
dF9hYm9ydF9vbl9mKGZhaWx1cmUsICIlc1xuIiwgZmFpbHVyZSk7Cj4gKwo+ICsgICAgICAgaWd0
X2Rlc2NyaWJlKCJDaGVjayBpZiBhIGRldmljZSB3aXRoIGEgc3RpbGwgcnVubmluZyBiYXRjaCBj
YW4gYmUgY2xlYW5seSB1bnBsdWdnZWQsIHRoZW4gcmVsZWFzZWQgYW5kIHJlY292ZXJlZCIpOwo+
ICsgICAgICAgaWd0X3N1YnRlc3QoImJhdGNoLWhvdHVucGx1Zy1sYXRlY2xvc2UiKQo+ICsgICAg
ICAgICAgICAgICBiYXRjaF9ob3R1bnBsdWdfbGF0ZWNsb3NlKCk7Cj4gKwo+ICsgICAgICAgaWd0
X2ZpeHR1cmUKPiArICAgICAgICAgICAgICAgaWd0X2Fib3J0X29uX2YoZmFpbHVyZSwgIiVzXG4i
LCBmYWlsdXJlKTsKPiAgfQo+IC0tIAo+IDIuMjEuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
