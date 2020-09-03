Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB425C610
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 18:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD8E6E17A;
	Thu,  3 Sep 2020 16:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD326E17A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 16:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 9CC073F978;
 Thu,  3 Sep 2020 18:04:40 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Wl56vvOO; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTTOOrEle2Ek; Thu,  3 Sep 2020 18:04:39 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id EE80E3F9CB;
 Thu,  3 Sep 2020 18:04:35 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 604B5360378;
 Thu,  3 Sep 2020 18:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1599149075; bh=B1x92wicoFKeR4j5eMez5Lg+F61lEgRPAcYMlTl5FR8=;
 h=From:To:Cc:Subject:Date:From;
 b=Wl56vvOObotJJ/OTY8VqrsiJNX4laBIAJUawdFSFuQ/HDcC1trhmpDWTQGvmflxfG
 OnLeHwWhLmi3O+DPA4w3pDDULBOlycuyRd+/UVAgcQ5Nvj9vKpup1PFNDiGXs8qB4r
 R0IS9k893BqCau2lSuqe6s0Tpxpr9TxwrNrU24YQ=
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Sep 2020 18:04:17 +0200
Message-Id: <20200903160417.12321-1-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Unlock the shared hwsp_gtt object
 after pinning
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKVGhl
IGh3c3BfZ3R0IG9iamVjdCBpcyB1c2VkIGZvciBzdWItYWxsb2NhdGlvbiBhbmQgY291bGQgdGhl
cmVmb3JlCmJlIHNoYXJlZCBieSBtYW55IGNvbnRleHRzIGNhdXNpbmcgdW5uZWNlc3NhcnkgY29u
dGVudGlvbiBkdXJpbmcKY29uY3VycmVudCBjb250ZXh0IHBpbm5pbmcuCkhvd2V2ZXIgc2luY2Ug
d2UncmUgY3VycmVudGx5IGxvY2tpbmcgaXQgb25seSBmb3IgcGlubmluZywgaXQgcmVtYWlucwpy
ZXNpZGVudCB1bnRpbCB3ZSB1bnBpbiBpdCwgYW5kIHRoZXJlZm9yZSBpdCdzIHNhZmUgdG8gZHJv
cCB0aGUKbG9jayBlYXJseSwgYWxsb3dpbmcgZm9yIGNvbmN1cnJlbnQgdGhyZWFkIGFjY2Vzcy4K
ClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KdjI6IEFkZGVkIGFkZGl0aW9uYWwgY2xhcmlmeWluZyBjb2RlIGNvbW1lbnRzIChDaHJp
cyBXaWxzb24pCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIHwg
OSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKaW5kZXggNjFiMDVjZDRjNDdhLi5kMzAxZGRhMWIy
NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTI3MSw2ICsy
NzEsMTUgQEAgaW50IF9faW50ZWxfY29udGV4dF9kb19waW5fd3coc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLAogCWk5MTVfYWN0aXZlX3JlbGVhc2UoJmNlLT5hY3RpdmUpOwogZXJyX2N0eF91bnBp
bjoKIAlpbnRlbF9jb250ZXh0X3Bvc3RfdW5waW4oY2UpOworCisJLyoKKwkgKiBVbmxvY2sgdGhl
IGh3c3BfZ2d0dCBvYmplY3Qgc2luY2UgaXQncyBzaGFyZWQuCisJICogSW4gcHJpbmNpcGxlIHdl
IGNhbiB1bmxvY2sgYWxsIHRoZSBnbG9iYWwgc3RhdGUgbG9ja2VkIGFib3ZlCisJICogc2luY2Ug
aXQncyBwaW5uZWQgYW5kIGRvZXNuJ3QgbmVlZCBmZW5jaW5nLCBhbmQgd2lsbAorCSAqIHRodXMg
cmVtYWluIHJlc2lkZW50IHVudGlsIGl0IGlzIGV4cGxpY2l0bHkgdW5waW5uZWQuCisJICovCisJ
aTkxNV9nZW1fd3dfdW5sb2NrX3NpbmdsZShjZS0+dGltZWxpbmUtPmh3c3BfZ2d0dC0+b2JqKTsK
KwogCXJldHVybiBlcnI7CiB9CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
