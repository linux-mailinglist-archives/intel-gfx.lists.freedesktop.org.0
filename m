Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0421638A81
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE2E89E03;
	Fri,  7 Jun 2019 12:41:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F22E89E03
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:41:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:41:49 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 05:41:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20190607120838.20514-7-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
 <20190607120838.20514-7-tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jun 2019 15:44:52 +0300
Message-ID: <87y32dzhrv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 06/12] drm/i915: Remove I915_READ64 and
 I915_READ64_32x2
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

T24gRnJpLCAwNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IE5vdyB0aGF0IGFsbCB0aGVpciB1c2VycyBhcmUgZ29uZSB3ZSBjYW4g
cmVtb3ZlIHRoZSBtYWNyb3MgYW5kCj4gYWNjb21wYW55aW5nIGR1cGxpY2F0ZWQgY29tbWVudC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gU3VnZ2VzdGVkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoK
T24gcGF0Y2hlcyAxLTYsCgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAxOCAt
LS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggOGRhMTU0MTU0NmVlLi5iMjc2MzcyMWI3NmQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMjg2MiwyNCArMjg2Miw2IEBAIGV4
dGVybiB2b2lkIGludGVsX2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1
X2Vycm9yX3N0YXRlX2J1ZiAqZSwKPiAgI2RlZmluZSBJOTE1X1JFQURfTk9UUkFDRShyZWdfXykJ
IF9fSTkxNV9SRUdfT1AocmVhZF9ub3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSkKPiAgI2RlZmlu
ZSBJOTE1X1dSSVRFX05PVFJBQ0UocmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlX25v
dHJhY2UsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQo+ICAKPiAtLyogQmUgdmVyeSBjYXJl
ZnVsIHdpdGggcmVhZC93cml0ZSA2NC1iaXQgdmFsdWVzLiBPbiAzMi1iaXQgbWFjaGluZXMsIHRo
ZXkKPiAtICogd2lsbCBiZSBpbXBsZW1lbnRlZCB1c2luZyAyIDMyLWJpdCB3cml0ZXMgaW4gYW4g
YXJiaXRyYXJ5IG9yZGVyIHdpdGgKPiAtICogYW4gYXJiaXRyYXJ5IGRlbGF5IGJldHdlZW4gdGhl
bS4gVGhpcyBjYW4gY2F1c2UgdGhlIGhhcmR3YXJlIHRvCj4gLSAqIGFjdCB1cG9uIHRoZSBpbnRl
cm1lZGlhdGUgdmFsdWUsIHBvc3NpYmx5IGxlYWRpbmcgdG8gY29ycnVwdGlvbiBhbmQKPiAtICog
bWFjaGluZSBkZWF0aC4gRm9yIHRoaXMgcmVhc29uIHdlIGRvIG5vdCBzdXBwb3J0IEk5MTVfV1JJ
VEU2NCwgb3IKPiAtICogZGV2X3ByaXYtPnVuY29yZS5mdW5jcy5tbWlvX3dyaXRlcS4KPiAtICoK
PiAtICogV2hlbiByZWFkaW5nIGEgNjQtYml0IHZhbHVlIGFzIHR3byAzMi1iaXQgdmFsdWVzLCB0
aGUgZGVsYXkgbWF5IGNhdXNlCj4gLSAqIHRoZSB0d28gcmVhZHMgdG8gbWlzbWF0Y2gsIGUuZy4g
YSB0aW1lc3RhbXAgb3ZlcmZsb3dpbmcuIEFsc28gbm90ZSB0aGF0Cj4gLSAqIG9jY2FzaW9uYWxs
eSBhIDY0LWJpdCByZWdpc3RlciBkb2VzIG5vdCBhY3R1YWx5IHN1cHBvcnQgYSBmdWxsIHJlYWRx
Cj4gLSAqIGFuZCBtdXN0IGJlIHJlYWQgdXNpbmcgdHdvIDMyLWJpdCByZWFkcy4KPiAtICoKPiAt
ICogWW91IGhhdmUgYmVlbiB3YXJuZWQuCj4gLSAqLwo+IC0jZGVmaW5lIEk5MTVfUkVBRDY0KHJl
Z19fKQlfX0k5MTVfUkVHX09QKHJlYWQ2NCwgZGV2X3ByaXYsIChyZWdfXykpCj4gLSNkZWZpbmUg
STkxNV9SRUFENjRfMngzMihsb3dlcl9yZWdfXywgdXBwZXJfcmVnX18pIFwKPiAtCV9fSTkxNV9S
RUdfT1AocmVhZDY0XzJ4MzIsIGRldl9wcml2LCAobG93ZXJfcmVnX18pLCAodXBwZXJfcmVnX18p
KQo+IC0KPiAgI2RlZmluZSBQT1NUSU5HX1JFQUQocmVnX18pCV9fSTkxNV9SRUdfT1AocG9zdGlu
Z19yZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkKPiAgI2RlZmluZSBQT1NUSU5HX1JFQUQxNihyZWdf
XykJX19JOTE1X1JFR19PUChwb3N0aW5nX3JlYWQxNiwgZGV2X3ByaXYsIChyZWdfXykpCgotLSAK
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
