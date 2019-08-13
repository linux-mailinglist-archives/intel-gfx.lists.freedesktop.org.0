Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BA28C208
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 22:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A696E1D5;
	Tue, 13 Aug 2019 20:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD196E1D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 20:18:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 13:18:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="176308867"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2019 13:18:06 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.183])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7DKI5Rq027534; Tue, 13 Aug 2019 21:18:05 +0100
To: intel-gfx@lists.freedesktop.org, "Fernando Pacheco"
 <fernando.pacheco@intel.com>
References: <20190813162628.18531-1-fernando.pacheco@intel.com>
Date: Tue, 13 Aug 2019 22:18:03 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6g9cd0pxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190813162628.18531-1-fernando.pacheco@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Fini hw even if GuC is not
 running
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMyBBdWcgMjAxOSAxODoyNjoyOCArMDIwMCwgRmVybmFuZG8gUGFjaGVjbyAgCjxm
ZXJuYW5kby5wYWNoZWNvQGludGVsLmNvbT4gd3JvdGU6Cgo+IFdlIHNob3VsZCBub3QgYmUgc2tp
cHBpbmcgdWNfZmluaV9odyBvbiBmaW5kaW5nIEd1Qwo+IGlzIG5vIGxvbmdlciBydW5uaW5nLiBU
aGVyZSBpcyBwbGVudHkgb2YgaHcgYW5kIGludGVybmFsCj4gc3RhdGUgdGhhdCBjYW4gYmUgY2xl
YW5lZCB1cCB3aXRob3V0IGhhdmluZyB0byBjb21tdW5pY2F0ZQo+IHdpdGggR3VDLgo+Cj4gU2ln
bmVkLW9mZi1ieTogRmVybmFuZG8gUGFjaGVjbyA8ZmVybmFuZG8ucGFjaGVjb0BpbnRlbC5jb20+
Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAKPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBpbmRleCAwZGMyYjBjZjQ2MDQuLmM2
OThjZGRjMTRkYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+IEBA
IC01MjEsNyArNTIxLDcgQEAgdm9pZCBpbnRlbF91Y19maW5pX2h3KHN0cnVjdCBpbnRlbF91YyAq
dWMpCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwo+IC0JaWYgKCFp
bnRlbF9ndWNfaXNfcnVubmluZyhndWMpKQo+ICsJaWYgKCFpbnRlbF91Y19zdXBwb3J0c19ndWMo
dWMpKQoKdGhlcmUgaXMgYSBodWdlIGRpZmZlcmVuY2UgYmV0d2VlbiBpc19ydW5uaW5nIHZzIHN1
cHBvcnRzX2d1YwphbmQgY2hvb3Npbmcgc3VwcG9ydHNfZ3VjIGlzIG9wdGltaXN0IGFwcHJvYWNo
IGFzIHdlIGNhbiBmYWlsCnRvIGZldGNoIGd1YyBmdyBhbmQgYWJvcnQgZWFybHksIHNvIG1heWJl
CgoJaWYgKCFpbnRlbF91Y19md19pc19hdmFpbGFibGUoJmd1Yy0+ZncpKQoKd291bGQgYmUgY2xv
c2VyIHRvIHJlYWxpdHkgKGFzc3VtaW5nIHdlIGRvbid0IGZhaWwgb24gd29wY20KKGhtbSwgbWF5
YmUgd2Ugc2hvdWxkIGZvcmNlIGZ3IHN0YXRlIHRvIEZBSUwgaW4gc3VjaCBjYXNlPykKCj4gIAkJ
cmV0dXJuOwo+IAlpZiAoaW50ZWxfdWNfc3VwcG9ydHNfZ3VjX3N1Ym1pc3Npb24odWMpKQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
