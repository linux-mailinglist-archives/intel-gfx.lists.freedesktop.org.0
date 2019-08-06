Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA94B833AB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BBF89CB3;
	Tue,  6 Aug 2019 14:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E184B89CB3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:11:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17906395-1500050 for multiple; Tue, 06 Aug 2019 15:11:29 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190806134725.25321-5-chris@chris-wilson.co.uk>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
Message-ID: <156510068712.2892.3895415097292276444@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 15:11:27 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDYgMTQ6NDc6MjUpCj4gK3N0YXRpYyBpbnQK
PiArc2V0X3BlcnNpc3RlbmNlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCj4gKyAgICAg
ICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSAqYXJncykK
PiArewo+ICsgICAgICAgaWYgKGFyZ3MtPnNpemUpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+ICsKPiArICAgICAgIGlmICghYXJncy0+dmFsdWUpIHsKPiArICAgICAgICAgICAg
ICAgaTkxNV9nZW1fY29udGV4dF9jbGVhcl9wZXJzaXN0ZW5jZShjdHgpOwo+ICsgICAgICAgICAg
ICAgICByZXR1cm4gMDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBpZiAoIShjdHgtPmk5MTUt
PmNhcHMuc2NoZWR1bGVyICYgSTkxNV9TQ0hFRFVMRVJfQ0FQX1BSRUVNUFRJT04pKQo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArCj4gKyAgICAgICBpOTE1X2dlbV9jb250ZXh0
X3NldF9wZXJzaXN0ZW5jZShjdHgpOwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KCk9vcHMsIHRo
YXQgaXMgYmFjay10by1mcm9udC4gV2UgY2FuIG9ubHkgc3dpdGNoIG9mZiBwZXJzaXN0ZW50IGJl
aGF2aW91ciBpZgp3ZSBjYW4gZG8gdGhlIHByZWVtcHQuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
