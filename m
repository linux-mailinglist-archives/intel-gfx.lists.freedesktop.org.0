Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A934B3A1541
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 15:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F8B6E2B6;
	Wed,  9 Jun 2021 13:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B4C6E2B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 13:15:02 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id l9so4004433wms.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 06:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eVTFO9K7i34xSf6Rs5YO9CVhklxb6MbUBU8n+2/L45s=;
 b=hSwlKEB9ZyWuNKe3GYcMLWt1sPRZHfk7jJDXPvpbmXuYHwabHSFZsNGwCU9ZGkpnaY
 VyC4PmtXEX8rEkcN/45Rg4XnNLtBe4TTYBpKL4S99QBNxTYP3db9MV465pl41eniGecE
 rTPJBoqzoNNgNwjBo2NYnSaN4vyxTWsyRrflY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eVTFO9K7i34xSf6Rs5YO9CVhklxb6MbUBU8n+2/L45s=;
 b=ni0QHX/X8NrGYlbLtg8ejm/mPyQKjaXZZXAl72je1Ny6qg8amo/ydvHtta9q9UYAIs
 esoXS/q3h9UziQ3jx9sjbrgm2tajG0EmFxBUfPZ4kd/VgY+Lzmt2/arbq4cVnhi4DxB6
 OpbG15Js2VRGU7tuUZdK1Uj2k+q/Oby4JJ4v5G1nkq6HlKWrYofNBVdA/B4I+QWTjg33
 4aV8oQ/yTFJhT1ER+73I9TYFF75sVg+PW0khdd60GBjJxOXsqeS980brTdEr6gzH6mAM
 RRvNeXvigrFez+AqrK9XcVvK3q5k8DddWlfOeA8VbcST/IICPz9/4Yp0TNuE9n3PXL2d
 9Gpw==
X-Gm-Message-State: AOAM531nGgXBGoyT3q5GuTZuW0mtLQmS3U1W19vWijLTcFFcNQuwgQbZ
 6ERG+gk44CbaMzJv3qV2rlF80bPb8vq04Q==
X-Google-Smtp-Source: ABdhPJyA+FER6Bz6ZfD5wEr75nGo4fcpGzVtJd+SIcJZ4F8HDtWOntdg/k02gSGKgW+/aAJHNZc8Jg==
X-Received: by 2002:a05:600c:2109:: with SMTP id
 u9mr9876976wml.7.1623244501091; 
 Wed, 09 Jun 2021 06:15:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s1sm6292957wmj.8.2021.06.09.06.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 06:15:00 -0700 (PDT)
Date: Wed, 9 Jun 2021 15:14:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YMC+0lc8i4Q97roq@phenom.ffwll.local>
References: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDEsIDIwMjEgYXQgMDQ6MjQ6NDJQTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3ZSBzdG9wIHVz
aW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdl
cmxha2UgYXMgYW4gZXhjZXB0aW9uLiBXZSBrZWVwIHRoaXMKPiBzdGF0ZW1lbnQgYnV0IHdlIHdh
bnQgdG8gZW5hYmxlIHJlbG9jYXRpb25zIGNvbmRpdGlvbmFsbHkgZm9yCj4gUm9ja2V0bGFrZSBh
bmQgQWxkZXJsYWtlIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyBzZXQuCj4gCj4gS2Vl
cGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJp
bSBzb2x1dGlvbgo+IHVudGlsIElHVHMgd2lsbCBiZSByZXdyaXR0ZW4gdG8gdXNlIHNvZnRwaW4u
Cj4gCj4gdjI6IC0gcmVtb3ZlIGlubGluZSBmcm9tIGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkp
Cj4gICAgIC0gZml4IGluZGVudGF0aW9uCj4gCj4gU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgS2Vt
cGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gQ2M6IERhdmUgQWly
bGllIDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+
CgpUaGlzIGNvbmZsaWN0cyB3aXRoIEx1Y2FzJyBzd2l0Y2ggZnJvbSBJTlRFTF9HRU4gdG8gR1JB
UEhJQ1NfVkVSLiBDYW4geW91CnBscyByZWJhc2UgYW5kIHJlc2VuZCAod2l0aCBEYXZlJ3MgYWNr
IGluY2x1ZGVkKS4KLURhbmllbAoKPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jICAgIHwgMjQgKysrKysrKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCAyOTcxNDM1MTFm
OTkuLjc4Yjg2YTdiYzM5YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC00OTEsMTYgKzQ5MSwzMCBAQCBlYl91bnJlc2VydmVf
dm1hKHN0cnVjdCBlYl92bWEgKmV2KQo+ICAJZXYtPmZsYWdzICY9IH5fX0VYRUNfT0JKRUNUX1JF
U0VSVkVEOwo+ICB9Cj4gIAo+ICtzdGF0aWMgYm9vbCBwbGF0Zm9ybV9oYXNfcmVsb2NzX2VuYWJs
ZWQoY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3sKPiArCS8qCj4gKwkgKiBS
ZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBzdGFydGluZyBmcm9tIGdlbjEyIHdpdGggVGlnZXJs
YWtlCj4gKwkgKiBhcyBhbiBleGNlcHRpb24uIFdlIGFsbG93IHRlbXBvcmFyaWx5IHVzZSByZWxv
Y2F0aW9ucyBmb3IgUm9ja2V0bGFrZQo+ICsJICogYW5kIEFsZGVybGFrZSB3aGVuIHJlcXVpcmVf
Zm9yY2VfcHJvYmUgZmxhZyBpcyBzZXQuCj4gKwkgKi8KPiArCWlmIChJTlRFTF9HRU4oZWItPmk5
MTUpIDwgMTIgfHwgSVNfVElHRVJMQUtFKGViLT5pOTE1KSkKPiArCQlyZXR1cm4gdHJ1ZTsKPiAr
Cj4gKwlpZiAoSU5URUxfSU5GTyhlYi0+aTkxNSktPnJlcXVpcmVfZm9yY2VfcHJvYmUgJiYKPiAr
CSAgICAoSVNfUk9DS0VUTEFLRShlYi0+aTkxNSkgfHwgSVNfQUxERVJMQUtFX1MoZWItPmk5MTUp
IHx8Cj4gKwkgICAgIElTX0FMREVSTEFLRV9QKGViLT5pOTE1KSkpCj4gKwkJcmV0dXJuIHRydWU7
Cj4gKwo+ICsJcmV0dXJuIGZhbHNlOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50Cj4gIGViX3ZhbGlk
YXRlX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiAgCQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCj4gIAkJc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gIHsK
PiAtCS8qIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFmdGVy
IFRHTC1MUC4gIFRoaXMKPiAtCSAqIGFsc28gY292ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2Nh
bCBtZW1vcnkuCj4gLQkgKi8KPiAtCWlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgo+IC0J
ICAgIElOVEVMX0dFTihlYi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkp
Cj4gKwlpZiAoZW50cnktPnJlbG9jYXRpb25fY291bnQgJiYgIXBsYXRmb3JtX2hhc19yZWxvY3Nf
ZW5hYmxlZChlYikpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJaWYgKHVubGlrZWx5KGVu
dHJ5LT5mbGFncyAmIGViLT5pbnZhbGlkX2ZsYWdzKSkKPiAtLSAKPiAyLjI2LjAKPiAKCi0tIApE
YW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8v
YmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
