Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F92EAF2E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D476E162;
	Tue,  5 Jan 2021 15:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5C76E188
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:42 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:21 +0100
Message-Id: <20210105153558.134272-28-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 27/64] drm/i915: Make __engine_unpark()
 compatible with ww locking.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGFrZSB0aGUgd3cgbG9jayBhcm91bmQgZW5naW5lX3VucGFyay4gQmVjYXVzZSBvZiB0aGUKbWFu
eSBtYW55IHBsYWNlcyB3aGVyZSBycG0gaXMgdXNlZCwgSSBjaG9zZSB0aGUgc2FmZXN0IG9wdGlv
bgphbmQgdXNlZCBhIHRyeWxvY2sgdG8gb3Bwb3J0dW5pc3RpY2FsbHkgdGFrZSB0aGlzIGxvY2sg
Zm9yCl9fZW5naW5lX3VucGFyay4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9w
bS5jCmluZGV4IDI4NDNkYjczMWI3ZC4uZjgxYmRkNzQ3ZmM5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtMjcsMTIgKzI3LDE2IEBAIHN0YXRpYyB2b2lk
IGRiZ19wb2lzb25fY2Uoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCQlpbnQgdHlwZSA9IGk5
MTVfY29oZXJlbnRfbWFwX3R5cGUoY2UtPmVuZ2luZS0+aTkxNSk7CiAJCXZvaWQgKm1hcDsKIAor
CQlpZiAoIWk5MTVfZ2VtX29iamVjdF90cnlsb2NrKG9iaikpCisJCQlyZXR1cm47CisKIAkJbWFw
ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCB0eXBlKTsKIAkJaWYgKCFJU19FUlIobWFw
KSkgewogCQkJbWVtc2V0KG1hcCwgQ09OVEVYVF9SRURaT05FLCBvYmotPmJhc2Uuc2l6ZSk7CiAJ
CQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaik7CiAJCQlpOTE1X2dlbV9vYmplY3RfdW5w
aW5fbWFwKG9iaik7CiAJCX0KKwkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwogCX0KIH0K
IAotLSAKMi4zMC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
