Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6FE67053
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C556E0A2;
	Fri, 12 Jul 2019 13:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980896E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 13:42:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17249110-1500050 
 for multiple; Fri, 12 Jul 2019 14:42:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 14:42:34 +0100
Message-Id: <20190712134234.29893-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Drop kerneldoc for
 'intel_atomic_commit'
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfYXRvbWljX2NvbW1pdCgpIGlzIG5vdCBmb3IgdXNlIGludGVybmFsbHksIGJ1dCBvbmx5
IGFzIGFuIGVudHJ5CnBvaW50IGZyb20gdGhlIGNvcmUgZHJtIGF0b21pYyBoZWxwZXIgKGRybV9h
dG9taWNfY29tbWl0KS4KClNxdWVsY2hlcyB0aGUgd2FybmluZyBmb3I6CmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0MTQ4OiB3YXJuaW5nOiBGdW5jdGlvbiBw
YXJhbWV0ZXIgb3IgbWVtYmVyICdfc3RhdGUnIG5vdCBkZXNjcmliZWQgaW4gJ2ludGVsX2F0b21p
Y19jb21taXQnCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0
MTQ4OiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVyICdzdGF0ZScgZGVzY3JpcHRp
b24gaW4gJ2ludGVsX2F0b21pY19jb21taXQnCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMTIgLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBl
MTI2NzFjYTE4ODYuLjk3NTg1MjNmMDgzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MTMwLDE4ICsxNDEzMCw2IEBAIHN0YXRpYyB2b2lk
IGludGVsX2F0b21pY190cmFja19mYnMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAJCQkJICBwbGFuZS0+ZnJvbnRidWZmZXJfYml0KTsKIH0KIAotLyoqCi0gKiBpbnRlbF9hdG9t
aWNfY29tbWl0IC0gY29tbWl0IHZhbGlkYXRlZCBzdGF0ZSBvYmplY3QKLSAqIEBkZXY6IERSTSBk
ZXZpY2UKLSAqIEBzdGF0ZTogdGhlIHRvcC1sZXZlbCBkcml2ZXIgc3RhdGUgb2JqZWN0Ci0gKiBA
bm9uYmxvY2s6IG5vbmJsb2NraW5nIGNvbW1pdAotICoKLSAqIFRoaXMgZnVuY3Rpb24gY29tbWl0
cyBhIHRvcC1sZXZlbCBzdGF0ZSBvYmplY3QgdGhhdCBoYXMgYmVlbiB2YWxpZGF0ZWQKLSAqIHdp
dGggZHJtX2F0b21pY19oZWxwZXJfY2hlY2soKS4KLSAqCi0gKiBSRVRVUk5TCi0gKiBaZXJvIGZv
ciBzdWNjZXNzIG9yIC1lcnJuby4KLSAqLwogc3RhdGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKl9zdGF0ZSwKIAkJCSAgICAgICBib29sIG5vbmJsb2NrKQotLSAKMi4yMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
