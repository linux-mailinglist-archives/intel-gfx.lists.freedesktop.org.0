Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93053F7BB3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31946E9C4;
	Mon, 11 Nov 2019 18:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 289616E9C3;
 Mon, 11 Nov 2019 18:39:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21E8FA0114;
 Mon, 11 Nov 2019 18:39:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 18:39:20 -0000
Message-ID: <157349756011.29959.451169177139366266@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111172716.23733-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111172716.23733-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Perform_some_basic_cycle_counting_of_M?=
 =?utf-8?q?I_ops_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBQZXJmb3Jt
IHNvbWUgYmFzaWMgY3ljbGUgY291bnRpbmcgb2YgTUkgb3BzIChyZXYzKQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg4MjQvClN0YXRlIDogd2Fybmlu
ZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoxMjZkNzQx
YmQzNzEgZHJtL2k5MTUvc2VsZnRlc3RzOiBQZXJmb3JtIHNvbWUgYmFzaWMgY3ljbGUgY291bnRp
bmcgb2YgTUkgb3BzCi06NDYwOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92
ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiM0
NjA6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo0OTk6IEVSUk9SOkJSQUNLRVRfU1BBQ0U6IHNw
YWNlIHByb2hpYml0ZWQgYmVmb3JlIG9wZW4gc3F1YXJlIGJyYWNrZXQgJ1snCiM0OTk6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmM6ODc6CisjZGVm
aW5lIHNlbGZ0ZXN0KG4sIGYpIFtwZXJmXyMjbl0gPSB7IC5uYW1lID0gI24sIHsgLmxpdmUgPSBm
IH0gfSwKCi06NTAzOiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSB1c2UgYSBibGFuayBsaW5l
IGFmdGVyIGZ1bmN0aW9uL3N0cnVjdC91bmlvbi9lbnVtIGRlY2xhcmF0aW9ucwojNTAzOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jOjkxOgorfTsK
KyN1bmRlZiBzZWxmdGVzdAoKLTo1MTQ6IFdBUk5JTkc6VFJBSUxJTkdfU0VNSUNPTE9OOiBtYWNy
b3Mgc2hvdWxkIG5vdCB1c2UgYSB0cmFpbGluZyBzZW1pY29sb24KIzUxNDogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRlc3QuYzoxMTA6CisjZGVmaW5lIHNl
bGZ0ZXN0XzAobiwgZnVuYywgaWQpIFwKK21vZHVsZV9wYXJhbV9uYW1lZChpZCwgcGVyZl9zZWxm
dGVzdHNbcGVyZl8jI25dLmVuYWJsZWQsIGJvb2wsIDA0MDApOwoKdG90YWw6IDEgZXJyb3JzLCAy
IHdhcm5pbmdzLCAxIGNoZWNrcywgNTAxIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
