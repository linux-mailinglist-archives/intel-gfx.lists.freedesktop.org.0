Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B71DEFE0B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 14:14:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4117D6EA49;
	Tue,  5 Nov 2019 13:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C071B6EA49
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 13:14:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 05:14:16 -0800
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="195815824"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 05:14:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191104222315.GC32264@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191104141439.26312-1-jani.nikula@intel.com>
 <20191104222315.GC32264@intel.com>
Date: Tue, 05 Nov 2019 15:14:12 +0200
Message-ID: <87h83i79ej.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/dsc: make parameter arrays
 const
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

T24gTW9uLCAwNCBOb3YgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDQ6MTQ6MzZQTSArMDIwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE5vIG5lZWQgZm9yIHRoZW0gdG8gYmUgbXV0YWJsZS4KPj4g
Cj4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Cj4gQWdyZWUg
dGhhdCB0aGVzZSBwYXJhbXMgYXJlIGNvbnN0YW50cwo+Cj4gUmV2aWV3ZWQtYnk6IE1hbmFzaSBO
YXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CgpUaGFua3MgZm9yIHRoZSByZXZpZXcs
IHB1c2hlZCB0aGUgc2VyaWVzIHRvIGRpbnEuCgpCUiwKSmFuaS4KCj4KPiBNYW5hc2kKPgo+PiAt
LS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgNCArKy0t
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiAK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPj4gaW5kZXggOWNi
MzZmODU1ZjA3Li43NjNmMWQ3MjA4ZTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5jCj4+IEBAIC0zMyw3ICszMyw3IEBAIGVudW0gQ09MVU1OX0lOREVY
X0JQQyB7Cj4+ICAjZGVmaW5lIERTQ19TVVBQT1JURURfVkVSU0lPTl9NSU4JCTEKPj4gIAo+PiAg
LyogRnJvbSBEU0NfdjEuMTEgc3BlYywgcmNfcGFyYW1ldGVyX1NldCBzeW50YXggZWxlbWVudCB0
eXBpY2FsbHkgY29uc3RhbnQgKi8KPj4gLXN0YXRpYyB1MTYgcmNfYnVmX3RocmVzaFtdID0gewo+
PiArc3RhdGljIGNvbnN0IHUxNiByY19idWZfdGhyZXNoW10gPSB7Cj4+ICAJODk2LCAxNzkyLCAy
Njg4LCAzNTg0LCA0NDgwLCA1Mzc2LCA2MjcyLCA2NzIwLCA3MTY4LCA3NjE2LAo+PiAgCTc3NDQs
IDc4NzIsIDgwMDAsIDgwNjQKPj4gIH07Cj4+IEBAIC01Myw3ICs1Myw3IEBAIHN0cnVjdCByY19w
YXJhbWV0ZXJzIHsKPj4gICAqIFNlbGVjdGVkIFJhdGUgQ29udHJvbCBSZWxhdGVkIFBhcmFtZXRl
ciBSZWNvbW1lbmRlZCBWYWx1ZXMKPj4gICAqIGZyb20gRFNDX3YxLjExIHNwZWMgJiBDIE1vZGVs
IHJlbGVhc2U6IERTQ19tb2RlbF8yMDE2MTIxMgo+PiAgICovCj4+IC1zdGF0aWMgc3RydWN0IHJj
X3BhcmFtZXRlcnMgcmNfcGFyYW1zW11bTUFYX0NPTFVNTl9JTkRFWF0gPSB7Cj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHJjX3BhcmFtZXRlcnMgcmNfcGFyYW1zW11bTUFYX0NPTFVNTl9JTkRFWF0g
PSB7Cj4+ICB7Cj4+ICAJLyogNkJQUC84QlBDICovCj4+ICAJeyA3NjgsIDE1LCA2MTQ0LCAzLCAx
MywgMTEsIDExLCB7Cj4+IC0tIAo+PiAyLjIwLjEKPj4gCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
