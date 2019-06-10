Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F03B03F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 10:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5418911F;
	Mon, 10 Jun 2019 08:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B888911F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 08:11:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 01:11:29 -0700
X-ExtLoop1: 1
Received: from strobelr-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.103])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 01:11:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155982418768.19464.12709931321184255863@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190606122203.13416-1-jani.nikula@intel.com>
 <20190606122203.13416-3-jani.nikula@intel.com>
 <155982418768.19464.12709931321184255863@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 11:12:06 +0300
Message-ID: <87tvcxn9k9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: move more atomic plane
 declarations to intel_atomic_plane.h
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

T24gVGh1LCAwNiBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDYtMDYgMTM6MjI6MDIpCj4+
IFNvbWUgZnVuY3Rpb24gZGVjbGFyYXRpb25zIGluIGludGVsX2Rydi5oIHdlcmUgbWlzc2VkIHdo
ZW4KPj4gaW50ZWxfYXRvbWljX3BsYW5lLmggd2FzIGNyZWF0ZWQuCj4+IAo+PiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2F0b21pY19wbGFuZS5oIHwgMTYgKysrKysrKysrKysrKysr
Kwo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgICAgICAgfCAxMiAtLS0t
LS0tLS0tLS0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYXRv
bWljX3BsYW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdG9taWNfcGxhbmUuaAo+
PiBpbmRleCAwYTk2NTEzNzZkMGUuLjI0MzIwMDQxNDk4ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfYXRvbWljX3BsYW5lLmgKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfYXRvbWljX3BsYW5lLmgKPj4gQEAgLTYsNyArNiwxMSBAQAo+PiAgI2lm
bmRlZiBfX0lOVEVMX0FUT01JQ19QTEFORV9IX18KPj4gICNkZWZpbmUgX19JTlRFTF9BVE9NSUNf
UExBTkVfSF9fCj4+ICAKPj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+PiArCj4+ICtzdHJ1
Y3QgZHJtX2NydGNfc3RhdGU7Cj4+ICBzdHJ1Y3QgZHJtX3BsYW5lOwo+PiArc3RydWN0IGRybV9w
cm9wZXJ0eTsKPj4gIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7Cj4+ICBzdHJ1Y3QgaW50ZWxf
Y3J0YzsKPj4gIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwo+PiBAQCAtMzgsNSArNDIsMTcgQEAg
aW50IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpvbGRfY3J0Y18KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKmludGVsX3N0YXRlKTsKPj4gK2lu
dCBpbnRlbF9wbGFuZV9hdG9taWNfZ2V0X3Byb3BlcnR5KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5l
LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZHJt
X3BsYW5lX3N0YXRlICpzdGF0ZSwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcGVydHksCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHU2NCAqdmFsKTsKPj4gK2ludCBpbnRlbF9wbGFuZV9hdG9taWNfc2V0
X3Byb3BlcnR5KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSwKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcGVy
dHksCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHU2NCB2YWwpOwo+PiAr
aW50IGludGVsX3BsYW5lX2F0b21pY19jYWxjX2NoYW5nZXMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
b2xkX3BsYW5lX3N0YXRlLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Cj4KPiBpbnRlbF9wbGFuZV9hdG9t
aWMgdnMgaW50ZWxfYXRvbWljX3BsYW5lLmggdGhhdCBtdXN0IGJlIGhpdHRpbmcgdGhlIG9jZAo+
IHN3ZWV0c3BvdC4KClJpZ2h0IGluIHRoZSBuZXJ2ZSBpbmRlZWQuIFNvbWV0aGluZyBmb3IgdGhl
IGZ1dHVyZS4KCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgoKVGhhbmtzLCBwdXNoZWQgdGhlIGxvdC4KCkJSLApKYW5pLgoKCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
