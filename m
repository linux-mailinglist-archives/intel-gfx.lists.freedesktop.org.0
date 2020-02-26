Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 982EC16FABF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7ECD6E3D0;
	Wed, 26 Feb 2020 09:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5556E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:30:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:30:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="410543585"
Received: from mkoeck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.250])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:29:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200225171125.28885-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-3-ville.syrjala@linux.intel.com>
Date: Wed, 26 Feb 2020 11:30:16 +0200
Message-ID: <87lfopsnkn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 02/20] drm/i915: Remove garbage WARNs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gVHVlLCAyNSBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGVzZSB0aGluZ3MgY2FuIG5ldmVyIGhhcHBlbiwgYW5kIHBy
b2JhYmx5IHdlJ2QgaGF2ZSBvb3BzZWQgbG9uZyBhZ28KPiBpZiB0aGV5IGRpZC4gSnVzdCBnZXQg
cmlkIG9mIHRoaXMgcG9pbnRsZXNzIG5vaXNlIGluIHRoZSBjb2RlLgo+Cj4gQ2M6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZp
ZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAxMSAtLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBpbmRl
eCA1NDM2MzRkM2UxMGMuLjU5ZmM0NjFiYzQ1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
Ywo+IEBAIC00NDcwLDE0ICs0NDcwLDEwIEBAIHNrbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9y
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkJIHU2NCAqcGxh
bmVfZGF0YV9yYXRlLAo+ICAJCQkJIHU2NCAqdXZfcGxhbmVfZGF0YV9yYXRlKQo+ICB7Cj4gLQlz
dHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT51YXBpLnN0YXRlOwo+
ICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGU7Cj4gIAl1NjQgdG90YWxfZGF0YV9yYXRlID0gMDsKPiAgCj4g
LQlpZiAoV0FSTl9PTighc3RhdGUpKQo+IC0JCXJldHVybiAwOwo+IC0KPiAgCS8qIENhbGN1bGF0
ZSBhbmQgY2FjaGUgZGF0YSByYXRlIGZvciBlYWNoIHBsYW5lICovCj4gIAlpbnRlbF9hdG9taWNf
Y3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwgcGxhbmVfc3RhdGUsIGNydGNf
c3RhdGUpIHsKPiAgCQllbnVtIHBsYW5lX2lkIHBsYW5lX2lkID0gcGxhbmUtPmlkOwo+IEBAIC00
NTA1LDkgKzQ1MDEsNiBAQCBpY2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2RhdGFfcmF0ZShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGU7Cj4gIAl1NjQgdG90YWxfZGF0YV9yYXRlID0gMDsKPiAgCj4g
LQlpZiAoV0FSTl9PTighY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZSkpCj4gLQkJcmV0dXJuIDA7Cj4g
LQo+ICAJLyogQ2FsY3VsYXRlIGFuZCBjYWNoZSBkYXRhIHJhdGUgZm9yIGVhY2ggcGxhbmUgKi8K
PiAgCWludGVsX2F0b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKHBsYW5lLCBw
bGFuZV9zdGF0ZSwgY3J0Y19zdGF0ZSkgewo+ICAJCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQgPSBw
bGFuZS0+aWQ7Cj4gQEAgLTQ1NDgsNyArNDU0MSw2IEBAIGljbF9nZXRfdG90YWxfcmVsYXRpdmVf
ZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICBzdGF0aWMg
aW50Cj4gIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKPiAgewo+IC0Jc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gY3J0Y19z
dGF0ZS0+dWFwaS5zdGF0ZTsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gIAlzdHJ1Y3Qgc2tsX2RkYl9l
bnRyeSAqYWxsb2MgPSAmY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKPiBAQCAtNDU2Nyw5ICs0NTU5
LDYgQEAgc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQo+ICAJbWVtc2V0KGNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeSwgMCwgc2l6
ZW9mKGNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeSkpOwo+ICAJbWVtc2V0KGNydGNfc3Rh
dGUtPndtLnNrbC5wbGFuZV9kZGJfdXYsIDAsIHNpemVvZihjcnRjX3N0YXRlLT53bS5za2wucGxh
bmVfZGRiX3V2KSk7Cj4gIAo+IC0JaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhc3Rh
dGUpKQo+IC0JCXJldHVybiAwOwo+IC0KPiAgCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSB7
Cj4gIAkJYWxsb2MtPnN0YXJ0ID0gYWxsb2MtPmVuZCA9IDA7Cj4gIAkJcmV0dXJuIDA7CgotLSAK
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
