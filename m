Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B35226C1E3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 12:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2316E392;
	Wed, 16 Sep 2020 10:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C254F6E392
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 10:50:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22444376-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 11:50:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 11:50:21 +0100
Message-Id: <20200916105022.28316-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: Initialise outparam for error return
 from wait_for_register
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBpbiBjYXNlIHRoZSBjYWxsZXIgcGFzc2VzIGluIDAgZm9yIGJvdGggc2xvdyZmYXN0IHRp
bWVvdXRzLCBtYWtlCnN1cmUgd2UgaW5pdGlhbGlzZSB0aGUgc3RhY2sgdmFsdWUgcmV0dXJuZWQu
IEFkZCBhbiBhc3NlcnQgc28gdGhhdCB3ZQpkb24ndCBtYWtlIHRoZSBtaXN0YWtlIG9mIHBhc3Np
bmcgMCB0aW1lb3V0cyBmb3IgdGhlIHdhaXQuCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
bmNvcmUuYzoyMDExIF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXJfZncoKSBlcnJvcjogdW5pbml0
aWFsaXplZCBzeW1ib2wgJ3JlZ192YWx1ZScuCgpSZWZlcmVuY2VzOiAzZjY0OWFiNzI4Y2QgKCJ0
cmVld2lkZTogUmVtb3ZlIHVuaW5pdGlhbGl6ZWRfdmFyKCkgdXNhZ2UiKQpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5j
CmluZGV4IDhkNWE5MzNlNmFmNi4uMjYzZmZjYjgzMmI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuYwpAQCAtMTk5MywxMyArMTk5MywxNCBAQCBpbnQgX19pbnRlbF93YWl0X2Zvcl9y
ZWdpc3Rlcl9mdyhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkJIHVuc2lnbmVkIGlu
dCBzbG93X3RpbWVvdXRfbXMsCiAJCQkJIHUzMiAqb3V0X3ZhbHVlKQogewotCXUzMiByZWdfdmFs
dWU7CisJdTMyIHJlZ192YWx1ZSA9IDA7CiAjZGVmaW5lIGRvbmUgKCgocmVnX3ZhbHVlID0gaW50
ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCByZWcpKSAmIG1hc2spID09IHZhbHVlKQogCWludCBy
ZXQ7CiAKIAkvKiBDYXRjaCBhbnkgb3ZlcnVzZSBvZiB0aGlzIGZ1bmN0aW9uICovCiAJbWlnaHRf
c2xlZXBfaWYoc2xvd190aW1lb3V0X21zKTsKIAlHRU1fQlVHX09OKGZhc3RfdGltZW91dF91cyA+
IDIwMDAwKTsKKwlHRU1fQlVHX09OKCFmYXN0X3RpbWVvdXRfdXMgJiYgIXNsb3dfdGltZW91dF9t
cyk7CiAKIAlyZXQgPSAtRVRJTUVET1VUOwogCWlmIChmYXN0X3RpbWVvdXRfdXMgJiYgZmFzdF90
aW1lb3V0X3VzIDw9IDIwMDAwKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
