Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A1C13509
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 23:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CDE897D7;
	Fri,  3 May 2019 21:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 583ED897D7;
 Fri,  3 May 2019 21:56:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 515CEA0099;
 Fri,  3 May 2019 21:56:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stuart Summers" <stuart.summers@intel.com>
Date: Fri, 03 May 2019 21:56:39 -0000
Message-ID: <20190503215639.10778.66848@emeril.freedesktop.org>
References: <20190503213020.25628-1-stuart.summers@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190503213020.25628-1-stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Refactor_to_expand_subslice_mask_=28rev8=29?=
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
IG1hc2sgKHJldjgpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy81OTc0Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCmJkZTAxZmVmZWNjZiBkcm0vaTkxNTogVXNlIGxvY2FsIHZhcmlh
YmxlIGZvciBTU0VVIGluZm8gaW4gR0VUUEFSQU0gaW9jdGwKNWI1ODUwYjQ4NjdjIGRybS9pOTE1
OiBBZGQgbWFjcm8gZm9yIFNTRVUgc3RyaWRlIGNhbGN1bGF0aW9uCjJkMDkxMTYyOTc5ZCBkcm0v
aTkxNTogTW92ZSBjYWxjdWxhdGlvbiBvZiBzdWJzbGljZXMgcGVyIHNsaWNlIHRvIG5ldyBmdW5j
dGlvbgo5NTYyYTI5ZDUxYmEgZHJtL2k5MTU6IFJlZmFjdG9yIHNzZXUgaGVscGVyIGZ1bmN0aW9u
cwo4MjM2YTMzNzc5MzUgZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCi06MTEzOiBDSEVD
SzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdkZXZfcHJpdl8nIC0gcG9z
c2libGUgc2lkZS1lZmZlY3RzPwojMTEzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaDo1NDY6CisjZGVmaW5lIGZvcl9lYWNoX2luc3Rkb25lX3NsaWNl
X3N1YnNsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXywgc3Vic2xpY2VfKSBcCisJZm9yICgo
c2xpY2VfKSA9IDAsIChzdWJzbGljZV8pID0gMDsgKHNsaWNlXykgPCBJOTE1X01BWF9TTElDRVM7
IFwKKwkgICAgIChzdWJzbGljZV8pID0gKChzdWJzbGljZV8pICsgMSkgJSBJOTE1X01BWF9TVUJT
TElDRVMsIFwKKwkgICAgIChzbGljZV8pICs9ICgoc3Vic2xpY2VfKSA9PSAwKSkgXAorCQlmb3Jf
ZWFjaF9pZigoaW5zdGRvbmVfaGFzX3NsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXykpICYm
IFwKKwkJCSAgICAoaW5zdGRvbmVfaGFzX3N1YnNsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNl
XywgXAorCQkJCQkJICAgIHN1YnNsaWNlXykpKQoKLToxMTM6IENIRUNLOk1BQ1JPX0FSR19SRVVT
RTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3NzZXVfJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8K
IzExMzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmg6
NTQ2OgorI2RlZmluZSBmb3JfZWFjaF9pbnN0ZG9uZV9zbGljZV9zdWJzbGljZShkZXZfcHJpdl8s
IHNzZXVfLCBzbGljZV8sIHN1YnNsaWNlXykgXAorCWZvciAoKHNsaWNlXykgPSAwLCAoc3Vic2xp
Y2VfKSA9IDA7IChzbGljZV8pIDwgSTkxNV9NQVhfU0xJQ0VTOyBcCisJICAgICAoc3Vic2xpY2Vf
KSA9ICgoc3Vic2xpY2VfKSArIDEpICUgSTkxNV9NQVhfU1VCU0xJQ0VTLCBcCisJICAgICAoc2xp
Y2VfKSArPSAoKHN1YnNsaWNlXykgPT0gMCkpIFwKKwkJZm9yX2VhY2hfaWYoKGluc3Rkb25lX2hh
c19zbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8pKSAmJiBcCisJCQkgICAgKGluc3Rkb25l
X2hhc19zdWJzbGljZShkZXZfcHJpdl8sIHNzZXVfLCBzbGljZV8sIFwKKwkJCQkJCSAgICBzdWJz
bGljZV8pKSkKCi06MTEzOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJl
dXNlICdzbGljZV8nIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMTEzOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaDo1NDY6CisjZGVmaW5lIGZvcl9l
YWNoX2luc3Rkb25lX3NsaWNlX3N1YnNsaWNlKGRldl9wcml2Xywgc3NldV8sIHNsaWNlXywgc3Vi
c2xpY2VfKSBcCisJZm9yICgoc2xpY2VfKSA9IDAsIChzdWJzbGljZV8pID0gMDsgKHNsaWNlXykg
PCBJOTE1X01BWF9TTElDRVM7IFwKKwkgICAgIChzdWJzbGljZV8pID0gKChzdWJzbGljZV8pICsg
MSkgJSBJOTE1X01BWF9TVUJTTElDRVMsIFwKKwkgICAgIChzbGljZV8pICs9ICgoc3Vic2xpY2Vf
KSA9PSAwKSkgXAorCQlmb3JfZWFjaF9pZigoaW5zdGRvbmVfaGFzX3NsaWNlKGRldl9wcml2Xywg
c3NldV8sIHNsaWNlXykpICYmIFwKKwkJCSAgICAoaW5zdGRvbmVfaGFzX3N1YnNsaWNlKGRldl9w
cml2Xywgc3NldV8sIHNsaWNlXywgXAorCQkJCQkJICAgIHN1YnNsaWNlXykpKQoKLToxMTM6IENI
RUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3N1YnNsaWNlXycgLSBw
b3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMxMTM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oOjU0NjoKKyNkZWZpbmUgZm9yX2VhY2hfaW5zdGRvbmVfc2xp
Y2Vfc3Vic2xpY2UoZGV2X3ByaXZfLCBzc2V1Xywgc2xpY2VfLCBzdWJzbGljZV8pIFwKKwlmb3Ig
KChzbGljZV8pID0gMCwgKHN1YnNsaWNlXykgPSAwOyAoc2xpY2VfKSA8IEk5MTVfTUFYX1NMSUNF
UzsgXAorCSAgICAgKHN1YnNsaWNlXykgPSAoKHN1YnNsaWNlXykgKyAxKSAlIEk5MTVfTUFYX1NV
QlNMSUNFUywgXAorCSAgICAgKHNsaWNlXykgKz0gKChzdWJzbGljZV8pID09IDApKSBcCisJCWZv
cl9lYWNoX2lmKChpbnN0ZG9uZV9oYXNfc2xpY2UoZGV2X3ByaXZfLCBzc2V1Xywgc2xpY2VfKSkg
JiYgXAorCQkJICAgIChpbnN0ZG9uZV9oYXNfc3Vic2xpY2UoZGV2X3ByaXZfLCBzc2V1Xywgc2xp
Y2VfLCBcCisJCQkJCQkgICAgc3Vic2xpY2VfKSkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fybmlu
Z3MsIDQgY2hlY2tzLCA3MjkgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
