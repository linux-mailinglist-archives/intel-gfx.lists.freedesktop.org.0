Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E3B6466F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 14:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607B46E0BC;
	Wed, 10 Jul 2019 12:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 613826E0BC;
 Wed, 10 Jul 2019 12:42:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58B10A0106;
 Wed, 10 Jul 2019 12:42:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Wed, 10 Jul 2019 12:42:31 -0000
Message-ID: <20190710124231.15081.83500@emeril.freedesktop.org>
References: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Rename_functions_to_match_their_entry_points?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVuYW1lIGZ1bmN0aW9ucyB0byBtYXRjaCB0
aGVpciBlbnRyeSBwb2ludHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzYzNDk4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOTE4ZDI1Yjk5YzNlIGRybS9pOTE1OiBSZW5hbWUgIl9s
b2FkIi8iX3VubG9hZCIgdG8gbWF0Y2ggUENJIGVudHJ5IHBvaW50cwotOjU2OiBDSEVDSzpBVk9J
RF9FWFRFUk5TOiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAuaCBmaWxl
cwojNTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MjM5ODoKK2V4dGVy
biBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCgotOjU3OiBDSEVD
SzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJl
bnRoZXNpcwojNTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MjM5OToK
K2V4dGVybiBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJCQkg
ICAgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCk7CgotOjU5OiBDSEVDSzpBVk9JRF9F
WFRFUk5TOiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAuaCBmaWxlcwoj
NTk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MjQwMDoKK2V4dGVybiB2
b2lkIGk5MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKCnRvdGFsOiAw
IGVycm9ycywgMCB3YXJuaW5ncywgMyBjaGVja3MsIDU1IGxpbmVzIGNoZWNrZWQKMGQwN2EwMzU0
OTFlIGRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aCAiX3Byb2JlIiBjb25zZXF1ZW50bHkK
YTAxYzUwMzk3MDJkIGRybS9pOTE1OiBQcm9wYWdhdGUgIl9yZWxlYXNlIiBmdW5jdGlvbiBuYW1l
IHN1ZmZpeCBkb3duCmM4OTljNWUxMWMwMyBkcm0vaTkxNTogUHJvcGFnYXRlICJfcmVtb3ZlIiBm
dW5jdGlvbiBuYW1lIHN1ZmZpeCBkb3duCi06MTk0OiBDSEVDSzpBVk9JRF9FWFRFUk5TOiBleHRl
cm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAuaCBmaWxlcwojMTk0OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjI2OTU6CitleHRlcm4gdm9pZCBpbnRlbF9t
b2Rlc2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CgotOjI1MDogQ0hF
Q0s6TElORV9TUEFDSU5HOiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9z
dHJ1Y3QvdW5pb24vZW51bSBkZWNsYXJhdGlvbnMKIzI1MDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3Z0Lmg6NDE6CiB9CitzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3Z0X2Ry
aXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoKdG90YWw6IDAg
ZXJyb3JzLCAwIHdhcm5pbmdzLCAyIGNoZWNrcywgMTgzIGxpbmVzIGNoZWNrZWQKYWM3ZWJhZjVm
MTcyIGRybS9pOTE1OiBQcm9wYWdhdGUgIl9wcm9iZSIgZnVuY3Rpb24gbmFtZSBzdWZmaXggZG93
bgphY2NlYzIyODRlNjQgZHJtL2k5MTU6IFJlbmFtZSAiaW5qZWN0X2xvYWRfZmFpbHVyZSIgbW9k
dWxlIHBhcmFtZXRlcgotOjU1OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVu
dCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmM6MTY5OgoraTkxNV9wYXJhbV9uYW1lZF91bnNhZmUoaW5qZWN0
X3Byb2JlX2ZhaWx1cmUsIHVpbnQsIDA0MDAsCiAJIkZvcmNlIGFuIGVycm9yIGFmdGVyIGEgbnVt
YmVyIG9mIGZhaWx1cmUgY2hlY2sgcG9pbnRzICgwOmRpc2FibGVkIChkZWZhdWx0KSwgTjpmb3Jj
ZSBmYWlsdXJlIGF0IHRoZSBOdGggZmFpbHVyZSBjaGVjayBwb2ludCkiKTsKCnRvdGFsOiAwIGVy
cm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDQxIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
