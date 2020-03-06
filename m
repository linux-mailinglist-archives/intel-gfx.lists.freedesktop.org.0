Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E868917C18B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 16:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5FC6E218;
	Fri,  6 Mar 2020 15:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6CC6E211
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 15:18:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 07:18:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="234834920"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2020 07:18:43 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-6-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <1e21a038-1881-449f-8a73-c0af623d7728@intel.com>
Date: Fri, 6 Mar 2020 20:48:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303173313.28117-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915:
 s/chv_read_cgm_lut/chv_read_cgm_gamma/
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwMy1NYXItMjAgMTE6MDMgUE0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBjaHZfcmVh
ZF9jZ21fbHV0KCkgc3BlY2lmaWNhbGx5IHJlYWRzIHRoZSBDR00gX2dhbW1hXyBMVVQgc28KPiBs
ZXQncyByZW5hbWUgaXQgdG8gcmVmbGVjdCB0aGF0IGZhY3QuIFRoaXMgYWxzbyBtaXJyb3JzCj4g
dGhlIG90aGVyIGRpcmVjdGlvbidzIGNodl9sb2FkX2NnbV9nYW1tYSgpLgoKQXQgcHJlc2VudCwg
c2luY2UgYWxsIHRoZSByZWFkb3V0cyBhcmUgb25seSBnYW1tYSBsdXRzIHNvIHNob3VsZCB3ZSAK
cmVuYW1lIGFsbCB0aGUgcmVhZG91dHMgbGlrZSBjaHZfcmVhZF9nYW1tYV9sdXQoKT8KCj4gCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4g
aW5kZXggZjkwZjExMzM1NWJjLi5hYjIzYjI0ZTdiZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gQEAgLTE3ODAsNyArMTc4MCw3IEBAIHN0YXRp
YyB2b2lkIGk5NjVfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQo+ICAgfQo+ICAgCj4gICBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKPiAtY2h2
X3JlYWRfY2dtX2x1dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
PiArY2h2X3JlYWRfY2dtX2dhbW1hKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQo+ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+IEBAIC0xODE2LDcgKzE4MTYsNyBA
QCBjaHZfcmVhZF9jZ21fbHV0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQo+ICAgc3RhdGljIHZvaWQgY2h2X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPiAgIHsKPiAgIAlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUgJiBDR01f
UElQRV9NT0RFX0dBTU1BKQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGNodl9yZWFk
X2NnbV9sdXQoY3J0Y19zdGF0ZSk7Cj4gKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gY2h2
X3JlYWRfY2dtX2dhbW1hKGNydGNfc3RhdGUpOwo+ICAgCWVsc2UKPiAgIAkJaTk2NV9yZWFkX2x1
dHMoY3J0Y19zdGF0ZSk7Cj4gICB9Cj4gCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
