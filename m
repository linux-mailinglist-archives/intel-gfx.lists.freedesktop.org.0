Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CEFE9000
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 20:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59356E5D9;
	Tue, 29 Oct 2019 19:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D021B6E5D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 19:33:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 12:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="351083532"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.7.200.70])
 by orsmga004.jf.intel.com with ESMTP; 29 Oct 2019 12:33:46 -0700
Date: Tue, 29 Oct 2019 12:33:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191029193345.ddtx5v5re2ibogwv@ldmartin-desk1>
References: <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
 <20191029173102.9451-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029173102.9451-1-matthew.d.roper@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Provide more information
 on DP AUX failures
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTA6MzE6MDJBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPldlJ3JlIHNlZWluZyBzb21lIGZhaWx1cmVzIHdoZXJlIGFuIGF1eCB0cmFuc2FjdGlvbiBz
dGlsbCBzaG93cyBhcwo+J2J1c3knIHdlbGwgYWZ0ZXIgdGhlIHRpbWVvdXQgbGltaXQgdGhhdCB0
aGUgaGFyZHdhcmUgaXMgc3VwcG9zZWQgdG8KPmVuZm9yY2UuICBJbXByb3ZlIHRoZSBlcnJvciBt
ZXNzYWdlIHNvIHRoYXQgd2UgY2FuIHNlZSBleGFjdGx5IHdoaWNoIGF1eAo+Y2hhbm5lbCB0aGlz
IGVycm9yIGhhcHBlbmVkIG9uIGFuZCB3aGF0IHRoZSBzdGF0dXMgYml0cyB3ZXJlIGR1cmluZyB0
aGlzCj5jYXNlIHRoYXQgaXNuJ3Qgc3VwcG9zZWQgdG8gaGFwcGVuLgo+Cj52MjoKPiAtIE1ha2Ug
dGltZW91dCBhIGNvbnN0IHZhcmlhYmxlIHNvIHRoYXQgdGhlIHRpbWVvdXQgJiBtZXNzYWdlIHdp
bGwKPiAgIG1hdGNoIGlmIHdlIGRlY2lkZSB0byBjaGFuZ2UgaXQgaW4gdGhlIGZ1dHVyZS4gIChM
dWNhcykKPiAtIERvbid0IGJvdGhlciB0ZXN0aW5nIGludGVsX2RwLT5hdXgubmFtZSBmb3IgTlVM
TC4gIChMdWNhcykKPgo+Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgo+U2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KCkx1Y2FzIERlIE1hcmNoaQoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDYgKysrKy0tCj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
aW5kZXggNjViYWI0NmY3YjQzLi5hNjZmOGMzOWIyMDEgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+QEAgLTExNzksMTggKzExNzksMjAgQEAgaW50ZWxfZHBfYXV4
X3dhaXRfZG9uZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IHsKPiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiAJaTkxNV9yZWdfdCBj
aF9jdGwgPSBpbnRlbF9kcC0+YXV4X2NoX2N0bF9yZWcoaW50ZWxfZHApOwo+Kwljb25zdCB1bnNp
Z25lZCBpbnQgdGltZW91dF9tcyA9IDEwOwo+IAl1MzIgc3RhdHVzOwo+IAlib29sIGRvbmU7Cj4K
PiAjZGVmaW5lIEMgKCgoc3RhdHVzID0gaW50ZWxfdW5jb3JlX3JlYWRfbm90cmFjZSgmaTkxNS0+
dW5jb3JlLCBjaF9jdGwpKSAmIERQX0FVWF9DSF9DVExfU0VORF9CVVNZKSA9PSAwKQo+IAlkb25l
ID0gd2FpdF9ldmVudF90aW1lb3V0KGk5MTUtPmdtYnVzX3dhaXRfcXVldWUsIEMsCj4tCQkJCSAg
bXNlY3NfdG9famlmZmllc190aW1lb3V0KDEwKSk7Cj4rCQkJCSAgbXNlY3NfdG9famlmZmllc190
aW1lb3V0KHRpbWVvdXRfbXMpKTsKPgo+IAkvKiBqdXN0IHRyYWNlIHRoZSBmaW5hbCB2YWx1ZSAq
Lwo+IAl0cmFjZV9pOTE1X3JlZ19ydyhmYWxzZSwgY2hfY3RsLCBzdGF0dXMsIHNpemVvZihzdGF0
dXMpLCB0cnVlKTsKPgo+IAlpZiAoIWRvbmUpCj4tCQlEUk1fRVJST1IoImRwIGF1eCBodyBkaWQg
bm90IHNpZ25hbCB0aW1lb3V0IVxuIik7Cj4rCQlEUk1fRVJST1IoIiVzIGRpZCBub3QgY29tcGxl
dGUgb3IgdGltZW91dCB3aXRoaW4gJXVtcyAoc3RhdHVzIDB4JTA4eClcbiIsCj4rCQkJICBpbnRl
bF9kcC0+YXV4Lm5hbWUsIHRpbWVvdXRfbXMsIHN0YXR1cyk7Cj4gI3VuZGVmIEMKPgo+IAlyZXR1
cm4gc3RhdHVzOwo+LS0gCj4yLjIxLjAKPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
