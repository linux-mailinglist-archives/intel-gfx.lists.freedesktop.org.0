Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0CAE573A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363486EBD1;
	Fri, 25 Oct 2019 23:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 875576EBD0;
 Fri, 25 Oct 2019 23:48:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 802E9A011C;
 Fri, 25 Oct 2019 23:48:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 25 Oct 2019 23:48:27 -0000
Message-ID: <20191025234827.29362.43652@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191025193746.47155-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20191025193746.47155-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/perf=3A_Add_hel?=
 =?utf-8?q?per_macros_for_comparing_with_whitelisted_registers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Ml0gZHJtL2k5MTUvcGVyZjogQWRkIGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdo
aXRlbGlzdGVkIHJlZ2lzdGVycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjg1ODIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkOWE5MzUyOGViYmQgZHJtL2k5MTUvcGVyZjogQWRk
IGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdoaXRlbGlzdGVkIHJlZ2lzdGVycwot
OjIxOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzozNTE4OgorI2RlZmluZSBBRERSX0lOX1JBTkdFKGFkZHIsIHN0YXJ0LCBlbmQp
IFwKKwkoKGFkZHIpID49IChzdGFydCkgJiYgXAorCSAoYWRkcikgPD0gKGVuZCkpCgotOjI1OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzI1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzozNTIyOgorI2RlZmluZSBSRUdfSU5fUkFOR0UoYWRkciwgc3RhcnQsIGVuZCkgXAorCSgo
YWRkcikgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoc3RhcnQpICYmIFwKKwkgKGFkZHIpIDw9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDIg
Y2hlY2tzLCA5OCBsaW5lcyBjaGVja2VkCmM0ZmU5NGMwNDU1MyBkcm0vaTkxNS90Z2w6IEFkZCBw
ZXJmIHN1cHBvcnQgb24gVEdMCi06MTMyOiBFUlJPUjpUUkFJTElOR19XSElURVNQQUNFOiB0cmFp
bGluZyB3aGl0ZXNwYWNlCiMxMzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jOjc1ODoKK15JXkleSSAgKElTX0dFTihzdHJlYW0tPnBlcmYtPmk5MTUsIDEyKSA/ICQKCi06
MTMzOiBFUlJPUjpUUkFJTElOR19XSElURVNQQUNFOiB0cmFpbGluZyB3aGl0ZXNwYWNlCiMxMzM6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjc1OToKK15JXkleSSAgIE9B
UkVQT1JUX1JFQVNPTl9NQVNLX0VYVEVOREVEIDogJAoKLTo0NTc6IENIRUNLOkNPTVBBUklTT05f
VE9fTlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJlIHdyaXR0ZW4gIm9hX2NvbmZpZyIK
IzQ1NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MjQ3MzoKKwkJCQkJ
ICAgIG9hX2NvbmZpZyAhPSBOVUxMKTsKCi06ODM2OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VT
OiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQg
dXBkYXRpbmc/CiM4MzY6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDIgZXJyb3JzLCAx
IHdhcm5pbmdzLCAxIGNoZWNrcywgODY5IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
