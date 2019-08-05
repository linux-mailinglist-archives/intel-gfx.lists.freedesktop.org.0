Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F118815E2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 11:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0825089D57;
	Mon,  5 Aug 2019 09:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C7F89D57
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 09:49:58 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 02:49:56 -0700
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="167925452"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 02:49:55 -0700
Date: Mon, 5 Aug 2019 12:49:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190805094519.GA5361@ideak-desk.fi.intel.com>
References: <20190731033324.6031-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731033324.6031-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Remove DDI IO power domain
 from PG3 power domains
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
Cc: intel-gfx@lists.freedesktop.org, Syrjala Ville <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDk6MDM6MjRBTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cgo+IERESSBJTyBwb3dlciBkb21haW4gYXJlIGluIElPL1BIWS9BRkUgcG93ZXIgZG9t
YWlucy4gIFdoaWNoIGRvZXMgbm90Cj4gcmVxdWlyZSBQRzMgcG93ZXIgd2VsbCB0byBiZSBlbmFi
bGUuCgpUaGFua3MgZm9yIHRyYWNraW5nIHRoaXMgZG93bi4KCkltbyB0aGUgY29tbWl0IG1lc3Nh
Z2Ugd291bGQgYmUgY2xlYXJlciBieSBzYXlpbmc6CgpUaGUgRERJLUlPIHBvd2VyIHdlbGxzIGFy
ZSBiYWNraW5nIHRoZSBJTy9QSFkgZnVuY3Rpb25hbGl0eSB3aGljaApkb2Vzbid0IG5lZWQgdGhl
IFBHMyBwb3dlciBwb3dlciB3ZWxsLiBBY2NvcmRpbmdseSBmaXggdXAgdGhlIGxpc3Qgb2YKUEcz
IHBvd2VyIGRvbWFpbnMuCgo+IE1JUEkgRFNJIGR1YWwgbGluayBnZXRzICJEREkgQiIgSU8gcG93
ZXIgZG9tYWluIHJlZmVyZW5jZSBjb3VudCB3aGljaAo+IGVuYWJsZXMgUEczIHNpbmNlICJEREkg
QiIgSU8gcG93ZXIgZG9tYWluIGlzIHBhcnQgb2YgUEczIHBvd2VyIGRvbWFpbiwKPiB0aGF0IG1h
a2VzIHBvd2VyIGxlYWthZ2UgaW4gTUlQSSBEU0kgZHVhbCBsaW5rIHVzZSBjYXNlLgoKPiAKPiBD
YzogRGVhayBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IENjOiBTeXJqYWxhIFZpbGxlIDx2
aWxsZS5zeXJqYWxhQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8
YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCj4gaW5kZXggZGQyYTUwYjhiYTBhLi5jYTMzZThkNDEyMTgg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwo+IEBAIC0yNDgyLDExICsyNDgyLDggQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9UUkFOU0NPREVSX0MpIHwJCVwKPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJ
UEVfQl9QQU5FTF9GSVRURVIpIHwJXAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElf
Ql9MQU5FUykgfAlcCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9CX0lPKSB8CQlc
Cj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVTKSB8CVwKPiAtCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0NfSU8pIHwJCVwKPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0RfTEFORVMpIHwJXAo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9E
RElfRF9JTykgfAkJXAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfRV9MQU5FUykg
fAlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9FX0lPKSB8CQlcCgpXaGF0IGFi
b3V0IHRoZSBFL0YgcG9ydHMnIElPIHBvd2VyIHdlbGxzPwoKPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0ZfTEFORVMpIHwJXAo+IC0tIAo+IDIuMjEuMAo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
