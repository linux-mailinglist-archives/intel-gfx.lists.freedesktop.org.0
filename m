Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D86714B353
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 09:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DEA6E31C;
	Wed, 19 Jun 2019 07:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D13E6E319
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 07:49:01 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id s49so25817950edb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 00:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=9yRPqLsy9SzgWIOIK5gO9H41NqMgtH7z8Lf0epnTSe8=;
 b=kwdOew/bD+ZsKYPLImpvy0Vx1iqHCYbw2K+Q6J/rYBd/KDKtYlM2Ie/zKFzJGnvGZJ
 GOdjhbcTrun0JfuyWUqg1ugQTHfUbw2EjJRqeY5GBBmrLLctMjh9k+i9jrXNvactd9UX
 uL/hrTag2VT43K31tQjDJC70sBi92behsXPEpVTtTUVy6DJiUYsgLszxtKIpc+yVJxd1
 zfkJxkHuDDkEO35vaph8RALKM8bMvnrq0utryTogXaO9SdPdViJx2Z+16EJ/aa5sbice
 Nr7ZqF5j3LVxm2blPnYpniKJK1QHkBT4J5MXNyWUcWz/kQY0d2O0l8jJQQr3oM1h61Sb
 IQQA==
X-Gm-Message-State: APjAAAXrN+isi3W+KKEQDD8y6bQ9R8CMkNMOqzw62HI0vMrNNOPrHl5o
 BkbFAaTkuje1OEOVvphO/S8Z5A==
X-Google-Smtp-Source: APXvYqzcQ/qJVFreUUsYyuaxNjvBsBySdJhnXRVOLZg1dyo7u4fZwHatDwiE/NN42tCU6BsQTm39fg==
X-Received: by 2002:a50:883b:: with SMTP id b56mr36295341edb.178.1560930540342; 
 Wed, 19 Jun 2019 00:49:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x4sm5546030eda.22.2019.06.19.00.48.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:48:59 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:48:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20190619074856.GJ12905@phenom.ffwll.local>
Mail-Followup-To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20190619020750.swzerehjbvx6sbk2@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619020750.swzerehjbvx6sbk2@smtp.gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=9yRPqLsy9SzgWIOIK5gO9H41NqMgtH7z8Lf0epnTSe8=;
 b=jWHFk6XqsoYXocFpSE0gn/gHZJ/0TrxElZKm42Ipe0ZdlxBiXBmyo9fX4/WGgeDDO3
 8AYZ0F+ufO1zlDHVBmH9vwwSvpWZI8HJCpZq3I4Sx2ZL54GWsm81cgHwZAzplxF8c3Me
 oI3KswqH2dD74mtl53UCCeWZ6zPk1dUxbOPMc=
