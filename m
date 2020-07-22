Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF61D229D78
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 18:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34DE6E159;
	Wed, 22 Jul 2020 16:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3696E07D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 16:47:56 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id h19so3178617ljg.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 09:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=s4oH9yxMtoJqm8Q+FqZvdzYcPDpMr+4BuB39HceN+90=;
 b=JmVgnl6etjNRJ1kDfU/q5H9pJ+lF6uEUKupN4iQ70bkBon4qHIho6JEeIjDRo1oQoF
 W31X+67/HN36BmBiC2Iu4wToeyIowXmVydKdj5qXSC6dKaYRHhoVkQlTOAlSBgn8ECVt
 h6ocH5qaLpTOweY3uzaN03KCiC81LQEqVgndhxiqu7tzlZgT9sxVeYUlecfFxl/h0T5U
 K+zkQh+jUyWKr6B5cIymXc9GhMurZqTYEqc8Kl2omOaJ561PJEROi/st0gXb80Un0tpS
 hE4FxGYd0ma6vznXOlxgLnm1PhZGelRIEHdo49XHjs22bFn/8rHb/Af84dhwrk1pNzW9
 NPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=s4oH9yxMtoJqm8Q+FqZvdzYcPDpMr+4BuB39HceN+90=;
 b=Ddd3mKzQN33RoWyDhp4SCvzLnAXiAJi2E+WVi7qYX8NaYaYSRLR9EZDSVu355eAazD
 w2rkhPao4jZRnc+7rdh/R70MCek5DgEFR8otASmb/vKtXyy2fOxUJmzjquaDPYIFH8Tm
 mZb4y1Frn3IjKRAdcOQv39N4gVChCNG7PyfNkdXLXuAGDFC5/9cb0wLEbTcjPxW0AC3Z
 U/Z22IHItj22Lf1iIfXxKn2CdLJSnlHunSt07Y9/M65iY6x02m1EIDMfSILs93MvmB3h
 8WGXOMNb5h2d0BAKGZank48xn+nKeJbgn58QHAVY4/6S+kDmB17KByFDKsEPUP72qfda
 ZdQg==
X-Gm-Message-State: AOAM530aTq5q7LwzaeGAx+nHqS+TevgYEq7W2OLXWqqMtn9BUvqLZQZi
 41n67oPU3pLSVCnK/vUr1Nyoy4mAR4Y=
X-Google-Smtp-Source: ABdhPJwm9rCMh0++Q+A4W+1dQ1/lE4D756gtOFMawi5/bTAudSvirxUCNk9e93qgJOA8l7uI03x8jw==
X-Received: by 2002:a2e:8e8a:: with SMTP id z10mr45273ljk.351.1595436474786;
 Wed, 22 Jul 2020 09:47:54 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id d23sm168052lfm.85.2020.07.22.09.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 09:47:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 22 Jul 2020 18:47:52 +0200
Message-ID: <159543647233.28670.678928339802345112@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATH i-g-t 00/15] tests/core_hotunplug: Fixes
 and enhancements
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
Cc: intel-gfx@lists.freedesktop.org,
 =?utf-8?q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDctMjAgMTQ6MTg6NTMpCj4gU2luY2Ug
dGhlIHRlc3QgaXMgc3RpbGwgYmxvY2tsaXN0ZWQgZHVlIHRvIGRyaXZlciBpc3N1ZXMgYW5kIHdv
bid0IGJlCj4gZXhlY3V0ZWQgb24gQ0ksIEknbSBwcm92aWRpbmcgYSBsaW5rIHdoZXJlIHJlc3Vs
dHMgb2J0YWluZWQgZnJvbSBhIAo+IHJ5Ym90IHJ1biB3aXRoIHRoZSB0ZXN0IHJlbW92ZWQgZnJv
bSB0aGUgYmxvY2tsaXN0IGNhbiBiZSBmb3VuZDoKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzc5NjYyLwo+IEZhaWx1cmVzIHJlcG9ydGVkIHRoZXJlIGNvbWUgZnJv
bSBkcml2ZXIgYW5kIG5vdCB0ZXN0IGlzc3VlcywgSQo+IGJlbGlldmUuCj4gCj4gVGhhbmtzLAo+
IEphbnVzegoKSSdkIHByb2JhYmx5IHNxdWFzaCBzb21lIG9mIHRoZSBwYXRjaGVzIChlLmcuIDA2
LzE1IHdpdGggMDcvMTUsIG1heWJlIG1vcmUpLApidXQgdGhhdCdzIGp1c3QgYSBtYXR0ZXIgb2Yg
b3BpbmlvbiAoYW5kIEkgZ3Vlc3Mgc3VjaCBmaW5lLWdyYWluZWQgc3BsaXQgbWFrZXMKaXQgZWFz
aWVyIHRvIHJldmlldykuCgpMR1RNLgoKUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KCi1NaWNoYcWCCgo+IAo+IEphbnVzeiBLcnp5c3p0
b2ZpayAoMTUpOgo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IFVzZSBpZ3RfYXNzZXJ0X2ZkKCkK
PiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBDb25zdGlmeSBkZXZfYnVzX2FkZHIgc3RyaW5nCj4g
ICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogQ29uc29saWRhdGUgZHVwbGljYXRlZCBkZWJ1ZyBtZXNz
YWdlcwo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEFzc2VydCBzdWNjZXNzZnVsIGRldmljZSBm
aWx0ZXIgYXBwbGljYXRpb24KPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBGaXggbWlzc2luZyBu
ZXdsaW5lCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogTWFpbnRhaW4gYSBzaW5nbGUgZGF0YSBz
dHJ1Y3R1cmUgaW5zdGFuY2UKPiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBQYXNzIGVycm9ycyB2
aWEgYSBkYXRhIHN0cnVjdHVyZSBmaWVsZAo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEhhbmRs
ZSBkZXZpY2UgY2xvc2UgZXJyb3JzCj4gICB0ZXN0cy9jb3JlX2hvdHVucGx1ZzogUHJlcGFyZSBp
bnZhcmlhbnQgZGF0YSBvbmNlIHBlciB0ZXN0IHJ1bgo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6
IFNraXAgc2VsZWN0aXZlbHkgb24gc3lzZnMgY2xvc2UgZXJyb3JzCj4gICB0ZXN0cy9jb3JlX2hv
dHVucGx1ZzogRm9sbG93IGZhaWxlZCBzdWJ0ZXN0cyB3aXRoIGhlYWx0aCBjaGVja3MKPiAgIHRl
c3RzL2NvcmVfaG90dW5wbHVnOiBGYWlsIHN1YnRlc3RzIG9uIGRldmljZSBjbG9zZSBlcnJvcnMK
PiAgIHRlc3RzL2NvcmVfaG90dW5wbHVnOiBQcm9jZXNzIHJldHVybiB2YWx1ZXMgb2Ygc3lzZnMg
b3BlcmF0aW9ucwo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEFzc2VydCBleHBlY3RlZCBkZXZp
Y2UgcHJlc2VuY2UvYWJzZW5jZQo+ICAgdGVzdHMvY29yZV9ob3R1bnBsdWc6IEV4cGxpY2l0bHkg
aWdub3JlIHVudXNlZCByZXR1cm4gdmFsdWVzCj4gCj4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMg
fCAzMzMgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIwMiBpbnNlcnRpb25zKCspLCAxMzEgZGVsZXRpb25zKC0pCj4gCj4gLS0gCj4g
Mi4yMS4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
