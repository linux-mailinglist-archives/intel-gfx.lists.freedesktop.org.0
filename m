Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F204811057F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 20:50:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9916EC36;
	Tue,  3 Dec 2019 19:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75DF86EC39;
 Tue,  3 Dec 2019 19:50:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D276A0114;
 Tue,  3 Dec 2019 19:50:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 03 Dec 2019 19:50:53 -0000
Message-ID: <157540265342.4658.3437459686533878693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575390740.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575390740.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_video=2C_drm=2C_etc=3A_constify_fbops_in_struct_fb=5Finfo_?=
 =?utf-8?b?KHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdmlkZW8sIGRybSwgZXRjOiBjb25zdGlmeSBm
Ym9wcyBpbiBzdHJ1Y3QgZmJfaW5mbyAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMTk4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTEwOWY5OTZhNWM4IHZpZGVvOiBm
YmRldjogYXR5ZmI6IG1vZGlmeSB0aGUgc3RhdGljIGZiX29wcyBkaXJlY3RseQotOjIxOiBDSEVD
SzpBVk9JRF9FWFRFUk5TOiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAu
aCBmaWxlcwojMjE6IEZJTEU6IGRyaXZlcnMvdmlkZW8vZmJkZXYvYXR5L2F0eWZiLmg6MzQ0Ogor
ZXh0ZXJuIGludCBhdHlfaW5pdF9jdXJzb3Ioc3RydWN0IGZiX2luZm8gKmluZm8sIHN0cnVjdCBm
Yl9vcHMgKmF0eWZiX29wcyk7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tz
LCA0NCBsaW5lcyBjaGVja2VkCmQxZGQ5YWQyM2E4NSB2aWRlbzogZmJkZXY6IG1iODYyeHg6IG1v
ZGlmeSB0aGUgc3RhdGljIGZiX29wcyBkaXJlY3RseQotOjIxOiBDSEVDSzpBVk9JRF9FWFRFUk5T
OiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAuaCBmaWxlcwojMjE6IEZJ
TEU6IGRyaXZlcnMvdmlkZW8vZmJkZXYvbWI4NjJ4eC9tYjg2Mnh4ZmIuaDo5MjoKK2V4dGVybiB2
b2lkIG1iODYyeHhmYl9pbml0X2FjY2VsKHN0cnVjdCBmYl9pbmZvICppbmZvLCBzdHJ1Y3QgZmJf
b3BzICpmYm9wcywgaW50IHhyZXMpOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNo
ZWNrcywgNTYgbGluZXMgY2hlY2tlZApjOWEzZmMzNTlkNTUgdmlkZW86IGZiZGV2OiBudmlkaWE6
IG1vZGlmeSB0aGUgc3RhdGljIGZiX29wcyBkaXJlY3RseQotOjU3OiBXQVJOSU5HOlNVU1BFQ1Rf
Q09ERV9JTkRFTlQ6IHN1c3BlY3QgY29kZSBpbmRlbnQgZm9yIGNvbmRpdGlvbmFsIHN0YXRlbWVu
dHMgKDgsIDEyKQojNTc6IEZJTEU6IGRyaXZlcnMvdmlkZW8vZmJkZXYvbnZpZGlhL252aWRpYS5j
OjExNjk6CiAJaWYgKCFod2N1cikKKwkgICAgbnZpZGlhX2ZiX29wcy5mYl9jdXJzb3IgPSBOVUxM
OwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNDMgbGluZXMgY2hlY2tl
ZAowNDVkYTZjMjcxZGEgdmlkZW86IGZiZGV2OiB1dmVzYWZiOiBtb2RpZnkgdGhlIHN0YXRpYyBm
Yl9vcHMgZGlyZWN0bHkKLToxMjogV0FSTklORzpCQURfU0lHTl9PRkY6IER1cGxpY2F0ZSBzaWdu
YXR1cmUKIzEyOiAKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNiBsaW5lcyBj
aGVja2VkCjg5YThiM2FkOTUzZCB2aWRlbzogZmJkZXY6IG1ha2UgZmJvcHMgbWVtYmVyIG9mIHN0
cnVjdCBmYl9pbmZvIGEgY29uc3QgcG9pbnRlcgo3ZGI0ZDllNWE3YWUgZHJtOiBjb25zdGlmeSBm
YiBvcHMgYWNyb3NzIGFsbCBkcml2ZXJzCjcwYWM3ZmEwZGMzZCB2aWRlbzogZmJkZXY6IGludGVs
ZmI6IHVzZSBjb25zdCBwb2ludGVyIGZvciBmYl9vcHMKYWEwZjlmZDcwOWE2IHZpZGVvOiBjb25z
dGlmeSBmYiBvcHMgYWNyb3NzIGFsbCBkcml2ZXJzCmMzNzg4NWQzOTUyMSBISUQ6IHBpY29MQ0Q6
IGNvbnN0aWZ5IGZiIG9wcwpkNWNjMjRjMTQxY2EgbWVkaWE6IGNvbnN0aWZ5IGZiIG9wcyBhY3Jv
c3MgYWxsIGRyaXZlcnMKNDcwMDMzOGIzYjkxIHNhbXBsZXM6IHZmaW8tbWRldjogY29uc3RpZnkg
ZmIgb3BzCmI0YzliOTYxMTAxZiBhdXhkaXNwbGF5OiBjb25zdGlmeSBmYiBvcHMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
