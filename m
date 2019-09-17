Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCDBB4CC0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 13:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB8A16EBD1;
	Tue, 17 Sep 2019 11:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97BFC6EBD1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 11:24:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18518163-1500050 
 for multiple; Tue, 17 Sep 2019 12:23:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 12:23:48 +0100
Message-Id: <20190917112348.31500-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Run forked mmap tests
 on tgl
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGlnZXJsYWtlIGRvZXMgbm90IHNlZW0gdG8gYmUgc3VmZmVyaW5nIGZyb20gdGhlIHNhbWUgZmF1
bHQgYXMgSWNlbGFrZQpkaWQsIHNvIGxldCB0aGUgdGVzdHMgcnVuIGFzIHRoZXkgc2hvdWxkIGNv
bXBsZXRlIHdpdGhpbiB0aGUgdGltZW91dC4KCkVhcmx5IHRnbCByZXN1bHRzOgoKYmFzaWMtc21h
bGwtY29weTogU1VDQ0VTUyAoMSw2NzFzKQpmb3JrZWQtYmFzaWMtc21hbGwtY29weTogU1VDQ0VT
UyAoMzcsNTY4cykKCm1lZGl1bS1jb3B5OiBTVUNDRVNTICgzLDMwN3MpCmZvcmtlZC1tZWRpdW0t
Y29weTogU1VDQ0VTUyAoNzYsNjE0cykKZm9ya2VkLW1lZGl1bS1jb3B5LVhZOiBTVUNDRVNTICgy
MDMsMjUxcykKZm9ya2VkLW1lZGl1bS1jb3B5LW9kZDogU1VDQ0VTUyAoMjA0LDI2NXMpCgpOb3Qg
Z3JlYXQsIGJ1dCBub3doZXJlIG5lYXIgYXMgYmFkIGFzIGljbCwKICAgICAgIHNpbmdsZSAgICAg
IGZvcmtlZApnbGs6ICAgIDIuMTVzICAgICAgIDIuODlzCmljbDogICAgMi41MHMgICAgIDI4MS4w
OHMKClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDg4MgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgpDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgotLS0KIHRl
c3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0
dC5jIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwppbmRleCBhYzQzOWNkZjguLmUyYzZhZDlh
MCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYworKysgYi90ZXN0cy9pOTE1
L2dlbV9tbWFwX2d0dC5jCkBAIC03OTIsNyArNzkyLDcgQEAgdGVzdF9odWdlX2NvcHkoaW50IGZk
LCBpbnQgaHVnZSwgaW50IHRpbGluZ19hLCBpbnQgdGlsaW5nX2IsIGludCBuY3B1cykKIAl1aW50
NjRfdCBodWdlX29iamVjdF9zaXplLCBpOwogCXVuc2lnbmVkIG1vZGUgPSBDSEVDS19SQU07CiAK
LQlpZ3RfZmFpbF9vbl9mKGludGVsX2dlbihkZXZpZCkgPj0gMTEgJiYgbmNwdXMgPiAxLAorCWln
dF9mYWlsX29uX2YoaW50ZWxfZ2VuKGRldmlkKSA9PSAxMSAmJiBuY3B1cyA+IDEsCiAJCSAgICAg
ICJQbGVhc2UgYWRqdXN0IHlvdXIgZXhwZWN0YXRpb25zLCBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4ODJcbiIpOwogCiAJc3dpdGNoIChodWdlKSB7Ci0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
