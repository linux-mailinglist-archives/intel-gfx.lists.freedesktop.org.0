Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C37658E57D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 09:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310E56E8B5;
	Thu, 15 Aug 2019 07:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F3E6E8B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 07:23:05 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id r12so1364844edo.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 00:23:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0MFBgQiCdHQ+uQbKyyMkMNjtiTqXxRZekxH2T4prkwU=;
 b=TVEAcPSFyMxC4YPzeOhNnc13NdmTL3ThMPdbV1Zuy8wosvggG8oZVHzJtwEyxol/n4
 TIl5cBgm9bqU+/rWk+cuFSRv83dabcRHBLRHZrQmYeDhO5qKK0bqTdXEWQh4q5q6bB9+
 ajNKEcygsWkuGlVHCAhZwPXHn3P6ul+1QRrTlzoWNX+Q9XB0AZQI30ewOjOLSbxA8Sw6
 wcx1TlNw5lHRF4eZSIN3AloXxDMW09YhzQPapIBvkIS6zLigdx2i3mnyn0ouQW6+U5ap
 mF7lvW3nRW+ypnbCM1htaxIky9Z6pGGTYvxdmLM4Oofl5hbfd7ZIAcF6UibiCa8IMNXN
 aq5A==
X-Gm-Message-State: APjAAAUfwgxBLmB4YXF6fJ11mhu1BREXGdm3PFpj/vPWr2MHoX3eZgj0
 25T0yJfUF5mdtniIGjH6O7x7Ug==
X-Google-Smtp-Source: APXvYqw/SpD8b6ca+U4Opp9A6WlM6cXwjwW1OQHTuAo/b4M9qxlbKR91Yf66ZXKYtlurC6ik3SLDPA==
X-Received: by 2002:a17:906:f211:: with SMTP id
 gt17mr3044136ejb.263.1565853784197; 
 Thu, 15 Aug 2019 00:23:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id d9sm402438edz.85.2019.08.15.00.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:23:03 -0700 (PDT)
Date: Thu, 15 Aug 2019 09:23:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190815072301.GE7444@phenom.ffwll.local>
References: <20190814124933.19056-2-daniel.vetter@ffwll.ch>
 <20190814184941.18355-1-daniel.vetter@ffwll.ch>
 <156580907713.2301.12392861013470996181@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156580907713.2301.12392861013470996181@skylake-alporthouse-com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0MFBgQiCdHQ+uQbKyyMkMNjtiTqXxRZekxH2T4prkwU=;
 b=DfKlJceAJRV0XYifUGQAbAxFGAFF0ijTRcWpW8/njFPSiuxDosUL5rhUgKQ7xauRRQ
 aV9g+TkNAwcMo1guHBGmDbOS2H4DFZ4817zu3tPIS5rS+FKIANGA3g2/ELMfOxmo0Zq7
 dIkaDpLZf7YRb2oDnUB4IdJpN9qWztCwOtK+s=
Subject: Re: [Intel-gfx] [PATCH] RFC: drm/i915: Switch obj->mm.lock lockdep
 annotations on its head
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDc6NTc6NTdQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0wOC0xNCAxOTo0OTo0MSkKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiA+
IGluZGV4IGQ0NzRjNmFjNDEwMC4uMWVhM2MzYzk2YTVhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiA+IEBAIC0xNTcs
NyArMTU3LDE1IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKPiA+ICAgICAgICAgdW5z
aWduZWQgaW50IHBpbl9nbG9iYWw7Cj4gPiAgCj4gPiAgICAgICAgIHN0cnVjdCB7Cj4gPiAtICAg
ICAgICAgICAgICAgc3RydWN0IG11dGV4IGxvY2s7IC8qIHByb3RlY3RzIHRoZSBwYWdlcyBhbmQg
dGhlaXIgdXNlICovCj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAg
KiBQcm90ZWN0cyB0aGUgcGFnZXMgYW5kIHRoZWlyIHVzZS4KPiAKPiAiVGhlaXIgdXNlIiBpcyBz
dGlsbCBhIG1pc2xlYWRpbmcgc3VnZ2VzdCBvZiBtaW5lLiBUaGlzIHNob3VsZCBiZQo+ICJwcm90
ZWN0cyB0aGUgcGlubmluZyBvZiBwYWdlcyIuIFRoZSBjb3VwbGUgb2Ygb3RoZXIgdGhpbmdzIGl0
IGlzIHVzZWQKPiBmb3IgYXJlIHRpZWQgdG8gdGhlIGNvbmNlcHQgb2YgdGhlIHBhZ2VzIGJlaW5n
IHBpbm5lZDsgZnVydGhlciB1c2Ugc2hvdWxkCj4gYmUgZGlzY291cmFnZWQ7IGRpcmVjdCB1c2Ug
cHJvaGliaXRlZC4KClNvIHNvbWV0aGluZyBsaWtlICJQcm90ZWN0cyB0aGUgcGlubmluZyBvZiBw
YWdlcy4gRG8gbm90IHVzZSBkaXJlY3RseSwgYnV0Cmluc3RlYWQgZ28gdGhyb3VnaCB0aGUgZ2V0
L3B1dF9wYWdlcyBhbmQgcGluL3VucGluIGludGVyZmFjZXMuIiBUaGVyZSdzIGEKZmV3IHRvbyBt
YW55IG9mIHRob3NlIHRvIGxpc3QgdGhlbSBhbGwgaW1vIC4uLgotRGFuaWVsCi0tIApEYW5pZWwg
VmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
