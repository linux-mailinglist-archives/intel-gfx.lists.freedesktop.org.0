Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7745C5F65A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41106E2DF;
	Thu,  4 Jul 2019 10:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2B56E2DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:10:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="247900709"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 04 Jul 2019 03:10:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B08545C1EB4; Thu,  4 Jul 2019 13:10:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156215738491.20783.6376736431071772656@skylake-alporthouse-com>
References: <20190703123236.30907-1-chris@chris-wilson.co.uk>
 <156215738491.20783.6376736431071772656@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 13:10:33 +0300
Message-ID: <87r2762jqe.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Defer the free for alloc
 error paths
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDMgMTM6MzI6MzYpCj4+IElmIHdlIGhpdCBhbiBlcnJv
ciB3aGlsZSBhbGxvY2F0aW5nIHRoZSBwYWdlIHRhYmxlcywgd2UgaGF2ZSB0byB1bndpbmQKPj4g
dGhlIGluY29tcGxldGUgdXBkYXRlcywgYW5kIHdpc2ggdG8gZnJlZSB0aGUgdW51c2VkIHBkLiBI
b3dldmVyLCB3ZSBhcmUKPj4gbm90IGFsbG93ZWQgdG8gYmUgaG9kaW5nIHRoZSBzcGlubG9jayBh
dCB0aGF0IHBvaW50LCBhbmQgc28gbXVzdCB1c2UgdGhlCj4+IGxhdGVyIGZyZWUgdG8gZGVmZXIg
aXQgdW50aWwgYWZ0ZXIgd2UgZHJvcCB0aGUgbG9jay4KPgo+IEp1c3QgaW4gY2FzZSBpdCdzIG5v
dCBvYnZpb3VzIHdoeSwKCk9uIGhpbmRzaWdodCwgZXZlcnl0aGluZyBpcy4KClRoYW5rcyBmb3Ig
dGhlIHRyYWNlLCBpdCBkaWQgc2F2ZSB0aW1lLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPgo+IDwzPiBbNDE0LjM2Mzc5NV0gQlVH
OiBzbGVlcGluZyBmdW5jdGlvbiBjYWxsZWQgZnJvbSBpbnZhbGlkIGNvbnRleHQgYXQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6NDcyCj4gPDM+IFs0MTQuMzY0MTY3XSBpbl9h
dG9taWMoKTogMSwgaXJxc19kaXNhYmxlZCgpOiAwLCBwaWQ6IDM5MDUsIG5hbWU6IGk5MTVfc2Vs
ZnRlc3QKPiA8ND4gWzQxNC4zNjQ0MDZdIDMgbG9ja3MgaGVsZCBieSBpOTE1X3NlbGZ0ZXN0LzM5
MDU6Cj4gPDQ+IFs0MTQuMzY0NDA4XSAgIzA6IDAwMDAwMDAwMzRmZThhYTggKCZkZXYtPm11dGV4
KXsuLi4ufSwgYXQ6IGRldmljZV9kcml2ZXJfYXR0YWNoKzB4MTgvMHg1MAo+IDw0PiBbNDE0LjM2
NDQxNV0gICMxOiAwMDAwMDAwMDZiZDhhNTYwICgmZGV2LT5zdHJ1Y3RfbXV0ZXgpeysuKy59LCBh
dDogaWd0X2N0eF9leGVjKzB4YjcvMHg0MTAgW2k5MTVdCj4gPDQ+IFs0MTQuMzY0NDc2XSAgIzI6
IDAwMDAwMDAwM2RmZGM3NjYgKCYoJnBkLT5sb2NrKS0+cmxvY2speysuKy59LCBhdDogZ2VuOF9w
cGd0dF9hbGxvY19wZHArMHg0NDgvMHg1NDAgW2k5MTVdCj4gPDM+IFs0MTQuMzY0NTI5XSBQcmVl
bXB0aW9uIGRpc2FibGVkIGF0Ogo+IDw0PiBbNDE0LjM2NDUzMF0gWzwwMDAwMDAwMDAwMDAwMDAw
Pl0gMHgwCj4gPDQ+IFs0MTQuMzY0Njk2XSBDUFU6IDAgUElEOiAzOTA1IENvbW06IGk5MTVfc2Vs
ZnRlc3QgVGFpbnRlZDogRyAgICAgVSAgICAgICAgICAgIDUuMi4wLXJjNy1DSS1DSV9EUk1fNjQw
MysgIzEKPiA8ND4gWzQxNC4zNjQ2OThdIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMg
KGk0NDBGWCArIFBJSVgsIDE5OTYpLCBCSU9TIHJlbC0xLjEwLjEtMC1nODg5MTY5Ny1wcmVidWls
dC5xZW11LXByb2plY3Qub3JnIDA0LzAxLzIwMTQKPiA8ND4gWzQxNC4zNjQ2OTldIENhbGwgVHJh
Y2U6Cj4gPDQ+IFs0MTQuMzY0NzA0XSAgZHVtcF9zdGFjaysweDY3LzB4OWIKPiA8ND4gWzQxNC4z
NjQ3MDhdICBfX19taWdodF9zbGVlcCsweDE2Ny8weDI1MAo+IDw0PiBbNDE0LjM2NDc3N10gIHZt
X2ZyZWVfcGFnZSsweDI0LzB4YzAgW2k5MTVdCj4gPDQ+IFs0MTQuMzY0ODUyXSAgZnJlZV9wZCsw
eGYvMHgyMCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ4OTddICBnZW44X3BwZ3R0X2FsbG9jX3BkcCsw
eDQ4OS8weDU0MCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ5NDZdICBnZW44X3BwZ3R0X2FsbG9jXzRs
dmwrMHg4ZS8weDJlMCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ5OTJdICBwcGd0dF9iaW5kX3ZtYSsw
eDJlLzB4NjAgW2k5MTVdCj4gPDQ+IFs0MTQuMzY1MDM5XSAgaTkxNV92bWFfYmluZCsweGU4LzB4
MmMwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NTA4OF0gIF9faTkxNV92bWFfZG9fcGluKzB4YTEvMHhk
MjAgW2k5MTVdCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
