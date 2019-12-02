Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4192A10EBF1
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 15:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9106E201;
	Mon,  2 Dec 2019 14:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F93D6E201
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 14:57:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 06:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204585295"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 02 Dec 2019 06:56:58 -0800
Date: Mon, 2 Dec 2019 20:26:27 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191202145626.GC15371@intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
 <20191129185434.25549-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129185434.25549-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915: Dump the mode for the crtc
 just the once
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

T24gMjAxOS0xMS0yOSBhdCAyMDo1NDozMCArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IE5vIHBvaW50IGluIHJlcGVhdGluZyB0aGUgY3J0YyBtb2RlIGZvciBlYWNoIGNsb25lZCBlbmNv
ZGVyLgo+IEp1c3QgcHJpbnQgaXQgb25jZSwgYW5kIGF2b2lkIHVzaW5nIG11bHRpcGxlIGxpbmVz
IGZvciBpdC4KPiBBbmQgd2hpbGUgYXQgbGV0J3MgcG9saXNoIHRoZSBmaXhlZCBtb2RlIHByaW50
IHRvIGZpdCBvbgo+IG9uZSBsaW5lIGFzIHdlbGwuCgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3
ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAyNyArKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MTggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRl
eCAyOGY0NWYyNWNmYzAuLjExZjNmOTFiZWZiOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCj4gQEAgLTIzODgsMjkgKzIzODgsMTYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5j
b2Rlcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKPiAgCXNlcV9wcmludGYobSwgIlx0ZW5jb2Rl
ciAlZDogdHlwZTogJXMsIGNvbm5lY3RvcnM6XG4iLAo+ICAJCSAgIGVuY29kZXItPmJhc2UuYmFz
ZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lKTsKPiAgCj4gLQlmb3JfZWFjaF9jb25uZWN0b3Jfb25f
ZW5jb2RlcihkZXYsICZlbmNvZGVyLT5iYXNlLCBjb25uZWN0b3IpIHsKPiAtCQlzZXFfcHJpbnRm
KG0sICJcdFx0Y29ubmVjdG9yICVkOiB0eXBlOiAlcywgc3RhdHVzOiAlcyIsCj4gLQkJCSAgIGNv
bm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2UubmFtZSwKPiAtCQkJICAgZHJt
X2dldF9jb25uZWN0b3Jfc3RhdHVzX25hbWUoY29ubmVjdG9yLT5iYXNlLnN0YXR1cykpOwo+IC0K
PiAtCQlpZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1cyA9PSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5l
Y3RlZCkgewo+IC0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9
Cj4gLQkJCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwo+IC0KPiAtCQkJ
c2VxX3ByaW50ZihtLCAiLCBtb2RlOlxuIik7Cj4gLQkJCWludGVsX3NlcV9wcmludF9tb2RlKG0s
IDIsICZjcnRjX3N0YXRlLT5ody5tb2RlKTsKPiAtCQl9IGVsc2Ugewo+IC0JCQlzZXFfcHV0Yyht
LCAnXG4nKTsKPiAtCQl9Cj4gLQl9Cj4gKwlmb3JfZWFjaF9jb25uZWN0b3Jfb25fZW5jb2Rlcihk
ZXYsICZlbmNvZGVyLT5iYXNlLCBjb25uZWN0b3IpCj4gKwkJc2VxX3ByaW50ZihtLCAiXHRcdGNv
bm5lY3RvciAlZDogdHlwZTogJXNcbiIsCj4gKwkJCSAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlk
LCBjb25uZWN0b3ItPmJhc2UubmFtZSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX3Bh
bmVsX2luZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfcGFuZWwgKnBhbmVsKQo+
ICB7Cj4gLQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9IHBhbmVsLT5maXhlZF9tb2Rl
Owo+ICsJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSBwYW5lbC0+Zml4ZWRf
bW9kZTsKPiAgCj4gLQlzZXFfcHJpbnRmKG0sICJcdGZpeGVkIG1vZGU6XG4iKTsKPiAtCWludGVs
X3NlcV9wcmludF9tb2RlKG0sIDIsIG1vZGUpOwo+ICsJc2VxX3ByaW50ZihtLCAiXHRmaXhlZCBt
b2RlOiAiIERSTV9NT0RFX0ZNVCAiXG4iLCBEUk1fTU9ERV9BUkcobW9kZSkpOwo+ICB9Cj4gIAo+
ICBzdGF0aWMgdm9pZCBpbnRlbF9oZGNwX2luZm8oc3RydWN0IHNlcV9maWxlICptLAo+IEBAIC0y
NjUxLDggKzI2MzgsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19pbmZvKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIAkJICAgeWVzbm8oY3J0Y19zdGF0
ZS0+ZGl0aGVyKSwgY3J0Y19zdGF0ZS0+cGlwZV9icHApOwo+ICAKPiAgCWlmIChjcnRjX3N0YXRl
LT5ody5hY3RpdmUpIHsKPiArCQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9
Cj4gKwkJCSZjcnRjX3N0YXRlLT5ody5tb2RlOwo+ICAJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyOwo+ICAKPiArCQlzZXFfcHJpbnRmKG0sICJcdG1vZGU6ICIgRFJNX01PREVfRk1UICJc
biIsIERSTV9NT0RFX0FSRyhtb2RlKSk7Cj4gKwo+ICAJCWZvcl9lYWNoX2VuY29kZXJfb25fY3J0
YygmZGV2X3ByaXYtPmRybSwgJmNydGMtPmJhc2UsIGVuY29kZXIpCj4gIAkJCWludGVsX2VuY29k
ZXJfaW5mbyhtLCBjcnRjLCBlbmNvZGVyKTsKPiAgCj4gLS0gCj4gMi4yMy4wCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
