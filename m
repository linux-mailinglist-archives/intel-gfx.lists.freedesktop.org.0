Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 192CEB7361
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 08:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6C26F746;
	Thu, 19 Sep 2019 06:47:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942B96F722
 for <Intel-GFX@lists.freedesktop.org>; Thu, 19 Sep 2019 06:47:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 23:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="362426230"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 23:47:10 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 18 Sep 2019 23:47:10 -0700
Message-Id: <20190919064710.16559-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190919064710.16559-1-John.C.Harrison@Intel.com>
References: <20190919064710.16559-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Engine relative MMIO for Gen12
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCkdlbjEyIGlu
dHJvZHVjZXMgYSBjb21wbGV0ZWx5IG5ldyBhbmQgZGlmZmVyZW50IHNjaGVtZSBmb3IKaW1wbGVt
ZW50aW5nIGVuZ2luZSByZWxhdGl2ZSBNTUlPIGFjY2Vzc2VzIC0gTUlfTFJJX01NSU9fUkVNQVAu
IFRoaXMKcmVxdWlyZXMgdXNpbmcgdGhlIGJhc2UgYWRkcmVzcyBvZiBpbnN0YW5jZSB6ZXJvIG9m
IHRoZSByZWxldmFudAplbmdpbmUgY2xhc3MuIEFuZCB0aGVuLCBpdCBpcyBvbmx5IHZhbGlkIGlm
IHRoZSByZWdpc3RlciBpbgpxdWVzdGlvbiBmYWxscyB3aXRoaW4gYSBjZXJ0YWluIHJhbmdlIGFz
IHNwZWNpZmllZCBieSBhIHRhYmxlLgoKdjI6IEFkZCBzdXBwb3J0IGZvciBmdXNlZCBwYXJ0cyB3
aGVyZSBpbnN0YW5jZSB6ZXJvIG9mIGEgZ2l2ZW4gZW5naW5lCmNsYXNzIG1heSBiZSBtaXNzaW5n
LiBNYWtlIGF1eF90YWJsZXMgcHJlc2VuY2UgYSBkZXZpY2UgZmxhZyByYXRoZXIKdGhhbiBqdXN0
IGhhcmQgY29kZWQuIFByZS1jYWxjdWxhdGUgdGhlIGNvcnJlY3QgTFJJIGJhc2UgYWRkcmVzcwpy
YXRoZXIgdGhhbiB1c2luZyBhIHBlci1pbnN0YW5jZSBiYXNlIGFuZCB0aGVuIGFkZGluZyBvbiBh
IGRlbHRhIHRvCnRoZSBjb3JyZWN0IGJhc2UgbGF0ZXIuIE1ha2UgYWxsIHRoZSB0YWJsZSByYW5n
ZSBjaGVja2luZyBhIGRlYnVnIG9ubHkKZmVhdHVyZSAtIHRoZSB0aGVvcnkgaXMgdGhhdCBhbGwg
ZHJpdmVyIGFjY2VzcyBzaG91bGQgYmUgd2l0aGluIHRoZQpyZW1hcCByYW5nZXMuIFtEYW5pZWxl
XQoKdjM6IFJlLWJhc2Ugb24gTWlrYSdzIGNoYW5nZXMuIFRoaXMgcmVtb3ZlcyBhbGwgdGhlIGFi
c3RyYWN0aW9uIGxheWVyLgpXaGljaCBhbHNvIG1lYW5zIHRoZXJlIGlzIG5vIGNvbW1vbiBjb2Rl
IHBhdGggdGhhdCBhbGwgTFJJIGFjY2Vzc2VzIGdvCnZpYS4gVGh1cyBpdCBpcyBub3QgcG9zc2li
bGUgdG8gaW1wbGVtZW50IHRoZSByYW5nZSBjaGVjay4gSG93ZXZlciwKYXMgbm90ZWQgaW4gdjIs
IHRoZSByYW5nZSBjaGVjayBzaG91bGQgbm90IGJlIG5lY2Vzc2FyeSBhbnl3YXkuCgpTaWduZWQt
b2ZmLWJ5OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgpDQzogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8IDI3ICsrKysr
KysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlw
ZXMuaCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
IHwgIDkgKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jICAgICAg
ICAgfCAgNiArKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAg
ICAgfCAgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAg
IHwgMTQgKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aCAgICAgfCAgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXgg
NmU1MTI2OWFiMmVjLi5lNDg1YjIyYTM4M2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCkBAIC0yNDcsMTQgKzI0NywzMiBAQCBzdGF0aWMgYm9vbCBpOTE1X2Vu
Z2luZV9oYXNfcmVsYXRpdmVfbHJpKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAlyZXR1cm4gdHJ1ZTsKIH0KIAotc3RhdGljIHZvaWQgbHJpX2luaXQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQorc3RhdGljIHZvaWQgbHJpX2luaXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCB1MzIgZmlyc3RfaW5zdGFuY2UpCiB7CiAJaWYgKGk5MTVfZW5naW5l
X2hhc19yZWxhdGl2ZV9scmkoZW5naW5lKSkgewotCQllbmdpbmUtPmxyaV9jbWRfbW9kZSA9IE1J
X0xSSV9BRERfQ1NfTU1JT19TVEFSVF9HRU4xMTsKLQkJZW5naW5lLT5scmlfbW1pb19iYXNlID0g
MDsKKwkJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgMTIpIHsKKwkJCWVuZ2luZS0+bHJp
X2NtZF9tb2RlID0gTUlfTFJJX0FERF9DU19NTUlPX1NUQVJUX0dFTjExOworCQkJZW5naW5lLT5s
cmlfbW1pb19iYXNlID0gMDsvL2VuZ2luZS0+bW1pb19iYXNlOworCQkJZW5naW5lLT5scmlfZW5n
aW5lID0gZW5naW5lOworCQl9IGVsc2UgeworCQkJZW5naW5lLT5scmlfY21kX21vZGUgPSBNSV9M
UklfTU1JT19SRU1BUF9HRU4xMjsKKworCQkJZW5naW5lLT5scmlfZW5naW5lID0gZW5naW5lLT5n
dC0+ZW5naW5lX2NsYXNzCisJCQkJCQlbZW5naW5lLT5jbGFzc11bZmlyc3RfaW5zdGFuY2VdOwor
CQkJR0VNX0JVR19PTighZW5naW5lLT5scmlfZW5naW5lKTsKKwkJCWVuZ2luZS0+bHJpX21taW9f
YmFzZSA9IGVuZ2luZS0+bHJpX2VuZ2luZS0+bW1pb19iYXNlOworCisJCQkvKiBBY2NvcmRpbmcg
dG8gdGhlIGJzcGVjLCBhY2Nlc3NlcyBzaG91bGQgYmUgY29tcGFyZWQKKwkJCSAqIGFnYWluc3Qg
dGhlIHJlbWFwIHRhYmxlIGFuZCByZW1hcHBpbmcgb25seSBlbmFibGVkCisJCQkgKiBpZiBmb3Vu
ZC4gSW4gcHJhY3RpY2UsIGFsbCBkcml2ZXIgYWNjZXNzZXMgc2hvdWxkIGJlCisJCQkgKiB0byBy
ZW1hcCByZWdpc3RlcnMuIFNvLCBubyBuZWVkIGZvciB0aGUgY29tcGxpY2F0aW9uCisJCQkgKiBv
ZiBjaGVja2luZyBhZ2FpbnN0IGFueSBkZXZpY2Ugc3BlY2lmaWMgdGFibGVzLgorCQkJICovCisJ
CX0KIAl9IGVsc2UgewogCQllbmdpbmUtPmxyaV9jbWRfbW9kZSA9IDA7CiAJCWVuZ2luZS0+bHJp
X21taW9fYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOworCQllbmdpbmUtPmxyaV9lbmdpbmUgPSBl
bmdpbmU7CiAJfQogfQogCkBAIC0zNDIsNyArMzYwLDggQEAgc3RhdGljIGludCBpbnRlbF9lbmdp
bmVfc2V0dXAoc3RydWN0IGludGVsX2d0ICpndCwgZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQpCiAJ
LyogTm90aGluZyB0byBkbyBoZXJlLCBleGVjdXRlIGluIG9yZGVyIG9mIGRlcGVuZGVuY2llcyAq
LwogCWVuZ2luZS0+c2NoZWR1bGUgPSBOVUxMOwogCi0JbHJpX2luaXQoZW5naW5lKTsKKwlscmlf
aW5pdChlbmdpbmUsCisJCSBJTlRFTF9JTkZPKGVuZ2luZS0+aTkxNSktPmZpcnN0X2luc3RhbmNl
W2VuZ2luZS0+Y2xhc3NdKTsKIAogCXNlcWxvY2tfaW5pdCgmZW5naW5lLT5zdGF0cy5sb2NrKTsK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAppbmRleCAz
OGY0ODZmN2Y3ZTMuLjYyY2FhNzRlODU1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTMwOCw2ICszMDgsNyBAQCBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzIHsKIAogCXUzMiBscmlfbW1pb19iYXNlOwogCXUzMiBscmlfY21kX21vZGU7CisJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqbHJpX2VuZ2luZTsKIAogCXUzMiB1YWJpX2NhcGFiaWxpdGll
czsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1h
bmRzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRl
eCBiZmI1MWQ4ZDdjZTIuLjljNWJlMzg0MDI2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKQEAgLTEzMywxNSArMTMzLDE2IEBACiAgKiAgIHNpbXBs
eSBpZ25vcmVzIHRoZSByZWdpc3RlciBsb2FkIHVuZGVyIGNlcnRhaW4gY29uZGl0aW9ucy4KICAq
IC0gT25lIGNhbiBhY3R1YWxseSBsb2FkIGFyYml0cmFyeSBtYW55IGFyYml0cmFyeSByZWdpc3Rl
cnM6IFNpbXBseSBpc3N1ZSB4CiAgKiAgIGFkZHJlc3MvdmFsdWUgcGFpcnMuIERvbid0IG92ZXJk
dWUgaXQsIHRob3VnaCwgeCA8PSAyXjQgbXVzdCBob2xkIQotICogLSBOZXdlciBoYXJkd2FyZSBz
dXBwb3J0cyBlbmdpbmUgcmVsYXRpdmUgYWRkcmVzc2luZyBidXQgb2xkZXIgaGFyZHdhcmUgZG9l
cwotICogICBub3QuIFRoaXMgaXMgcmVxdWlyZWQgZm9yIGh3IGVuZ2luZSBsb2FkIGJhbGFuY2lu
Zy4gSGVuY2UgdGhlIE1JX0xSSQotICogICBpbnN0cnVjdGlvbiBpdHNlbGYgaXMgcHJlZml4ZWQg
d2l0aCAnX18nIGFuZCBzaG91bGQgb25seSBiZSB1c2VkIG9uCi0gKiAgIGxlZ2FjeSBoYXJkd2Fy
ZSBjb2RlIHBhdGhzLiBHZW5lcmljIGNvZGUgbXVzdCBhbHdheXMgdXNlIHRoZSBNSV9MUkkKKyAq
IC0gTmV3ZXIgaGFyZHdhcmUgc3VwcG9ydHMgZW5naW5lIHJlbGF0aXZlIGFkZHJlc3NpbmcgYnV0
IHVzaW5nIG11bHRpcGxlCisgKiAgIGluY29tcGF0aWJsZSBzY2hlbWVzLiBUaGlzIGlzIHJlcXVp
cmVkIGZvciBodyBlbmdpbmUgbG9hZCBiYWxhbmNpbmcuIEhlbmNlCisgKiAgIHRoZSBNSV9MUkkg
aW5zdHJ1Y3Rpb24gaXRzZWxmIGlzIHByZWZpeGVkIHdpdGggJ19fJyBhbmQgc2hvdWxkIG9ubHkg
YmUKKyAqICAgdXNlZCBvbiBsZWdhY3kgaGFyZHdhcmUgY29kZSBwYXRocy4gR2VuZXJpYyBjb2Rl
IG11c3QgYWx3YXlzIHVzZSB0aGUgTUlfTFJJCiAgKiAgIGFuZCBpOTE1X2dldF9scmlfcmVnKCkg
aGVscGVyIGZ1bmN0aW9ucyBpbnN0ZWFkLgogICovCiAjZGVmaW5lIE1JX0xPQURfUkVHSVNURVJf
SU1NKHgpCU1JX0lOU1RSKDB4MjIsIDIqKHgpLTEpCiAvKiBHZW4xMSsuIGFkZHIgPSBiYXNlICsg
KGN0eF9yZXN0b3JlID8gb2Zmc2V0ICYgR0VOTUFTSygxMiwyKSA6IG9mZnNldCkgKi8KICNkZWZp
bmUgICBNSV9MUklfRk9SQ0VfUE9TVEVECQkoMTw8MTIpCisjZGVmaW5lICAgTUlfTFJJX01NSU9f
UkVNQVBfR0VOMTIJCUJJVCgxNykKICNkZWZpbmUgICBNSV9MUklfQUREX0NTX01NSU9fU1RBUlRf
R0VOMTEJQklUKDE5KQogI2RlZmluZSBNSV9TVE9SRV9SRUdJU1RFUl9NRU0gICAgICAgIE1JX0lO
U1RSKDB4MjQsIDEpCiAjZGVmaW5lIE1JX1NUT1JFX1JFR0lTVEVSX01FTV9HRU44ICAgTUlfSU5T
VFIoMHgyNCwgMikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21v
Y3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwppbmRleCA4ZThmZTNk
ZWI5NWMuLmUxMjFmZWE1YjMzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwpA
QCAtNDM4LDcgKzQzOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3Ry
dWN0IGludGVsX2d0ICpndCkKIHN0YXRpYyBpbnQgZW1pdF9tb2NzX2NvbnRyb2xfdGFibGUoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJCQkJICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3Nf
dGFibGUgKnRhYmxlKQogewotCWVudW0gaW50ZWxfZW5naW5lX2lkIGVuZ2luZSA9IHJxLT5lbmdp
bmUtPmlkOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGVuZ2luZV9pZCA9IHJxLT5lbmdpbmUtPmxy
aV9lbmdpbmUtPmlkOwogCXVuc2lnbmVkIGludCBpbmRleDsKIAl1MzIgdW51c2VkX3ZhbHVlOwog
CXUzMiAqY3M7CkBAIC00NTksMTMgKzQ1OSwxMyBAQCBzdGF0aWMgaW50IGVtaXRfbW9jc19jb250
cm9sX3RhYmxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCWZvciAoaW5kZXggPSAwOyBpbmRl
eCA8IHRhYmxlLT5zaXplOyBpbmRleCsrKSB7CiAJCXUzMiB2YWx1ZSA9IGdldF9lbnRyeV9jb250
cm9sKHRhYmxlLCBpbmRleCk7CiAKLQkJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChtb2Nz
X3JlZ2lzdGVyKGVuZ2luZSwgaW5kZXgpKTsKKwkJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNl
dChtb2NzX3JlZ2lzdGVyKGVuZ2luZV9pZCwgaW5kZXgpKTsKIAkJKmNzKysgPSB2YWx1ZTsKIAl9
CiAKIAkvKiBBbGwgcmVtYWluaW5nIGVudHJpZXMgYXJlIGFsc28gdW51c2VkICovCiAJZm9yICg7
IGluZGV4IDwgdGFibGUtPm5fZW50cmllczsgaW5kZXgrKykgewotCQkqY3MrKyA9IGk5MTVfbW1p
b19yZWdfb2Zmc2V0KG1vY3NfcmVnaXN0ZXIoZW5naW5lLCBpbmRleCkpOworCQkqY3MrKyA9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KG1vY3NfcmVnaXN0ZXIoZW5naW5lX2lkLCBpbmRleCkpOwogCQkq
Y3MrKyA9IHVudXNlZF92YWx1ZTsKIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXgg
OGI4NWNkZmFkYTIxLi5mZDYyOGFlMTIzNDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBA
IC0xNjk1LDcgKzE2OTUsOCBAQCBnZW44X3VwZGF0ZV9yZWdfc3RhdGVfdW5sb2NrZWQoc3RydWN0
IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAogCS8qCiAJICogTkI6IFRoZSBMUkkgaW5zdHJ1
Y3Rpb24gaXMgZ2VuZXJhdGVkIGJ5IHRoZSBoYXJkd2FyZS4KLQkgKiBTaG91bGQgd2UgcmVhZCBp
dCBpbiBhbmQgYXNzZXJ0IHRoYXQgdGhlIG9mZnNldCBmbGFnIGlzIHNldD8KKwkgKiBTaG91bGQg
d2UgcmVhZCBpdCBpbiBhbmQgYXNzZXJ0IHRoYXQgdGhlIGFwcHJvcHJpYXRlCisJICogb2Zmc2V0
IGZsYWcgaXMgc2V0PwogCSAqLwogCiAJQ1RYX1JFRyhyZWdfc3RhdGUsIGN0eF9vYWN0eGN0cmws
IEdFTjhfT0FDVFhDT05UUk9MLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMKaW5kZXggNzI4Yzg4MTcxOGEyLi5lMTY4YTBjYjgwOTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTg5LDYgKzk4OSw3IEBAIHZvaWQgaW50ZWxfZGV2
aWNlX2luZm9faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1
MzIgbWVkaWFfZnVzZTsKIAl1MTYgdmRib3hfbWFzazsKIAl1MTYgdmVib3hfbWFzazsKKwlib29s
IGZvdW5kOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKIAkJcmV0dXJuOwpAQCAt
OTk5LDYgKzEwMDAsNyBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX2luaXRfbW1pbyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdmVib3hfbWFzayA9IChtZWRpYV9mdXNlICYg
R0VOMTFfR1RfVkVCT1hfRElTQUJMRV9NQVNLKSA+PgogCQkgICAgICBHRU4xMV9HVF9WRUJPWF9E
SVNBQkxFX1NISUZUOwogCisJZm91bmQgPSBmYWxzZTsKIAlmb3IgKGkgPSAwOyBpIDwgSTkxNV9N
QVhfVkNTOyBpKyspIHsKIAkJaWYgKCFIQVNfRU5HSU5FKGRldl9wcml2LCBfVkNTKGkpKSkgewog
CQkJdmRib3hfbWFzayAmPSB+QklUKGkpOwpAQCAtMTAxOCwxMSArMTAyMCwxNyBAQCB2b2lkIGlu
dGVsX2RldmljZV9pbmZvX2luaXRfbW1pbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJCSAqLwogCQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBsb2dpY2FsX3ZkYm94
KysgJSAyID09IDApCiAJCQlSVU5USU1FX0lORk8oZGV2X3ByaXYpLT52ZGJveF9zZmNfYWNjZXNz
IHw9IEJJVChpKTsKKworCQlpZiAoIWZvdW5kKSB7CisJCQlmb3VuZCA9IHRydWU7CisJCQlpbmZv
LT5maXJzdF9pbnN0YW5jZVtWSURFT19ERUNPREVfQ0xBU1NdID0gaTsKKwkJfQogCX0KIAlEUk1f
REVCVUdfRFJJVkVSKCJ2ZGJveCBlbmFibGU6ICUwNHgsIGluc3RhbmNlczogJTA0bHhcbiIsCiAJ
CQkgdmRib3hfbWFzaywgVkRCT1hfTUFTSyhkZXZfcHJpdikpOwogCUdFTV9CVUdfT04odmRib3hf
bWFzayAhPSBWREJPWF9NQVNLKGRldl9wcml2KSk7CiAKKwlmb3VuZCA9IGZhbHNlOwogCWZvciAo
aSA9IDA7IGkgPCBJOTE1X01BWF9WRUNTOyBpKyspIHsKIAkJaWYgKCFIQVNfRU5HSU5FKGRldl9w
cml2LCBfVkVDUyhpKSkpIHsKIAkJCXZlYm94X21hc2sgJj0gfkJJVChpKTsKQEAgLTEwMzIsNiAr
MTA0MCwxMiBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX2luaXRfbW1pbyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWlmICghKEJJVChpKSAmIHZlYm94X21hc2spKSB7CiAJ
CQlpbmZvLT5lbmdpbmVfbWFzayAmPSB+QklUKF9WRUNTKGkpKTsKIAkJCURSTV9ERUJVR19EUklW
RVIoInZlY3MldSBmdXNlZCBvZmZcbiIsIGkpOworCQkJY29udGludWU7CisJCX0KKworCQlpZiAo
IWZvdW5kKSB7CisJCQlmb3VuZCA9IHRydWU7CisJCQlpbmZvLT5maXJzdF9pbnN0YW5jZVtWSURF
T19FTkhBTkNFTUVOVF9DTEFTU10gPSBpOwogCQl9CiAJfQogCURSTV9ERUJVR19EUklWRVIoInZl
Ym94IGVuYWJsZTogJTA0eCwgaW5zdGFuY2VzOiAlMDRseFxuIiwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oCmluZGV4IGQ0YzI4ODg2MGFlZC4uYjViOWMxZDkxNjJhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTE1MSw2ICsxNTEs
NyBAQCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gewogCXU4IGdlbjsKIAl1OCBndDsgLyogR1Qg
bnVtYmVyLCAwIGlmIHVuZGVmaW5lZCAqLwogCWludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21h
c2s7IC8qIEVuZ2luZXMgc3VwcG9ydGVkIGJ5IHRoZSBIVyAqLworCXUzMiBmaXJzdF9pbnN0YW5j
ZVtNQVhfRU5HSU5FX0NMQVNTXTsgLyogaW5zdGFuY2UgMCBtaWdodCBiZSBmdXNlZCAqLwogCiAJ
ZW51bSBpbnRlbF9wbGF0Zm9ybSBwbGF0Zm9ybTsKIAotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
