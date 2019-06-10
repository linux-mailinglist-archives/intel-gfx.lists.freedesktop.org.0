Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAF63AF80
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84CB89119;
	Mon, 10 Jun 2019 07:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604BB89113
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 07:21:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16848366-1500050 
 for multiple; Mon, 10 Jun 2019 08:21:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:21:11 +0100
Message-Id: <20190610072126.6355-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610072126.6355-1-chris@chris-wilson.co.uk>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/28] drm/i915: Use forced preemptions in
 preference over hangcheck
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

SG93IHdlbGwgZG9lcyB0aGlzIHdvcmsgaW4gcHJhY3RpY2U/IEl0IG1lYW5zIHRoYXQgdW5sZXNz
IHNvbWVvbmUgZWxzZQppcyBhdHRlbXB0aW5nIHRvIHJ1biB3ZSBkbyBub3QgcmVzZXQgaW5maW5p
dGUgbG9vcHMuIE1heWJlIHRoYXQgaXMgYQpnb29kIHRoaW5nLgoKT3BlbnM6CgoqIFRoaXMgc2Fj
cmlmaWNlcyBlcnJvciBjYXB0dXJlLiBNYXliZSBtYWtlIHRoYXQgYW4gb3B0LWluIHdpdGggYQp3
YXRjaGRvZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9wbS5jCmluZGV4IGFlNzE1NWYwZTA2My4uOWE0ZTU4ZDYzN2VlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmMKQEAgLTQzLDcgKzQzLDggQEAgc3RhdGljIGludCBpbnRlbF9n
dF91bnBhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCiAJaTkxNV9wbXVfZ3RfdW5wYXJr
ZWQoaTkxNSk7CiAKLQlpOTE1X3F1ZXVlX2hhbmdjaGVjayhpOTE1KTsKKwlpZiAoIShpOTE1LT5j
YXBzLnNjaGVkdWxlciAmIEk5MTVfU0NIRURVTEVSX0NBUF9QUkVFTVBUSU9OKSkKKwkJaTkxNV9x
dWV1ZV9oYW5nY2hlY2soaTkxNSk7CiAKIAlwbV9ub3RpZnkoaTkxNSwgSU5URUxfR1RfVU5QQVJL
KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
