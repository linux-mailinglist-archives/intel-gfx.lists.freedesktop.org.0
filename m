Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AABC1021F7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2026E185;
	Tue, 19 Nov 2019 10:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CF86E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:20:51 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id f3so2830092wmc.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 02:20:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qwpiZlOpy/BwkWvAt0J613VC6rESp/FbmQidNxublS4=;
 b=umga+vpQ6jk4/YsPOOAXbZcQlJAg75o/WGlvt/EpYWTjpq2Ah3uwdlH9XP/AS6Gw4j
 y3+k/SvQQesN3qEUy5EFHfngcPW1Va1SCdstbdixH3Mdz2EYRZOTRRo3zMYzaE5MhDBR
 r+pSuASD7im61N3rknfJr9kHZksEiYz1ueeRxSewpoqQcfi6Hl28wSVIfYbwWwrOe7wq
 +st3PvltJJtQYKr8ri6RQkPaBTXxnlJo8Xrezo8T3m+lxQdu7C7r+5T0Aqy/KwVkwTiT
 YMgrakvv/OUWzlparmwZp5WuRL1PicJsjz1si7X3KXREdaICqhbkRP53DfczUh9A4FGo
 D49Q==
X-Gm-Message-State: APjAAAU7pF8ziATesvLOxbRRgP5nuUi5Q1wThaDT/ibpASzXVuSg0ric
 +ab2QR8MB/lOCoaasHA1Bngl+Q==
X-Google-Smtp-Source: APXvYqzGCvDRuXb1lkAEIPPdDJdERiSfpAVd8HaCojWUtOzAScZmZgQgcRLo2oTHiAv8neX7odg5qQ==
X-Received: by 2002:a1c:4946:: with SMTP id w67mr4873563wma.16.1574158849564; 
 Tue, 19 Nov 2019 02:20:49 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id x6sm27538856wrw.34.2019.11.19.02.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 02:20:49 -0800 (PST)
