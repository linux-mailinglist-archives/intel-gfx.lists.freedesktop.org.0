Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4831BE5C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 22:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA985891AD;
	Mon, 13 May 2019 20:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DF089193
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 20:06:22 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w33so19300084edb.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:06:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0WUa7C0ghPhmY6kIPItRxaB3RB5UmRol529debiqBSQ=;
 b=qPVCWZgNzLAmQZ/mtMXwefk0b77HYOkQnMWT1EZfelT6IlYQML5eLuWM6uOIA8UGiU
 fHwpmTkb5eKjdYguBy56npB6IEbT2pLk21uQvW9X3LflqUGY5ajbLCtr8yyUjUpa2XUu
 pTJZKHvQaVRtHgj9CddhwJ+4kswxOYL1dveuL/EAt4QdtDgE6kLMoIhkHe7lokFCeQPI
 uxYbe2+jhqRm5mZDFI3xFq7NQ7fsYA1+atGUUCzPSP+UHuUGWVW3GwuNsRhWBMxPxMMe
 5G23UYZNmVS1dMKN8MmFy2FX9l79xqnLC4ekM+D+x7LRUXU5eyFaWziB7Jg9rScCB9Q2
 Wn4A==
X-Gm-Message-State: APjAAAVuZEtgUUS8ifHeI/5U7KsSqXSjWeJQw8fXhr/FWcsrIoXHTphR
 VDHSe7X8X3AqSLdQWwVXLOsvsg==
X-Google-Smtp-Source: APXvYqx4ZdcIjS/WXD1jdEHFsBmYjH/n4/33TqmsfmhIu4Xw+JEIvWqN1RU4Ivh+KIrTX6SB7bRswQ==
X-Received: by 2002:a17:907:20a6:: with SMTP id
 pw6mr6986794ejb.113.1557777981115; 
 Mon, 13 May 2019 13:06:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j55sm4038575ede.27.2019.05.13.13.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 13:06:20 -0700 (PDT)
Date: Mon, 13 May 2019 22:06:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190513200616.GX17751@phenom.ffwll.local>
References: <20190513133504.18612-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513133504.18612-1-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0WUa7C0ghPhmY6kIPItRxaB3RB5UmRol529debiqBSQ=;
 b=I5Ing4YKSSmL4/R9DM6by+guBR+qkxUklp/KtGKjRTL2OQXz/DCMc7yEw8nYZmHaFy
 FHAvjkN1gVvo/qiUgQqOTJtwDl8qSyut0Qnc482KkOsLkt/deFL3KhYsWMu+f+54AHaC
 eBaCeka8MfTMlA1EoqZNxR4LcLNxs0mhedOzI=
Subject: Re: [Intel-gfx] [PATCH] drm/hdcp: drm_hdcp_request_srm() as static
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMDc6MDU6MDRQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IEJlbG93IFNwYXJzaCB3YXJuaW5ncyBhcmUgZml4ZWQuCj4gCj4gQ29tbWl0OiBkcm06
IHJldm9jYXRpb24gY2hlY2sgYXQgZHJtIHN1YnN5c3RlbQo+ICtkcml2ZXJzL2dwdS9kcm0vZHJt
X2hkY3AuYzoyMzU6Njogd2FybmluZzogc3ltYm9sCj4gJ2RybV9oZGNwX3JlcXVlc3Rfc3JtJyB3
YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+ICtkcml2ZXJzL2dwdS9kcm0v
ZHJtX2hkY3AuYzoyNzozOiB3YXJuaW5nOiBzeW1ib2wgJ3NybV9kYXRhJyB3YXMgbm90Cj4gZGVj
bGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Cj4gK2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5j
OjMxNzo1OiB3YXJuaW5nOiBzeW1ib2wgJ2RybV9zZXR1cF9oZGNwX3NybScKPiB3YXMgbm90IGRl
Y2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+ICtkcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3Au
YzozMjc6Njogd2FybmluZzogc3ltYm9sCj4gJ2RybV90ZWFyZG93bl9oZGNwX3NybScgd2FzIG5v
dCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPiAKPiBjYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2Ft
LmNAaW50ZWwuY29tPgoKTWVyZ2VkIHdpdGggRGF2ZSdzIGlyYyBhY2sgaW50byBkcm0taW50ZWwt
bmV4dC1xdWV1ZWQsIHRoYW5rcyBmb3IgeW91cgpxdWljayBmaXguCi1EYW5pZWwKCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jICAgICB8IDYgKysrKy0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9kcm1faW50ZXJuYWwuaCB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9oZGNwLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYwo+IGluZGV4IDBkYTdiMzcxOGJh
ZC4uY2Q4MzdiZDQwOWY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMKPiBAQCAtMjEsNyArMjEsOSBAQAo+
ICAjaW5jbHVkZSA8ZHJtL2RybV9tb2RlX29iamVjdC5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9j
b25uZWN0b3IuaD4KPiAgCj4gLXN0cnVjdCBoZGNwX3NybSB7Cj4gKyNpbmNsdWRlICJkcm1faW50
ZXJuYWwuaCIKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgaGRjcF9zcm0gewo+ICAJdTMyIHJldm9rZWRf
a3N2X2NudDsKPiAgCXU4ICpyZXZva2VkX2tzdl9saXN0Owo+ICAKPiBAQCAtMjM1LDcgKzIzNyw3
IEBAIHN0YXRpYyB2b2lkIGRybV9oZGNwX3NybV91cGRhdGUoY29uc3QgdTggKmJ1Ziwgc2l6ZV90
IGNvdW50KQo+ICAJCWRybV9oZGNwX3BhcnNlX2hkY3AyX3NybShidWYsIGNvdW50KTsKPiAgfQo+
ICAKPiAtdm9pZCBkcm1faGRjcF9yZXF1ZXN0X3NybShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2Rl
dikKPiArc3RhdGljIHZvaWQgZHJtX2hkY3BfcmVxdWVzdF9zcm0oc3RydWN0IGRybV9kZXZpY2Ug
KmRybV9kZXYpCj4gIHsKPiAgCWNoYXIgZndfbmFtZVszNl0gPSAiZGlzcGxheV9oZGNwX3NybS5i
aW4iOwo+ICAJY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdzsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oIGIvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5o
Cj4gaW5kZXggNDc2YTQyMjQxNGY2Li42NWFiZjNhNjliNDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRl
cm5hbC5oCj4gQEAgLTEwNiw2ICsxMDYsNyBAQCB2b2lkIGRybV9zeXNmc19jb25uZWN0b3JfcmVt
b3ZlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICB2b2lkIGRybV9zeXNmc19s
ZWFzZV9ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKPiAgCj4gIC8qIGRybV9nZW0uYyAq
Lwo+ICtzdHJ1Y3QgZHJtX2dlbV9vYmplY3Q7Cj4gIGludCBkcm1fZ2VtX2luaXQoc3RydWN0IGRy
bV9kZXZpY2UgKmRldik7Cj4gIHZvaWQgZHJtX2dlbV9kZXN0cm95KHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYpOwo+ICBpbnQgZHJtX2dlbV9oYW5kbGVfY3JlYXRlX3RhaWwoc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXYsCj4gLS0gCj4gMi4xOS4xCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
