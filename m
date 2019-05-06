Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7489414628
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 10:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2143891A0;
	Mon,  6 May 2019 08:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0358891A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 08:26:31 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 29B41AC5A;
 Mon,  6 May 2019 08:26:30 +0000 (UTC)
Date: Mon, 6 May 2019 10:26:28 +0200
From: Petr Mladek <pmladek@suse.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190506082628.wehkislebljxmk5d@pathway.suse.cz>
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
 <20190506081614.b7b22k4prodskbiy@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506081614.b7b22k4prodskbiy@pathway.suse.cz>
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
Cc: John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uIDIwMTktMDUtMDYgMTA6MTY6MTQsIFBldHIgTWxhZGVrIHdyb3RlOgo+IE9uIE1vbiAy
MDE5LTA1LTA2IDA5OjQ1OjUzLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gY29uc29sZV90cnls
b2NrLCBjYWxsZWQgZnJvbSB3aXRoaW4gcHJpbnRrLCBjYW4gYmUgY2FsbGVkIGZyb20gcHJldHR5
Cj4gPiBtdWNoIGFueXdoZXJlLiBJbmNsdWRpbmcgdHJ5X3RvX3dha2VfdXAuIE5vdGUgdGhhdCB0
aGlzIGlzbid0IGNvbW1vbiwKPiA+IHVzdWFsbHkgdGhlIGJveCBpcyBpbiBwcmV0dHkgYmFkIHNo
YXBlIGF0IHRoYXQgcG9pbnQgYWxyZWFkeS4gQnV0IGl0Cj4gPiByZWFsbHkgZG9lc24ndCBoZWxw
IHdoZW4gdGhlbiBsb2NrZGVwIGp1bXBzIGluIGFuZCBzcGFtcyB0aGUgbG9ncywKPiA+IHBvdGVu
dGlhbGx5IG9ic2N1cmluZyB0aGUgcmVhbCBiYWNrdHJhY2Ugd2UncmUgcmVhbGx5IGludGVyZXN0
ZWQgaW4uCj4gPiBPbmUgY2FzZSBJJ3ZlIHNlZW4gKHNsaWdodGx5IHNpbXBsaWZpZWQgYmFja3Ry
YWNlKToKPiA+IAo+ID4gIENhbGwgVHJhY2U6Cj4gPiAgIDxJUlE+Cj4gPiAgIGNvbnNvbGVfdHJ5
bG9jaysweGUvMHg2MAo+ID4gICB2cHJpbnRrX2VtaXQrMHhmMS8weDMyMAo+ID4gICBwcmludGsr
MHg0ZC8weDY5Cj4gPiAgIF9fd2Fybl9wcmludGsrMHg0Ni8weDkwCj4gPiAgIG5hdGl2ZV9zbXBf
c2VuZF9yZXNjaGVkdWxlKzB4MmYvMHg0MAo+ID4gICBjaGVja19wcmVlbXB0X2N1cnIrMHg4MS8w
eGEwCj4gPiAgIHR0d3VfZG9fd2FrZXVwKzB4MTQvMHgyMjAKPiA+ICAgdHJ5X3RvX3dha2VfdXAr
MHgyMTgvMHg1ZjAKPiAKPiB0cnlfdG9fd2FrZV91cCgpIHRha2VzIHAtPnBpX2xvY2suIEl0IGNv
dWxkIGRlYWRsb2NrIGJlY2F1c2UgaXQKPiBjYW4gZ2V0IGNhbGxlZCByZWN1cnNpdmVseSBmcm9t
IHByaW50a19zYWZlX3VwKCkuCj4gCj4gQW5kIHRoZXJlIGFyZSBtb3JlIGxvY2tzIHRha2VuIGZy
b20gdHJ5X3RvX3dha2VfdXAoKSwgZm9yIGV4YW1wbGUsCj4gX190YXNrX3JxX2xvY2soKSB0YWtl
biBmcm9tIHR0d3VfcmVtb3RlKCkuCj4gCj4gSU1ITywgdGhlIG1vc3QgcmVsaWFibGUgc29sdXRp
b24gd291bGQgYmUgZG8gY2FsbCB0aGUgZW50aXJlCj4gdXBfY29uc29sZV9zZW0oKSBmcm9tIHBy
aW50ayBkZWZlcnJlZCBjb250ZXh0LiBXZSBjb3VsZCBhc3NpZ24KPiBmZXcgYnl0ZXMgZm9yIHRo
aXMgY29udGV4dCBpbiB0aGUgcGVyLUNQVSBwcmludGtfZGVmZXJyZWQKPiB2YXJpYWJsZS4KCkFo
LCBJIHdhcyB0b28gZmFzdCBhbmQgZGlkIHRoZSBzYW1lIG1pc3Rha2UuIFRoaXMgd29uJ3QgaGVs
cCBiZWNhdXNlCml0IHdvdWxkIHN0aWxsIGNhbGwgdHJ5X3RvX3dha2VfdXAoKSByZWN1cnNpdmVs
eS4KCldlIG5lZWQgdG8gY2FsbCBhbGwgcHJpbnRrJ3MgdGhhdCBjYW4gYmUgY2FsbGVkIHVuZGVy
IGxvY2tzCnRha2VuIGluIHRyeV90b193YWtlX3VwKCkgcGF0aCBpbiBwcmludGsgZGVmZXJyZWQg
Y29udGV4dC4KVW5mb3J0dW5hdGVseSBpdCBpcyB3aGFjayBhIG1vbGUgYXBwcm9hY2guCgpCZXN0
IFJlZ2FyZHMsClBldHIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
