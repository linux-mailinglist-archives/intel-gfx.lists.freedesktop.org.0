Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC7255B9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 18:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F45892E0;
	Tue, 21 May 2019 16:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DB7892E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 16:36:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16631035-1500050 for multiple; Tue, 21 May 2019 17:36:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
Message-ID: <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
Date: Tue, 21 May 2019 17:36:23 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMSAxNTowODo1MikKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGYyNjNhODM3NDI3My4uMmFkOTU5NzdmN2E4
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMjA4NSw3ICsyMDg1
LDcgQEAgc3RhdGljIGludCBnZW45X2VtaXRfYmJfc3RhcnQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEsCj4gICAgICAgICBpZiAoSVNfRVJSKGNzKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBU
Ul9FUlIoY3MpOwo+ICAKPiAtICAgICAgICpjcysrID0gTUlfQVJCX09OX09GRiB8IE1JX0FSQl9F
TkFCTEU7Cj4gKyAgICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBycS0+aHdfY29udGV4dC0+
YXJiX2VuYWJsZTsKCk15IHByZWRpY3Rpb24gaXMgdGhhdCB0aGlzIHdpbGwgcmVzdWx0IGluIHRo
aXMgY29udGV4dCBiZWluZyByZXNldCBkdWUKdG8gcHJlZW1wdGlvbiB0aW1lb3V0cyBhbmQgdGhl
IGNvbnRleHQgdW5kZXIgcHJvZmlsZSBiZWluZyBiYW5uZWQuIE5vdGUKdGhhdCBwcmVlbXB0aW9u
IHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1hcnkgbWVhbnMgZm9yIGhhbmcgZGV0ZWN0aW9uCmZv
ciBlbmRsZXNzIGJhdGNoZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
