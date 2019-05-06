Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54963145DB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 10:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15BA89359;
	Mon,  6 May 2019 08:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9757089359
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 08:16:18 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DE611AEE8;
 Mon,  6 May 2019 08:16:16 +0000 (UTC)
Date: Mon, 6 May 2019 10:16:14 +0200
From: Petr Mladek <pmladek@suse.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190506081614.b7b22k4prodskbiy@pathway.suse.cz>
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506074553.21464-1-daniel.vetter@ffwll.ch>
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

T24gTW9uIDIwMTktMDUtMDYgMDk6NDU6NTMsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gY29uc29s
ZV90cnlsb2NrLCBjYWxsZWQgZnJvbSB3aXRoaW4gcHJpbnRrLCBjYW4gYmUgY2FsbGVkIGZyb20g
cHJldHR5Cj4gbXVjaCBhbnl3aGVyZS4gSW5jbHVkaW5nIHRyeV90b193YWtlX3VwLiBOb3RlIHRo
YXQgdGhpcyBpc24ndCBjb21tb24sCj4gdXN1YWxseSB0aGUgYm94IGlzIGluIHByZXR0eSBiYWQg
c2hhcGUgYXQgdGhhdCBwb2ludCBhbHJlYWR5LiBCdXQgaXQKPiByZWFsbHkgZG9lc24ndCBoZWxw
IHdoZW4gdGhlbiBsb2NrZGVwIGp1bXBzIGluIGFuZCBzcGFtcyB0aGUgbG9ncywKPiBwb3RlbnRp
YWxseSBvYnNjdXJpbmcgdGhlIHJlYWwgYmFja3RyYWNlIHdlJ3JlIHJlYWxseSBpbnRlcmVzdGVk
IGluLgo+IE9uZSBjYXNlIEkndmUgc2VlbiAoc2xpZ2h0bHkgc2ltcGxpZmllZCBiYWNrdHJhY2Up
Ogo+IAo+ICBDYWxsIFRyYWNlOgo+ICAgPElSUT4KPiAgIGNvbnNvbGVfdHJ5bG9jaysweGUvMHg2
MAo+ICAgdnByaW50a19lbWl0KzB4ZjEvMHgzMjAKPiAgIHByaW50aysweDRkLzB4NjkKPiAgIF9f
d2Fybl9wcmludGsrMHg0Ni8weDkwCj4gICBuYXRpdmVfc21wX3NlbmRfcmVzY2hlZHVsZSsweDJm
LzB4NDAKPiAgIGNoZWNrX3ByZWVtcHRfY3VycisweDgxLzB4YTAKPiAgIHR0d3VfZG9fd2FrZXVw
KzB4MTQvMHgyMjAKPiAgIHRyeV90b193YWtlX3VwKzB4MjE4LzB4NWYwCgp0cnlfdG9fd2FrZV91
cCgpIHRha2VzIHAtPnBpX2xvY2suIEl0IGNvdWxkIGRlYWRsb2NrIGJlY2F1c2UgaXQKY2FuIGdl
dCBjYWxsZWQgcmVjdXJzaXZlbHkgZnJvbSBwcmludGtfc2FmZV91cCgpLgoKQW5kIHRoZXJlIGFy
ZSBtb3JlIGxvY2tzIHRha2VuIGZyb20gdHJ5X3RvX3dha2VfdXAoKSwgZm9yIGV4YW1wbGUsCl9f
dGFza19ycV9sb2NrKCkgdGFrZW4gZnJvbSB0dHd1X3JlbW90ZSgpLgoKSU1ITywgdGhlIG1vc3Qg
cmVsaWFibGUgc29sdXRpb24gd291bGQgYmUgZG8gY2FsbCB0aGUgZW50aXJlCnVwX2NvbnNvbGVf
c2VtKCkgZnJvbSBwcmludGsgZGVmZXJyZWQgY29udGV4dC4gV2UgY291bGQgYXNzaWduCmZldyBi
eXRlcyBmb3IgdGhpcyBjb250ZXh0IGluIHRoZSBwZXItQ1BVIHByaW50a19kZWZlcnJlZAp2YXJp
YWJsZS4KCkJlc3QgUmVnYXJkcywKUGV0cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
