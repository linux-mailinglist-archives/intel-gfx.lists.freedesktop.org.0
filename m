Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 508F49B4A8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0416ECEA;
	Fri, 23 Aug 2019 16:39:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E196ECEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:39:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18243020-1500050 for multiple; Fri, 23 Aug 2019 17:38:52 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190823162041.9482-1-chris@chris-wilson.co.uk>
References: <20190823162041.9482-1-chris@chris-wilson.co.uk>
Message-ID: <156657832951.4019.10986389936065255418@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 17:38:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace obj->pin_global with
 obj->frontbuffer
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMTc6MjA6NDEpCj4gQEAgLTIyMCwxMSAr
MjIwLDE4IEBAIHN0YXRpYyB2b2lkIGZyb250YnVmZmVyX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJl
ZikKPiAgewo+ICAgICAgICAgc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCA9Cj4gICAg
ICAgICAgICAgICAgIGNvbnRhaW5lcl9vZihyZWYsIHR5cGVvZigqZnJvbnQpLCByZWYpOwo+ICsg
ICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGZyb250LT5vYmo7Cj4gKyAg
ICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAgCj4gLSAgICAgICBmcm9udC0+b2JqLT5mcm9u
dGJ1ZmZlciA9IE5VTEw7Cj4gLSAgICAgICBzcGluX3VubG9jaygmdG9faTkxNShmcm9udC0+b2Jq
LT5iYXNlLmRldiktPmZiX3RyYWNraW5nLmxvY2spOwo+ICsgICAgICAgc3Bpbl9sb2NrKCZvYmot
PnZtYS5sb2NrKTsKPiArICAgICAgIGZvcl9lYWNoX2dndHRfdm1hKHZtYSwgb2JqKQo+ICsgICAg
ICAgICAgICAgICB2bWEtPmRpc3BsYXlfYWxpZ25tZW50ID0gSTkxNV9HVFRfUEFHRV9TSVpFOwoK
U2hvdWxkIGJlIEk5MTVfR1RUX01JTl9BTElHTk1FTlQgaW5zdGVhZC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
