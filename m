Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 747A13731E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 13:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F6289471;
	Thu,  6 Jun 2019 11:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A4D89471
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 11:40:21 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id n2so630770otl.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 04:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=40Ci/kuFawOv0VQ6sj/KFg30Y8yEeTsoDWi3fE4tCPs=;
 b=Y1aJJqPijRZZu6qi931X+XkyV5TpAMnpQw0EfwWELb+6+Y+EhNqM53c+l1YqvlPbGN
 suxV9kWkI6IKSRNcMn9TaOsxgTxHiQ654jEQGmThz2D6a3DsO66nRipPhvxEnP1OLRWk
 BUWeR5okiA1e6hLI7Ew3QLxt038ww4rBjAIeIabyTYzLaYCWCjK9jqCFqhLwkf/7HnsY
 1w/bOY5fg87+BHYeuH8HRhtOlGYyvRjmg0WJuL8VYRxGy/WdInZdHMRCibUV2jDaaFIY
 E2RBd0+j4GIUJsGWSl2/d9I1o7IW4+mPljiaS3Kc9ggR2w0x/6hNpcgjKWVlF6im20Rw
 rgJQ==
X-Gm-Message-State: APjAAAX0Xw8EJoZIFsFo0BG0YEJk88rmYAU+iaPcrozW+JPf6NuW9xxN
 7Wq9jOK0sbDdnJFPqkncikgp/RhYvipV1cbBHxoq0wfT5n8=
X-Google-Smtp-Source: APXvYqz4LQyUVai2VHRGkrWqWWk52xUqfvxIz2UqDriXBQ89+AiHzzycFnBWvnwxn1n0163Tb7Mk88/kEuN/tLApQQ8=
X-Received: by 2002:a9d:73c1:: with SMTP id m1mr11506888otk.188.1559821220557; 
 Thu, 06 Jun 2019 04:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190606073800.64781-1-harish.chegondi@intel.com>
In-Reply-To: <20190606073800.64781-1-harish.chegondi@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 6 Jun 2019 13:40:09 +0200
Message-ID: <CAKMK7uFW3D73tUpV9w0G2B-2Z=jJum1v732gMxV9Lf9zd9Laow@mail.gmail.com>
To: Harish Chegondi <harish.chegondi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=40Ci/kuFawOv0VQ6sj/KFg30Y8yEeTsoDWi3fE4tCPs=;
 b=R9PGsHpYXZ4ufMU/wCsVVRTPrlJDCmbVUM6OBmnD2BD8tJjV9tj34FzvHdx7mIoEy3
 /EyGIMIOIfgorwaHUFBd5SD+K3K42lmfCzovKhATVBz9frEg7AVSBmHkQU7Aeoq0SVH2
 b6QCidLAaXtdfzDA1MkiT42PNvdkMt3t1LRwc=
