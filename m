Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A48BB20F03
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 20:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2383B896FA;
	Thu, 16 May 2019 18:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BEB891AD;
 Thu, 16 May 2019 18:59:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16581214-1500050 
 for multiple; Thu, 16 May 2019 19:58:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2019 19:58:40 +0100
Message-Id: <20190516185840.19777-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Randomise random seed
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

VG8gYXZvaWQgaGl0dGluZyB0aGUgc2FtZSBydXQgb24gZWFjaCBiZW5jaG1hcmsgcnVuLCBzdGFy
dCB3aXRoIGEgbmV3CnJhbmRvbSBzZWVkLiBUbyBhbGxvdyBoaXR0aW5nIHRoZSBzYW1lIHJ1dCBh
Z2FpbiwgbGV0IGl0IGJlIHNwZWNpZmllZApieSB0aGUgdXNlci4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCA2
ICsrKysrLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0u
YwppbmRleCA0ODU2OGNlNDAuLmNmMmE0NDc0NiAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1f
d3NpbS5jCisrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwpAQCAtMjI4Miw4ICsyMjgyLDkgQEAg
aW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogCWlndF9yZXF1aXJlKGZkKTsKIAogCWlu
aXRfY2xvY2tzKCk7CisJc3JhbmQodGltZShOVUxMKSk7CiAKLQl3aGlsZSAoKGMgPSBnZXRvcHQo
YXJnYywgYXJndiwgImhxdjJSU0h4R2RjOm46cjp3Olc6YTp0OmI6cDoiKSkgIT0gLTEpIHsKKwl3
aGlsZSAoKGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImhxdjJSU0h4R2RjOm46cjp3Olc6YTp0OmI6
cDpzOiIpKSAhPSAtMSkgewogCQlzd2l0Y2ggKGMpIHsKIAkJY2FzZSAnVyc6CiAJCQlpZiAobWFz
dGVyX3dvcmtsb2FkID49IDApIHsKQEAgLTIzMDAsNiArMjMwMSw5IEBAIGludCBtYWluKGludCBh
cmdjLCBjaGFyICoqYXJndikKIAkJY2FzZSAncCc6CiAJCQlwcmlvID0gYXRvaShvcHRhcmcpOwog
CQkJYnJlYWs7CisJCWNhc2UgJ3MnOgorCQkJc3JhbmQoYXRvaShvcHRhcmcpKTsKKwkJCWJyZWFr
OwogCQljYXNlICdhJzoKIAkJCWlmIChhcHBlbmRfd29ya2xvYWRfYXJnKSB7CiAJCQkJaWYgKHZl
cmJvc2UpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
