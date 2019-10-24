Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07230E2BE8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA61E89725;
	Thu, 24 Oct 2019 08:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B71C89725
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:17:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18945727-1500050 for multiple; Thu, 24 Oct 2019 09:17:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023232443.17450-1-chris@chris-wilson.co.uk>
 <875zke8v85.fsf@gaia.fi.intel.com>
 <157190212651.18724.17800459892310624112@skylake-alporthouse-com>
 <87zhhq7ek9.fsf@gaia.fi.intel.com>
In-Reply-To: <87zhhq7ek9.fsf@gaia.fi.intel.com>
Message-ID: <157190507230.18724.7610683787625550045@skylake-alporthouse-com>
Date: Thu, 24 Oct 2019 09:17:52 +0100
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTI0IDA5OjA2OjMwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMTAtMjQgMDg6MjE6MTQpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IFdoZW4gc2V0dGluZyB1cCB0
aGUgc3lzdGVtIHRvIHBlcmZvcm0gdGhlIGF0b21pYyByZXNldCwgd2UgbmVlZCB0bwo+ID4+ID4g
c2VyaWFsaXNlIHdpdGggYW55IG9uZ29pbmcgaW50ZXJydXB0IHRhc2tsZXQgb3IgZWxzZToKPiA+
PiA+Cj4gPj4gPiA8MD4gWzQ3Mi45NTE0MjhdIGk5MTVfc2VsLTQ0NDIgICAgMGQuLjEgNDY2NTI3
MDU2dXMgOiBfX2k5MTVfcmVxdWVzdF9zdWJtaXQ6IHJjczAgZmVuY2UgMTE2NTk6MiwgY3VycmVu
dCAwCj4gPj4gPiA8MD4gWzQ3Mi45NTE1NTRdIGk5MTVfc2VsLTQ0NDIgICAgMGQuLjEgNDY2NTI3
MDU5dXMgOiBfX2V4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQ6IHJjczA6IHF1ZXVlX3ByaW9y
aXR5X2hpbnQ6LTIxNDc0ODM2NDgsIHN1Ym1pdDp5ZXMKPiA+PiA+IDwwPiBbNDcyLjk1MTY4MV0g
aTkxNV9zZWwtNDQ0MiAgICAwZC4uMSA0NjY1MjcwNjF1cyA6IHRyYWNlX3BvcnRzOiByY3MwOiBz
dWJtaXQgeyAxMTY1OToyLCAwOjAgfQo+ID4+ID4gPDA+IFs0NzIuOTUxODA1XSBpOTE1X3NlbC00
NDQyICAgIDAuLi4uIDQ2NjUyNzExNHVzIDogX19pZ3RfYXRvbWljX3Jlc2V0X2VuZ2luZTogaTkx
NV9yZXNldF9lbmdpbmUocmNzMDphY3RpdmUpIHVuZGVyIGhhcmRpcnEKPiA+PiA+IDwwPiBbNDcy
Ljk1MTkzMl0gaTkxNV9zZWwtNDQ0MiAgICAwZC4uLiA0NjY1MjcxMTV1cyA6IGludGVsX2VuZ2lu
ZV9yZXNldDogcmNzMCBmbGFncz0xMWQKPiA+PiA+IDwwPiBbNDcyLjk1MjA1Nl0gaTkxNV9zZWwt
NDQ0MiAgICAwZC4uLiA0NjY1MjcxMTd1cyA6IGV4ZWNsaXN0c19yZXNldF9wcmVwYXJlOiByY3Mw
OiBkZXB0aDwtMQo+ID4+ID4gPDA+IFs0NzIuOTUyMTc5XSBpOTE1X3NlbC00NDQyICAgIDBkLi4u
IDQ2NjUyNzExOXVzIDogaW50ZWxfZW5naW5lX3N0b3BfY3M6IHJjczAKPiA+PiA+IDwwPiBbNDcy
Ljk1MjMwNV0gICA8aWRsZT4tMCAgICAgICAxLi5zMSA0NjY1MjcxMTl1cyA6IHByb2Nlc3NfY3Ni
OiByY3MwIGNzLWlycSBoZWFkPTMsIHRhaWw9NAo+ID4+IAo+ID4+IFJhY2luZyBhbmQgdGhpcyBz
aG93cyBmcm9tIG9sZCB3b3JsZD8KPiA+Cj4gPiBXZSBoYXZlIHRoZSBzYW1lIENTQiBldmVudHMg
YmVpbmcgc2VlbiBieSBwcm9jZXNzX2NzYigpIG9uIHR3byBkaWZmZXJlbnQKPiA+IHByb2Nlc3Nv
cnMuIE9uZSBiZWluZyBpc3N1ZWQgYnkgdGhlIHJlc2V0IGluIHRoZSB0ZXN0LCB0aGUgb3RoZXIg
YnkgdGhlCj4gPiBpbnRlcnJ1cHQ7IHRoaXMgc2NlbmFyaW8gaXMgc3VwcG9zZWQgdG8gYmUgcHJl
dmVudGVkIGJ5IGZsdXNoaW5nIHRoZQo+ID4gaW50ZXJydXB0IHRhc2tsZXQgd2l0aCB0YXNrbGV0
X2Rpc2FibGUoKSBiZWZvcmUgd2UgZW50ZXIgdGhlIGF0b21pYwo+ID4gcmVzZXQgLS0gYnV0IEkg
Y29waWVkIHRoZSBjb2RlIHRvIHVzZSB0YXNrbGV0X2Rpc2FibGVfbm9zeW5jKCkgdGhhdCBpcwo+
ID4gbWVhbnQgdG8gb25seSB1c2VkIGZyb20gaW5zaWRlIHRoZSBhdG9taWMgcmVzZXQgYWZ0ZXIg
d2UgaGFkIHNlcmlhbGlzZWQKPiA+IChvciBrbm93IHdlIGFyZSBpbnNpZGUgdGhlIHRhc2tsZXQp
IHdpdGggdGhlIHRhc2tsZXQuIEJhc2ljYWxseSB0aGlzIGJ1Zwo+ID4gaXMgb2Ygb3VyIG93biBp
bnZlbnRpb24gYmVjYXVzZSB3ZSBhcmUgYnlwYXNzaW5nIHRoZSB1c3VhbCBzZXR1cCBpbgo+ID4g
b3JkZXIgdG8gZG8gZW5naW5lLT5yZXNldCgpIGZyb20gdW51c3VhbCBjb25kaXRpb25zLgo+IAo+
IFNvbWUgZGVlcGRpdmluZyBpbnRvIHRoZSB0cmFjZSBmb3JtYXQgYW5kIHRhc2tsZXRfZGlzYWJs
ZV9ub3N5bmMgdnMKPiB0YXNrbGV0X2Rpc2FibGUgYW5kIEkgYWdyZWUgd2l0aCB0aGUgdHJhY2Ug
YW5kIHRoZSBwYXRjaC4KPiAKPiBJIGRvbid0IGtub3cgd2hlcmUgeW91IGNvcGllZCB0aGUgbm9z
eW5jIGZyb20gYnV0IEkgZGlkIGxvb2sKPiBhdCBwcmVlbXB0X3Jlc2V0IGFuZCBpdCBjYW4gcHVs
bCB0aGUgbm9zeW5jIHRyaWNrIGFzIGl0Cj4gaXMgaW5zaWRlIHRoZSBzdWJtaXNzaW9uLgoKQSBt
dWNoIG9sZGVyIHByZWVtcHQgdGltZW91dCBzZXJpZXMgOikKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
