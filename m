Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0442148DD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 13:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040318987A;
	Mon,  6 May 2019 11:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC588987A
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 11:24:50 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E2C16AB6D;
 Mon,  6 May 2019 11:24:48 +0000 (UTC)
Date: Mon, 6 May 2019 13:24:48 +0200
From: Petr Mladek <pmladek@suse.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 John Ogness <john.ogness@linutronix.de>, linux-kernel@vger.kernel.org
Message-ID: <20190506112448.rng2oefmp2c262dq@pathway.suse.cz>
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
 <20190506081614.b7b22k4prodskbiy@pathway.suse.cz>
 <20190506082628.wehkislebljxmk5d@pathway.suse.cz>
 <20190506093812.GG17751@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506093812.GG17751@phenom.ffwll.local>
User-Agent: NeoMutt/20170912 (1.9.0)
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_lock more v2
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

T24gTW9uIDIwMTktMDUtMDYgMTE6Mzg6MTMsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gTW9u
LCBNYXkgMDYsIDIwMTkgYXQgMTA6MjY6MjhBTSArMDIwMCwgUGV0ciBNbGFkZWsgd3JvdGU6Cj4g
PiBPbiBNb24gMjAxOS0wNS0wNiAxMDoxNjoxNCwgUGV0ciBNbGFkZWsgd3JvdGU6Cj4gPiA+IE9u
IE1vbiAyMDE5LTA1LTA2IDA5OjQ1OjUzLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+IGNv
bnNvbGVfdHJ5bG9jaywgY2FsbGVkIGZyb20gd2l0aGluIHByaW50aywgY2FuIGJlIGNhbGxlZCBm
cm9tIHByZXR0eQo+ID4gPiA+IG11Y2ggYW55d2hlcmUuIEluY2x1ZGluZyB0cnlfdG9fd2FrZV91
cC4gTm90ZSB0aGF0IHRoaXMgaXNuJ3QgY29tbW9uLAo+ID4gPiA+IHVzdWFsbHkgdGhlIGJveCBp
cyBpbiBwcmV0dHkgYmFkIHNoYXBlIGF0IHRoYXQgcG9pbnQgYWxyZWFkeS4gQnV0IGl0Cj4gPiA+
ID4gcmVhbGx5IGRvZXNuJ3QgaGVscCB3aGVuIHRoZW4gbG9ja2RlcCBqdW1wcyBpbiBhbmQgc3Bh
bXMgdGhlIGxvZ3MsCj4gPiA+ID4gcG90ZW50aWFsbHkgb2JzY3VyaW5nIHRoZSByZWFsIGJhY2t0
cmFjZSB3ZSdyZSByZWFsbHkgaW50ZXJlc3RlZCBpbi4KPiA+ID4gPiBPbmUgY2FzZSBJJ3ZlIHNl
ZW4gKHNsaWdodGx5IHNpbXBsaWZpZWQgYmFja3RyYWNlKToKPiA+ID4gPiAKPiA+ID4gPiAgQ2Fs
bCBUcmFjZToKPiA+ID4gPiAgIDxJUlE+Cj4gPiA+ID4gICBjb25zb2xlX3RyeWxvY2srMHhlLzB4
NjAKPiA+ID4gPiAgIHZwcmludGtfZW1pdCsweGYxLzB4MzIwCj4gPiA+ID4gICBwcmludGsrMHg0
ZC8weDY5Cj4gPiA+ID4gICBfX3dhcm5fcHJpbnRrKzB4NDYvMHg5MAo+ID4gPiA+ICAgbmF0aXZl
X3NtcF9zZW5kX3Jlc2NoZWR1bGUrMHgyZi8weDQwCj4gPiA+ID4gICBjaGVja19wcmVlbXB0X2N1
cnIrMHg4MS8weGEwCj4gPiA+ID4gICB0dHd1X2RvX3dha2V1cCsweDE0LzB4MjIwCj4gPiA+ID4g
ICB0cnlfdG9fd2FrZV91cCsweDIxOC8weDVmMAo+ID4gPiAKPiA+ID4gdHJ5X3RvX3dha2VfdXAo
KSB0YWtlcyBwLT5waV9sb2NrLiBJdCBjb3VsZCBkZWFkbG9jayBiZWNhdXNlIGl0Cj4gPiA+IGNh
biBnZXQgY2FsbGVkIHJlY3Vyc2l2ZWx5IGZyb20gcHJpbnRrX3NhZmVfdXAoKS4KPiA+ID4gCj4g
PiA+IEFuZCB0aGVyZSBhcmUgbW9yZSBsb2NrcyB0YWtlbiBmcm9tIHRyeV90b193YWtlX3VwKCks
IGZvciBleGFtcGxlLAo+ID4gPiBfX3Rhc2tfcnFfbG9jaygpIHRha2VuIGZyb20gdHR3dV9yZW1v
dGUoKS4KPiA+ID4gCj4gPiA+IElNSE8sIHRoZSBtb3N0IHJlbGlhYmxlIHNvbHV0aW9uIHdvdWxk
IGJlIGRvIGNhbGwgdGhlIGVudGlyZQo+ID4gPiB1cF9jb25zb2xlX3NlbSgpIGZyb20gcHJpbnRr
IGRlZmVycmVkIGNvbnRleHQuIFdlIGNvdWxkIGFzc2lnbgo+ID4gPiBmZXcgYnl0ZXMgZm9yIHRo
aXMgY29udGV4dCBpbiB0aGUgcGVyLUNQVSBwcmludGtfZGVmZXJyZWQKPiA+ID4gdmFyaWFibGUu
Cj4gPiAKPiA+IEFoLCBJIHdhcyB0b28gZmFzdCBhbmQgZGlkIHRoZSBzYW1lIG1pc3Rha2UuIFRo
aXMgd29uJ3QgaGVscCBiZWNhdXNlCj4gPiBpdCB3b3VsZCBzdGlsbCBjYWxsIHRyeV90b193YWtl
X3VwKCkgcmVjdXJzaXZlbHkuCj4gCj4gVWggOi0vCj4gCj4gPiBXZSBuZWVkIHRvIGNhbGwgYWxs
IHByaW50aydzIHRoYXQgY2FuIGJlIGNhbGxlZCB1bmRlciBsb2Nrcwo+ID4gdGFrZW4gaW4gdHJ5
X3RvX3dha2VfdXAoKSBwYXRoIGluIHByaW50ayBkZWZlcnJlZCBjb250ZXh0Lgo+ID4gVW5mb3J0
dW5hdGVseSBpdCBpcyB3aGFjayBhIG1vbGUgYXBwcm9hY2guCj4gCj4gSG0gc2luY2UgaXQncyB3
aGFjay1hLW1vbGUgYW55d2F5LCB3aGF0IGFib3V0IGNvbnZlcnRpbmcgdGhlIFdBUk5fT04gaW50
bwo+IGEgcHJpbmt0X2RlZmVycmVkLCBsaWtlIGFsbCB0aGUgb3RoZXIgc2NoZWR1bGVyIHJlbGF0
ZWQgY29kZT8gRmVlbHMgYQo+IG5vdGNoIG1vcmUgY29uc2lzdGVudCB0byBtZSB0aGFuIGxlYWtp
bmcgdGhlIHByaW50a19jb250ZXh0IGludG8gYXJlYXMgaXQKPiB3YXNuJ3QgcmVhbGx5IG1lYW50
IGJ1aWx0IGZvci4gU2NoZWR1bGVyIGNvZGUgYWxyZWFkeSBmdWxseSBzdWJzY3JpYmVkIHRvCj4g
dGhlIHdoYWNrLWEtbW9sZSBhcHByb2FjaCBhZnRlciBhbGwuCgpJIGFtIG5vdCBzdXJlIGhvdyBl
eGFjdGx5IHlvdSBtZWFuIHRoZSBjb252ZXJzaW9uLgoKQW55d2F5LCB3ZSBkbyBub3Qgd2FudCB0
byB1c2UgcHJpbnRrX2RlZmVycmVkKCkgdHJlZXdpZGUuIEl0IHJlZHVjZXMKdGhlIGNoYW5jZSB0
aGF0IHRoZSBtZXNzYWdlcyByZWFjaCBjb25zb2xlcy4gU2NoZWR1bGVyIGlzIGFuCmV4Y2VwdGlv
biBiZWNhdXNlIG9mIHRoZSBwb3NzaWJsZSBkZWFkbG9ja3MuCgpBIHNvbHV0aW9uIHdvdWxkIGJl
IHRvIGRlZmluZSBXQVJOX09OX0RFRkVSUkVEKCkgdGhhdCB3b3VsZApjYWxsIG5vcm1hbCBXQVJO
X09OKCkgaW4gcHJpbnRrIGRlZmVycmVkIGNvbnRleHQgYW5kCnVzZSBpbiBzY2hlZHVsZXIuCgpC
ZXN0IFJlZ2FyZHMsClBldHIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
