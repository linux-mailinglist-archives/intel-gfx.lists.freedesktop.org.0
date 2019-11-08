Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224ADF441D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10E86F8FB;
	Fri,  8 Nov 2019 10:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4305A6F8FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:01:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:01:50 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196857155"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:01:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108003602.33526-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-2-lucas.demarchi@intel.com>
Date: Fri, 08 Nov 2019 12:01:46 +0200
Message-ID: <87k18a660l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/bios: rename bios to oprom
 when mapping pci rom
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

T24gVGh1LCAwNyBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IG9wcm9tIGlzIGFjdHVhbGx5IGEgYmV0dGVyIG5hbWUgdG8gdXNlIHdo
ZW4gdXNpbmcKPiBwY2lfbWFwX3JvbSgpLiAiYmlvcyIgIGlzIHdheSB0b28gZ2VuZXJpYyBhbmQg
Y29uZnVzaW5nLgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKPiBpbmRleCBhMDNmNTZiN2I0ZWYuLjFmODM2MTZjZmMzMiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE4MDQsNyArMTgw
NCw3IEBAIGJvb2wgaW50ZWxfYmlvc19pc192YWxpZF92YnQoY29uc3Qgdm9pZCAqYnVmLCBzaXpl
X3Qgc2l6ZSkKPiAgCXJldHVybiB2YnQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
dmJ0X2hlYWRlciAqZmluZF92YnQodm9pZCBfX2lvbWVtICpiaW9zLCBzaXplX3Qgc2l6ZSkKPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCB2YnRfaGVhZGVyICpmaW5kX3ZidCh2b2lkIF9faW9tZW0gKm9w
cm9tLCBzaXplX3Qgc2l6ZSkKPiAgewo+ICAJc2l6ZV90IGk7Cj4gIAo+IEBAIC0xODEyLDE0ICsx
ODEyLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqZmluZF92YnQodm9pZCBf
X2lvbWVtICpiaW9zLCBzaXplX3Qgc2l6ZSkKPiAgCWZvciAoaSA9IDA7IGkgKyA0IDwgc2l6ZTsg
aSsrKSB7Cj4gIAkJdm9pZCAqdmJ0Owo+ICAKPiAtCQlpZiAoaW9yZWFkMzIoYmlvcyArIGkpICE9
ICooKGNvbnN0IHUzMiAqKSAiJFZCVCIpKQo+ICsJCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9
ICooKGNvbnN0IHUzMiAqKSIkVkJUIikpCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiAgCQkvKgo+ICAJ
CSAqIFRoaXMgaXMgdGhlIG9uZSBwbGFjZSB3aGVyZSB3ZSBleHBsaWNpdGx5IGRpc2NhcmQgdGhl
IGFkZHJlc3MKPiAgCQkgKiBzcGFjZSAoX19pb21lbSkgb2YgdGhlIEJJT1MvVkJULgo+ICAJCSAq
Lwo+IC0JCXZidCA9ICh2b2lkIF9fZm9yY2UgKikgYmlvcyArIGk7Cj4gKwkJdmJ0ID0gKHZvaWQg
X19mb3JjZSAqKW9wcm9tICsgaTsKPiAgCQlpZiAoaW50ZWxfYmlvc19pc192YWxpZF92YnQodmJ0
LCBzaXplIC0gaSkpCj4gIAkJCXJldHVybiB2YnQ7Cj4gIAo+IEBAIC0xODQyLDcgKzE4NDIsNyBA
QCB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKPiAgCWNvbnN0
IHN0cnVjdCB2YnRfaGVhZGVyICp2YnQgPSBkZXZfcHJpdi0+b3ByZWdpb24udmJ0Owo+ICAJY29u
c3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYjsKPiAtCXU4IF9faW9tZW0gKmJpb3MgPSBOVUxMOwo+
ICsJdTggX19pb21lbSAqb3Byb20gPSBOVUxMOwo+ICAKPiAgCWlmICghSEFTX0RJU1BMQVkoZGV2
X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSB7Cj4gIAkJRFJNX0RF
QlVHX0tNUygiU2tpcHBpbmcgVkJUIGluaXQgZHVlIHRvIGRpc2FibGVkIGRpc3BsYXkuXG4iKTsK
PiBAQCAtMTg1NSwxMSArMTg1NSwxMSBAQCB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlpZiAoIXZidCkgewo+ICAJCXNpemVfdCBzaXpl
Owo+ICAKPiAtCQliaW9zID0gcGNpX21hcF9yb20ocGRldiwgJnNpemUpOwo+IC0JCWlmICghYmlv
cykKPiArCQlvcHJvbSA9IHBjaV9tYXBfcm9tKHBkZXYsICZzaXplKTsKPiArCQlpZiAoIW9wcm9t
KQo+ICAJCQlnb3RvIG91dDsKPiAgCj4gLQkJdmJ0ID0gZmluZF92YnQoYmlvcywgc2l6ZSk7Cj4g
KwkJdmJ0ID0gZmluZF92YnQob3Byb20sIHNpemUpOwo+ICAJCWlmICghdmJ0KQo+ICAJCQlnb3Rv
IG91dDsKPiAgCj4gQEAgLTE4OTMsOCArMTg5Myw4IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlpbml0X3ZidF9taXNzaW5nX2Rl
ZmF1bHRzKGRldl9wcml2KTsKPiAgCX0KPiAgCj4gLQlpZiAoYmlvcykKPiAtCQlwY2lfdW5tYXBf
cm9tKHBkZXYsIGJpb3MpOwo+ICsJaWYgKG9wcm9tKQo+ICsJCXBjaV91bm1hcF9yb20ocGRldiwg
b3Byb20pOwo+ICB9Cj4gIAo+ICAvKioKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
