Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1516799F
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B316E3CE;
	Sat, 13 Jul 2019 10:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D852E6E3CB;
 Sat, 13 Jul 2019 10:14:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFD93A0099;
 Sat, 13 Jul 2019 10:14:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 13 Jul 2019 10:14:13 -0000
Message-ID: <20190713101413.5759.91395@emeril.freedesktop.org>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190713100016.8026-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/11=5D_drm/i915/guc=3A_Use_system_work?=
 =?utf-8?q?queue_for_log_capture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEx
XSBkcm0vaTkxNS9ndWM6IFVzZSBzeXN0ZW0gd29ya3F1ZXVlIGZvciBsb2cgY2FwdHVyZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2NzQvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNw
YXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9ndWM6IFVzZSBzeXN0ZW0gd29y
a3F1ZXVlIGZvciBsb2cgY2FwdHVyZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogcmVwbGFj
ZSB1YyBpbml0L2ZpbmkgbWlzYwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogaW50cm9kdWNl
IGludGVsX3VjX2Z3X3N1cHBvcnRlZApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndWM6IG1vdmUg
Z3VjIGlycSBmdW5jdGlvbnMgdG8gaW50ZWxfZ3VjIHBhcmFtZXRlcgpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNS9ndWM6IHVuaWZ5IGd1YyBpcnEgaGFuZGxpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5
MTUvdWM6IG1vdmUgR3VDIGFuZCBIdUMgZmlsZXMgdW5kZXIgZ3QvdWMvCitkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYzoz
ODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYzozODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMu
YzozODA6Mjk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCisuL2luY2x1
ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRl
cyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQor
Li9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0
cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29t
ZXMgMCkKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6
IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAw
MCBiZWNvbWVzIDApCgpDb21taXQ6IGRybS9pOTE1L3VjOiBtb3ZlIEd1Qy9IdUMgaW5zaWRlIGlu
dGVsX2d0IHVuZGVyIGEgbmV3IGludGVsX3VjCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3VjOiBN
b3ZlIGludGVsIGZ1bmN0aW9ucyB0byBpbnRlbF91YwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91
YzogcHJlZmVyIGludGVsX2d0IG92ZXIgaTkxNSBpbiBHdUMvSHVDIHBhdGhzCi1POmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jOjM4MDoyOTogd2FybmluZzogZXhwcmVzc2lv
biB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmM6MzgwOjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmM6MzgwOjI5OiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjLmM6MzgwOjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoK
Q29tbWl0OiBkcm0vaTkxNS9ndWM6IHByZWZlciBpbnRlbF9ndCBpbiBndWMgaW50ZXJydXB0IGZ1
bmN0aW9ucwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91Yzoga2lsbCA8ZyxoPnVjX3RvX2k5MTUK
T2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
