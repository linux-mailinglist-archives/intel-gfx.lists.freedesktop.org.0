Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E3F2174EA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 19:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C44C89DBA;
	Tue,  7 Jul 2020 17:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF6E89DD3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 17:15:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21743955-1500050 
 for multiple; Tue, 07 Jul 2020 18:15:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 18:15:17 +0100
Message-Id: <20200707171517.28183-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix initial fb to use
 resource_size_t
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbG9va3VwIHVwIHRoZSBwaHlzaWNhbCBhZGRyZXNzIG9mIHRoZSBpbmhlcml0ZWQgZnJhbWVi
dWZmZXIsIGFuZApwcmVzdW1lIHRoYXQgaXMgYW4gb2Zmc2V0IGludG8gdGhlIHN0b2xlbiBtZW1v
cnkgcmVnaW9uLiBBcyB3ZSBhcmUKZGVhbGluZyB3aXRoIHBoeXNpY2FsIHJlc291cmNlcyBhbmQg
dGhlaXIgYWRkcmVzc2VzLCB3ZSBuZWVkIHRvIHVzZQpyZXNvdXJjZV9zaXplX3QgYW5kIG5vdCBh
c3N1bWUgZXZlcnl0aGluZyBmaXRzIHdpdGhpbiBhIHBsYWluIHUzMiBbYmFzZWQKb24gcHJpb3Ig
YXNzdW1wdGlvbnMgdGhhdCB3ZSB3ZXJlIHNpbXBsaW5nIGhhbmRsaW5nIG9mZnNldHMgaW50byB0
aGUKR0dUVCBub3QgcGh5c2ljYWwgbWVtb3J5XS4KCldlIG1hZGUgdGhlIHN3aXRjaCB0byB1c2lu
ZyByZXNvdXJjZV9zaXplX3QgZm9yIHN0b2xlbiBpbiBjb21taXQKYjcxMjhlZjEyNWI0ICgiZHJt
L2k5MTU6IHByZWZlciByZXNvdXJjZV9zaXplX3QgZm9yIGV2ZXJ5dGhpbmcgc3RvbGVuIikKClJl
cG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZWZl
cmVuY2VzOiBiNzEyOGVmMTI1YjQgKCJkcm0vaTkxNTogcHJlZmVyIHJlc291cmNlX3NpemVfdCBm
b3IgZXZlcnl0aGluZyBzdG9sZW4iKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRmZjdjMTdmM2QyYi4uNmJmZTMx
NDhmOTI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMzQwOSw3ICszNDA5LDggQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlz
dHJ1Y3QgaTkxNV92bWEgKnZtYTsKLQl1MzIgYmFzZSwgc2l6ZTsKKwlyZXNvdXJjZV9zaXplX3Qg
YmFzZTsKKwlyZXNvdXJjZV9zaXplX3Qgc2l6ZTsKIAogCWlmIChwbGFuZV9jb25maWctPnNpemUg
PT0gMCkKIAkJcmV0dXJuIE5VTEw7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
