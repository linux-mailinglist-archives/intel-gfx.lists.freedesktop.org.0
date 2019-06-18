Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCB34A779
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025816E200;
	Tue, 18 Jun 2019 16:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ED16E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:47:38 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id h21so16110992qtn.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 09:47:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ubPVvmVA8dDY0hpQ3AnprK84aUGTXXLgGckZp9zSJ+U=;
 b=HZqR55wV/zCJ5EWZ3xi/foCH4hB2lcPv2yzKv2TTVhM41SCPdk2HJeu60Tw6t2ohOT
 nPUv8/9rFjttO6qHvo6odYrskM1n1jsWCJjgP9cXNhZJTFmMZFAHs79u1LwAdILF9cyD
 ifnm4h0eTS3t8L4lMN9LBuSYlLBhdamWaiNX/WYQwW/XrI6XvImKS0PQzJUu0pyjOCn6
 5uwetyucycEB96Ha7H4sMPUliixYcZhmGAhawX8wu93bqF85bw/I01IXCH3iMVwysKL0
 qgvpDT++uUaPWx7CtM1EcMtqEicSnlHtem0PrmpnLCwrnxJVBHtonpB/oewiUJFUhEY4
 otIA==
X-Gm-Message-State: APjAAAVzTQ/BLb25YeutTUmFhts9rWA6HsqyQi6z9oghHHm9H83fhR0z
 1VrkwbXDIyGzfrbKaQT+8fkIsp81ycM=
X-Google-Smtp-Source: APXvYqyFPpustKZRYpUyCPfbzeSD47N073S2qRbFOzwtsKX2QYIGLMmddJ6h1RpYMrx1sQ8Akb+pWw==
X-Received: by 2002:ac8:3794:: with SMTP id d20mr50345785qtc.392.1560876457552; 
 Tue, 18 Jun 2019 09:47:37 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id q17sm7273733qtj.96.2019.06.18.09.47.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 09:47:37 -0700 (PDT)
Date: Tue, 18 Jun 2019 12:47:36 -0400
From: Sean Paul <sean@poorly.run>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190618164736.GA25413@art_vandelay>
References: <20190617181548.124134-1-sean@poorly.run>
 <20190618072652.GC4800@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618072652.GC4800@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=ubPVvmVA8dDY0hpQ3AnprK84aUGTXXLgGckZp9zSJ+U=;
 b=GYABOZwymgtdHFlzMtUk5wky19Ak/yWipvZxjl9BCbvEZCRzyhhUcg2JcaBY9Exx84
 E9HpdLFbl5dCQWAZsUT56N1n/tdjMuUFBClWadcHQmNw396KGe/GtEjsvU5Wsdr7xaza
 PVVHvwaagWa4njhghAE+1MH0IoVvNBz2HNES9xbdY/jRU15C3L8r9CUNF9cbqA2iMqaz
 WXPiF3QSFNwAztxNgsi4sF/nc01RlkVGgK+Xs1jKtzCTAFWir+EHS5VkSoL5YsdaYnyx
 siNGhuPiEV4qepOqYzeQeuMqjFEnNXMDf8N+0KES87dG+DEahJ0vFJ/z64FDfKT0B2hk
 K3JQ==
Subject: Re: [Intel-gfx] [PATCH] drm/rcar-du: Fix error check when
 retrieving crtc state
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Karol Herbst <karolherbst@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
 Ilia Mirkin <imirkin@alum.mit.edu>, intel-gfx@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMTA6MjY6NTJBTSArMDMwMCwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToKPiBIaSBTZWFuLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IE9u
