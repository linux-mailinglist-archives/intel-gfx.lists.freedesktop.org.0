Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232838C026
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 20:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806276E222;
	Tue, 13 Aug 2019 18:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6BE56E222
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 18:08:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18020078-1500050 for multiple; Tue, 13 Aug 2019 19:08:01 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190813174735.11159-1-chris@chris-wilson.co.uk>
References: <20190813174735.11159-1-chris@chris-wilson.co.uk>
Message-ID: <156571967998.2301.11619004444951540052@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 13 Aug 2019 19:08:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disregard drm_mode_config.fb_base
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTMgMTg6NDc6MzUpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwo+IGluZGV4IDVlN2NjNWE2YWM3Zi4uOGVi
MjIwZTllNThmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJkZXYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYwo+IEBAIC0yMzIsMTAgKzIzMiwxMCBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0
cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCj4gICAgICAgICBpbmZvLT5mYm9wcyA9ICZpbnRl
bGZiX29wczsKPiAgCj4gICAgICAgICAvKiBzZXR1cCBhcGVydHVyZSBiYXNlL3NpemUgZm9yIHZl
c2FmYiB0YWtlb3ZlciAqLwo+IC0gICAgICAgaW5mby0+YXBlcnR1cmVzLT5yYW5nZXNbMF0uYmFz
ZSA9IGRldi0+bW9kZV9jb25maWcuZmJfYmFzZTsKPiArICAgICAgIGluZm8tPmFwZXJ0dXJlcy0+
cmFuZ2VzWzBdLmJhc2UgPSBnZ3R0LT5nbWFkci5zdGFydDsKPiAgICAgICAgIGluZm8tPmFwZXJ0
dXJlcy0+cmFuZ2VzWzBdLnNpemUgPSBnZ3R0LT5tYXBwYWJsZV9lbmQ7Cj4gIAo+IC0gICAgICAg
aW5mby0+Zml4LnNtZW1fc3RhcnQgPSBkZXYtPm1vZGVfY29uZmlnLmZiX2Jhc2UgKyBpOTE1X2dn
dHRfb2Zmc2V0KHZtYSk7Cj4gKyAgICAgICBpbmZvLT5maXguc21lbV9zdGFydCA9IGdndHQtPmdt
YWRyLnN0YXJ0ICsgaTkxNV9nZ3R0X29mZnNldCh2bWEpOwo+ICAgICAgICAgaW5mby0+Zml4LnNt
ZW1fbGVuID0gdm1hLT5ub2RlLnNpemU7Cj4gIAo+ICAgICAgICAgdmFkZHIgPSBpOTE1X3ZtYV9w
aW5faW9tYXAodm1hKTsKClN0YXJpbmcgYXQgdGhpcyBhIGJpdCBtb3JlLCBzbWVtX3N0YXJ0IF9p
c18gdmFkZHIuIFRoYXQgc2hvdWxkIG1ha2UgdGhlCnJlbGF0aW9uc2hpcCBhIGJpdCBtb3JlIG9i
dmlvdXM/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
