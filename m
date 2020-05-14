Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 826F01D3C90
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 21:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A816E0D5;
	Thu, 14 May 2020 19:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AFB6E0D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 19:16:18 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id i15so5825264wrx.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 12:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hsOJga12OilYG0R55xXILsbbR7SwhaU+Bul3JDMvf6A=;
 b=GnywNtYdBRc9u7ucW+bWITVWayodTEiWjlqVVGL7f8Bf1O9rc+ETOh+iCndqljVAPh
 x7FaG+i9SX23kUkjT4GDenK7P1jr+Mi35gq0K5WKleDflx3OA7b3x1g4b15zDa+ePFpn
 4xs9NjgOVsl97iwho4Z9UTwInEjxStlP1yYo9P8MUm4YmSKFXDy04shxWpcPtDGpIo1B
 tF7Kzk+YShStxj3MpJ04r21oKc0UzBwVQQecYAL9gnYZFCIy5KPSXwr3+vb+zOraXfGS
 7X8frEJESSj7wR5kh2lXh4j5cQmzJHYcxA1ChPeK/tN3Hx/+0/7TeYYuZEJFniJcl83+
 J+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=hsOJga12OilYG0R55xXILsbbR7SwhaU+Bul3JDMvf6A=;
 b=lc9rRP4910s+LSGKJQAiD7N2MiatGaCujynJR69lqgek8DAXnVokzCvjn3fr90ijna
 w3m9tQ/P/lGpa2knnH2GrHwHwDvNBKh58dq69Y9kBBjcGCkM0s4mkJODMUz9gZwP9q5G
 JKXDgALaQabwMX/6egPycM75WTnu/up6mHFnBUzCI6Fv+WLrMSdv9xnmU8IXZkVCGmMj
 NmS6CFa76a+s+85YSwTn/Dx0pJ0yrNRO0JrkEDHbjAApCescnFf1zVdzgYz18Oa2GpJN
 YqzdSwRpzP5bddyVZn1wSD8xyzJlxzJmhPw09d/dsFkjsp4+OEYkpzPPYgHrMC1K+ULY
 +X6A==
X-Gm-Message-State: AOAM530Pfo6nSzUTUshmmhoYk2XLQuxtWlI9u7yaobNQodlF/5s/Q3SU
 PKG0RlVahIQuD6FfzgNO9hs=
X-Google-Smtp-Source: ABdhPJycFz3V1HITcYX8vkYdzfQu61kcamP91syQeGNBS7/euGdpZC1ezALtF77mNCXwKznYGNSHmQ==
X-Received: by 2002:a5d:52c6:: with SMTP id r6mr7240219wrv.269.1589483777480; 
 Thu, 14 May 2020 12:16:17 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr03-ext.jf.intel.com. [134.134.139.72])
 by smtp.googlemail.com with ESMTPSA id n17sm5186257wrr.42.2020.05.14.12.16.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 12:16:16 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200514154006.4761-1-jani.nikula@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <482c61e3-489f-11d2-7151-1668fe8f02d1@gmail.com>
Date: Thu, 14 May 2020 22:16:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514154006.4761-1-jani.nikula@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/params: don't expose
 inject_probe_failure in debugfs
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: =?UTF-8?Q?Juha-Pekka_Heikkil=c3=a4?= <juha-pekka.heikkila@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFp
bC5jb20+CgpPbiAxNC41LjIwMjAgMTguNDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+IFRoZSBwYXJh
bWV0ZXIgb25seSBtYWtlcyBzZW5zZSBhcyBhIG1vZHVsZSBwYXJhbWV0ZXIgb25seS4KPiAKPiBG
aXhlczogYzQzYzVhODgxOGQ0ICgiZHJtL2k5MTUvcGFyYW1zOiBhZGQgaTkxNSBwYXJhbWV0ZXJz
IHRvIGRlYnVnZnMiKQo+IENjOiBKdWhhLVBla2thIEhlaWtraWzDpCA8anVoYS1wZWtrYS5oZWlr
a2lsYUBpbnRlbC5jb20+Cj4gQ2M6IFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSA8dmVua2F0
YS5zLmRoYW5hbGFrb3RhQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wYXJhbXMuaCB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bh
cmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAo+IGluZGV4IDQ1MzIz
NzMyZjA5OS4uNGYyMWJmZmZiZjBlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGFyYW1zLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5o
Cj4gQEAgLTY0LDcgKzY0LDcgQEAgc3RydWN0IGRybV9wcmludGVyOwo+ICAgCXBhcmFtKGludCwg
bW1pb19kZWJ1ZywgLUlTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX01NSU8pLCAwNjAw
KSBcCj4gICAJcGFyYW0oaW50LCBlZHBfdnN3aW5nLCAwLCAwNDAwKSBcCj4gICAJcGFyYW0odW5z
aWduZWQgaW50LCByZXNldCwgMywgMDYwMCkgXAo+IC0JcGFyYW0odW5zaWduZWQgaW50LCBpbmpl
Y3RfcHJvYmVfZmFpbHVyZSwgMCwgMDYwMCkgXAo+ICsJcGFyYW0odW5zaWduZWQgaW50LCBpbmpl
Y3RfcHJvYmVfZmFpbHVyZSwgMCwgMCkgXAo+ICAgCXBhcmFtKGludCwgZmFzdGJvb3QsIC0xLCAw
NjAwKSBcCj4gICAJcGFyYW0oaW50LCBlbmFibGVfZHBjZF9iYWNrbGlnaHQsIC0xLCAwNjAwKSBc
Cj4gICAJcGFyYW0oY2hhciAqLCBmb3JjZV9wcm9iZSwgQ09ORklHX0RSTV9JOTE1X0ZPUkNFX1BS
T0JFLCAwNDAwKSBcCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
