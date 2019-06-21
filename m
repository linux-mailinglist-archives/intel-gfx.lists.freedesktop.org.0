Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CC24EF29
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 20:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75676E916;
	Fri, 21 Jun 2019 18:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A3786E915;
 Fri, 21 Jun 2019 18:59:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 723FEA363E;
 Fri, 21 Jun 2019 18:59:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Jun 2019 18:59:15 -0000
Message-ID: <20190621185915.9267.47278@emeril.freedesktop.org>
References: <20190621183801.23252-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621183801.23252-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Remove_waiti?=
 =?utf-8?q?ng_=26_retiring_from_shrinker_paths?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NV0gZHJtL2k5MTU6IFJlbW92ZSB3YWl0aW5nICYgcmV0aXJpbmcgZnJvbSBzaHJpbmtlciBwYXRo
cwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI1NDYv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAphZTE0NGQ3NDYyMTIgZHJtL2k5MTU6IFJlbW92ZSB3YWl0aW5nICYgcmV0aXJpbmcg
ZnJvbSBzaHJpbmtlciBwYXRocwo1MmI0MmVhZTJiNzMgZHJtL2k5MTU6IFRyYWNrIGk5MTVfYWN0
aXZlIHVzaW5nIGRlYnVnb2JqZWN0cwoxMzY2YmRkMTUwMWIgZHJtL2k5MTU6IFRocm93IGF3YXkg
dGhlIGFjdGl2ZSBvYmplY3QgcmV0aXJlbWVudCBjb21wbGV4aXR5CjBjMGU3ZWY0ODg5ZiBkcm0v
aTkxNTogUHJvdmlkZSBhbiBpOTE1X2FjdGl2ZS5hY3F1aXJlIGNhbGxiYWNrCi06NzM1OiBDSEVD
SzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzdHJ1Y3QgbXV0ZXggZGVmaW5pdGlvbiB3aXRob3V0
IGNvbW1lbnQKIzczNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlw
ZXMuaDozNjoKKwlzdHJ1Y3QgbXV0ZXggbXV0ZXg7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fybmlu
Z3MsIDEgY2hlY2tzLCA4MjcgbGluZXMgY2hlY2tlZAo4OGFmNmFhMjliMWIgZHJtL2k5MTU6IExv
Y2FsIGRlYnVnIEJVR19PTiBmb3IgaW50ZWxfd2FrZXJlZgotOjY3OiBXQVJOSU5HOkFWT0lEX0JV
RzogQXZvaWQgY3Jhc2hpbmcgdGhlIGtlcm5lbCAtIHRyeSB1c2luZyBXQVJOX09OICYgcmVjb3Zl
cnkgY29kZSByYXRoZXIgdGhhbiBCVUcoKSBvciBCVUdfT04oKQojNjc6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaDoxNzoKKyNkZWZpbmUgSU5URUxfV0FLRVJFRl9C
VUdfT04oZXhwcikgQlVHX09OKGV4cHIpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAg
Y2hlY2tzLCA1NiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
