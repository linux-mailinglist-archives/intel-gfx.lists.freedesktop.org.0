Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4342737ACA4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 19:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837466EA84;
	Tue, 11 May 2021 17:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127326EA85
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 17:05:00 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id c22so23732728edn.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 10:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=OAXk/8WHwKVhPFW9td3pa9U9iAIkU4/3QR+Ow5Nxdqc=;
 b=ZlgARLQdMzjYHaR/whOmTR94TG0qV7bL4Ca2pC/57DDuFETVn2I3rjsR7mbg0SA+oq
 zZMasK/7Vd6qBl9ksgmtY3kMRwq4N//O8ogaj+sQVMyJhTqKkZnItVvc7W/WrWm6pXVY
 UPmz4eJwNsTwMgYW2q9hTFFzJz1p20BnbMlCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=OAXk/8WHwKVhPFW9td3pa9U9iAIkU4/3QR+Ow5Nxdqc=;
 b=jjMc6G4bo3ZM7IGKTRno4uAXez9aA3cAjekiNxhpvlu/K4I8rw9TgN4vYTf9joHpWt
 CGHGInaYMcAlAENHzA6fuYIslJucif8lbTOtPUVfbAlH9+JhrEgn7+379NgLM1KMUlWI
 sEbznLKC3KKttrTTGIvqI36cuHT/JU+Uw/lNdq3lWWrOR7g6+0/aEsicEIMQj65ndWmy
 zNhE70m+fRuKyx6y3yRgeCp+PZixgZPHjJaGeoRyd0Y8dIrdtTbcppoTxEP9MI0AW2Qk
 oPCrXtp88/5HF3kblkwQG7ARlV7okJd9vRn7S5uS0VrNmOAptHeWLIij6XmCz+nAqafe
 aCaw==
X-Gm-Message-State: AOAM530scAnWB8W7nwH1DXaGdBPJlV1uCzAid8uiIO8J7ovLEmHIqBje
 EHciKi+mtLurYxjtzDicPsRiqw==
X-Google-Smtp-Source: ABdhPJzZTZaIFT1evKYYji9vcL166SCamP1fSF5H4QOMkMWXu1LMSXvPbHlNUQX3jQoQUqSHRD7HaA==
X-Received: by 2002:aa7:d513:: with SMTP id y19mr36832686edq.9.1620752698783; 
 Tue, 11 May 2021 10:04:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f7sm1018653edd.5.2021.05.11.10.04.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 10:04:58 -0700 (PDT)
Date: Tue, 11 May 2021 19:04:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
References: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
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

T24gVHVlLCBNYXkgMTEsIDIwMjEgYXQgMTA6MzE6MzlBTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3ZSBzdG9wIHVz
aW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdl
cmxha2UgYXMgYW4gZXhjZXB0aW9uLiBVbmZvcnR1bmF0ZWx5Cj4gd2UgbmVlZCBleHRlbmQgdHJh
bnNpdGlvbiBwZXJpb2QgYW5kIHN1cHBvcnQgcmVsb2NhdGlvbnMgZm9yIHR3bwo+IG90aGVyIGln
ZnggcGxhdGZvcm1zIC0gUm9ja2V0bGFrZSBhbmQgQWxkZXJsYWtlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29t
Pgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgo+IENjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29u
QGpsZWtzdHJhbmQubmV0PgoKU28gdGhlIGFubm95aW5nIHRoaW5nIGhlcmUgaXMgdGhhdCBub3cg
bWVkaWEtZHJpdmVyIGlzIGZpeGVkOgoKaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL21lZGlhLWRy
aXZlci9jb21taXQvMTQ0MDIwYzM3NzcwMDgzOTc0YmVkZjU5OTAyYjcwYjhmNDQ0Yzc5OQoKV2hp
Y2ggbWVhbnMgaWd0IGlzIHJlYWxseSB0aGUgb25seSB0aGluZyBsZWZ0LgoKRGF2ZSwgaXMgdGhp
cyBzdGlsbCBvayBmb3IgYW4gYWNrZWQgZXhjZXB0aW9uLCBvciBpcyB0aGlzIG5vdyBsZWFuaW5n
CnRvd2FyZHMgImp1c3QgZml4IGlndCI/Ci1EYW5pZWwKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDEwICsrKysrKystLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCAyOTcxNDM1
MTFmOTkuLmY4MGRhMWQ2ZDliMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC00OTYsMTEgKzQ5NiwxNSBAQCBlYl92YWxpZGF0
ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gIAkJc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjX29iamVjdDIgKmVudHJ5LAo+ICAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICB7Cj4g
LQkvKiBSZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBmb3IgYWxsIHBsYXRmb3JtcyBhZnRlciBU
R0wtTFAuICBUaGlzCj4gLQkgKiBhbHNvIGNvdmVycyBhbGwgcGxhdGZvcm1zIHdpdGggbG9jYWwg
bWVtb3J5Lgo+ICsJLyoKPiArCSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5n
IGZyb20gZ2VuMTIgd2l0aCBzb21lIGV4Y2VwdGlvbnMKPiArCSAqIC0gVEdML1JLTC9BREwuCj4g
IAkgKi8KPiAgCWlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgo+IC0JICAgIElOVEVMX0dF
TihlYi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gKwkgICAgSU5U
RUxfR0VOKGViLT5pOTE1KSA+PSAxMiAmJiAhKElTX1RJR0VSTEFLRShlYi0+aTkxNSkgfHwKPiAr
CQkJCQkgICBJU19ST0NLRVRMQUtFKGViLT5pOTE1KSB8fAo+ICsJCQkJCSAgIElTX0FMREVSTEFL
RV9TKGViLT5pOTE1KSB8fAo+ICsJCQkJCSAgIElTX0FMREVSTEFLRV9QKGViLT5pOTE1KSkpCj4g
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJaWYgKHVubGlrZWx5KGVudHJ5LT5mbGFncyAmIGVi
LT5pbnZhbGlkX2ZsYWdzKSkKPiAtLSAKPiAyLjI2LjAKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
