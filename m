Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB1B5D26F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 17:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C4789F3B;
	Tue,  2 Jul 2019 15:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF7DC89F3B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 15:10:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 08:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="190691524"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 08:10:20 -0700
Date: Tue, 2 Jul 2019 18:10:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190702151013.GD1386@ideak-desk.fi.intel.com>
References: <20190702144947.13127-1-ville.syrjala@linux.intel.com>
 <156207952636.2466.3707591472000140185@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156207952636.2466.3707591472000140185@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: synchronize_irq() against the
 actual irq
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMDM6NTg6NDZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNy0wMiAxNTo0OTo0NykKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFdoZW4gZWxpbWluYXRpbmcgb3VyIHVzZSBvZiBkcm1faXJxX2luc3RhbGwoKSBJIGZhaWxl
ZCB0byBjb252ZXJ0Cj4gPiBhbGwgb3VyIHN5bmNocm9uaXplX2lycSgpIGNhbGxzIHRvIGNvbnN1
bHQgcGRldi0+aXJxIGluc3RlYWQgb2YKPiA+IGRldl9wcml2LT5kcm0uaXJxLiBBcyB3ZSBubyBs
b25nZXIgcG9wdWxhdGUgZGV2X3ByaXYtPmRybS5pcnEKPiA+IHdlJ3JlIG5vIGxvbmdlciBzeW5j
aHJvbml6aW5nIGFnYWluc3QgYW55dGhpbmcuCj4gPiAKPiA+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IFJlcG9ydGVkLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4gPiBGaXhlczogYjMxOGI4MjQ1NWJkICgiZHJtL2k5MTU6IE51a2Ug
ZHJtX2RyaXZlciBpcnEgdmZ1bmNzIikKPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwMTIKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gT29wcy4KPiAK
PiBMb3RzIG9mIGR1cGxpY2F0aW9uIHRoZXJlLCBJIGRvbid0IHRoaW5rIGFuCj4gCj4gc3RhdGlj
IGlubGluZSB2b2lkIGludGVsX3N5bmNocm9uaXplX2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPiB7Cj4gCXN5bmNocm9uaXplX2lycShpOTE1LT5kcm0ucGRldi0+aXJxKTsKPiB9
Cj4gCj4gKGludGVsXyBvciBpOTE1XyBkZXBlbmRpbmcgb24gdGFzdGUpCj4gCj4gd291bGQgZ28g
YW1pc3MuIFNhZGx5IGtlcm5lbC9pcnEvaXJxZGVzYy5jIGRvZXNuJ3QgcmVwb3J0IGEgYm9ndXMg
aXJxCj4gbnVtYmVyIG9yIGVsc2Ugd2UgY291bGQgaGF2ZSBtYXJrZWQgdGhlIGRybS5pcnEgYXMg
YmFkLgo+IAo+IEt1ZG9zIHRvIEltcmUgZm9yIGZpZ3VyaW5nIG91dCB0aGUgbGluayBhcyB0aGF0
IGJ1ZyByZXBvcnQgaGFkIGJlZW4KPiB3b3JyeWluZyBtZSwgYW5kIG5ldmVyIG9uY2UgZGlkIEkg
c3VzcGVjdCBpdCB3YXMgdGhlIGlycSBzZXJpYWxpc2F0aW9uLgoKVGhlIHdha2VyZWYgY291bnQg
dHJhY2tpbmcgZ2F2ZSB0aGUgY2x1ZSBhbmQgdGhlbiB3aGF0IHRoZSBjb21tb24gdGhpbmcKb24g
dGhlIHBhdGggY291bGQgYmUgZm9yIEhTVy4uSUNMIChwcm9iYWJseSBub3QgaXJxX3Jlc2V0KCkh
KSA6KQoKPiAKPiBBbGwgY2FsbHNpdGVzIGNvbnZlcnRlZCwKPiBSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
