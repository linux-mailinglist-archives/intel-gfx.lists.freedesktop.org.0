Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA41027FF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2426E943;
	Tue, 19 Nov 2019 15:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8721D6E943
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 15:25:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 07:25:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="237367246"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2019 07:25:00 -0800
Date: Tue, 19 Nov 2019 17:24:59 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191119152459.GA1163@intel.intel>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-17-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119100929.2628356-17-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 17/17] drm/i915/selftests: Exercise rc6
 handling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWUsIE5vdiAxOSwgMjAxOSBhdCAxMDowOToyOUFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gUmVhZGluZyBmcm9tIENUWF9JTkZPIHVwc2V0cyByYzYsIHJlcXVp
cmluZyB1cyB0byBkZXRlY3QgYW5kIHByZXZlbnQKPiBwb3NzaWJsZSByYzYgY29udGV4dCBjb3Jy
dXB0aW9uLiBQb2tlIGF0IHRoZSBiZWFyIQo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgoKaXQgbG9va3MgZ29vZCwKClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRp
QGludGVsLmNvbT4KVGVzdGVkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
Cmp1c3QgYSBxdWVzdGlvbiwgdGhvdWdoCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfZ3RfcG0uYwo+IGluZGV4IGQxNzUyZjE1NzAyYS4uMWQ1YmY5M2QxMjU4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCj4gQEAgLTYsNiArNiw3IEBACj4g
ICAqLwo+ICAKPiAgI2luY2x1ZGUgInNlbGZ0ZXN0X2xsYy5oIgo+ICsjaW5jbHVkZSAic2VsZnRl
c3RfcmM2LmgiCj4gIAo+ICBzdGF0aWMgaW50IGxpdmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKPiAg
ewo+IEBAIC01OCwzICs1OSwxNSBAQCBpbnQgaW50ZWxfZ3RfcG1fbGl2ZV9zZWxmdGVzdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJcmV0dXJuIGludGVsX2d0X2xpdmVf
c3VidGVzdHModGVzdHMsICZpOTE1LT5ndCk7Cj4gIH0KPiArCj4gK2ludCBpbnRlbF9ndF9wbV9s
YXRlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsJc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKPiArCQlTVUJURVNUKGxp
dmVfcmM2X2N0eCksCj4gKwl9Owo+ICsKPiArCWlmIChpbnRlbF9ndF9pc193ZWRnZWQoJmk5MTUt
Pmd0KSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlyZXR1cm4gaW50ZWxfZ3RfbGl2ZV9zdWJ0ZXN0
cyh0ZXN0cywgJmk5MTUtPmd0KTsKPiArfQoKYXJlIHlvdSB0aGlua2luZyBvZiBtYWtpbmcgdGhp
cyBmaWxlIGEgaHViIGZvciBhbGwgcG93ZXIKbWFuYWdlbWVudCBzZWxmdGVzdHM/IHdvdWxkbid0
IGl0IGJlIG1vcmUgbmVhdCBpZiByYzYsIHJwcyBhbmQKb3RoZXJzIGhhdmUgdGhlaXIgb3duIHNl
bGZ0ZXN0cyBkZWNsYXJlZCBpbmRlcGVuZGVudGx5LApjb25zaWRlcmluZyB0aGF0IHdlIG1pZ2h0
IHdhbnQgdG8gYWRkIG1vcmUgb2YgdGhlbT8KCj4gK3N0YXRpYyBjb25zdCB1MzIgKl9fbGl2ZV9y
YzZfY3R4KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiArewo+ICsJc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7Cj4gKwl1MzIgY29uc3QgKnJlc3VsdDsKCidjb25zdCcgaGVyZT8geW91IGxpa2Ug
cmVja2xlc3MgbGlmZSEgOikKCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
