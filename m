Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A99F4B5ED1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 10:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F32C6EE45;
	Wed, 18 Sep 2019 08:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C246EE45
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 08:13:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 01:13:34 -0700
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="181053147"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 01:13:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1568724525-19275-2-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
 <1568724525-19275-2-git-send-email-swati2.sharma@intel.com>
Date: Wed, 18 Sep 2019 11:13:27 +0300
Message-ID: <875zlqxbrs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2][PATCH 1/3] drm/i915/display: Fix formatting
 issues
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ClN1YmplY3QgcHJlZml4ICJkcm0vaTkxNS9kaXNwbGF5IiBpcyBhIGZhaXJseSBicm9hZApzdGF0
ZW1lbnQuICJkcm0vaTkxNS9jb2xvciIgcGVyaGFwcy4KClBsZWFzZSBhZGQgYSBjb21taXQgbWVz
c2FnZS4gU2VlIGdpdCBsb2cuIFdlIGRvbid0IGFwcHJvdmUgb2YgZW1wdHkKY29tbWl0IG1lc3Nh
Z2VzLgoKT24gVHVlLCAxNyBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hh
cm1hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jIHwgMTUgKysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCj4gaW5kZXggMzE4MzA4ZC4uYjFmMGY3ZSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiBAQCAtODA3LDExICs4MDcsMTEg
QEAgc3RhdGljIHUzMiBpbGtfbHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0
ICpjb2xvcikKPiAgCXUzMiBpOwo+ICAKPiAgCS8qCj4gLQkgKiBFdmVyeSBlbnRyeSBpbiB0aGUg
bXVsdGktc2VnbWVudCBMVVQgaXMgY29ycmVzcG9uZGluZyB0byBhIHN1cGVyZmluZQo+IC0JICog
c2VnbWVudCBzdGVwIHdoaWNoIGlzIDEvKDggKiAxMjggKiAyNTYpLgo+ICsJICogUHJvZ3JhbSBT
dXBlciBGaW5lIHNlZ21lbnQgKGxldCdzIGNhbGwgaXQgc2VnMSkuLi4KPiAgCSAqCj4gLQkgKiBT
dXBlcmZpbmUgc2VnbWVudCBoYXMgOSBlbnRyaWVzLCBjb3JyZXNwb25kaW5nIHRvIHZhbHVlcwo+
IC0JICogMCwgMS8oOCAqIDEyOCAqIDI1NiksIDIvKDggKiAxMjggKiAyNTYpIC4uLi4gOC8oOCAq
IDEyOCAqIDI1NikuCj4gKwkgKiBTdXBlciBGaW5lIHNlZ21lbnQncyBzdGVwIGlzIDEvKDggKiAx
MjggKiAyNTYpIGFuZCBpdCBoYXMKPiArCSAqIDkgZW50cmllcywgY29ycmVzcG9uZGluZyB0byB2
YWx1ZXMgMCwgMS8oOCAqIDEyOCAqIDI1NiksCj4gKwkgKiAyLyg4ICogMTI4ICogMjU2KSAuLi4g
OC8oOCAqIDEyOCAqIDI1NikuCj4gIAkgKi8KPiAgCUk5MTVfV1JJVEUoUFJFQ19QQUxfTVVMVElf
U0VHX0lOREVYKHBpcGUpLCBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVOVCk7Cj4gIAo+IEBAIC04Mzcs
MTAgKzgzNyw5IEBAIHN0YXRpYyB1MzIgaWxrX2x1dF8xMnA0X2xkdyhjb25zdCBzdHJ1Y3QgZHJt
X2NvbG9yX2x1dCAqY29sb3IpCj4gIAl1MzIgaTsKPiAgCj4gIAkvKgo+IC0JICoKPiAgCSAqIFBy
b2dyYW0gRmluZSBzZWdtZW50IChsZXQncyBjYWxsIGl0IHNlZzIpLi4uCj4gIAkgKgo+IC0JICog
RmluZSBzZWdtZW50J3Mgc3RlcCBpcyAxLygxMjggKiAyNTYpIGllIDEvKDEyOCAqIDI1NiksICAy
LygxMjgqMjU2KQo+ICsJICogRmluZSBzZWdtZW50J3Mgc3RlcCBpcyAxLygxMjggKiAyNTYpIGku
ZS4gMS8oMTI4ICogMjU2KSwgIDIvKDEyOCoyNTYpCgkgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeClNpbmNlIHlvdSdyZSBjbGVhbmlu
ZyB0aGlzIHVwLi4uIGV4dHJhIHNwYWNlIHRoZXJlLiBBbmQgc29tZSBvZiB0aGUKaXRlbXMgaGF2
ZSAoMTI4ICogMjU2KSBhbmQgb3RoZXJzICgxMjgqMjU2KS4KCkkgd291bGRuJ3QgY2FyZSBvdGhl
cndpc2UsIGJ1dCB3aHkgZml4IHNvbWUgcHVuY3R1YXRpb24gYW5kIGxlYXZlIHRoaXMKYmVoaW5k
LgoKPiAgCSAqIC4uLiAyNTYvKDEyOCoyNTYpLiBTbyBpbiBvcmRlciB0byBwcm9ncmFtIGZpbmUg
c2VnbWVudCBvZiBMVVQgd2UKPiAgCSAqIG5lZWQgdG8gcGljayBldmVyeSA4J3RoIGVudHJ5IGlu
IExVVCwgYW5kIHByb2dyYW0gMjU2IGluZGV4ZXMuCj4gIAkgKgo+IEBAIC04NTgsNyArODU3LDcg
QEAgc3RhdGljIHUzMiBpbGtfbHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0
ICpjb2xvcikKPiAgCSAqIFByb2dyYW0gQ29hcnNlIHNlZ21lbnQgKGxldCdzIGNhbGwgaXQgc2Vn
MykuLi4KPiAgCSAqCj4gIAkgKiBDb2Fyc2Ugc2VnbWVudCdzIHN0YXJ0cyBmcm9tIGluZGV4IDAg
YW5kIGl0J3Mgc3RlcCBpcyAxLzI1NiBpZSAwLAo+IC0JICogMS8yNTYsIDIvMjU2IC4uLjI1Ni8y
NTYuIEFzIHBlciB0aGUgZGVzY3JpcHRpb24gb2YgZWFjaCBlbnRyeSBpbiBMVVQKPiArCSAqIDEv
MjU2LCAyLzI1NiAuLi4gMjU2LzI1Ni4gQXMgcGVyIHRoZSBkZXNjcmlwdGlvbiBvZiBlYWNoIGVu
dHJ5IGluIExVVAo+ICAJICogYWJvdmUsIHdlIG5lZWQgdG8gcGljayBldmVyeSAoOCAqIDEyOCl0
aCBlbnRyeSBpbiBMVVQsIGFuZAo+ICAJICogcHJvZ3JhbSAyNTYgb2YgdGhvc2UuCj4gIAkgKgo+
IEBAIC04OTAsMTIgKzg4OSwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJY2FzZSBHQU1NQV9NT0RFX01P
REVfOEJJVDoKPiAgCQlpOXh4X2xvYWRfbHV0cyhjcnRjX3N0YXRlKTsKPiAgCQlicmVhazsKPiAt
Cj4gIAljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQ6Cj4gIAkJaWNs
X3Byb2dyYW1fZ2FtbWFfc3VwZXJmaW5lX3NlZ21lbnQoY3J0Y19zdGF0ZSk7Cj4gIAkJaWNsX3By
b2dyYW1fZ2FtbWFfbXVsdGlfc2VnbWVudChjcnRjX3N0YXRlKTsKPiAgCQlicmVhazsKPiAtCj4g
IAlkZWZhdWx0Ogo+ICAJCWJkd19sb2FkX2x1dF8xMChjcnRjLCBnYW1tYV9sdXQsIFBBTF9QUkVD
X0lOREVYX1ZBTFVFKDApKTsKPiAgCQlpdmJfbG9hZF9sdXRfZXh0X21heChjcnRjKTsKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
