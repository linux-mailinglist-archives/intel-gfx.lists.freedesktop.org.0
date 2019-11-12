Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA46F984B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 19:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492066E10B;
	Tue, 12 Nov 2019 18:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17E96E10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 18:12:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19177676-1500050 for multiple; Tue, 12 Nov 2019 18:12:41 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <20191112092854.869-26-chris@chris-wilson.co.uk>
 <87y2wlyqn9.fsf@gaia.fi.intel.com>
In-Reply-To: <87y2wlyqn9.fsf@gaia.fi.intel.com>
Message-ID: <157358235993.28106.14719659274487129898@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 18:12:39 +0000
Subject: Re: [Intel-gfx] [PATCH 26/27] drm/i915/gt: Refactor mocs loops into
 single control macro
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEyIDE3OjAyOjE4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiArc3RhdGljIHUzMiBtb2Nz
X3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICt7Cj4g
PiArICAgICBzdGF0aWMgY29uc3QgdTMyIG9mZnNldFtdID0gewo+ID4gKyAgICAgICAgICAgICBb
UkNTMF0gID0gMHgwYzgwMCwKPiA+ICsgICAgICAgICAgICAgW1ZDUzBdICA9IDB4MGM5MDAsCj4g
PiArICAgICAgICAgICAgIFtWQ1MxXSAgPSAweDBjYTAwLAo+ID4gKyAgICAgICAgICAgICBbVkVD
UzBdID0gMHgwY2IwMCwKPiA+ICsgICAgICAgICAgICAgW0JDUzBdICA9IDB4MGNjMDAsCj4gPiAr
ICAgICAgICAgICAgIFtWQ1MyXSAgPSAweDEwMDAwLAoKQSBiaXQgb2YgYSBxdWFuZGFyeSBhcwoK
QEAgLTM2MSwxMiArMzYxLDEyIEBAIHN0YXRpYyB2b2lkIF9faW5pdF9tb2NzX3RhYmxlKHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIHN0YXRpYyB1MzIgbW9jc19yZWdpc3Rlcihjb25zdCBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAgICAgICAgc3RhdGljIGNvbnN0IHUz
MiBvZmZzZXRbXSA9IHsKLSAgICAgICAgICAgICAgIFtSQ1MwXSAgPSAweDBjODAwLAotICAgICAg
ICAgICAgICAgW1ZDUzBdICA9IDB4MGM5MDAsCi0gICAgICAgICAgICAgICBbVkNTMV0gID0gMHgw
Y2EwMCwKLSAgICAgICAgICAgICAgIFtWRUNTMF0gPSAweDBjYjAwLAotICAgICAgICAgICAgICAg
W0JDUzBdICA9IDB4MGNjMDAsCi0gICAgICAgICAgICAgICBbVkNTMl0gID0gMHgxMDAwMCwKKyAg
ICAgICAgICAgICAgIFtSQ1MwXSAgPSBpOTE1X21taW9fcmVnX29mZnNldChHRU45X0dGWF9NT0NT
KDApKSwKKyAgICAgICAgICAgICAgIFtWQ1MwXSAgPSBpOTE1X21taW9fcmVnX29mZnNldChHRU45
X01GWDBfTU9DUygwKSksCisgICAgICAgICAgICAgICBbVkNTMV0gID0gaTkxNV9tbWlvX3JlZ19v
ZmZzZXQoR0VOOV9CTFRfTU9DUygwKSksCisgICAgICAgICAgICAgICBbVkVDUzBdID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoR0VOOV9WRUJPWF9NT0NTKDApKSwKKyAgICAgICAgICAgICAgIFtCQ1Mw
XSAgPSBpOTE1X21taW9fcmVnX29mZnNldChHRU45X01GWDFfTU9DUygwKSksCisgICAgICAgICAg
ICAgICBbVkNTMl0gID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoR0VOMTFfTUZYMl9NT0NTKDApKSwK
ICAgICAgICB9OwoKICAgICAgICBHRU1fQlVHX09OKGVuZ2luZS0+aWQgPj0gQVJSQVlfU0laRShv
ZmZzZXQpKTsKCmRvZXMgbm90IGNvbXBpbGUgYXMgdGhleSBkbyBub3QgZXZhbHVhdGUgdG8gYSBj
b25zdGFudC4KClRoZSBhbHRlcm5hdGl2ZSBpcyB0byBoYXZlIHRoZSByYXcgb2Zmc2V0cyBmb3Ig
dGhlIGluZGV4ZWQgbWFjcm9zIHRvCmJ1aWxkIG9mZi4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
