Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DEA5CE38
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA41899BC;
	Tue,  2 Jul 2019 11:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7BD5899BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:14:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17097757-1500050 for multiple; Tue, 02 Jul 2019 12:14:48 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190629131350.31185-1-chris@chris-wilson.co.uk>
References: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
 <20190629131350.31185-1-chris@chris-wilson.co.uk>
Message-ID: <156206608525.2466.86576389926247467@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 12:14:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix whitelist selftests with
 readonly registers
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMjkgMTQ6MTM6NTApCj4gRnJvbTogTGlvbmVs
IExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IAo+IFdoZW4gYSBy
ZWdpc3RlciBpcyByZWFkb25seSB0aGVyZSBpcyBub3QgbXVjaCB3ZSBjYW4gdGVsbCBhYm91dCBp
dHMKPiB2YWx1ZSAoYXBhcnQgZnJvbSBpdHMgZGVmYXVsdCB2YWx1ZT8pLiBUaGlzIGNhbiBiZSBj
b3ZlcmVkIGJ5IHRlc3RzCj4gZXhlcmNpc2luZyB0aGUgdmFsdWUgb2YgdGhlIHJlZ2lzdGVyIGZy
b20gdXNlcnNwYWNlLgo+IAo+IEZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdvdCB0aGUg
Zm9sbG93aW5nIHBpZ2xpdCB0ZXN0cyA6Cj4gCj4gICAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlz
dGljc19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlv
bnMKPiAKPiBWdWxrYW4gQ1RTIHRlc3RzIDoKPiAKPiAgICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3Rh
dGlzdGljc19xdWVyeS5mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKgo+IAo+IHYyOiBVc2Ug
YSBsb2NhbCB0byBzaHJpbmsgdW5kZXIgODBjb2xzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25l
bCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBGaXhlczogODY1
NTRmNDhlNTExICgiZHJtL2k5MTUvc2VsZnRlc3RzOiBWZXJpZnkgd2hpdGVsaXN0IG9mIGNvbnRl
eHQgcmVnaXN0ZXJzIikKPiBUZXN0ZWQtYnk6IEFudWogUGhvZ2F0IDxhbnVqLnBob2dhdEBnbWFp
bC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
