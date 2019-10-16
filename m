Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFB8D9BDA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 22:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6CA6E07D;
	Wed, 16 Oct 2019 20:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759346E07D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 20:32:26 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 3so194731wmi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:32:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PGpGWKygbSq4jtEFJNVy+oA2alcbO4YYXQl5G5nINfg=;
 b=Hl2F5rMMy+E7x2Du4reB/ggGZl2ay9NCEYeSFy0/amfWxUC0qTSRs5zbt/BZ45lSHJ
 2QLhlL5UKfq59btZhOcZzyjh1SPtDKkpgmwJ4v+tmPjx3xiiRk5Nywf93tHBsN4R5vhU
 KPibeaUjl+XRB4JeQbCWjBUY9FJIzOXgQM4lllkGJh5BaHl+OQqfqjkyDYLD84xvzf2v
 7rxNiXtNb/5js4Q/iVowA+uHmgcf5y/arLnAq/CYJ92Wza1lUVNc1j0JeTS5dByDMVyN
 +UEiHiMESjcwqc+i6tQLSWwnY0JpQo5xhtf2toJvRKY4g5RxaEBmbzh/JiaKQM+3Vrgp
 5Scg==
X-Gm-Message-State: APjAAAWhPJS3IH8646Pqtw14bahTLYGPadYm3ZG/psN5H1DDcVFKIUWr
 /3+vR+FO5f6GQ2lCCT0WXwVxaKbbN6Y=
X-Google-Smtp-Source: APXvYqxYwqYBP8mvFGY63iSzGjiqEE26lWg6M81w6deqfS3Up8Fw91XWIuqM5io2ib+YezM8+RRoVw==
X-Received: by 2002:a05:600c:21da:: with SMTP id
 x26mr4951974wmj.152.1571257944607; 
 Wed, 16 Oct 2019 13:32:24 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.76])
 by smtp.googlemail.com with ESMTPSA id o18sm7810527wrm.11.2019.10.16.13.32.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 13:32:24 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <9cf1dbb4-fcd5-b68a-ff7a-0758558f4c36@gmail.com>
Date: Wed, 16 Oct 2019 23:29:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PGpGWKygbSq4jtEFJNVy+oA2alcbO4YYXQl5G5nINfg=;
 b=DXEcBWzuYDfVVokaT5P3cE68mlurwv4DDn0Ewqmx93wa3NJcY+phSNU4gWE1x6EWEu
 cXpP7YmaMZjiJ1dUOITvTmnnckbppfF6JqTgJB5JXLS4ZqzDbKJr+uGPWvqQg9LnLi5O
 15UTjIMfGmpKXYC/udEuz6zZl6SrGjzIylhvFrIoxyuOVw85yzjkB0FJgAgCZ62DXtGP
 I3FEopYygvZchMRd6aUnWTt/F3jHrv3agEY2xNp7ydFyIMxjSOoj+SikNv2NbMhS8EAb
 1d2P+VhNiFs5hMBxRYcD5+Qqk0jV5T1aa8UlfuQ1x0acjFHMi73huGUaiF9GSE0h7ODC
 L9Ig==
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Polish possible_clones setup
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
bC5jb20+CgpPbiAyLjEwLjIwMTkgMTkuMjUsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBSZXBs
YWNlIHRoZSBoYW5kIHJvbGxlZCBzdHVmZiB3aXRoIGRybV9lbmNvZGVyX21hc2soKSB3aGVuIHBv
cHVsYXRpbmcKPiBwb3NzaWJsZV9jbG9uZXMsIGFuZCByZW5hbWUgdGhlIGZ1bmN0aW9uIHRvCj4g
aW50ZWxfZW5jb2Rlcl9wb3NzaWJsZV9jbG9uZXMoKSB0byBtYWtlIGl0IGNsZWFyIHdoYXQgaXQn
cyB1c2VkIGZvci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMyArKysrKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMjBlYzhhMWRjNWUxLi5kMTBl
MTE4YjlhN2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+IEBAIC0xNTI0MCwyMSArMTUyNDAsMTggQEAgaW50IGludGVsX2dldF9waXBlX2Zy
b21fY3J0Y19pZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAg
CXJldHVybiAwOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBpbnQgaW50ZWxfZW5jb2Rlcl9jbG9uZXMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gK3N0YXRpYyB1MzIgaW50ZWxfZW5jb2Rl
cl9wb3NzaWJsZV9jbG9uZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gICB7Cj4g
ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGVuY29kZXItPmJhc2UuZGV2Owo+ICAgCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICpzb3VyY2VfZW5jb2RlcjsKPiAtCWludCBpbmRleF9tYXNrID0gMDsK
PiAtCWludCBlbnRyeSA9IDA7Cj4gKwl1MzIgcG9zc2libGVfY2xvbmVzID0gMDsKPiAgIAo+ICAg
CWZvcl9lYWNoX2ludGVsX2VuY29kZXIoZGV2LCBzb3VyY2VfZW5jb2Rlcikgewo+ICAgCQlpZiAo
ZW5jb2RlcnNfY2xvbmVhYmxlKGVuY29kZXIsIHNvdXJjZV9lbmNvZGVyKSkKPiAtCQkJaW5kZXhf
bWFzayB8PSAoMSA8PCBlbnRyeSk7Cj4gLQo+IC0JCWVudHJ5Kys7Cj4gKwkJCXBvc3NpYmxlX2Ns
b25lcyB8PSBkcm1fZW5jb2Rlcl9tYXNrKCZzb3VyY2VfZW5jb2Rlci0+YmFzZSk7Cj4gICAJfQo+
ICAgCj4gLQlyZXR1cm4gaW5kZXhfbWFzazsKPiArCXJldHVybiBwb3NzaWJsZV9jbG9uZXM7Cj4g
ICB9Cj4gICAKPiAgIHN0YXRpYyB1MzIgaW50ZWxfZW5jb2Rlcl9wb3NzaWJsZV9jcnRjcyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiBAQCAtMTU1NzQsNyArMTU1NzEsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgIAkJZW5jb2Rlci0+YmFzZS5wb3NzaWJsZV9jcnRjcyA9Cj4gICAJCQlpbnRlbF9l
bmNvZGVyX3Bvc3NpYmxlX2NydGNzKGVuY29kZXIpOwo+ICAgCQllbmNvZGVyLT5iYXNlLnBvc3Np
YmxlX2Nsb25lcyA9Cj4gLQkJCWludGVsX2VuY29kZXJfY2xvbmVzKGVuY29kZXIpOwo+ICsJCQlp
bnRlbF9lbmNvZGVyX3Bvc3NpYmxlX2Nsb25lcyhlbmNvZGVyKTsKPiAgIAl9Cj4gICAKPiAgIAlp
bnRlbF9pbml0X3BjaF9yZWZjbGsoZGV2X3ByaXYpOwo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
