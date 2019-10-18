Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8BDDBB34
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 03:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF4E6E0E3;
	Fri, 18 Oct 2019 01:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4049E6E0E3;
 Fri, 18 Oct 2019 01:04:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 399B1A3C0D;
 Fri, 18 Oct 2019 01:04:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 18 Oct 2019 01:04:46 -0000
Message-ID: <20191018010446.5570.91342@emeril.freedesktop.org>
References: <20191017225756.45124-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017225756.45124-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/3=5D_drm/i915/perf=3A_Add_hel?=
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
M10gZHJtL2k5MTUvcGVyZjogQWRkIGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdo
aXRlbGlzdGVkIHJlZ2lzdGVycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjgxNzgvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApiZTM3YjBkZjhkNjcgZHJtL2k5MTUvcGVyZjogQWRk
IGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdoaXRlbGlzdGVkIHJlZ2lzdGVycwot
OjIxOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzozNTE3OgorI2RlZmluZSBBRERSX0lOX1JBTkdFKGFkZHIsIHN0YXJ0LCBlbmQp
IFwKKwkoKGFkZHIpID49IChzdGFydCkgJiYgXAorCSAoYWRkcikgPD0gKGVuZCkpCgotOjI1OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzI1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzozNTIxOgorI2RlZmluZSBSRUdfSU5fUkFOR0UoYWRkciwgc3RhcnQsIGVuZCkgXAorCSgo
YWRkcikgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoc3RhcnQpICYmIFwKKwkgKGFkZHIpIDw9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDIg
Y2hlY2tzLCA5OCBsaW5lcyBjaGVja2VkCjJmYmFjMGFhMTAxZiBkcm0vaTkxNS9wZXJmOiBlbmFi
bGUgT0FSIGNvbnRleHQgc2F2ZS9yZXN0b3JlIG9mIHBlcmZvcm1hbmNlIGNvdW50ZXJzCi06ODE6
IENIRUNLOkNPTVBBUklTT05fVE9fTlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJlIHdy
aXR0ZW4gIm9hX2NvbmZpZyIKIzgxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzoxOTIxOgorCQllcnIgPSBnZW4xMl9lbWl0X29hcl9jb25maWcocnEsIGNlLCBvYV9jb25m
aWcgIT0gTlVMTCk7CgotOjg1OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNl
c3NhcnkgYmVmb3JlIGEgY2xvc2UgYnJhY2UgJ30nCiM4NTogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmM6MTkyNToKKworCX0KCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5n
cywgMiBjaGVja3MsIDYxIGxpbmVzIGNoZWNrZWQKZTc3Mjc0ZjkzNTdjIGRybS9pOTE1L3RnbDog
QWRkIHBlcmYgc3VwcG9ydCBvbiBUR0wKLTo3MTk6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6
IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1
cGRhdGluZz8KIzcxOTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cgp0b3RhbDogMCBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCA3NzEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
