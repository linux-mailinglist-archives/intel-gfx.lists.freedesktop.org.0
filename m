Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776B263254
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 09:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578EF8957D;
	Tue,  9 Jul 2019 07:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB51189276
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 07:48:28 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id h21so18522615qtn.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jul 2019 00:48:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vFGyp1W+4ZcTTjS3FaBJUtNc3+iT2Cw8FN1vi+n701w=;
 b=YcYmAVcdLzjRPEgkU8uqjEuXYHxY6ksD1cDKRu+R/7VaYnKg1EI7AwAc1gDRfxkGn1
 jy8aJNmdtLCI1om4gQA5oNweefwfRGQt5QFc6b1db5oI/gUgCzupkFpIiTw3VdlxXVyE
 j6fRcOAR2q8osgdVL8EBIVl59eXN2l0UQ2rvdysljQNUUA5YxIkLenPTglO+Br69EwDq
 5mKkVggm+E5so2+3UxFanylJyIrkXjAxth0kQgLEQYP+6KNXfds0YGBwJ8GncGYPToxJ
 dL2l/rUKv4do4sQxeb6gRsXX09R8+js1HCXlx1NYk3OUcY0nulOlYTObq7F9IbM5UeUq
 0ERA==
X-Gm-Message-State: APjAAAVOFmzdOEA69Uzz1XDK7F6g52mTBQEaqUnfz8N8TYZoBhbDPokk
 DTiqAVNHcERm5Q/yYn7f+PJxrupU0NZ+aiGcEUYqGA==
X-Google-Smtp-Source: APXvYqyyX1LjBnJ1YcHeMKLO4WMbtc3tJUCKH4rGEI7mhY8SnlZAWY7tMGodHsKG74h4Ss/dljAO0gIcTu2a8cM8zKs=
X-Received: by 2002:ac8:7219:: with SMTP id a25mr17526457qtp.234.1562658507900; 
 Tue, 09 Jul 2019 00:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190708162048.4286-1-ville.syrjala@linux.intel.com>
 <20190708162048.4286-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20190708162048.4286-4-ville.syrjala@linux.intel.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 9 Jul 2019 09:48:16 +0200
Message-ID: <CA+M3ks4x85BQzYxKfqwtawUYfHV_0m5-USZd=zeaE4hRW-idWQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vFGyp1W+4ZcTTjS3FaBJUtNc3+iT2Cw8FN1vi+n701w=;
 b=w76+FGbAnX5UgJ3rXgMO3/PZbJ9+8Yo9c6vNNvJOjV0JJkq1EIx5SvIep23NFuXNnR
 PgKZ6z0wzDULyuSFVzscqBl/64zyFFPTnVjKNtRIAriim9+2KBWq7rUB/77qzupL0XLg
 A2+ICEJNq7eeWDpiHuQ4Rbtdh38zZyAzsbAHQ62FKQe/Xus9/6GoIOm7FBVijptEubFP
 IjCG8JVdhJRC4/P7uslB92qfWg7JW+fSqYWUzHJMLNDjqFzQ/GgKgIuVmxI0Oi89lGFW
 GazZXb/w5xRdANqIZVGj1pZxefy21jmWmvwt525Xe367DvNJ0u4abdBU5xKFYi2UY2sL
 gUMw==
Subject: Re: [Intel-gfx] [PATCH v2 03/14] drm/sti: Remove pointless casts
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGUgbHVuLiA4IGp1aWwuIDIwMTkgw6AgMTg6MjEsIFZpbGxlIFN5cmphbGEKPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Cj4gVGhlcmUncyBubyBwb2ludCBpbiB0
aGUgY2FzdCBmb3IgYWNjZXNzaW5nIHRoZSBiYXNlIGNsYXNzLiBKdXN0Cj4gdGFrZSB0aGUgYWRk
cmVzcyBvZiB0aGUgc3RydWN0IGluc3RlYWQuCgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQsClRo
YW5rcywKCkJlbmphbWluCgo+Cj4gQ2M6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBsaW5hcm8ub3JnPgo+IENjOiBWaW5jZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3Qu
Y29tPgo+IEFja2VkLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGlu
YXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5j
IHwgNiArKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdHZvdXQuYwo+IGluZGV4IGUxYjNjOGNiNzI4Ny4uNDJm
NGMyNjRhNzgzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX3R2b3V0LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jCj4gQEAgLTY2OSw3ICs2Njks
NyBAQCBzdGlfdHZvdXRfY3JlYXRlX2R2b19lbmNvZGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
Cj4KPiAgICAgICAgIGVuY29kZXItPnR2b3V0ID0gdHZvdXQ7Cj4KPiAtICAgICAgIGRybV9lbmNv
ZGVyID0gKHN0cnVjdCBkcm1fZW5jb2RlciAqKWVuY29kZXI7Cj4gKyAgICAgICBkcm1fZW5jb2Rl
ciA9ICZlbmNvZGVyLT5lbmNvZGVyOwo+Cj4gICAgICAgICBkcm1fZW5jb2Rlci0+cG9zc2libGVf
Y3J0Y3MgPSBFTkNPREVSX0NSVENfTUFTSzsKPiAgICAgICAgIGRybV9lbmNvZGVyLT5wb3NzaWJs
ZV9jbG9uZXMgPSAxIDw8IDA7Cj4gQEAgLTcyMiw3ICs3MjIsNyBAQCBzdGF0aWMgc3RydWN0IGRy
bV9lbmNvZGVyICpzdGlfdHZvdXRfY3JlYXRlX2hkYV9lbmNvZGVyKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCj4KPiAgICAgICAgIGVuY29kZXItPnR2b3V0ID0gdHZvdXQ7Cj4KPiAtICAgICAgIGRy
bV9lbmNvZGVyID0gKHN0cnVjdCBkcm1fZW5jb2RlciAqKSBlbmNvZGVyOwo+ICsgICAgICAgZHJt
X2VuY29kZXIgPSAmZW5jb2Rlci0+ZW5jb2RlcjsKPgo+ICAgICAgICAgZHJtX2VuY29kZXItPnBv
c3NpYmxlX2NydGNzID0gRU5DT0RFUl9DUlRDX01BU0s7Cj4gICAgICAgICBkcm1fZW5jb2Rlci0+
cG9zc2libGVfY2xvbmVzID0gMSA8PCAwOwo+IEBAIC03NzEsNyArNzcxLDcgQEAgc3RhdGljIHN0
cnVjdCBkcm1fZW5jb2RlciAqc3RpX3R2b3V0X2NyZWF0ZV9oZG1pX2VuY29kZXIoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKPgo+ICAgICAgICAgZW5jb2Rlci0+dHZvdXQgPSB0dm91dDsKPgo+IC0g
ICAgICAgZHJtX2VuY29kZXIgPSAoc3RydWN0IGRybV9lbmNvZGVyICopIGVuY29kZXI7Cj4gKyAg
ICAgICBkcm1fZW5jb2RlciA9ICZlbmNvZGVyLT5lbmNvZGVyOwo+Cj4gICAgICAgICBkcm1fZW5j
b2Rlci0+cG9zc2libGVfY3J0Y3MgPSBFTkNPREVSX0NSVENfTUFTSzsKPiAgICAgICAgIGRybV9l
bmNvZGVyLT5wb3NzaWJsZV9jbG9uZXMgPSAxIDw8IDE7Cj4gLS0KPiAyLjIxLjAKPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
