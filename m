Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC4DA58E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 08:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B0F6E448;
	Thu, 17 Oct 2019 06:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CC956E448;
 Thu, 17 Oct 2019 06:24:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6656EA0096;
 Thu, 17 Oct 2019 06:24:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 17 Oct 2019 06:24:22 -0000
Message-ID: <20191017062422.14700.72781@emeril.freedesktop.org>
References: <20191017061106.22640-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017061106.22640-1-umesh.nerlige.ramappa@intel.com>
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
Lm9yZy9zZXJpZXMvNjgxMzAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAoyYTY3Y2IzYWI5ZjggZHJtL2k5MTUvcGVyZjogQWRk
IGhlbHBlciBtYWNyb3MgZm9yIGNvbXBhcmluZyB3aXRoIHdoaXRlbGlzdGVkIHJlZ2lzdGVycwot
OjIwOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYzozNTE3OgorI2RlZmluZSBBRERSX0lOX1JBTkdFKGFkZHIsIHN0YXJ0LCBlbmQp
IFwKKwkoKGFkZHIpID49IChzdGFydCkgJiYgXAorCSAoYWRkcikgPD0gKGVuZCkpCgotOjI0OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdhZGRyJyAtIHBvc3Np
YmxlIHNpZGUtZWZmZWN0cz8KIzI0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYzozNTIxOgorI2RlZmluZSBSRUdfSU5fUkFOR0UoYWRkciwgc3RhcnQsIGVuZCkgXAorCSgo
YWRkcikgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoc3RhcnQpICYmIFwKKwkgKGFkZHIpIDw9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDIg
Y2hlY2tzLCA5OCBsaW5lcyBjaGVja2VkCmZlYWYzOTIwZmNkMSBkcm0vaTkxNS90Z2w6IEFkZCBw
ZXJmIHN1cHBvcnQgb24gVEdMCi06NzIzOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRl
ZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRp
bmc/CiM3MjM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgNzc1IGxpbmVzIGNoZWNrZWQKZTM1N2UzZTEzMmVkIGRybS9pOTE1L3Bl
cmY6IGVuYWJsZSBPQVIgY29udGV4dCBzYXZlL3Jlc3RvcmUgb2YgcGVyZm9ybWFuY2UgY291bnRl
cnMKLToxNjg6IENIRUNLOkNPTVBBUklTT05fVE9fTlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNv
dWxkIGJlIHdyaXR0ZW4gIm9hX2NvbmZpZyIKIzE2ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmM6MjM4NDoKKwkJCWVyciA9IGdlbjEyX2NvbmZpZ3VyZV9jb250ZXh0X29h
cihjdHgsIG9hX2NvbmZpZyAhPSBOVUxMKTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywg
MSBjaGVja3MsIDE0MSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
