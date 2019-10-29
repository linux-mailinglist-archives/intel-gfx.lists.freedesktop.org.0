Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B3E8518
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5E76E9C0;
	Tue, 29 Oct 2019 10:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5EEB6E9C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:07:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19004238-1500050 for multiple; Tue, 29 Oct 2019 10:06:50 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191029095856.25431-4-matthew.auld@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-4-matthew.auld@intel.com>
Message-ID: <157234360843.10560.11412707957892531893@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 10:06:48 +0000
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: error capture with no ggtt
 slot
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjkgMDk6NTg6NTMpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBJ
ZiB0aGUgYXBlcnR1cmUgaXMgbm90IGF2YWlsYWJsZSBpbiBIVyB3ZSBjYW4ndCB1c2UgYSBnZ3R0
IHNsb3QgYW5kIHdjCj4gY29weSwgc28gZmFsbCBiYWNrIHRvIHJlZ3VsYXIga21hcC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmph
bnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0tCj4gKyAgICAgICB9IGVsc2UgaWYgKGk5MTVfZ2Vt
X29iamVjdF9pc19sbWVtKHZtYS0+b2JqKSkgewo+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtID0gdm1hLT5vYmotPm1tLnJlZ2lvbjsKPiArICAgICAgICAg
ICAgICAgZG1hX2FkZHJfdCBkbWE7Cj4gKwo+ICsgICAgICAgICAgICAgICBmb3JfZWFjaF9zZ3Rf
ZGFkZHIoZG1hLCBpdGVyLCB2bWEtPnBhZ2VzKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
dm9pZCBfX2lvbWVtICpzOwo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICBzID0gaW9fbWFw
cGluZ19tYXBfYXRvbWljX3djKCZtZW0tPmlvbWFwLCBkbWEpOwo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHJldCA9IGNvbXByZXNzX3BhZ2UoY29tcHJlc3MsIHMsIGRzdCk7CgpKdXN0IGEgKHZv
aWQgX19mb3JjZSAqKXMgcmVxdWlyZWQgaGVyZS4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
