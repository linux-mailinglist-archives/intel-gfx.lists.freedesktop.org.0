Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62587116A57
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 10:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8629689DEA;
	Mon,  9 Dec 2019 09:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360A089DEA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 09:59:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 01:59:02 -0800
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="206840735"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 01:59:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191206190552.8818-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191206190552.8818-1-lucas.demarchi@intel.com>
Date: Mon, 09 Dec 2019 11:58:57 +0200
Message-ID: <87blsh6cri.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: remove extra debug messages
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

T24gRnJpLCAwNiBEZWMgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IEp1c3QgbGlrZSBpbiA1MjNlMGNjODliODMgKCJkcm0vaTkxNS90Z2w6
IGFsbG93IERWSS9IRE1JIG9uIHBvcnQgQSIpLAo+IHRoZSBwb3J0IGNoZWNrcyB3aGVuIHJlYWRp
bmcgdGhlIFZCVCBjYW4gZWFzaWx5IG5vdCBtYXRjaCB3aGF0IHRoZQo+IHBsYXRmb3JtIHJlYWxs
eSBleHBvc2VzLiBIb3dldmVyIGhlcmUgd2Ugb25seSBoYXZlIHNvbWUgYWRkaXRpb25hbCBkZWJ1
Zwo+IG1lc3NhZ2VzIHRoYXQgYXJlIG5vdCBhZGRpbmcgbXVjaCB2YWx1ZTogaW4gdGhlIHByZXZp
b3VzIGRlYnVnIG1lc3NhZ2UKPiB3ZSBhbHJlYWR5IHByaW50IGV2ZXJ5dGhpbmcgd2Uga25vdyBh
Ym91dCB0aGUgVkJULgo+Cj4gSW5zdGVhZCBvZiBrZWVwIGZpeGluZyB0aGUgcG9zc2libGUgcG9y
dCBhc3NpZ25tZW50cyBhY2NvcmRpbmcgdG8gdGhlCj4gcGxhdGZvcm0sIGp1c3QgbnVrZSB0aGUg
YWRkaXRpb25hbCBtZXNzYWdlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKQ2M6IFZpbGxlCgpBY2tlZC1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE2IC0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKPiBpbmRleCAxYWVlY2RkMDIyOTMuLmUwNTRlODdlYmE4ZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE2MDIsMjIgKzE2
MDIsNiBAQCBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gIAkJICAgICAgSEFTX0xTUENPTihkZXZfcHJpdikgJiYgY2hpbGQtPmxz
cGNvbiwKPiAgCQkgICAgICBpbmZvLT5zdXBwb3J0c190eXBlY191c2IsIGluZm8tPnN1cHBvcnRz
X3RidCk7Cj4gIAo+IC0JaWYgKGlzX2VkcCAmJiBpc19kdmkpCj4gLQkJRFJNX0RFQlVHX0tNUygi
SW50ZXJuYWwgRFAgcG9ydCAlYyBpcyBUTURTIGNvbXBhdGlibGVcbiIsCj4gLQkJCSAgICAgIHBv
cnRfbmFtZShwb3J0KSk7Cj4gLQlpZiAoaXNfY3J0ICYmIHBvcnQgIT0gUE9SVF9FKQo+IC0JCURS
TV9ERUJVR19LTVMoIlBvcnQgJWMgaXMgYW5hbG9nXG4iLCBwb3J0X25hbWUocG9ydCkpOwo+IC0J
aWYgKGlzX2NydCAmJiAoaXNfZHZpIHx8IGlzX2RwKSkKPiAtCQlEUk1fREVCVUdfS01TKCJBbmFs
b2cgcG9ydCAlYyBpcyBhbHNvIERQIG9yIFRNRFMgY29tcGF0aWJsZVxuIiwKPiAtCQkJICAgICAg
cG9ydF9uYW1lKHBvcnQpKTsKPiAtCWlmIChpc19kdmkgJiYgKHBvcnQgPT0gUE9SVF9BIHx8IHBv
cnQgPT0gUE9SVF9FKSkKPiAtCQlEUk1fREVCVUdfS01TKCJQb3J0ICVjIGlzIFRNRFMgY29tcGF0
aWJsZVxuIiwgcG9ydF9uYW1lKHBvcnQpKTsKPiAtCWlmICghaXNfZHZpICYmICFpc19kcCAmJiAh
aXNfY3J0KQo+IC0JCURSTV9ERUJVR19LTVMoIlBvcnQgJWMgaXMgbm90IERQL1RNRFMvQ1JUIGNv
bXBhdGlibGVcbiIsCj4gLQkJCSAgICAgIHBvcnRfbmFtZShwb3J0KSk7Cj4gLQlpZiAoaXNfZWRw
ICYmIChwb3J0ID09IFBPUlRfQiB8fCBwb3J0ID09IFBPUlRfQyB8fCBwb3J0ID09IFBPUlRfRSkp
Cj4gLQkJRFJNX0RFQlVHX0tNUygiUG9ydCAlYyBpcyBpbnRlcm5hbCBEUFxuIiwgcG9ydF9uYW1l
KHBvcnQpKTsKPiAtCj4gIAlpZiAoaXNfZHZpKSB7Cj4gIAkJdTggZGRjX3BpbjsKCi0tIApKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
