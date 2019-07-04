Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6D75FB9B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 18:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94D06E394;
	Thu,  4 Jul 2019 16:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9916E391;
 Thu,  4 Jul 2019 16:16:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17131820-1500050 
 for multiple; Thu, 04 Jul 2019 17:15:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 17:15:49 +0100
Message-Id: <20190704161550.15109-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704161550.15109-1-chris@chris-wilson.co.uk>
References: <20190704161550.15109-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] lib/i915: Report
 I915_SCHEDULER_CAP_ENGINE_BUSY_STATS
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SG9vayB0aGUgbmV3IGNhcGFiaWxpdHkgYml0IGFsb25nc2lkZSB0aGUgZXhpc3Rpbmcgc2NoZWR1
bGVyIHJlcG9ydGluZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGxpYi9pOTE1L2dlbV9zY2hlZHVsZXIuYyB8IDE1ICsrKysrKysr
KysrKysrKwogbGliL2k5MTUvZ2VtX3NjaGVkdWxlci5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX3NjaGVkdWxlci5j
IGIvbGliL2k5MTUvZ2VtX3NjaGVkdWxlci5jCmluZGV4IDFlYTkxMDM4Ny4uMWJlYjg1ZGVjIDEw
MDY0NAotLS0gYS9saWIvaTkxNS9nZW1fc2NoZWR1bGVyLmMKKysrIGIvbGliL2k5MTUvZ2VtX3Nj
aGVkdWxlci5jCkBAIC0xMTgsNiArMTE4LDE5IEBAIGJvb2wgZ2VtX3NjaGVkdWxlcl9oYXNfc2Vt
YXBob3JlcyhpbnQgZmQpCiAJCUk5MTVfU0NIRURVTEVSX0NBUF9TRU1BUEhPUkVTOwogfQogCisv
KioKKyAqIGdlbV9zY2hlZHVsZXJfaGFzX2VuZ2luZV9idXN5X3N0YXRzOgorICogQGZkOiBvcGVu
IGk5MTUgZHJtIGZpbGUgZGVzY3JpcHRvcgorICoKKyAqIEZlYXR1cmUgdGVzdCBtYWNybyB0byBx
dWVyeSB3aGV0aGVyIHRoZSBkcml2ZXIgc3VwcG9ydHMgcmVwb3J0aW5nIGFjY3VyYXRlCisgKiBw
ZXItZW5naW5lIHV0aWxpc2F0aW9uLgorICovCitib29sIGdlbV9zY2hlZHVsZXJfaGFzX2VuZ2lu
ZV9idXN5X3N0YXRzKGludCBmZCkKK3sKKwlyZXR1cm4gZ2VtX3NjaGVkdWxlcl9jYXBhYmlsaXR5
KGZkKSAmCisJCUk5MTVfU0NIRURVTEVSX0NBUF9FTkdJTkVfQlVTWV9TVEFUUzsKK30KKwogLyoq
CiAgKiBnZW1fc2NoZWR1bGVyX3ByaW50X2NhcGFiaWxpdHk6CiAgKiBAZmQ6IG9wZW4gaTkxNSBk
cm0gZmlsZSBkZXNjcmlwdG9yCkBAIC0xMzgsNCArMTUxLDYgQEAgdm9pZCBnZW1fc2NoZWR1bGVy
X3ByaW50X2NhcGFiaWxpdHkoaW50IGZkKQogCQlpZ3RfaW5mbygiIC0gV2l0aCBwcmVlbXB0aW9u
IGVuYWJsZWRcbiIpOwogCWlmIChjYXBzICYgSTkxNV9TQ0hFRFVMRVJfQ0FQX1NFTUFQSE9SRVMp
CiAJCWlndF9pbmZvKCIgLSBXaXRoIEhXIHNlbWFwaG9yZXMgZW5hYmxlZFxuIik7CisJaWYgKGNh
cHMgJiBJOTE1X1NDSEVEVUxFUl9DQVBfRU5HSU5FX0JVU1lfU1RBVFMpCisJCWlndF9pbmZvKCIg
LSBXaXRoIGVuZ2luZSBidXN5IHN0YXRpc3RpY3NcbiIpOwogfQpkaWZmIC0tZ2l0IGEvbGliL2k5
MTUvZ2VtX3NjaGVkdWxlci5oIGIvbGliL2k5MTUvZ2VtX3NjaGVkdWxlci5oCmluZGV4IGY5MDQ5
ZDEyOC4uMTRiZDRjYWM0IDEwMDY0NAotLS0gYS9saWIvaTkxNS9nZW1fc2NoZWR1bGVyLmgKKysr
IGIvbGliL2k5MTUvZ2VtX3NjaGVkdWxlci5oCkBAIC0zMSw2ICszMSw3IEBAIGJvb2wgZ2VtX3Nj
aGVkdWxlcl9lbmFibGVkKGludCBmZCk7CiBib29sIGdlbV9zY2hlZHVsZXJfaGFzX2N0eF9wcmlv
cml0eShpbnQgZmQpOwogYm9vbCBnZW1fc2NoZWR1bGVyX2hhc19wcmVlbXB0aW9uKGludCBmZCk7
CiBib29sIGdlbV9zY2hlZHVsZXJfaGFzX3NlbWFwaG9yZXMoaW50IGZkKTsKK2Jvb2wgZ2VtX3Nj
aGVkdWxlcl9oYXNfZW5naW5lX2J1c3lfc3RhdHMoaW50IGZkKTsKIHZvaWQgZ2VtX3NjaGVkdWxl
cl9wcmludF9jYXBhYmlsaXR5KGludCBmZCk7CiAKICNlbmRpZiAvKiBHRU1fU0NIRURVTEVSX0gg
Ki8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
