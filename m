Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF8BD68CA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 19:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B036E581;
	Mon, 14 Oct 2019 17:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267EF6E0EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 17:48:04 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id l21so15580043edr.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 10:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y2qAcu46NEHYI5E6g7n6hEmzA1p7vc9GFAfCtGjGPxI=;
 b=bFgbSgm/LNW4Z+oyOUHBtBl/G2TaHcsxUZeK3FKMqvbjUy1gbkWcOcgCB+jvOzViGO
 qNoeYbi7SSbL5JWXEJpLt/3hTrZiGOkQd29oHprUDKn01Okm1K7SeEvA9IbQk0/rIBh6
 3Rs+PMhMO/kgKZteGKRr1/N6/RkrHaChzD3+cal033LlF62elc07Q55rqiieeOXWFNnA
 8/LHe2HMP65QfTli0HMawqMw9Hhu5zq1lpuw70NId39uG8ZFcE8jxe3MiCXUOOiMOJ1/
 FYpMUj2+mGBrOESflFcZma6FZ3Nlzb+Z029XdkS9OCK7SLrC9nmALq8lVabsZ+JPGVGJ
 7o1A==
X-Gm-Message-State: APjAAAUognw0kfBOefwzWR/KkiMAmfCI32KDJOLsfVAc7/KlAKRc0GUO
 vFHSwTIqxgy47/+JtEYAEYh0zQ==
X-Google-Smtp-Source: APXvYqw6n3SslIDpjRfSG9P2l0Yg7QyINCztLqsN5ijQvUv6Ufly7G7H7cMl9AoINu9dwkxYaUPFfg==
X-Received: by 2002:a17:906:1343:: with SMTP id
 x3mr30256350ejb.113.1571075282650; 
 Mon, 14 Oct 2019 10:48:02 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id k14sm2452743ejp.89.2019.10.14.10.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:48:01 -0700 (PDT)
Date: Mon, 14 Oct 2019 19:47:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191014174759.GM11828@phenom.ffwll.local>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-8-lucas.demarchi@intel.com>
 <20191011175813.li3euayx4byhv72m@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011175813.li3euayx4byhv72m@ldmartin-desk1>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y2qAcu46NEHYI5E6g7n6hEmzA1p7vc9GFAfCtGjGPxI=;
 b=YB6XcNjhrVozDTxZWehIeo6YMoKZ0A0mJMl31LXxCDHMXrzTHcdJKLTy5CC3/YSxli
 XFb/oM141rh2yv0eKGoB8TwphpbTb/mjaUfVs4x98uKaRW7y1NNFtqbsinmE+wJ4Z21u
 lSzbEl2nhuoRatRF9/uYLvDDequKYGWyLeY2A=
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/dp-mst: fix warning on unused var
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMTA6NTg6MTNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+ICtkcmksICtEYW5pZWwKPiAKPiBPbiBUaHUsIE9jdCAxMCwgMjAxOSBhdCAwNjow
OTowN1BNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gPiBGaXhlczogODNmYTk4NDJh
ZmU3ICgiZHJtL2RwLW1zdDogRHJvcCBjb25uZWN0aW9uX211dGV4IGNoZWNrIikKPiA+IFNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIHwgMiAtLQo+ID4g
MSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9tc3RfdG9wb2xvZ3kuYwo+ID4gaW5kZXggOTM2NGU0ZjQyOTc1Li45Y2NjYzVlNjMzMDkgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiBAQCAtNDE4NCw4
ICs0MTg0LDYgQEAgRVhQT1JUX1NZTUJPTChkcm1fZHBfbXN0X3RvcG9sb2d5X3N0YXRlX2Z1bmNz
KTsKPiA+IHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X3N0YXRlICpkcm1fYXRvbWljX2dldF9t
c3RfdG9wb2xvZ3lfc3RhdGUoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gCQkJ
CQkJCQkgICAgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IpCj4gPiB7Cj4gPiAt
CXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBtZ3ItPmRldjsKPiA+IC0KPiA+IAlyZXR1cm4gdG9f
ZHBfbXN0X3RvcG9sb2d5X3N0YXRlKGRybV9hdG9taWNfZ2V0X3ByaXZhdGVfb2JqX3N0YXRlKHN0
YXRlLCAmbWdyLT5iYXNlKSk7Cj4gPiB9Cj4gPiBFWFBPUlRfU1lNQk9MKGRybV9hdG9taWNfZ2V0
X21zdF90b3BvbG9neV9zdGF0ZSk7CgpUaGFua3MgZm9yIGZpeGluZyB0aGlzLCBwdXNoZWQuCi1E
YW5pZWwKCj4gPiAtLSAKPiA+IDIuMjMuMAo+ID4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
