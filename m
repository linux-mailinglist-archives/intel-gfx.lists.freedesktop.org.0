Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08692D2B79
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 15:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088066E05A;
	Thu, 10 Oct 2019 13:36:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5286EB44
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 13:36:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 06:36:02 -0700
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="187964757"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 06:35:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <6669486b-fd2d-276a-645f-ae374bf2578a@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6669486b-fd2d-276a-645f-ae374bf2578a@redhat.com>
Date: Thu, 10 Oct 2019 16:35:56 +0300
Message-ID: <878spshgeb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Does the i915 VBT tell us if a panel is an OLED
 panel?
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
Cc: Christian Kellner <ckellner@redhat.com>, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxMCBPY3QgMjAxOSwgSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gSGkgSmFuaSwKPgo+IER1cmluZyBwbHVtYmVycyBJIGhhZCBzb21lIGRpc2N1c3Np
b25zIHdpdGggRGFuaWVsIGFib3V0IHN1cHBvcnRpbmcKPiBPTEVEIHNjcmVlbnMuIFVzZXJzcGFj
ZSBtYXkgbmVlZCB0byBrbm93IHRoYXQgYSBwYW5lbCBpcyBPTEVEIGZvciAyCj4gcmVhc29uczoK
Pgo+IDEpIFRvIGF2b2lkIHNjcmVlbiBidXJuLWluCj4gMikgT0xFRCBzY3JlZW5zIGRvIG5vdCBo
YXZlIGEgY2xhc3NpYyBiYWNrbGlnaHQsIHNvIGluIHNvbWUgY2FzZXMKPiBzb21lIHNvcnQgb2Yg
YnJpZ2h0bmVzcy9jb250cmFzdCBlbXVsYXRpb24gdGhyb3VnaCBnYW1tYSB0YWJsZXMgbWF5Cj4g
YmUgbmVjZXNzYXJ5IHRvIHN0aWxsIGFsbG93IHRoZSB1c2VyIHRvIGNvbnRyb2wgdGhlIGJyaWdo
dG5lc3MuCgpJJ2QgdGhpbmsgbW9zdCBPTEVEIGRpc3BsYXlzIGhhdmUgYSBuYXRpdmUgd2F5IHRv
IGNvbnRyb2wKYnJpZ2h0bmVzcy4gU29tZSBlRFAgcGFuZWxzIGNhbiB1c2UgdGhlIGVEUCBQV00g
cGluIHRvIGNvbnRyb2wKYnJpZ2h0bmVzcywgYWx0aG91Z2ggaXQgZG9lcyBub3QgZGlyZWN0bHkg
ZHJpdmUgYW4gYWN0dWFsIGJhY2tsaWdodCwgYW5kCnNvbWUgb3RoZXJzIHVzZSB0aGUgZURQIHN0
YW5kYXJkIERQQ0QgYnJpZ2h0bmVzcyBjb250cm9sCm1ldGhvZHMuIFNpbWlsYXJseSwgT0xFRCBE
U0kgZGlzcGxheXMgaGF2ZSBEQ1MgY29tbWFuZHMgZm9yIHRoaXMuCgpPZnRlbiBJJ3ZlIHNlZW4g
dmFyaW91cyBjb250ZW50IGFkYXB0aXZlIGJyaWdodG5lc3Mgc2V0dGluZ3MgY29tYmluZWQKd2l0
aCB0aGUgT0xFRCBicmlnaHRuZXNzIGNvbnRyb2wsIHNvIGl0IGNhbiBiZSBtb3JlIHBvd2VyIGVm
ZmljaWVudCB0aGFuCnVzaW5nIGdhbW1hLgoKPiBUaGUgaWRlYSB3ZSd2ZSBkaXNjdXNzZWQgaXMg
dG8gYWRkIGEgcHJvcGVydHkgb24gdGhlIGRybV9jb25uZWN0b3IKPiAoZGV0YWlscyB0byBiZSBm
aWxsZWQgaW4pIHdoaWNoIGluZGljYXRlcyB0aGF0IHRoZSBwYW5lbCBpcyBhbiBPTEVECj4gcGFu
ZWwuCj4KPiBUaGlzIGhhcyBsZWFkIHRvIHRoZSBxdWVzdGlvbjogImhvdyBkbyB3ZSBrbm93IHRo
ZSBwYW5lbCBpcyBPTEVEIj8KPgo+IERvIHlvdSBrbm93IGlmIHRoaXMgaW5mbyBpcyBjb2RlZCBp
bnRvIHRoZSBWQlQgc29tZXdoZXJlPwoKTm90IEFGQUlDVC4gQnV0IHRoZXJlIGlzIHRoZSBpbmRp
Y2F0aW9uIG9mIHRoZSBicmlnaHRuZXNzIGNvbnRyb2wKbWV0aG9kLCBhbmQgb25lIG9wdGlvbiBp
cyB0aGUgZURQIEFVWCBpbnRlcmZhY2UuIEkgZmF0aG9tIGl0J3MgZW50aXJlbHkKcG9zc2libGUg
Zm9yIHBhbmVscyB0byB1c2UgdGhlIGVEUCBBVVggaW50ZXJmYWNlIGZvciBjb250cm9sbGluZyBh
biBMQ0QKYmFja2xpZ2h0LCBzbyB0aGlzIGRvZXMgbm90IGRpcmVjdGx5IHRyYW5zbGF0ZSB0byBP
TEVELgoKSG93ZXZlciwgdGhlIERpc3BsYXlJRCBzcGVjIGhhcyBEaXNwbGF5IERldmljZSBEYXRh
IGJsb2NrICgweDBjKSB0aGF0CmNvbnRhaW5zIERpc3BsYXkgRGV2aWNlIFRlY2hub2xvZ3kgYnl0
ZSwgaW5jbHVkaW5nIGEgdmFsdWUgZm9yIE9yZ2FuaWMKTEVEL09FTC4gSSBoYXZlbid0IGFjdHVh
bGx5IGNoZWNrZWQgYW55IE9MRUQgZGlzcGxheXMgaWYgdGhleSBoYXZlIHRoaXMKb3Igbm90LCBh
bmQgd2UgZG9uJ3QgY3VycmVudGx5IHBhcnNlIGl0IGluIGRybSwgYnV0IHRoaXMgc2VlbXMgbGlr
ZSBhCmJldHRlciBvcHRpb24gdGhhbiBWQlQuIE1vcmVvdmVyLCB0aGlzIGlzIHVzYWJsZSBhbHNv
IGZvciByZWd1bGFyIERQLAp3aGljaCBzaG91bGQgYmUgYXMgaW1wb3J0YW50IGFzIGVEUCBmb3Ig
dGhlIGJ1cm4taW4gYXZvaWRhbmNlLgoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
