Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2272D286
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 01:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB81D89FC8;
	Tue, 28 May 2019 23:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A25B89FC8;
 Tue, 28 May 2019 23:54:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 402DFA010C;
 Tue, 28 May 2019 23:54:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hariprasad Kelam" <hariprasad.kelam@gmail.com>
Date: Tue, 28 May 2019 23:54:17 -0000
Message-ID: <20190528235417.27710.27536@emeril.freedesktop.org>
References: <20190526075633.GA9245@hari-Inspiron-1545>
X-Patchwork-Hint: ignore
In-Reply-To: <20190526075633.GA9245@hari-Inspiron-1545>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gvt=3A_remove_duplicate_entry_of_trace?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Z0OiByZW1vdmUgZHVwbGlj
YXRlIGVudHJ5IG9mIHRyYWNlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82MTI4MS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAg
IHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2st
YXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVk
L2NvbXBpbGUuaApLZXJuZWw6IGFyY2gveDg2L2Jvb3QvYnpJbWFnZSBpcyByZWFkeSAgKCMxKQog
IEJ1aWxkaW5nIG1vZHVsZXMsIHN0YWdlIDIuCiAgTU9EUE9TVCAxMTMgbW9kdWxlcwpFUlJPUjog
Il9fdHJhY2Vwb2ludF9nbWFfaW5kZXgiIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1LmtvXSB1
bmRlZmluZWQhCkVSUk9SOiAiX190cmFjZXBvaW50X3JlbmRlcl9tbWlvIiBbZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNS5rb10gdW5kZWZpbmVkIQpFUlJPUjogIl9fdHJhY2Vwb2ludF9ndnRfY29t
bWFuZCIgW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTUua29dIHVuZGVmaW5lZCEKRVJST1I6ICJf
X3RyYWNlcG9pbnRfc3B0X2d1ZXN0X2NoYW5nZSIgW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTUu
a29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRfZ21hX3RyYW5zbGF0ZSIgW2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTUua29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRf
c3B0X2FsbG9jIiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNS5rb10gdW5kZWZpbmVkIQpFUlJP
UjogIl9fdHJhY2Vwb2ludF9zcHRfY2hhbmdlIiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNS5r
b10gdW5kZWZpbmVkIQpFUlJPUjogIl9fdHJhY2Vwb2ludF9vb3Nfc3luYyIgW2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTUua29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRfd3JpdGVf
aXIiIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1LmtvXSB1bmRlZmluZWQhCkVSUk9SOiAiX190
cmFjZXBvaW50X3Byb3BhZ2F0ZV9ldmVudCIgW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTUua29d
IHVuZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRfaW5qZWN0X21zaSIgW2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTUua29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRfc3B0X3Jl
ZmNvdW50IiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNS5rb10gdW5kZWZpbmVkIQpFUlJPUjog
Il9fdHJhY2Vwb2ludF9zcHRfZnJlZSIgW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTUua29dIHVu
ZGVmaW5lZCEKRVJST1I6ICJfX3RyYWNlcG9pbnRfb29zX2NoYW5nZSIgW2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTUua29dIHVuZGVmaW5lZCEKc2NyaXB0cy9NYWtlZmlsZS5tb2Rwb3N0OjkxOiBy
ZWNpcGUgZm9yIHRhcmdldCAnX19tb2Rwb3N0JyBmYWlsZWQKbWFrZVsxXTogKioqIFtfX21vZHBv
c3RdIEVycm9yIDEKTWFrZWZpbGU6MTI4ODogcmVjaXBlIGZvciB0YXJnZXQgJ21vZHVsZXMnIGZh
aWxlZAptYWtlOiAqKiogW21vZHVsZXNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
