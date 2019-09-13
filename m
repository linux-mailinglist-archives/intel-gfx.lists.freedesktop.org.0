Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ED7B28EC
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 01:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E8A6F4B1;
	Fri, 13 Sep 2019 23:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F5A56F4B1;
 Fri, 13 Sep 2019 23:35:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47EE8A0091;
 Fri, 13 Sep 2019 23:35:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 13 Sep 2019 23:35:23 -0000
Message-ID: <20190913233523.32423.78536@emeril.freedesktop.org>
References: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/perf=3A_Enable_non-power-of-2_OA_report_sizes?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogRW5hYmxlIG5vbi1w
b3dlci1vZi0yIE9BIHJlcG9ydCBzaXplcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjY2OTcvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkZWJlM2I1ZGEzOGUgZHJtL2k5MTUvcGVy
ZjogcmV3b3JrIGFnaW5nIHRhaWwgd29ya2Fyb3VuZAotOjIzNTogQ0hFQ0s6U1BBQ0lORzogTm8g
c3BhY2UgaXMgbmVjZXNzYXJ5IGFmdGVyIGEgY2FzdAojMjM1OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYzo1MDg6CisJCQl1MzIgKnJlcG9ydDMyID0gKHZvaWQgKikgcmVw
b3J0OwoKLTozMTM6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25t
ZW50cyBzaG91bGQgYmUgYXZvaWRlZAojMzEzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzo4MDE6CisJCXJlcG9ydDMyWzBdID0gcmVwb3J0MzJbMV0gPSAwOwoKLTozNTc6
IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQg
YmUgYXZvaWRlZAojMzU3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzox
MDA0OgorCQlyZXBvcnQzMlswXSA9IHJlcG9ydDMyWzFdID0gMDsKCnRvdGFsOiAwIGVycm9ycywg
MCB3YXJuaW5ncywgMyBjaGVja3MsIDM1MiBsaW5lcyBjaGVja2VkCjY0NzJhMGFlZDNkMSBkcm0v
aTkxNS9wZXJmOiBBZGQgc3VwcG9ydCBmb3IgcmVwb3J0IHNpemVzIHRoYXQgYXJlIG5vdCBwb3dl
ciBvZiAyCi06NjM6IENIRUNLOkJSQUNFUzogYnJhY2VzIHt9IHNob3VsZCBiZSB1c2VkIG9uIGFs
bCBhcm1zIG9mIHRoaXMgc3RhdGVtZW50CiM2MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmM6NjE4OgorCQlpZiAocmVwb3J0X3NpemVfcGFydGlhbCA8IHJlcG9ydF9zaXpl
KSB7ClsuLi5dCisJCX0gZWxzZSBpZiAoY29weV90b191c2VyKGJ1ZiwgcmVwb3J0LCByZXBvcnRf
c2l6ZSkpClsuLi5dCgotOjY5OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVu
dCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jOjYyNDoKKwkJCWlmIChjb3B5X3RvX3VzZXIoYnVmLCBzdHJlYW0t
Pm9hX2J1ZmZlci52YWRkciwKKwkJCQkJcmVwb3J0X3NpemUgLSByZXBvcnRfc2l6ZV9wYXJ0aWFs
KSkKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMiBjaGVja3MsIDExNCBsaW5lcyBjaGVj
a2VkCjc1N2Q0ZGI2NTY5MSBkcm0vaTkxNS9wZXJmOiBBZGQgdGhlIHJlcG9ydCBmb3JtYXQgd2l0
aCBhIG5vbi1wb3dlci1vZi0yIHNpemUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
