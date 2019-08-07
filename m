Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9D85589
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 00:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F866E773;
	Wed,  7 Aug 2019 22:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4089A6E772
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 22:09:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17923812-1500050 for multiple; Wed, 07 Aug 2019 23:09:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190807165832.26324-1-stuart.summers@intel.com>
 <20190807165832.26324-7-stuart.summers@intel.com>
In-Reply-To: <20190807165832.26324-7-stuart.summers@intel.com>
Message-ID: <156521576837.17543.8248649064014277432@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 23:09:28 +0100
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Add function to determine if
 a slice has a subslice
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAxNzo1ODoyOSkKPiBBZGQgYSBuZXcg
ZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIHdoZXRoZXIgYSBwYXJ0aWN1bGFyIHNsaWNlCj4gaGFzIGEg
Z2l2ZW4gc3Vic2xpY2UuCgo+ICtzdGF0aWMgaW5saW5lIGJvb2wKPiAraW50ZWxfc3NldV9oYXNf
c3Vic2xpY2UoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIGludCBzbGljZSwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBpbnQgc3Vic2xpY2UpCj4gK3sKPiArICAgICAgIHU4IG1h
c2sgPSBzc2V1LT5zdWJzbGljZV9tYXNrW3NsaWNlICogc3NldS0+c3Nfc3RyaWRlICsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN1YnNsaWNlIC8gQklUU19QRVJfQllU
RV07Cj4gKwo+ICsgICAgICAgcmV0dXJuIG1hc2sgJiBCSVQoc3Vic2xpY2UgJSBCSVRTX1BFUl9C
WVRFKTsKCk9uZSBtaWdodCBhc2sgd2h5IGhhdmVuJ3Qgd2Ugc3dpdGNoZWQgdG8gYml0bWFwLmgg
YnkgdGhpcyBwb2ludD8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
