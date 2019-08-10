Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EB088BE8
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 17:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B926E432;
	Sat, 10 Aug 2019 15:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D0A6E42B;
 Sat, 10 Aug 2019 15:36:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17954019-1500050 
 for multiple; Sat, 10 Aug 2019 16:34:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Sat, 10 Aug 2019 16:34:30 +0100
Message-Id: <20190810153430.30636-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190810153430.30636-1-chris@chris-wilson.co.uk>
References: <20190810153430.30636-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] dma-fence: Always execute signal callbacks
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
Cc: intel-gfx@lists.freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgZm9yIHNvbWUgdXNlcnMgdG8gc3VycmVwdGl0aW91c2x5IGluc2VydCBsYXp5IHNpZ25h
bCBjYWxsYmFja3MgdGhhdApkbyBub3QgZGVwZW5kIG9uIGVuYWJsaW5nIHRoZSBzaWduYWxpbmcg
bWVjaGFuaXNtIGFyb3VuZCBldmVyeSBmZW5jZS4KKFRoZSBjb3N0IG9mIGludGVycnVwdHMgaXMg
dG9vIGRhcm4gaGlnaCwgdG8gcmV2aXZlIGFuIG9sZCBtZW1lLikKVGhpcyBtZWFucyB0aGF0IHdl
IG1heSBoYXZlIGEgY2JfbGlzdCBldmVuIGlmIHRoZSBzaWduYWxpbmcgYml0IGlzIG5vdAplbmFi
bGVkLCBzbyBhbHdheXMgbm90aWZ5IHRoZSBjYWxsYmFja3MuCgpUaGUgY29zdCBpcyB0aGF0IGRt
YV9mZW5jZV9zaWduYWwoKSBtdXN0IGFsd2F5cyBhY3F1aXJlIHRoZSBzcGlubG9jayB0bwplbnN1
cmUgdGhhdCB0aGUgY2JfbGlzdCBpcyBmbHVzaGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKaW5kZXggMDI3YTZhODk0YWJkLi5hYjRhNDU2YmJh
MDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYworKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMKQEAgLTE3MCwxMSArMTcwLDkgQEAgaW50IGRtYV9mZW5jZV9z
aWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiAKIAlfX2RtYV9mZW5jZV9zaWduYWxfX3Rp
bWVzdGFtcChmZW5jZSwga3RpbWVfZ2V0KCkpOwogCi0JaWYgKHRlc3RfYml0KERNQV9GRU5DRV9G
TEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkgewotCQlzcGluX2xvY2tfaXJx
c2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOwotCQlfX2RtYV9mZW5jZV9zaWduYWxfX25vdGlmeShm
ZW5jZSk7Ci0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKLQl9
CisJc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKKwlfX2RtYV9mZW5jZV9z
aWduYWxfX25vdGlmeShmZW5jZSk7CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5jZS0+bG9j
aywgZmxhZ3MpOwogCXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2lnbmFs
KTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
