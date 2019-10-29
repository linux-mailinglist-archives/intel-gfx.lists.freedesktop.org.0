Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F100E9092
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 21:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C29B6E5F5;
	Tue, 29 Oct 2019 20:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896D26E5F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 20:07:38 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id 11so4013730wmk.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:07:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Mdssh2oNHX8Szz67NVObfrWPdvHMh3JN7vcmVZvLytU=;
 b=jeJQxsoLA4eSLsKnGwyxphz6Ok9wmonPw/f9mzdb4qJdgU0L752/cF/U3FhGJdb7eO
 3fLd2GHKPMQAxu3XWGFp/JToflEGrJjrb+qFs+ILT0v6VVvtBft3ehDWwm3SpZl7/Czd
 xNdr7WFZYpenn3/Iw9IAgCmlsWRN0lXwqyUBGA3jVLk7vcWNUuU2WADLbfC71Uf/ZSGn
 p7h2Lc0evdB4xA/21GBu6VNxOCE60GeGnqGN8KOM+1tC2e9PUT6KZHYtikt7ehCK9tZj
 eAQaYyasgGmqMYt9jl2ypzeUM+ZpW3OC8vfyMP17kHQHqG+KYecOuhm64rmlKi58R3jV
 nNpQ==
X-Gm-Message-State: APjAAAXYyl59kDHkaVTu/ZTV9NpEAMTSuILQXb/26B3fooL2kJQ2UqzL
 +OFIOFUAJFWl0Sc6nrctzyY6DJwSnYo=
X-Google-Smtp-Source: APXvYqzM4OsfM/6NVPZm6gfC6NRl48FZMwZI9AnXys2iDDkGdfwww8phXB+ShrlX8GGT+HgNMqLKyQ==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr5902049wmb.125.1572379656577; 
 Tue, 29 Oct 2019 13:07:36 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.googlemail.com with ESMTPSA id l24sm4444099wme.3.2019.10.29.13.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 13:07:36 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-5-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <ba145f75-2229-35a3-d80c-9b9f1949efff@gmail.com>
Date: Tue, 29 Oct 2019 22:07:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008161441.12721-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Mdssh2oNHX8Szz67NVObfrWPdvHMh3JN7vcmVZvLytU=;
 b=pUNcE25HkNYS2D53pxJTMCVWFeR7xuPkpdVU3AgCu1rReN/HkXyTjf11MVEKg5zemh
 zC2Exlg6uwUlIjXJnTwu7EsLewq259z+oF/fdPaY1eJIjRHR0hgsHzlc8BWLOno6MCFw
 dwZrt3c5kF/HD4rjX8+TlFSEzmwsQ6ZezFgyDy9GJ4WjcJLPgK/RydXeRrNe0fMcsBkd
 Ibo7v4eebzY5d2Ehx2CfYwJPZc6NYQzf9WGK7utFHcbZ8dTj+z+1Ws9inI/QpM9l9g32
 2YJ+XAR3OWnvsAi9pZh0KK2aY81EygDnbL0NHtJ1zJl1WCH55R0eRmG3yjvYjgQ7z1BY
 GnBA==
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Add 10bpc formats with alpha
 for icl+
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFp
bC5jb20+CgpPbiA4LjEwLjIwMTkgMTkuMTQsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBJQ0wr
IGFnYWluIHN1cHBvcnRzIGFscGhhIGJsZW5kaW5nIHdpdGggMTBicGMgcGl4ZWwgZm9ybWF0cy4K
PiBFeHBvc2UgdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDYgKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jCj4gaW5kZXggNGNkMDk4MmRjOGEyLi5hYWFiZWFmMTFhZTkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiBAQCAtMjEwMyw2ICsyMTAz
LDggQEAgc3RhdGljIGNvbnN0IHUzMiBpY2xfc2RyX3lfcGxhbmVfZm9ybWF0c1tdID0gewo+ICAg
CURSTV9GT1JNQVRfQUJHUjg4ODgsCj4gICAJRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMCwKPiAgIAlE
Uk1fRk9STUFUX1hCR1IyMTAxMDEwLAo+ICsJRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMCwKPiArCURS
TV9GT1JNQVRfQUJHUjIxMDEwMTAsCj4gICAJRFJNX0ZPUk1BVF9ZVVlWLAo+ICAgCURSTV9GT1JN
QVRfWVZZVSwKPiAgIAlEUk1fRk9STUFUX1VZVlksCj4gQEAgLTIxMjQsNiArMjEyNiw4IEBAIHN0
YXRpYyBjb25zdCB1MzIgaWNsX3Nkcl91dl9wbGFuZV9mb3JtYXRzW10gPSB7Cj4gICAJRFJNX0ZP
Uk1BVF9BQkdSODg4OCwKPiAgIAlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLAo+ICAgCURSTV9GT1JN
QVRfWEJHUjIxMDEwMTAsCj4gKwlEUk1fRk9STUFUX0FSR0IyMTAxMDEwLAo+ICsJRFJNX0ZPUk1B
VF9BQkdSMjEwMTAxMCwKPiAgIAlEUk1fRk9STUFUX1lVWVYsCj4gICAJRFJNX0ZPUk1BVF9ZVllV
LAo+ICAgCURSTV9GT1JNQVRfVVlWWSwKPiBAQCAtMjE0OSw2ICsyMTUzLDggQEAgc3RhdGljIGNv
bnN0IHUzMiBpY2xfaGRyX3BsYW5lX2Zvcm1hdHNbXSA9IHsKPiAgIAlEUk1fRk9STUFUX0FCR1I4
ODg4LAo+ICAgCURSTV9GT1JNQVRfWFJHQjIxMDEwMTAsCj4gICAJRFJNX0ZPUk1BVF9YQkdSMjEw
MTAxMCwKPiArCURSTV9GT1JNQVRfQVJHQjIxMDEwMTAsCj4gKwlEUk1fRk9STUFUX0FCR1IyMTAx
MDEwLAo+ICAgCURSTV9GT1JNQVRfWFJHQjE2MTYxNjE2RiwKPiAgIAlEUk1fRk9STUFUX1hCR1Ix
NjE2MTYxNkYsCj4gICAJRFJNX0ZPUk1BVF9BUkdCMTYxNjE2MTZGLAo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
