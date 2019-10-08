Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E9BD0410
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 01:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD366E8B0;
	Tue,  8 Oct 2019 23:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 789546E8B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 23:26:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18770998-1500050 for multiple; Wed, 09 Oct 2019 00:26:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191008214021.5120-1-chris@chris-wilson.co.uk>
 <5820c846-bbf9-95af-5fb9-cdd1b09ad86a@intel.com>
In-Reply-To: <5820c846-bbf9-95af-5fb9-cdd1b09ad86a@intel.com>
Message-ID: <157057718910.16129.12259740531839959143@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 00:26:29 +0100
Subject: Re: [Intel-gfx] Reconfigurable OA queries
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wOSAwMDoxNDo0MSkKPiBPbiAwOS8x
MC8yMDE5IDAwOjQwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGlzIGlzIExpb25lbCdzIHdv
cmsgdG8gZW5hYmxlIE9BIGZvciBWdWxrYW4sIGdyZWF0bHkgYmFzdGFyZGlzZWQgb24KPiA+IHRv
cCBvZiB0aGUgc3RydWN0X211dGV4IHJlbW92YWwuIEl0IGNsYWltcyB0byBiZSBkb2luZyB0aGUg
cmlnaHQKPiA+IHRoaW5nLi4uCj4gPiAtQ2hyaXMKPiA+Cj4gPgo+IFRoYW5rcyBhIGxvdCBvZiBw
aWNraW5nIHRoaXMgdXAuCj4gCj4gSSdtIGF3YXJlIG9mIGFuIGlzc3VlIHdpdGggcGF0Y2ggOSBh
cyBJIGNhbiBzZWUgcmVxdWVzdHMgd2l0aCBwZXJmIAo+IHF1ZXJpZXMgYmVpbmcgcHJlZW1wdGVk
LiBMb29raW5nIGludG8gdGhhdCwgYnV0IG5vdCBxdWl0ZSB0aGVyZSB5ZXQuCgpPdXRzaWRlIG9m
IHRoZSBtYXNraW5nIGlzc3VlIHdoZXJlIGEgbGF0ZXIgcmVxdWVzdCBvbiB0aGUgc2FtZSBjb250
ZXh0CndpbGwgbWFzayB0aGUgbm9wcmVlbXB0IHJlcXVlc3QsIGlmIHRoYXQgbm9wcmVlbXB0IGZs
YWcgaXMgc2V0IG9uIHRoZQpsYXN0IHN1Ym1pdHRlZCByZXF1ZXN0IHRvIEVMU1BbMF0sIHdlIHdp
bGwgbm90IGFsbG93IHRoYXQgY29udGV4dCB0byBiZQpwcmVlbXB0ZWQgYmVmb3JlIHdlIGNvbnNp
ZGVyIHRoZSByZXF1ZXN0IHRvIGJlIGNvbXBsZXRlZC4KCj4gSSB0aGluayB0aGVyZSBpcyBhIGRl
cGVuZGVuY3kgaXNzdWUgd2l0aCBwYXRjaCA4LiBXZSBhbHNvIHVzZSAKPiBjbGlwcmVjdHNfcHRy
IGZvciBmZW5jZXMuCgpIbW0sIEkgd2FzIGV4cGVjdGluZyB0aGUgZmxhZyB2YWxpZGF0aW9uIHRv
IGJlIGluIHRoZSBmaXJzdCBwYXRjaCB0byBhZGQKZXh0ZW5zaW9uIHBhcnNpbmcsIGJ1dCB3ZSBh
cmUgbWlzc2luZyB0aGUgdGVzdCBpZiBib3RoIGZsYWdzIGFyZSBzZXQsCnJlamVjdCB0aGUgZXhl
Y2J1Zi4KCj4gSWYgd2Ugc3RhcnQgcmV1c2luZyBpdCBmb3IgZXh0ZW5kZWQgcGFyYW1ldGVycywg
d2UgbmVlZCB0byBtYWtlIGZlbmNlcyAKPiB0aGUgZmlyc3QgZXh0ZW5kZWQgcGFyYW0uCgpXaHk/
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