Date: Tue, 19 Nov 2019 11:20:47 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191119102047.GB30416@phenom.ffwll.local>
References: <20191115194204.22244-1-ville.syrjala@linux.intel.com>
 <20191115194204.22244-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115194204.22244-7-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=qwpiZlOpy/BwkWvAt0J613VC6rESp/FbmQidNxublS4=;
 b=WYAE+Z+UQ3tsyOHF4PM/YyUQNf/HKHp4qXQhEUDfGPb0FE+3vycvsekCLlPKAoqUD+
 JvmrBZEy+zPfvCk3aXM4h28lf+78vmgn7xw6+R+yvkePvmDQuEaEnTt5ZXEqa2DLYDGv
 mcDAUc2IS+XVzByAxogSxjGTYxKJ1iqboBm+4=
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/atomic: Fix the early return in
 drm_atomic_set_mode_for_crtc()
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDk6NDI6MDNQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZSBlYXJseSByZXR1cm4gaW4gZHJtX2F0b21pY19zZXRfbW9kZV9mb3JfY3J0
YygpIGlzbid0IHF1aXRlCj4gcmlnaHQuIEl0IHdvdWxkIG1pc3Rha2VubHkgcmV0dXJuIGFuZCBm
YWlsIHRvIHVwZGF0ZQo+IGNydGNfc3RhdGUtPmVuYWJsZSBpZiBzb21lb25lIGFjdHVhbGx5IHRy
aWVkIHRvIHNldCBhIHplcm9lZAo+IG1vZGUgb24gYSBjdXJyZW50bHkgZGlzYWJsZWQgY3J0Yy4g
VGhhdCBzaG91bGQgbmV2ZXIgYWN0dWFsbHkKPiBoYXBwZW4gaW4gcmVzcG9uc2UgdG8gYW55IHVz
ZXJzcGFjZSByZXF1ZXN0IGFzIHRoZSB6ZXJvZWQgbW9kZQo+IHdvdWxkIGdldCByZWplY3RlZCBl
YXJsaWVyLiBIb3dldmVyIHRoZXJlIGlzIHNvbWUgY2hhbmNlIG9mIHRoaXMKPiBoYXBwZW5pbmcg
aW50ZXJuYWxseSAoZWcuIGR1cmluZyBodyBzdGF0ZSByZWFkb3V0KSBzbyBpdCBzZWVtcwo+IGJl
c3QgdG8gbm90IGxldCB0aGUgc3RhdGUgYmVjb21lIHRvdGFsbHkgaW5jb25zaXN0ZW50Lgo+IAo+
IEFkZGl0aW9uYWxseSB0aGUgZWFybHkgcmV0dXJuIHdpbGwgbm90IGJlIHRha2VuIGlmIHdlJ3Jl
IHRyeWluZyB0bwo+IGRpc2FibGUgYW4gYWxyZWFkeSBkaXNhYmxlZCBjcnRjLiBXaGlsZSB0aGF0
IGlzIG5vdCBhY3R1YWxseQo+IGhhcm1mdWwgaXQgaXMgaW5jb25zaXN0ZW50LCBzbyBsZXQncyBo
YW5kbGUgdGhhdCBjYXNlIGFzIHdlbGwuCj4gCj4gVGVzdGNhc2U6IGlndC9rbXNfc2VsZnRlc3Qv
Y2hlY2tfYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjCj4gVGVzdGNhc2U6IGlndC9rbXNfc2VsZnRl
c3QvY2hlY2tfYXRvbWljX3NldF96ZXJvZWRfbW9kZV9mb3J0X2NydGMKPiBSZXZpZXdlZC1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyB8IDkgKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWlj
X3VhcGkuYwo+IGluZGV4IDBkNDY2ZDNiMDgwOS4uYTNhNmE4MTM3YWY0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fYXRvbWljX3VhcGkuYwo+IEBAIC02OCw4ICs2OCwxMyBAQCBpbnQgZHJtX2F0b21pY19z
ZXRfbW9kZV9mb3JfY3J0YyhzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKnN0YXRlLAo+ICAJc3RydWN0
IGRybV9tb2RlX21vZGVpbmZvIHVtb2RlOwo+ICAKPiAgCS8qIEVhcmx5IHJldHVybiBmb3Igbm8g
Y2hhbmdlLiAqLwo+IC0JaWYgKG1vZGUgJiYgbWVtY21wKCZzdGF0ZS0+bW9kZSwgbW9kZSwgc2l6
ZW9mKCptb2RlKSkgPT0gMCkKPiAtCQlyZXR1cm4gMDsKPiArCWlmIChzdGF0ZS0+ZW5hYmxlKSB7
CgpIbSBJIHRoaW5rIHRoaXMgd291bGQgYmUgY2xlYXJlciBpZiB5b3UgZ28gd2l0aAoKCWlmIChz
dGF0ZS0+ZW5hYmxlID09ICEhbW9kZSAmJgoJICAgICghbW9kZSB8fCBtZW1jbXAoJnN0YXRlLT5t
b2RlLCBtb2RlLCBzaXplb2YoKm1vZGUpKSA9PSAwKSkKCSAgICAJcmV0dXJuIDA7CgpCdXQgYWxz
byBzb21ld2hhdCBhIGJpa2VzaGVkLiBJJ20gYWxzbyB3b25kZXJpbmcgd2hldGhlciB3ZSBzaG91
bGRuJ3QganVzdApkZWNsYXJlIHRoaXMgYSBkcml2ZXIgYnVnIChpdCBtZWFucyBlbmFibGUgYW5k
IG1vZGUgYXJlIGFscmVhZHkgb3V0IG9mCnN5bmMpLCBidXQgSSBndWVzcyBodyBzdGF0ZSByZWFk
b3V0IGlzIHNwZWNpYWwgc29tZXRpbWVzLgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+ICsJCWlmIChtb2RlICYmIG1lbWNtcCgmc3RhdGUtPm1v
ZGUsIG1vZGUsIHNpemVvZigqbW9kZSkpID09IDApCj4gKwkJCXJldHVybiAwOwo+ICsJfSBlbHNl
IHsKPiArCQlpZiAoIW1vZGUpCj4gKwkJCXJldHVybiAwOwo+ICsJfQo+ICAKPiAgCWRybV9wcm9w
ZXJ0eV9ibG9iX3B1dChzdGF0ZS0+bW9kZV9ibG9iKTsKPiAgCXN0YXRlLT5tb2RlX2Jsb2IgPSBO
VUxMOwo+IC0tIAo+IDIuMjMuMAo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5l
ZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
