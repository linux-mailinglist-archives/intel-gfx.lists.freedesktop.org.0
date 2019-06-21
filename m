Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455554E921
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 15:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367876E8AF;
	Fri, 21 Jun 2019 13:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A8416E894;
 Fri, 21 Jun 2019 13:28:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92CE5A0081;
 Fri, 21 Jun 2019 13:28:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Jun 2019 13:28:33 -0000
Message-ID: <20190621132833.9268.62907@emeril.freedesktop.org>
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621130544.24226-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915=3A_Remove_waiting_?=
 =?utf-8?q?=26_retiring_from_shrinker_paths?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IFJlbW92ZSB3YWl0aW5nICYgcmV0aXJpbmcgZnJvbSBzaHJpbmtlciBwYXRocwpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI1MjYvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAoyNTc2YzE1MTYwZjQgZHJtL2k5MTU6IFJlbW92ZSB3YWl0aW5nICYgcmV0aXJpbmcgZnJv
bSBzaHJpbmtlciBwYXRocwphZDZkZWRiMzJkZjEgZHJtL2k5MTU6IFRyYWNrIGk5MTVfYWN0aXZl
IHVzaW5nIGRlYnVnb2JqZWN0cwpjMGVkYWU4ZjdkY2IgZHJtL2k5MTU6IFRocm93IGF3YXkgdGhl
IGFjdGl2ZSBvYmplY3QgcmV0aXJlbWVudCBjb21wbGV4aXR5CjdmNmRkM2IxNTFmYyBkcm0vaTkx
NTogUHJvdmlkZSBhbiBpOTE1X2FjdGl2ZS5hY3F1aXJlIGNhbGxiYWNrCi06NzM1OiBDSEVDSzpV
TkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzdHJ1Y3QgbXV0ZXggZGVmaW5pdGlvbiB3aXRob3V0IGNv
bW1lbnQKIzczNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMu
aDozNjoKKwlzdHJ1Y3QgbXV0ZXggbXV0ZXg7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3Ms
IDEgY2hlY2tzLCA4MjcgbGluZXMgY2hlY2tlZApkMDhhNmYyNzgzMTMgZHJtL2k5MTU6IExvY2Fs
IGRlYnVnIEJVR19PTiBmb3IgaW50ZWxfd2FrZXJlZgotOjY2OiBXQVJOSU5HOkFWT0lEX0JVRzog
QXZvaWQgY3Jhc2hpbmcgdGhlIGtlcm5lbCAtIHRyeSB1c2luZyBXQVJOX09OICYgcmVjb3Zlcnkg
Y29kZSByYXRoZXIgdGhhbiBCVUcoKSBvciBCVUdfT04oKQojNjY6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaDoxNzoKKyNkZWZpbmUgSU5URUxfV0FLRVJFRl9CVUdf
T04oZXhwcikgQlVHX09OKGV4cHIpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hl
Y2tzLCA1NiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
