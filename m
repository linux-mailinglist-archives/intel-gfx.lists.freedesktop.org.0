Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D4B102E33
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:25:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A920C6E3F5;
	Tue, 19 Nov 2019 21:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C086E9A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:25:05 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id q70so4823039wme.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:25:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MC0bSMbpPhp7pCY2c+IYZvdByFPUpqgh0fiHNdjQVo8=;
 b=D+VztPD/OYjKkTh6XS4fVZwkA1Kvpf9oqeeDv17S8JgcKLRqg8Gw+TymwNQM22Xi8S
 fmY4309mHAx39/BnqJRmkx3TqI6kMK/YM4COw7ve2ISeDVkvO7P7aPiEZLIwSwg4gxet
 CnhsnyZ/vXVTPbEuVmOww5qF98GP26tNPGOVDJlSH2BEVwTw+GZ8qTp2IGAbosKdFwDe
 nS+AXvbMF5biGGF4u+Wvrblsm/Ly7UUCZgrsT3SBZksITrcOKsWcdm8byj/Do6u4N2Qz
 FZJfxYEiDJnG0DO9qEE4HuE2lWWZEb6t7snogHotRxA6LVT9QIb8i7SzCv102/96yIZN
 t88A==
X-Gm-Message-State: APjAAAXIun3PxcP5QO/yuWKAp4mt5qUt08U+ZMvu1X0WZH2+t1d8hq2h
 HzVxNRn1cq3enmVEQKgL529627CRCWc=
X-Google-Smtp-Source: APXvYqymUTVGrHeR5kxR1PpIDF+Wee+sQmK2YpTORP8MalB9/WapJ2Fmf3oupLJegggPfPC9W6is6Q==
X-Received: by 2002:a05:600c:218c:: with SMTP id
 e12mr8422702wme.30.1574198703900; 
 Tue, 19 Nov 2019 13:25:03 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z2sm16771612wrs.89.2019.11.19.13.25.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:25:03 -0800 (PST)
Date: Tue, 19 Nov 2019 22:25:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jyri Sarha <jsarha@ti.com>
Message-ID: <20191119212501.GF30416@phenom.ffwll.local>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-6-daniel.vetter@ffwll.ch>
 <b8b0a079-c101-f09a-f367-7a9315dd9e19@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8b0a079-c101-f09a-f367-7a9315dd9e19@ti.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MC0bSMbpPhp7pCY2c+IYZvdByFPUpqgh0fiHNdjQVo8=;
 b=YhRaE2904E0W863ywPPgZdYp/7D6qh7+DGvPEFTjGNqM+nJzAnLdOsqwCDkOS5FETo
 udhQMIisct58JO5u4aaPlKCigcgxtau2UOQIu3bYHZMe6nXCxBmkEg5XLJGKvWyNvPKd
 KHegeqXdGqyxhPQQ5Wk9+F+XRyqxzmyTJ1Z1I=
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/tilcdc: Drop drm_gem_fb_create
 wrapper
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDM6MjE6MjBQTSArMDIwMCwgSnlyaSBTYXJoYSB3cm90
ZToKPiBPbiAxNS8xMS8yMDE5IDExOjIxLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gRG9lc24n
dCBkbyBhbnl0aGluZy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogSnlyaSBTYXJoYSA8anNhcmhhQHRpLmNvbT4K
PiA+IENjOiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AdGkuY29tPgo+IAo+IEFja2Vk
LWJ5OiBKeXJpIFNhcmhhIDxqc2FyaGFAdGkuY29tPgoKVGhhbmtzIGZvciB0YWtpbmcgYSBsb29r
LCBwdXNoZWQgdG8gZHJtLW1pc2MtbmV4dC4KLURhbmllbAoKPiAKPiA+IC0tLQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX2Rydi5jIHwgOCArLS0tLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJt
L3RpbGNkYy90aWxjZGNfZHJ2LmMKPiA+IGluZGV4IDJhOWU2NzU5NzM3NS4uYTE2MDg4MGJlYTBh
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfZHJ2LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX2Rydi5jCj4gPiBAQCAtNjQsMTIg
KzY0LDYgQEAgdm9pZCB0aWxjZGNfbW9kdWxlX2NsZWFudXAoc3RydWN0IHRpbGNkY19tb2R1bGUg
Km1vZCkKPiA+ICAKPiA+ICBzdGF0aWMgc3RydWN0IG9mX2RldmljZV9pZCB0aWxjZGNfb2ZfbWF0
Y2hbXTsKPiA+ICAKPiA+IC1zdGF0aWMgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqdGlsY2RjX2Zi
X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4gLQkJc3RydWN0IGRybV9maWxlICpm
aWxlX3ByaXYsIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtZCkKPiA+IC17
Cj4gPiAtCXJldHVybiBkcm1fZ2VtX2ZiX2NyZWF0ZShkZXYsIGZpbGVfcHJpdiwgbW9kZV9jbWQp
Owo+ID4gLX0KPiA+IC0KPiA+ICBzdGF0aWMgaW50IHRpbGNkY19hdG9taWNfY2hlY2soc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKPiA+ICAJCQkgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
KnN0YXRlKQo+ID4gIHsKPiA+IEBAIC0xNDAsNyArMTM0LDcgQEAgc3RhdGljIGludCB0aWxjZGNf
Y29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIG1vZGVfY29uZmlnX2Z1bmNzID0gewo+
ID4gLQkuZmJfY3JlYXRlID0gdGlsY2RjX2ZiX2NyZWF0ZSwKPiA+ICsJLmZiX2NyZWF0ZSA9IGRy
bV9nZW1fZmJfY3JlYXRlLAo+ID4gIAkuYXRvbWljX2NoZWNrID0gdGlsY2RjX2F0b21pY19jaGVj
aywKPiA+ICAJLmF0b21pY19jb21taXQgPSB0aWxjZGNfY29tbWl0LAo+ID4gIH07Cj4gPiAKPiAK
PiAKPiAtLSAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIy
LCAwMDE4MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3Rp
cGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
