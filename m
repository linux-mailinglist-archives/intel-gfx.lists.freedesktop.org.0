Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1108F5818A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B386E110;
	Thu, 27 Jun 2019 11:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C296E14E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:29:21 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w20so6767346edd.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 04:29:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Plr6eOHOTRhOu64iuzff3PlfgfQJQnCRhgFLEs6S+1o=;
 b=L1ltnvDAk8pgluOgn42YKnvAQ+HAlMt3FIFWQJ4571INn0Uf8OFv4MiM045Q0iDXV/
 cdqhiClcUqEyYRIBn6WnncQA7mobW6ftmgTMj3MH2JO/rL2eggzTbkmqtC0kgcx956Qh
 2Lt30cUQAMLiRX4W/xCLIybRVGBBKAdEdYAZG6m7t9tOEFr88DspRaSkdF1n/G4ecVus
 kaEsyFQb5P1C2IAn2xdaaMKw25/BMCM/1yKilLEpvfO0e+oE9EY/YYSB1j58GVMwytGC
 5CqBrjRQpY6jeGK+RKQo0wt6vuBMIx1N+G2nuMbQWsnO0O1F97AqvKRHiWFrBFeEhHpB
 pKkg==
X-Gm-Message-State: APjAAAWVnLhbH9k0TBK1YdbJlI+EZcj8Hgdz2izI2c1kaknP+ZPlhSh/
 3un2IYRoFqB/63FloEKCMq0ZbA==
X-Google-Smtp-Source: APXvYqydifRhrcf2r5z1fR6lAZOv9Kb/TjWCSTiczdmYy8GaSpGAAu1DdaAQRVObGYfx73dXyd2Lng==
X-Received: by 2002:a50:8ba6:: with SMTP id m35mr3493876edm.199.1561634960546; 
 Thu, 27 Jun 2019 04:29:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id b30sm677156edb.46.2019.06.27.04.29.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 04:29:19 -0700 (PDT)
Date: Thu, 27 Jun 2019 13:29:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20190627112917.GK12905@phenom.ffwll.local>
References: <20190627070016.7047-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627070016.7047-1-stanislav.lisovskiy@intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Plr6eOHOTRhOu64iuzff3PlfgfQJQnCRhgFLEs6S+1o=;
 b=I5/9VKaLDQIftZr1pIXaelIOpuCwccj6P1gv0sMZe2Sw8sKPHzYTwmtoaItT8Oib6w
 nMD9LqpNNfGku5p58Rg5rxGj912N/imb1oi5THPZKXQmVz2+4W2XTkO2tG97L6mJVJk4
 QYpBFXu8Wca3ZIjrJ+EQGfG0KPNFxRlVdI/40=
Subject: Re: [Intel-gfx] [PATCH v1 0/3] Send a hotplug when edid changes
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
 martin.peres@intel.com, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMTA6MDA6MTRBTSArMDMwMCwgU3RhbmlzbGF2IExpc292
c2tpeSB3cm90ZToKPiBUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdG8gZHJtIGEgd2F5IHRvIGRldGVy
bWluZSBpZiBzb21ldGhpbmcgZWxzZQo+IGV4Y2VwdCBjb25uZWN0aW9uX3N0YXR1cyBoYWQgY2hh
bmdlZCBkdXJpbmcgcHJvYmluZywgd2hpY2gKPiBjYW4gYmUgdXNlZCBieSBvdGhlciBkcml2ZXJz
IGFzIHdlbGwuIEFub3RoZXIgaTkxNSBzcGVjaWZpYyBwYXJ0Cj4gdXNlcyB0aGlzIGFwcHJvYWNo
IHRvIGRldGVybWluZSBpZiBlZGlkIGhhZCBjaGFuZ2VkIHdpdGhvdXQKPiBjaGFuZ2luZyB0aGUg
Y29ubmVjdGlvbiBzdGF0dXMgYW5kIHNlbmQgYSBob3RwbHVnIGV2ZW50Lgo+IAo+IFN0YW5pc2xh
diBMaXNvdnNraXkgKDMpOgo+ICAgZHJtOiBBZGQgaGVscGVyIHRvIGNvbXBhcmUgZWRpZHMuCj4g
ICBkcm06IEludHJvZHVjZSBjaGFuZ2UgY291bnRlciB0byBkcm1fY29ubmVjdG9yCj4gICBkcm0v
aTkxNTogU2VuZCBob3RwbHVnIGV2ZW50IGlmIGVkaWQgaGFkIGNoYW5nZWQuCgpUaGVyZSB3YXMg
YSBodWdlIGRpc2N1c3Npb24gYSB3aGlsZSBiYWNrIG9uIHdoYXQgdGhpcyBhbGwgc2hvdWxkIGxv
b2sKbGlrZSwgd2l0aCBQZWtrYSBhbmQgUGF1bCBhbmQgb3RoZXJzLiBUaGlzIGhlcmUgc2VlbXMg
dG8gZmFsbCBxdWl0ZSBhIGJpdApzaG9ydCBvbiB0aGF0LgoKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktTWF5LzIxNzU4OC5odG1sCgpBbHNvIHBs
ZWFzZSBjYyBhbGwgdGhlIHBlb3BsZSBpbnZvbHZlZCBpbiB0aGF0IHByZXZpb3VzIGRpc2N1c3Np
b24uCgpXcnQgdGhlIHBhdGNoZXM6IERvY3VtZW50YXRpb24gc2VlbXMgdG8gYmUgYXdvbCBhdCBs
ZWFzdCwgdGhhdCBkZWZpbml0ZWx5Cm5lZWRzIHRvIGJlIGZpeGVkLiBNYXliZSBmaXggdGhhdCwg
cmVzZW5kLCBhbmQgdGhlbiB1c2UgdGhhdCB0byBtb3ZlIHRoZQpvdmVyYWxsIGRpc2N1c3Npb24g
Zm9yd2FyZCB3aXRoIGV2ZXJ5b25lPwotRGFuaWVsCgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vZHJt
X2Nvbm5lY3Rvci5jICAgICAgICAgICAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2RybV9l
ZGlkLmMgICAgICAgICAgICAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysKPiAgZHJpdmVy
cy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYyAgICAgICAgICAgfCAyOSArKysrKysrKysrKysr
KysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICB8
IDE2ICsrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jICAgIHwgMTYgKysrKysrKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9ob3RwbHVnLmMgfCAyMCArKysrKysrKysrLS0tLQo+ICBpbmNsdWRlL2RybS9kcm1fY29u
bmVjdG9yLmggICAgICAgICAgICAgICAgICB8ICAyICsrCj4gIGluY2x1ZGUvZHJtL2RybV9lZGlk
LmggICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKysKPiAgOCBmaWxlcyBjaGFuZ2VkLCAxMDEg
aW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gLS0gCj4gMi4xNy4xCj4gCgotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
