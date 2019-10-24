Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A89A7E2B1B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F240C6E10A;
	Thu, 24 Oct 2019 07:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6EB6E10A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:28:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18945078-1500050 for multiple; Thu, 24 Oct 2019 08:28:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023232443.17450-1-chris@chris-wilson.co.uk>
 <875zke8v85.fsf@gaia.fi.intel.com>
In-Reply-To: <875zke8v85.fsf@gaia.fi.intel.com>
Message-ID: <157190212651.18724.17800459892310624112@skylake-alporthouse-com>
Date: Thu, 24 Oct 2019 08:28:46 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Flush interrupts before
 disabling tasklets
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTI0IDA4OjIxOjE0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXaGVuIHNldHRpbmcg
dXAgdGhlIHN5c3RlbSB0byBwZXJmb3JtIHRoZSBhdG9taWMgcmVzZXQsIHdlIG5lZWQgdG8KPiA+
IHNlcmlhbGlzZSB3aXRoIGFueSBvbmdvaW5nIGludGVycnVwdCB0YXNrbGV0IG9yIGVsc2U6Cj4g
Pgo+ID4gPDA+IFs0NzIuOTUxNDI4XSBpOTE1X3NlbC00NDQyICAgIDBkLi4xIDQ2NjUyNzA1NnVz
IDogX19pOTE1X3JlcXVlc3Rfc3VibWl0OiByY3MwIGZlbmNlIDExNjU5OjIsIGN1cnJlbnQgMAo+
ID4gPDA+IFs0NzIuOTUxNTU0XSBpOTE1X3NlbC00NDQyICAgIDBkLi4xIDQ2NjUyNzA1OXVzIDog
X19leGVjbGlzdHNfc3VibWlzc2lvbl90YXNrbGV0OiByY3MwOiBxdWV1ZV9wcmlvcml0eV9oaW50
Oi0yMTQ3NDgzNjQ4LCBzdWJtaXQ6eWVzCj4gPiA8MD4gWzQ3Mi45NTE2ODFdIGk5MTVfc2VsLTQ0
NDIgICAgMGQuLjEgNDY2NTI3MDYxdXMgOiB0cmFjZV9wb3J0czogcmNzMDogc3VibWl0IHsgMTE2
NTk6MiwgMDowIH0KPiA+IDwwPiBbNDcyLjk1MTgwNV0gaTkxNV9zZWwtNDQ0MiAgICAwLi4uLiA0
NjY1MjcxMTR1cyA6IF9faWd0X2F0b21pY19yZXNldF9lbmdpbmU6IGk5MTVfcmVzZXRfZW5naW5l
KHJjczA6YWN0aXZlKSB1bmRlciBoYXJkaXJxCj4gPiA8MD4gWzQ3Mi45NTE5MzJdIGk5MTVfc2Vs
LTQ0NDIgICAgMGQuLi4gNDY2NTI3MTE1dXMgOiBpbnRlbF9lbmdpbmVfcmVzZXQ6IHJjczAgZmxh
Z3M9MTFkCj4gPiA8MD4gWzQ3Mi45NTIwNTZdIGk5MTVfc2VsLTQ0NDIgICAgMGQuLi4gNDY2NTI3
MTE3dXMgOiBleGVjbGlzdHNfcmVzZXRfcHJlcGFyZTogcmNzMDogZGVwdGg8LTEKPiA+IDwwPiBb
NDcyLjk1MjE3OV0gaTkxNV9zZWwtNDQ0MiAgICAwZC4uLiA0NjY1MjcxMTl1cyA6IGludGVsX2Vu
Z2luZV9zdG9wX2NzOiByY3MwCj4gPiA8MD4gWzQ3Mi45NTIzMDVdICAgPGlkbGU+LTAgICAgICAg
MS4uczEgNDY2NTI3MTE5dXMgOiBwcm9jZXNzX2NzYjogcmNzMCBjcy1pcnEgaGVhZD0zLCB0YWls
PTQKPiAKPiBSYWNpbmcgYW5kIHRoaXMgc2hvd3MgZnJvbSBvbGQgd29ybGQ/CgpXZSBoYXZlIHRo
ZSBzYW1lIENTQiBldmVudHMgYmVpbmcgc2VlbiBieSBwcm9jZXNzX2NzYigpIG9uIHR3byBkaWZm
ZXJlbnQKcHJvY2Vzc29ycy4gT25lIGJlaW5nIGlzc3VlZCBieSB0aGUgcmVzZXQgaW4gdGhlIHRl
c3QsIHRoZSBvdGhlciBieSB0aGUKaW50ZXJydXB0OyB0aGlzIHNjZW5hcmlvIGlzIHN1cHBvc2Vk
IHRvIGJlIHByZXZlbnRlZCBieSBmbHVzaGluZyB0aGUKaW50ZXJydXB0IHRhc2tsZXQgd2l0aCB0
YXNrbGV0X2Rpc2FibGUoKSBiZWZvcmUgd2UgZW50ZXIgdGhlIGF0b21pYwpyZXNldCAtLSBidXQg
SSBjb3BpZWQgdGhlIGNvZGUgdG8gdXNlIHRhc2tsZXRfZGlzYWJsZV9ub3N5bmMoKSB0aGF0IGlz
Cm1lYW50IHRvIG9ubHkgdXNlZCBmcm9tIGluc2lkZSB0aGUgYXRvbWljIHJlc2V0IGFmdGVyIHdl
IGhhZCBzZXJpYWxpc2VkCihvciBrbm93IHdlIGFyZSBpbnNpZGUgdGhlIHRhc2tsZXQpIHdpdGgg
dGhlIHRhc2tsZXQuIEJhc2ljYWxseSB0aGlzIGJ1ZwppcyBvZiBvdXIgb3duIGludmVudGlvbiBi
ZWNhdXNlIHdlIGFyZSBieXBhc3NpbmcgdGhlIHVzdWFsIHNldHVwIGluCm9yZGVyIHRvIGRvIGVu
Z2luZS0+cmVzZXQoKSBmcm9tIHVudXN1YWwgY29uZGl0aW9ucy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
