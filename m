Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF2295C5E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 12:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42206E63C;
	Tue, 20 Aug 2019 10:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B7A6E63C
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:36:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200163-1500050 for multiple; Tue, 20 Aug 2019 11:36:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-27-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-27-lucas.demarchi@intel.com>
Message-ID: <156629741255.1374.17835443088274919959@skylake-alporthouse-com>
Date: Tue, 20 Aug 2019 11:36:52 +0100
Subject: Re: [Intel-gfx] [PATCH v2 26/40] HACK: drm/i915/tgl: Gen12 render
 context size
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

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDgtMTcgMTA6Mzg6NDgpCj4gRnJvbTogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAK
PiBSZS11c2UgR2VuMTEgY29udGV4dCBzaXplIGZvciBub3cuCj4gCj4gWyBMdWNhczogYWRkIEhB
Q0sgc2luY2UgdGhpcyBpcyBhIHRlbXBvcmFyeSBwYXRjaCB0aGF0IG5lZWRzIHRvIGJlCj4gICBj
b25maXJtZWQ6IHdlIG5lZWQgdG8gY2hlY2sgQlNwZWMgNDYyNTUgYW5kIHJlY29tcHV0ZSBdCgpX
ZSBjYW4gZHJvcCB0aGUgSEFDSyBhbmQganVzdCByZWZlciB0byB0aGlzIGFzIGEgdGVtcG9yYXJ5
IHBhdGNoLiBXZQpoYXZlIHNlbGZ0ZXN0cyBhbmQgcnVudGltZSB2ZXJpZmljYXRpb24gdG8gY2F0
Y2ggaWYgd2UgdW5kZXIgYWxsb2NhdGUsCnNvIGlmIG91ciB0ZXN0aW5nIGlzIGNsZWFuLCBpdCdz
IGdvb2QgZW5vdWdoIGZvciB0aGUgdGltZSBiZWluZy4KCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
QWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
