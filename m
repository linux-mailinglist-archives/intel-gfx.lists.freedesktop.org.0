Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9019C2A97D
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 13:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB04892B7;
	Sun, 26 May 2019 11:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36FFD892B7;
 Sun, 26 May 2019 11:46:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30402A0088;
 Sun, 26 May 2019 11:46:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stuart Summers" <stuart.summers@intel.com>
Date: Sun, 26 May 2019 11:46:03 -0000
Message-ID: <20190526114603.542.85761@emeril.freedesktop.org>
References: <20190524154022.13575-1-stuart.summers@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190524154022.13575-1-stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Refactor_to_expand_subslice_mask_=28rev10=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVmYWN0b3IgdG8gZXhwYW5kIHN1YnNsaWNl
IG1hc2sgKHJldjEwKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNTk3NDIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcAoxZDYwNWVkZmVlNjggZHJtL2k5MTU6IFVzZSBsb2NhbCB2YXJp
YWJsZSBmb3IgU1NFVSBpbmZvIGluIEdFVFBBUkFNIGlvY3RsCjFiOTkzMWZhODA3YyBkcm0vaTkx
NTogQWRkIG1hY3JvIGZvciBTU0VVIHN0cmlkZSBjYWxjdWxhdGlvbgozZmYxYzRmZmU0NjYgZHJt
L2k5MTU6IE1vdmUgY2FsY3VsYXRpb24gb2Ygc3Vic2xpY2VzIHBlciBzbGljZSB0byBuZXcgZnVu
Y3Rpb24KOTM4MGI5MmExOTMzIGRybS9pOTE1OiBSZWZhY3RvciBzc2V1IGhlbHBlciBmdW5jdGlv
bnMKMWI5ODI2ZTlmM2ZmIGRybS9pOTE1OiBFeHBhbmQgc3Vic2xpY2UgbWFzawotOjExNTogQ0hF
Q0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnc3Vic2xpY2VfXycgLSBw
b3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMxMTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oOjU1ODoKKyNkZWZpbmUgaW5zdGRvbmVfaGFzX3N1YnNsaWNl
KGRldl9wcml2X18sIHNzZXVfXywgc2xpY2VfXywgc3Vic2xpY2VfXykgXAorCShJU19HRU4oZGV2
X3ByaXZfXywgNykgPyAoMSAmIEJJVChzdWJzbGljZV9fKSkgOiBcCisJIGludGVsX3NzZXVfaGFz
X3N1YnNsaWNlKHNzZXVfXywgc2xpY2VfXywgc3Vic2xpY2VfXykpCgotOjExOTogQ0hFQ0s6TUFD
Uk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnZGV2X3ByaXZfJyAtIHBvc3NpYmxl
IHNpZGUtZWZmZWN0cz8KIzExOTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3R5cGVzLmg6NTYyOgorI2RlZmluZSBmb3JfZWFjaF9pbnN0ZG9uZV9zbGljZV9zdWJz
bGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8sIHN1YnNsaWNlXykgXAorCWZvciAoKHNsaWNl
XykgPSAwLCAoc3Vic2xpY2VfKSA9IDA7IChzbGljZV8pIDwgSTkxNV9NQVhfU0xJQ0VTOyBcCisJ
ICAgICAoc3Vic2xpY2VfKSA9ICgoc3Vic2xpY2VfKSArIDEpICUgSTkxNV9NQVhfU1VCU0xJQ0VT
LCBcCisJICAgICAoc2xpY2VfKSArPSAoKHN1YnNsaWNlXykgPT0gMCkpIFwKKwkJZm9yX2VhY2hf
aWYoKGluc3Rkb25lX2hhc19zbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8pKSAmJiBcCisJ
CQkgICAgKGluc3Rkb25lX2hhc19zdWJzbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8sIFwK
KwkJCQkJCSAgICBzdWJzbGljZV8pKSkKCi06MTE5OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1h
Y3JvIGFyZ3VtZW50IHJldXNlICdzc2V1XycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMxMTk6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oOjU2MjoK
KyNkZWZpbmUgZm9yX2VhY2hfaW5zdGRvbmVfc2xpY2Vfc3Vic2xpY2UoZGV2X3ByaXZfLCBzc2V1
Xywgc2xpY2VfLCBzdWJzbGljZV8pIFwKKwlmb3IgKChzbGljZV8pID0gMCwgKHN1YnNsaWNlXykg
PSAwOyAoc2xpY2VfKSA8IEk5MTVfTUFYX1NMSUNFUzsgXAorCSAgICAgKHN1YnNsaWNlXykgPSAo
KHN1YnNsaWNlXykgKyAxKSAlIEk5MTVfTUFYX1NVQlNMSUNFUywgXAorCSAgICAgKHNsaWNlXykg
Kz0gKChzdWJzbGljZV8pID09IDApKSBcCisJCWZvcl9lYWNoX2lmKChpbnN0ZG9uZV9oYXNfc2xp
Y2UoZGV2X3ByaXZfLCBzc2V1Xywgc2xpY2VfKSkgJiYgXAorCQkJICAgIChpbnN0ZG9uZV9oYXNf
c3Vic2xpY2UoZGV2X3ByaXZfLCBzc2V1Xywgc2xpY2VfLCBcCisJCQkJCQkgICAgc3Vic2xpY2Vf
KSkpCgotOjExOTogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAn
c2xpY2VfJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzExOTogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmg6NTYyOgorI2RlZmluZSBmb3JfZWFjaF9p
bnN0ZG9uZV9zbGljZV9zdWJzbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8sIHN1YnNsaWNl
XykgXAorCWZvciAoKHNsaWNlXykgPSAwLCAoc3Vic2xpY2VfKSA9IDA7IChzbGljZV8pIDwgSTkx
NV9NQVhfU0xJQ0VTOyBcCisJICAgICAoc3Vic2xpY2VfKSA9ICgoc3Vic2xpY2VfKSArIDEpICUg
STkxNV9NQVhfU1VCU0xJQ0VTLCBcCisJICAgICAoc2xpY2VfKSArPSAoKHN1YnNsaWNlXykgPT0g
MCkpIFwKKwkJZm9yX2VhY2hfaWYoKGluc3Rkb25lX2hhc19zbGljZShkZXZfcHJpdl8sIHNzZXVf
LCBzbGljZV8pKSAmJiBcCisJCQkgICAgKGluc3Rkb25lX2hhc19zdWJzbGljZShkZXZfcHJpdl8s
IHNzZXVfLCBzbGljZV8sIFwKKwkJCQkJCSAgICBzdWJzbGljZV8pKSkKCi06MTE5OiBDSEVDSzpN
QUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdzdWJzbGljZV8nIC0gcG9zc2li
bGUgc2lkZS1lZmZlY3RzPwojMTE5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaDo1NjI6CisjZGVmaW5lIGZvcl9lYWNoX2luc3Rkb25lX3NsaWNlX3N1
YnNsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXywgc3Vic2xpY2VfKSBcCisJZm9yICgoc2xp
Y2VfKSA9IDAsIChzdWJzbGljZV8pID0gMDsgKHNsaWNlXykgPCBJOTE1X01BWF9TTElDRVM7IFwK
KwkgICAgIChzdWJzbGljZV8pID0gKChzdWJzbGljZV8pICsgMSkgJSBJOTE1X01BWF9TVUJTTElD
RVMsIFwKKwkgICAgIChzbGljZV8pICs9ICgoc3Vic2xpY2VfKSA9PSAwKSkgXAorCQlmb3JfZWFj
aF9pZigoaW5zdGRvbmVfaGFzX3NsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXykpICYmIFwK
KwkJCSAgICAoaW5zdGRvbmVfaGFzX3N1YnNsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXywg
XAorCQkJCQkJICAgIHN1YnNsaWNlXykpKQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA1
IGNoZWNrcywgNjc5IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