Subject: Re: [Intel-gfx] [RFC] drm: Do not call drm_probe_ddc() when
 connector force isn't specified
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gNiwgMjAxOSBhdCA5OjM4IEFNIEhhcmlzaCBDaGVnb25kaQo8aGFyaXNoLmNo
ZWdvbmRpQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHdvdWxkIGFsbG93IHRoZSBFRElEIG92
ZXJyaWRlIHRvIGJlIGhhbmRsZWQgY29ycmVjdGx5IGluCj4gZHJtX2RvX2dldF9lZGlkKCkgZm9y
IGNhc2VzIHdoZXJlIEVESUQgZGF0YSBpcyBtaXNzaW5nIG9yIGNvcnJ1cHQuCj4KPiBBbGwgZHJt
X3Byb2JlX2RkYygpIGRvZXMgaXMgY2FsbCBkcm1fZG9fcHJvYmVfZGRjX2VkaWQoICwgLCAsIDEp
Cj4gd2hpY2ggcHJvYmVzIHRoZSBkaXNwbGF5IGJ5IHJlYWRpbmcgMSBieXRlIG9mIEVESUQgZGF0
YSB2aWEgSTJDLgo+IFRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUgY2FsbCB0byBkcm1fcHJvYmVfZGRj
KCkgZnJvbSBkcm1fZ2V0X2VkaWQoKQo+IGJ1dCBkcm1fZ2V0X2VkaWQoKSBjYWxscyBkcm1fZG9f
Z2V0X2VkaWQoKSB3aGljaCBmaXJzdCBoYW5kbGVzCj4gdGhlIEVESUQgb3ZlcnJpZGUgY2FzZSBh
bmQgdGhlbiBjYWxscwo+IGRybV9kb19wcm9iZV9kZGNfZWRpZCggLCAsICxFRElEX0xFTkdUSCkg
dmlhIGZ1bmN0aW9uIHBvaW50ZXIKPiBhcmd1bWVudCBnZXRfZWRpZF9ibG9jay4gU28sIHRoZSBk
aXNwbGF5IGRldmljZSBpcyBzdGlsbCBiZWluZwo+IHByb2JlZCBieSByZWFkaW5nIEVESURfTEVO
R1RIIGJ5dGVzIG9mIEVESUQgZGF0YSB2aWEgSTJDLgo+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSGFyaXNoIENoZWdvbmRpIDxoYXJpc2gu
Y2hlZ29uZGlAaW50ZWwuY29tPgo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzU4MwoKU2luY2UgaXQncyBhIHJlZ3Jlc3Npb24gd2Ug
bmVlZCB0byBhbm5vdGF0ZSB0aGlzIGNvcnJlY3RseSwgZm9yIHRoZQpuZXh0IHZlcnNpb24gcGxl
YXNlIGluY2x1ZGU6CgpGaXhlczogNTNmZDQwYTkwZjNjICgiZHJtOiBoYW5kbGUgb3ZlcnJpZGUg
YW5kIGZpcm13YXJlIEVESUQgYXQKZHJtX2RvX2dldF9lZGlkKCkgbGV2ZWwiKQpDYzogPHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjQuMTUrCgpTbyB0aGVyZSdzIGEgcGlsZSBtb3JlIGRybV9w
cm9iZV9kZGMgY2FsbHMgYWxsIGFyb3VuZCBpbiBkcml2ZXJzLCBidXQKSSByZXZpZXdlZCB0aGVt
IGFsbCwgYW5kIHRoZXkncmUgYWxsIGluIC0+ZGV0ZWN0IGNhbGxiYWNrcy4gU28gbm90CmFmZmVj
dGluZyB0aGUgcmVncmVzc2lvbiB3ZSdyZSBkaXNjdXNzaW5nIGhlcmUuIExvb2tpbmcgYXQKZHJt
X2RvX2dldF9lZGlkIHRoaXMgc2hvdWxkIGFsc28gbm90IHJlc3VsdCBpbiBtb3JlIGZhaWx1cmVz
LiBUaGUgb25seQp0aGluZyB0aGlzIGNoYW5nZXMgaXMgdGhhdCBkcm1fZG9fZ2V0X2VkaWQgd2ls
bCByZXRyeSBhIGJ1bmNoIG1vcmUKdGltZXMgaWYgbm90aGluZyBpcyBjb25uZWN0ZWQgKDQgdGlt
ZXMsIGluc3RlYWQgb2YganVzdCB0aGUgb25lIHByb2JlCnRoYXQgZHJtX3Byb2JlX2RkYyBkb2Vz
KS4gSSBndWVzcyB3ZSBjYW4gcmVzdG9yZSB0aGF0IGlmIGFueW9uZSBjYXJlcywKc2hvdWxkIGF0
IGxlYXN0IG1lbnRpb24gaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKUmV2aWV3ZWQtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9lZGlkLmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZWRpZC5jCj4gaW5kZXggZDg3ZjU3NGZlZWNhLi40MWM0MjA3MDY1MzIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2VkaWQuYwo+IEBAIC0xNzI0LDkgKzE3MjQsNiBAQCBzdHJ1Y3QgZWRpZCAqZHJt
X2dldF9lZGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gICAgICAgICBpZiAo
Y29ubmVjdG9yLT5mb3JjZSA9PSBEUk1fRk9SQ0VfT0ZGKQo+ICAgICAgICAgICAgICAgICByZXR1
cm4gTlVMTDsKPgo+IC0gICAgICAgaWYgKGNvbm5lY3Rvci0+Zm9yY2UgPT0gRFJNX0ZPUkNFX1VO
U1BFQ0lGSUVEICYmICFkcm1fcHJvYmVfZGRjKGFkYXB0ZXIpKQo+IC0gICAgICAgICAgICAgICBy
ZXR1cm4gTlVMTDsKClRyb3VibGUgaXMgdGhlcmUncyBhIGxvdCBtb3JlIGRybV9wcm9iZV9kZGMg
Y2FsbHMgYWxsIG92ZXIsIGFuZCBhIGxvdCBvZiB0aGVzZQo+IC0KPiAgICAgICAgIGVkaWQgPSBk
cm1fZG9fZ2V0X2VkaWQoY29ubmVjdG9yLCBkcm1fZG9fcHJvYmVfZGRjX2VkaWQsIGFkYXB0ZXIp
Owo+ICAgICAgICAgaWYgKGVkaWQpCj4gICAgICAgICAgICAgICAgIGRybV9nZXRfZGlzcGxheWlk
KGNvbm5lY3RvciwgZWRpZCk7Cj4gLS0KPiAyLjIxLjAKPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
