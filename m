Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9960E2BBF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821A5899E7;
	Thu, 24 Oct 2019 08:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0F8899E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:07:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="373140651"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 01:07:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AEDFE5C1EB5; Thu, 24 Oct 2019 11:06:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157190212651.18724.17800459892310624112@skylake-alporthouse-com>
References: <20191023232443.17450-1-chris@chris-wilson.co.uk>
 <875zke8v85.fsf@gaia.fi.intel.com>
 <157190212651.18724.17800459892310624112@skylake-alporthouse-com>
Date: Thu, 24 Oct 2019 11:06:30 +0300
Message-ID: <87zhhq7ek9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTI0IDA4OjIxOjE0KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBXaGVuIHNldHRpbmcgdXAg
dGhlIHN5c3RlbSB0byBwZXJmb3JtIHRoZSBhdG9taWMgcmVzZXQsIHdlIG5lZWQgdG8KPj4gPiBz
ZXJpYWxpc2Ugd2l0aCBhbnkgb25nb2luZyBpbnRlcnJ1cHQgdGFza2xldCBvciBlbHNlOgo+PiA+
Cj4+ID4gPDA+IFs0NzIuOTUxNDI4XSBpOTE1X3NlbC00NDQyICAgIDBkLi4xIDQ2NjUyNzA1NnVz
IDogX19pOTE1X3JlcXVlc3Rfc3VibWl0OiByY3MwIGZlbmNlIDExNjU5OjIsIGN1cnJlbnQgMAo+
PiA+IDwwPiBbNDcyLjk1MTU1NF0gaTkxNV9zZWwtNDQ0MiAgICAwZC4uMSA0NjY1MjcwNTl1cyA6
IF9fZXhlY2xpc3RzX3N1Ym1pc3Npb25fdGFza2xldDogcmNzMDogcXVldWVfcHJpb3JpdHlfaGlu
dDotMjE0NzQ4MzY0OCwgc3VibWl0Onllcwo+PiA+IDwwPiBbNDcyLjk1MTY4MV0gaTkxNV9zZWwt
NDQ0MiAgICAwZC4uMSA0NjY1MjcwNjF1cyA6IHRyYWNlX3BvcnRzOiByY3MwOiBzdWJtaXQgeyAx
MTY1OToyLCAwOjAgfQo+PiA+IDwwPiBbNDcyLjk1MTgwNV0gaTkxNV9zZWwtNDQ0MiAgICAwLi4u
LiA0NjY1MjcxMTR1cyA6IF9faWd0X2F0b21pY19yZXNldF9lbmdpbmU6IGk5MTVfcmVzZXRfZW5n
aW5lKHJjczA6YWN0aXZlKSB1bmRlciBoYXJkaXJxCj4+ID4gPDA+IFs0NzIuOTUxOTMyXSBpOTE1
X3NlbC00NDQyICAgIDBkLi4uIDQ2NjUyNzExNXVzIDogaW50ZWxfZW5naW5lX3Jlc2V0OiByY3Mw
IGZsYWdzPTExZAo+PiA+IDwwPiBbNDcyLjk1MjA1Nl0gaTkxNV9zZWwtNDQ0MiAgICAwZC4uLiA0
NjY1MjcxMTd1cyA6IGV4ZWNsaXN0c19yZXNldF9wcmVwYXJlOiByY3MwOiBkZXB0aDwtMQo+PiA+
IDwwPiBbNDcyLjk1MjE3OV0gaTkxNV9zZWwtNDQ0MiAgICAwZC4uLiA0NjY1MjcxMTl1cyA6IGlu
dGVsX2VuZ2luZV9zdG9wX2NzOiByY3MwCj4+ID4gPDA+IFs0NzIuOTUyMzA1XSAgIDxpZGxlPi0w
ICAgICAgIDEuLnMxIDQ2NjUyNzExOXVzIDogcHJvY2Vzc19jc2I6IHJjczAgY3MtaXJxIGhlYWQ9
MywgdGFpbD00Cj4+IAo+PiBSYWNpbmcgYW5kIHRoaXMgc2hvd3MgZnJvbSBvbGQgd29ybGQ/Cj4K
PiBXZSBoYXZlIHRoZSBzYW1lIENTQiBldmVudHMgYmVpbmcgc2VlbiBieSBwcm9jZXNzX2NzYigp
IG9uIHR3byBkaWZmZXJlbnQKPiBwcm9jZXNzb3JzLiBPbmUgYmVpbmcgaXNzdWVkIGJ5IHRoZSBy
ZXNldCBpbiB0aGUgdGVzdCwgdGhlIG90aGVyIGJ5IHRoZQo+IGludGVycnVwdDsgdGhpcyBzY2Vu
YXJpbyBpcyBzdXBwb3NlZCB0byBiZSBwcmV2ZW50ZWQgYnkgZmx1c2hpbmcgdGhlCj4gaW50ZXJy
dXB0IHRhc2tsZXQgd2l0aCB0YXNrbGV0X2Rpc2FibGUoKSBiZWZvcmUgd2UgZW50ZXIgdGhlIGF0
b21pYwo+IHJlc2V0IC0tIGJ1dCBJIGNvcGllZCB0aGUgY29kZSB0byB1c2UgdGFza2xldF9kaXNh
YmxlX25vc3luYygpIHRoYXQgaXMKPiBtZWFudCB0byBvbmx5IHVzZWQgZnJvbSBpbnNpZGUgdGhl
IGF0b21pYyByZXNldCBhZnRlciB3ZSBoYWQgc2VyaWFsaXNlZAo+IChvciBrbm93IHdlIGFyZSBp
bnNpZGUgdGhlIHRhc2tsZXQpIHdpdGggdGhlIHRhc2tsZXQuIEJhc2ljYWxseSB0aGlzIGJ1Zwo+
IGlzIG9mIG91ciBvd24gaW52ZW50aW9uIGJlY2F1c2Ugd2UgYXJlIGJ5cGFzc2luZyB0aGUgdXN1
YWwgc2V0dXAgaW4KPiBvcmRlciB0byBkbyBlbmdpbmUtPnJlc2V0KCkgZnJvbSB1bnVzdWFsIGNv
bmRpdGlvbnMuCgpTb21lIGRlZXBkaXZpbmcgaW50byB0aGUgdHJhY2UgZm9ybWF0IGFuZCB0YXNr
bGV0X2Rpc2FibGVfbm9zeW5jIHZzCnRhc2tsZXRfZGlzYWJsZSBhbmQgSSBhZ3JlZSB3aXRoIHRo
ZSB0cmFjZSBhbmQgdGhlIHBhdGNoLgoKSSBkb24ndCBrbm93IHdoZXJlIHlvdSBjb3BpZWQgdGhl
IG5vc3luYyBmcm9tIGJ1dCBJIGRpZCBsb29rCmF0IHByZWVtcHRfcmVzZXQgYW5kIGl0IGNhbiBw
dWxsIHRoZSBub3N5bmMgdHJpY2sgYXMgaXQKaXMgaW5zaWRlIHRoZSBzdWJtaXNzaW9uLgoKUmV2
aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoK
PiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
