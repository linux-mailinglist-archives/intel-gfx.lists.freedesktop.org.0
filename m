Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B61A7D4E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 10:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFB289321;
	Wed,  4 Sep 2019 08:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D096089321
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 08:08:02 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id q27so15087892lfo.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2019 01:08:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a0kRc/YGO4sI2T4Jh9SgXNSXruke3g7n9BxPhpUUJ54=;
 b=nOBNn73363JYaScZWGrmrlS0SrjlXv+5NYG+YC5dudHi7b47+pO7tn2Irk3vLM9uf2
 EiHZLxEvb2WWTfFAaPDbMql751vR8fqrEwNqZ9JSoJZMM5C13r2yUAzqy17Xp4VjQkR2
 q2xQDte7NJLQ1l5NvZ5PRDZBv6hgGwZ1MZKPCnuhL/dhs7SdthLOM0bdPkWnq8Kjbm0Q
 Xw1kdvDO9cDlrM8wSR5IPlgoPGHe2PGrRdeRhj7G5/2jOfeqroIg5sYKiATAKl/3kdSb
 hdqDbc78KH1Rt3ZMDrPdDD7cOX0ImnhjN5yvOiSzGWEnam/fi8xqXUAZjMbA3VBCu6WM
 1TuA==
X-Gm-Message-State: APjAAAVGbGq2R4S0xGGVSZDu1HM5sKYHUQwqbhK5MKf7zu7d7ccmMvGH
 xagdcmAEajIeHEQPCEtQP00aYDXdqchpIh25
X-Google-Smtp-Source: APXvYqz2ExSsuGf+yAeGUMFV4ravzD8nHs1JMfCDmzblByyzFaRuS+bA/s5+pTAI8uOIZMjph78wRg==
X-Received: by 2002:ac2:558a:: with SMTP id v10mr1946562lfg.162.1567584480532; 
 Wed, 04 Sep 2019 01:08:00 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id z72sm1131327ljb.98.2019.09.04.01.07.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 01:07:59 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org
References: <20190903133731.2094-1-jani.nikula@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <dcdf1abc-7b8e-1f42-a955-0438b90fe9dc@rasmusvillemoes.dk>
Date: Wed, 4 Sep 2019 10:07:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903133731.2094-1-jani.nikula@intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a0kRc/YGO4sI2T4Jh9SgXNSXruke3g7n9BxPhpUUJ54=;
 b=P4VDt5A6J/Y3PvIBzQ6SPSxa/x9TjXmZukB9THqunU38XJM5ivrf2H/Q2LyXaOMgzK
 Pd5ydHTs4EIvyjSPo3A8Hmr4tHXUUtBJmQY5UvW3DtX+8oxiRvxf43pu+ax2o3Zh+GkI
 yRm4cPAZGjqkCee4M3LbDLVUSpIcfnC8CCWHY=
Subject: Re: [Intel-gfx] [PATCH 1/2] linux/kernel.h: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDMvMDkvMjAxOSAxNS4zNywgSmFuaSBOaWt1bGEgd3JvdGU6Cgo+IFdoaWxlIHRoZSBtYWlu
IGdvYWwgaGVyZSBpcyB0byBhYnN0cmFjdCByZWN1cnJpbmcgcGF0dGVybnMsIGFuZCBzbGlnaHRs
eQo+IGNsZWFuIHVwIHRoZSBjb2RlIGJhc2UgYnkgbm90IG9wZW4gY29kaW5nIHRoZSB0ZXJuYXJ5
IG9wZXJhdG9ycywgdGhlcmUKPiBhcmUgYWxzbyBzb21lIHNwYWNlIHNhdmluZ3MgdG8gYmUgaGFk
IHZpYSBiZXR0ZXIgc3RyaW5nIGNvbnN0YW50Cj4gcG9vbGluZy4KCkVoLCBubz8gVGhlIGxpbmtl
ciBkb2VzIHRoYXQgYWNyb3NzIHRyYW5zbGF0aW9uIHVuaXRzIGFueXdheSAtIG1vcmVvdmVyLApn
aXZlbiB0aGF0IHlvdSBtYWtlIHRoZW0gc3RhdGljIGlubGluZXMsICJ5ZXMiIGFuZCAibm8iIHdp
bGwgc3RpbGwgbGl2ZQppbiAucm9kYXRhLnN0clguWSBpbiBlYWNoIGluZGl2aWR1YWwgVFUgdGhh
dCB1c2VzIHRoZSB5ZXNubygpIGhlbHBlci4KClRoZSBlbmFibGVkZGlzYWJsZWQoKSBpcyBhIG1v
dXRoZnVsLCBwZXJoYXBzIHRoZSBoZWxwZXJzIHNob3VsZCBoYXZlIGFuCnVuZGVyc2NvcmUgYmV0
d2VlbiB0aGUgY2hvaWNlcwoKeWVzX25vKCkKZW5hYmxlZF9kaXNhYmxlZCgpCm9uX29mZigpCgo/
Cgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggICAgICAgICAgICAgfCAxNSAt
LS0tLS0tLS0tLS0tCj4gIC4uLi9ldGhlcm5ldC9jaGVsc2lvL2N4Z2I0L2N4Z2I0X2RlYnVnZnMu
YyAgICB8IDExIC0tLS0tLS0tLS0KPiAgZHJpdmVycy91c2IvY29yZS9jb25maWcuYyAgICAgICAg
ICAgICAgICAgICAgIHwgIDUgLS0tLS0KPiAgZHJpdmVycy91c2IvY29yZS9nZW5lcmljLmMgICAg
ICAgICAgICAgICAgICAgIHwgIDUgLS0tLS0KPiAgaW5jbHVkZS9saW51eC9rZXJuZWwuaCAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMjEgKysrKysrKysrKysrKysrKysrKwoKUGV0IHBlZXZlOiBD
YW4gd2UgcGxlYXNlIHN0b3AgdXNpbmcgbGludXgva2VybmVsLmggYXMgYSBkdW1waW5nIGdyb3Vu
ZApmb3IgZXZlcnkgbGl0dGxlIHV0aWxpdHkvaGVscGVyPyBUaGF0IG1ha2VzIGVhY2ggYW5kIGV2
ZXJ5IHRyYW5zbGF0aW9uCnVuaXQgaW4gdGhlIGtlcm5lbCBzbGlnaHRseSBsYXJnZXIsIGhlbmNl
IHNsb3dlciB0byBjb21waWxlLiBQbGVhc2UgbWFrZQphIGxpbnV4L3N0cmluZy1jaG9pY2UuaCBh
bmQgcHV0IHRoZW0gdGhlcmUuCgpSYXNtdXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
