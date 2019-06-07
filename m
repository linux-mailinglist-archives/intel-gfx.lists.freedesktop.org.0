Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6E385E5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9482C89CBA;
	Fri,  7 Jun 2019 08:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC5889CBA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:03:29 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id m15so885160ljg.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 01:03:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KDMgmh+KVt7KU2iDKCzqDGkiEAQIrSJe7GTCZXAQzVo=;
 b=lyWJPNl5OhLUYkzO5ACH7qunPkgcNW14Oq6I7S0DON46abH3JA7QtyJyf4+aXpJ5Nf
 wSexuH8vmgXPz3NR+FN48s9ENeIS2gG2Z9w9A0fRkP8TE5CSKnFn0shx2MrET2KwszY/
 TD9D16JFL5s7U1vyBAlqu8k8nnBxKPgIgUSG2/AX7Kiq09pIfMO6ShqG1oSIcGMjHmue
 jiHkVKTNd63rPExf8wDJUZCB64JM+xDVAA566NyIjUzKdiH2Ld8BsqK/j8Dbi/AZopc8
 bVeb9YjnYR8hMjtFxXNrrV9hdcuWZWgOwkWC1ToMTsxfjpkPfVFzkfvPh9X+WK7NBCbX
 dE5Q==
X-Gm-Message-State: APjAAAVsPfNobl+4+URIi3YGkFegqyln1mDmPTRVD9pynx81ZDiBmeg2
 ANevqwruce1xJhOZQL4MuSQyiDYQOeR5Dto3ogNVFA==
X-Google-Smtp-Source: APXvYqwbE98LOeyVVnh3JkOXYYL6b8fqPEepo5RfHQbsFoY7cubIWyLMskaIhABZtCid8O2NWv3EUKC0pdzUOX0zsDg=
X-Received: by 2002:a2e:9919:: with SMTP id v25mr22910365lji.191.1559894608289; 
 Fri, 07 Jun 2019 01:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
From: Heinrich Fink <heinrich.fink@daqri.com>
Date: Fri, 7 Jun 2019 10:03:17 +0200
Message-ID: <CAB6MLDZVre9+-3-Nc49-m2fyN_KodvmWo5_sp9V34FDm+93mkw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daqri.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KDMgmh+KVt7KU2iDKCzqDGkiEAQIrSJe7GTCZXAQzVo=;
 b=cBfNcehYzoo7JPSvFItxZG7qN50yZ9urq48KKXfUA28aDJ4riPZxBYr8TLBOy2bMlU
 f+sow4dR6maovDRrbee0QPykvqMrKveSQv7CSyv5eNtwdzPfHiCNIcPIkU6jNIIHb7zw
 85mzhOQOm25WJ+hcfugnHOGNGPEHnB4YrZP6U=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix per-pixel alpha with CCS
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAzIEp1biAyMDE5IGF0IDE2OjI1LCBWaWxsZSBTeXJqYWxhCjx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Cj4gV2UgZm9yZ290IHRvIHNldCAuaGFzX2FscGhh
PXRydWUgZm9yIHRoZSBBK0NDUyBmb3JtYXRzIHdoZW4gdGhlIGNvZGUKPiBzdGFydGVkIHRvIGNv
bnN1bHQgLmhhc19hbHBoYS4gVGhpcyBtYW5pZmVzdHMgYXMgQStDQ1MgYmVpbmcgdHJlYXRlZAo+
IGFzIFgrQ0NTIHdoaWNoIG1lYW5zIG5vIHBlci1waXhlbCBhbHBoYSBibGVuZGluZy4gRml4IHRo
ZSBmb3JtYXQKPiBsaXN0IGFwcHJvcHJpYXRlbHkuCj4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENj
OiBIZWlucmljaCBGaW5rIDxoZWlucmljaC5maW5rQGRhcXJpLmNvbT4KPiBSZXBvcnRlZC1ieTog
SGVpbnJpY2ggRmluayA8aGVpbnJpY2guZmlua0BkYXFyaS5jb20+Cj4gRml4ZXM6IGIyMDgxNTI1
NTY5MyAoImRybS9pOTE1OiBBZGQgcGxhbmUgYWxwaGEgYmxlbmRpbmcgc3VwcG9ydCwgdjIuIikK
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAx
MiArKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBjM2Uy
YjExNzhkNTUuLjY3ZDc5NmY0NzQ3ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMKPiBAQCAtMjQ2MywxMCArMjQ2MywxNCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVs
X2ZiX21vZGlmaWVyX3RvX3RpbGluZyh1NjQgZmJfbW9kaWZpZXIpCj4gICAqIG1haW4gc3VyZmFj
ZS4KPiAgICovCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvIGNjc19mb3Jt
YXRzW10gPSB7Cj4gLSAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hSR0I4ODg4LCAuZGVw
dGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52
c3ViID0gMTYsIH0sCj4gLSAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hCR1I4ODg4LCAu
ZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgs
IC52c3ViID0gMTYsIH0sCj4gLSAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX0FSR0I4ODg4
LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9LCAuaHN1YiA9
IDgsIC52c3ViID0gMTYsIH0sCj4gLSAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX0FCR1I4
ODg4LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9LCAuaHN1
YiA9IDgsIC52c3ViID0gMTYsIH0sCj4gKyAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hS
R0I4ODg4LCAuZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLAo+ICsgICAgICAgICAuY3BwID0g
eyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sCj4gKyAgICAgICB7IC5mb3JtYXQg
PSBEUk1fRk9STUFUX1hCR1I4ODg4LCAuZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLAo+ICsg
ICAgICAgICAuY3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sCj4gKyAg
ICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX0FSR0I4ODg4LCAuZGVwdGggPSAzMiwgLm51bV9w
bGFuZXMgPSAyLAo+ICsgICAgICAgICAuY3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3Vi
ID0gMTYsIC5oYXNfYWxwaGEgPSB0cnVlLCB9LAo+ICsgICAgICAgeyAuZm9ybWF0ID0gRFJNX0ZP
Uk1BVF9BQkdSODg4OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwKPiArICAgICAgICAg
LmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIgPSA4LCAudnN1YiA9IDE2LCAuaGFzX2FscGhhID0gdHJ1
ZSwgfSwKPiAgfTsKPgo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqCj4g
LS0KPiAyLjIxLjAKPgoKSnVzdCB0ZXN0ZWQgaXQgb24gb3VyIGltYWdlLCBmaXhlcyB0aGUgYnVn
IGFuZCB3b3JrcyBmb3IgbWUuIFRoYW5rIHlvdQpmb3IgdGhlIHN3aWZ0IGZpeCEKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