IE1vbiwgSnVuIDE3LCAyMDE5IGF0IDAyOjE1OjQyUE0gLTA0MDAsIFNlYW4gUGF1bCB3cm90ZToK
PiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4gCj4gPiBkcm1f
YXRvbWljX2dldF9jcnRjX3N0YXRlKCkgcmV0dXJucyBhbiBlcnJvciBwb2ludGVyIHdoZW4gaXQg
ZmFpbHMsIHNvCj4gPiB0aGUgbnVsbCBjaGVjayBpcyBkb2luZyBub3RoaW5nIGhlcmUuCj4gPiAK
PiA+IENyZWRpdCB0byAwLWRheS9EYW4gQ2FycGVudGVyIGZvciByZXBvcnRpbmcgdGhpcy4KPiA+
IAo+ID4gRml4ZXM6IDZmM2I2Mjc4MWJiZCAoImRybTogQ29udmVydCBjb25uZWN0b3JfaGVscGVy
X2Z1bmNzLT5hdG9taWNfY2hlY2sgdG8gYWNjZXB0IGRybV9hdG9taWNfc3RhdGUiKQo+ID4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KPiA+IENjOiBCZW4gU2tlZ2dzIDxic2tlZ2dzQHJlZGhhdC5jb20+Cj4g
PiBDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29t
Pgo+ID4gQ2M6IEtpZXJhbiBCaW5naGFtIDxraWVyYW4uYmluZ2hhbStyZW5lc2FzQGlkZWFzb25i
b2FyZC5jb20+Cj4gPiBDYzogRXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0Lm5ldD4KPiA+IENjOiBM
YXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IFtmb3Ig
cmNhciBsdmRzXQo+ID4gQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4g
Q2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
Cj4gPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KPiA+IENj
OiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxp
ZWRAbGludXguaWU+Cj4gPiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+IENj
OiBLYXJvbCBIZXJic3QgPGthcm9saGVyYnN0QGdtYWlsLmNvbT4KPiA+IENjOiBJbGlhIE1pcmtp
biA8aW1pcmtpbkBhbHVtLm1pdC5lZHU+Cj4gPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+ID4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBs
aW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtlcm5lbC5vcmcKPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVy
IDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBhdWwg
PHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiAKPiBSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFy
dCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+IAo+IEkgaGF2ZSBubyBwZW5k
aW5nIGNvbmZsaWN0aW5nIGNoYW5nZXMgZm9yIHJjYXJfbHZkcy5jLiBEbyB5b3UgcGxhbiB0bwo+
IG1lcmdlIHRoaXMgdGhyb3VnaCBkcm0tbWlzYyA/CgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IQoK
WWVhaCwgc2luY2UgdGhlIGJ1ZyBpcyBvbmx5IGluIGRybS1taXNjLW5leHQsIHRoaXMgd2lsbCBh
bHNvIGdvIHRoZXJlLiBTcGVha2luZwpvZiB3aGljaCwgSSBqdXN0IGFwcGxpZWQgaXQgOi0pCgpT
ZWFuCgo+IAo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9sdmRzLmMg
fCA0ICsrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9s
dmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2x2ZHMuYwo+ID4gaW5kZXggZjJh
NWQ0ZDk5NzA3My4uMWM2MjU3ODU5MGY0NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yY2FyLWR1L3JjYXJfbHZkcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9y
Y2FyX2x2ZHMuYwo+ID4gQEAgLTExNSw4ICsxMTUsOCBAQCBzdGF0aWMgaW50IHJjYXJfbHZkc19j
b25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4g
PiAgCj4gPiAgCS8qIFdlJ3JlIG5vdCBhbGxvd2VkIHRvIG1vZGlmeSB0aGUgcmVzb2x1dGlvbi4g
Ki8KPiA+ICAJY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGNv
bm5fc3RhdGUtPmNydGMpOwo+ID4gLQlpZiAoIWNydGNfc3RhdGUpCj4gPiAtCQlyZXR1cm4gLUVJ
TlZBTDsKPiA+ICsJaWYgKElTX0VSUihjcnRjX3N0YXRlKSkKPiA+ICsJCXJldHVybiBQVFJfRVJS
KGNydGNfc3RhdGUpOwo+ID4gIAo+ID4gIAlpZiAoY3J0Y19zdGF0ZS0+bW9kZS5oZGlzcGxheSAh
PSBwYW5lbF9tb2RlLT5oZGlzcGxheSB8fAo+ID4gIAkgICAgY3J0Y19zdGF0ZS0+bW9kZS52ZGlz
cGxheSAhPSBwYW5lbF9tb2RlLT52ZGlzcGxheSkKPiAKPiAtLSAKPiBSZWdhcmRzLAo+IAo+IExh
dXJlbnQgUGluY2hhcnQKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUg
LyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