Subject: Re: [Intel-gfx] [PATCH V4] drm/drm_vblank: Change EINVAL by the
 correct errno
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, kernel-janitors@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMTE6MDc6NTBQTSAtMDMwMCwgUm9kcmlnbyBTaXF1ZWly
YSB3cm90ZToKPiBGb3IgaGlzdG9yaWNhbCByZWFzb24sIHRoZSBmdW5jdGlvbiBkcm1fd2FpdF92
YmxhbmtfaW9jdGwgYWx3YXlzIHJldHVybgo+IC1FSU5WQUwgaWYgc29tZXRoaW5nIGdldHMgd3Jv
bmcuIFRoaXMgc2NlbmFyaW8gbGltaXRzIHRoZSBmbGV4aWJpbGl0eQo+IGZvciB0aGUgdXNlcnNw
YWNlIG1ha2UgZGV0YWlsZWQgdmVyaWZpY2F0aW9uIG9mIHRoZSBwcm9ibGVtIGFuZCB0YWtlCj4g
c29tZSBhY3Rpb24uIEluIHBhcnRpY3VsYXIsIHRoZSB2YWxpZGF0aW9uIG9mIOKAnGlmICghZGV2
LT5pcnFfZW5hYmxlZCnigJ0KPiBpbiB0aGUgZHJtX3dhaXRfdmJsYW5rX2lvY3RsIGlzIHJlc3Bv
bnNpYmxlIGZvciBjaGVja2luZyBpZiB0aGUgZHJpdmVyCj4gc3VwcG9ydCB2Ymxhbmsgb3Igbm90
LiBJZiB0aGUgZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgVkJsYW5rLCB0aGUKPiBmdW5jdGlvbiBk
cm1fd2FpdF92YmxhbmtfaW9jdGwgcmV0dXJucyBFSU5WQUwgd2hpY2ggZG9lcyBub3QgcmVwcmVz
ZW50Cj4gdGhlIHJlYWwgaXNzdWU7IHRoaXMgcGF0Y2ggY2hhbmdlcyB0aGlzIGJlaGF2aW9yIGJ5
IHJldHVybiBFT1BOT1RTVVBQLgo+IEFkZGl0aW9uYWxseSwgc29tZSBvcGVyYXRpb25zIGFyZSB1
bnN1cHBvcnRlZCBieSB0aGlzIGZ1bmN0aW9uLCBhbmQKPiByZXR1cm5zIEVJTlZBTDsgdGhpcyBw
YXRjaCBhbHNvIGNoYW5nZXMgdGhlIHJldHVybiB2YWx1ZSB0byBFT1BOT1RTVVBQCj4gaW4gdGhp
cyBjYXNlLiBMYXN0bHksIHRoZSBmdW5jdGlvbiBkcm1fd2FpdF92YmxhbmtfaW9jdGwgaXMgaW52
b2tlZCBieQo+IGxpYmRybSwgd2hpY2ggaXMgdXNlZCBieSBtYW55IGNvbXBvc2l0b3JzOyBiZWNh
dXNlIG9mIHRoaXMsIGl0IGlzCj4gaW1wb3J0YW50IHRvIGNoZWNrIGlmIHRoaXMgY2hhbmdlIGJy
ZWFrcyBhbnkgY29tcG9zaXRvci4gSW4gdGhpcyBzZW5zZSwKPiB0aGUgZm9sbG93aW5nIHByb2pl
Y3RzIHdlcmUgZXhhbWluZWQ6Cj4gCj4gKiBEcm0taHdjb21wb3Nlcgo+ICogS3dpbgo+ICogU3dh
eQo+ICogV2xyb290cwo+ICogV2F5bGFuZC1jb3JlCj4gKiBXZXN0b24KPiAqIFhvcmcgKDY3IGRp
ZmZlcmVudCBkcml2ZXJzKQo+IAo+IEZvciBlYWNoIHJlcG9zaXRvcnkgdGhlIHZlcmlmaWNhdGlv
biBoYXBwZW5lZCBpbiB0aHJlZSBzdGVwczoKPiAKPiAqIFVwZGF0ZSB0aGUgbWFpbiBicmFuY2gK
PiAqIExvb2sgZm9yIGFueSBvY2N1cnJlbmNlICJkcm1XYWl0VkJsYW5rIiB3aXRoIHRoZSBjb21t
YW5kOgo+ICAgZ2l0IGdyZXAgLW4gImRybVdhaXRWQmxhbmsiCj4gKiBMb29rIGluIHRoZSBnaXQg
aGlzdG9yeSBvZiB0aGUgcHJvamVjdCB3aXRoIHRoZSBjb21tYW5kOgo+ICAgZ2l0IGxvZyAtU2Ry
bVdhaXRWQmxhbmsKPiAKPiBGaW5hbGx5LCBub25lIG9mIHRoZSBhYm92ZSBwcm9qZWN0cyB2YWxp
ZGF0ZSB0aGUgdXNlIG9mIEVJTlZBTCB3aGljaAo+IG1ha2Ugc2FmZSwgYXQgbGVhc3QgZm9yIHRo
ZXNlIHByb2plY3RzLCB0byBjaGFuZ2UgdGhlIHJldHVybiB2YWx1ZXMuCj4gCj4gQ2hhbmdlIHNp
bmNlIFYzOgo+ICAtIFJldHVybiBFSU5WQUwgZm9yIF9EUk1fVkJMQU5LX1NJR05BTCAoRGFuaWVs
KQo+IAo+IENoYW5nZSBzaW5jZSBWMjoKPiAgRGFuaWVsIFZldHRlciBhbmQgQ2hyaXMgV2lsc29u
Cj4gIC0gUmVwbGFjZSBFTk9UVFkgYnkgRU9QTk9UU1VQUAo+ICAtIFJldHVybiBFSU5WQUwgaWYg
dGhlIHBhcmFtZXRlcnMgYXJlIHdyb25nCj4gCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCkFwb2xvZ2llcyBmb3IgdGhlIGNvbmZ1c2lvbiBvbiB0
aGUgbGFzdCB0aW1lIGFyb3VuZC4gYnR3IGlmIHNvbWVvbmUgdGVsbHMKeW91ICJyLWIgKG9yIGEt
Yikgd2l0aCB0aGVzZSBjaGFuZ2VzIiwgdGhlbiBqdXN0IGFwcGx5IHRoZSByLWIvYS1iIHRhZwpu
ZXh0IHRpbWUgYXJvdW5kLiBPdGhlcndpc2UgcGVvcGxlIHdpbGwgcmUtcmV2aWV3IHRoZSBzYW1l
IHRoaW5nIG92ZXIgYW5kCm92ZXIgYWdhaW4uCi1EYW5pZWwKCj4gU2lnbmVkLW9mZi1ieTogUm9k
cmlnbyBTaXF1ZWlyYSA8cm9kcmlnb3NpcXVlaXJhbWVsb0BnbWFpbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX3ZibGFuay5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwo+IGluZGV4IDYw
M2FiMTA1MTI1ZC4uYmVkMjMzMzYxNjE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jCj4gQEAgLTE1
ODIsNyArMTU4Miw3IEBAIGludCBkcm1fd2FpdF92YmxhbmtfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgCXVuc2lnbmVkIGludCBmbGFncywgcGlwZSwgaGlnaF9w
aXBlOwo+ICAKPiAgCWlmICghZGV2LT5pcnFfZW5hYmxlZCkKPiAtCQlyZXR1cm4gLUVJTlZBTDsK
PiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4gIAo+ICAJaWYgKHZibHdhaXQtPnJlcXVlc3QudHlw
ZSAmIF9EUk1fVkJMQU5LX1NJR05BTCkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAtLSAKPiAyLjIx
LjAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
