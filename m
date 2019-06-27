Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB23584EC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6926E040;
	Thu, 27 Jun 2019 14:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FED86E040
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 14:53:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17046133-1500050 for multiple; Thu, 27 Jun 2019 15:53:32 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627144438.32458-1-mika.kuoppala@linux.intel.com>
References: <20190627144438.32458-1-mika.kuoppala@linux.intel.com>
Message-ID: <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 15:53:29 +0100
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Fix memleak in runtime
 wakeref tracking
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI3IDE1OjQ0OjM4KQo+IElmIHdlIHVudHJh
Y2sgd2FrZXJlZnMsIHRoZSBhY3R1YWwgY291bnQgbWF5IHJlYWNoIHplcm8uCj4gSG93ZXZlciB0
aGUga3JlYWxsb2NlZCBvd25lcnMgYXJyYXkgaXMgc3RpbGwgdGhlcmUgYW5kCj4gbmVlZHMgdG8g
YmUgdGFrZW4gY2FyZSBvZi4gRnJlZSB0aGUgb3duZXJzIHVuY29uZGl0aW9uYWxseQo+IHRvIGZp
eCB0aGUgbGVhay4KClRoYXQgaXMgdHJ1ZS4KCj4gRml4ZXM6IGRiZjk5YzFmOGM3ZSAoImRybS9p
OTE1OiBGb3JjZSBwcmludGluZyB3YWtlcmVmIHRhY2tpbmcgZHVyaW5nIHBtX2NsZWFudXAiKQoK
SG93ZXZlciwgdGhlIGJ1ZyBpcyBtaW5lCkZpeGVzOiBiZDc4MGYzN2EzNjEgKCJkcm0vaTkxNTog
VHJhY2sgYWxsIGhlbGQgcnBtIHdha2VyZWZzIikKCj4gUmVwb3J0ZWQtYnk6IEp1aGEtUGVra2Eg
SGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+Cj4gQ2M6IEp1aGEtUGVra2Eg
SGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
