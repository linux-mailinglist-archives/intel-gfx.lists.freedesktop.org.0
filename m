Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1391610953D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 22:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE62989DD8;
	Mon, 25 Nov 2019 21:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1282289DBA
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 21:44:48 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id z10so19916578wrs.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 13:44:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n+v5U8atuAjADWA+1AVFkDmw+F2L0+AE0oofBhxVG6M=;
 b=RsrB6MTVzsfhRm4RgIpKq/CDFAaxg+yOjUh4I8boANeYAhzhq0uNLZ8e6LD6bepOIz
 5U1HjhKKL6izhPOKd3kIBXHXRmjSoJcGV6L8O+rxQqGeHE8dRrzdf/NNhazSbtZu/OUh
 /YQJ0+NsU/we9ygbf61gWdNEE6CHK8z+Zah2P0+j9RM0keAhezSDvG+vf0nrkSJsbtI/
 fyZBIrPfUlFmO6HqLUHKo/Fa9fNaXuHrj9XcCmAajHDPrv3dWJC9EZNvW+EJ2SY6TJhs
 1pp7emUN5zZ5gem1ZIseXxxa6lDujCPgjn8x3Fc384aBIx+EKaQtTu5M8M40MU73I8Ij
 ZwBQ==
X-Gm-Message-State: APjAAAVj0UwOVU74x0wT0hE6nPi3pyuHC8o/hSFEd4NLeG6nZnvfKkcx
 Bam5OFcu10Ly8IQ6cUVmAAvd8vINRBg=
X-Google-Smtp-Source: APXvYqypNDqoWMrV+BK6rLaVUuofYV7iwu5AWWNZ/19S6v91/X7af1NCQyXJHpxaVWCovF/VKDSxMg==
X-Received: by 2002:adf:d1a3:: with SMTP id w3mr2077943wrc.9.1574718286617;
 Mon, 25 Nov 2019 13:44:46 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id p9sm12130745wrs.55.2019.11.25.13.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 13:44:45 -0800 (PST)
Date: Mon, 25 Nov 2019 22:44:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191125214443.GN29965@phenom.ffwll.local>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-6-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118103536.17675-6-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n+v5U8atuAjADWA+1AVFkDmw+F2L0+AE0oofBhxVG6M=;
 b=VPk++KmdYXBI8Y9J2NjXqXsOD7AS3bl34UeWCQeK7WfJkvjuVONsaa3c6wcTJ7f+3L
 DGq+mmSBVJUz+6qEFlv+EOZS2eXYSWz/XQOH+81TnQuGlqdObUchVTO6bNnzcVZZK4AF
 oaJrTXbTqpZpixgUExwDeSvd/dlAKg7Oy3ok0=
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/armada: Delete dma_buf->k(un)map
 implemenation
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
 Russell King <linux@armlinux.org.uk>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMTE6MzU6MjZBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBJdCdzIGEgZHVtbXkgYW55d2F5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4
QGFybWxpbnV4Lm9yZy51az4KCkkgbWVyZ2VkIHRoZSBlbnRpcmUgc2VyaWVzIGV4Y2VwdCB0aGlz
IG9uZSBhbmQgdGhlIGZpbmFsIHBhdGNoLCBzaWxsCndhaXRpbmcgYSBiaXQgbW9yZSBmb3IgYW4g
YWNrIG9uIHRoaXMgcGVyaGFwcy4KLURhbmllbAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2Fy
bWFkYS9hcm1hZGFfZ2VtLmMgfCAxMiAtLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2Fy
bWFkYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCj4gaW5kZXgg
OTNjZjhiOGJmY2ZmLi45NzY2ODVmMjkzOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FybWFkYS9hcm1hZGFfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFk
YV9nZW0uYwo+IEBAIC00NjEsMTYgKzQ2MSw2IEBAIHN0YXRpYyB2b2lkIGFybWFkYV9nZW1fcHJp
bWVfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gIAlr
ZnJlZShzZ3QpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCAqYXJtYWRhX2dlbV9kbWFidWZfbm9f
a21hcChzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCB1bnNpZ25lZCBsb25nIG4pCj4gLXsKPiAtCXJldHVy
biBOVUxMOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZAo+IC1hcm1hZGFfZ2VtX2RtYWJ1Zl9ub19r
dW5tYXAoc3RydWN0IGRtYV9idWYgKmJ1ZiwgdW5zaWduZWQgbG9uZyBuLCB2b2lkICphZGRyKQo+
IC17Cj4gLX0KPiAtCj4gIHN0YXRpYyBpbnQKPiAgYXJtYWRhX2dlbV9kbWFidWZfbW1hcChzdHJ1
Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgewo+IEBAIC00
ODEsOCArNDcxLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhcm1hZGFfZ2Vt
X3ByaW1lX2RtYWJ1Zl9vcHMgPSB7Cj4gIAkubWFwX2RtYV9idWYJPSBhcm1hZGFfZ2VtX3ByaW1l
X21hcF9kbWFfYnVmLAo+ICAJLnVubWFwX2RtYV9idWYJPSBhcm1hZGFfZ2VtX3ByaW1lX3VubWFw
X2RtYV9idWYsCj4gIAkucmVsZWFzZQk9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2UsCj4gLQkubWFw
CQk9IGFybWFkYV9nZW1fZG1hYnVmX25vX2ttYXAsCj4gLQkudW5tYXAJCT0gYXJtYWRhX2dlbV9k
bWFidWZfbm9fa3VubWFwLAo+ICAJLm1tYXAJCT0gYXJtYWRhX2dlbV9kbWFidWZfbW1hcCwKPiAg
fTsKPiAgCj4gLS0gCj4gMi4yNC4wCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
