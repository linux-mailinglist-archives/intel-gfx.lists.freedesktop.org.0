Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC8587537
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AE16ED8A;
	Fri,  9 Aug 2019 09:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 588 seconds by postgrey-1.36 at gabe;
 Wed, 07 Aug 2019 15:04:40 UTC
Received: from smtp180.sjtu.edu.cn (smtp180.sjtu.edu.cn [202.120.2.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E8E89BAC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 15:04:40 +0000 (UTC)
Received: from proxy01.sjtu.edu.cn (unknown [202.112.26.54])
 by smtp180.sjtu.edu.cn (Postfix) with ESMTPS id 6EB391008BE1D;
 Wed,  7 Aug 2019 22:54:48 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
 by proxy01.sjtu.edu.cn (Postfix) with ESMTP id 585CE204DFCEA;
 Wed,  7 Aug 2019 22:54:48 +0800 (CST)
X-Virus-Scanned: amavisd-new at proxy01.sjtu.edu.cn
Received: from proxy01.sjtu.edu.cn ([127.0.0.1])
 by localhost (proxy01.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rVGxLubvnfk5; Wed,  7 Aug 2019 22:54:48 +0800 (CST)
Received: from xywang-pc.ipads-lab.se.sjtu.edu.cn (unknown [202.120.40.82])
 (Authenticated sender: xywang.sjtu@sjtu.edu.cn)
 by proxy01.sjtu.edu.cn (Postfix) with ESMTPA id 1B10D204DFCE7;
 Wed,  7 Aug 2019 22:54:48 +0800 (CST)
From: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
To: 
Date: Wed,  7 Aug 2019 22:54:37 +0800
Message-Id: <20190807145437.5580-1-xywang.sjtu@sjtu.edu.cn>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
Subject: [Intel-gfx] [PATCH] gpu/drm/i915: disable interrupt when holding
 spinlock
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
Cc: intel-gfx@lists.freedesktop.org, Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGlycV9sb2NrIGlzIGFjcXVpcmVkIGluIG11bHRpcGxlIGZ1bmN0aW9uczoKCjEpIGk5MTVf
cmVxdWVzdF9jYW5jZWxfYnJlYWRjcnVtYgogPC0gLi4uIDwtIHBhbmZyb3N0X2dwdV9pcnFfaGFu
ZGxlcgoyKSBpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxCiA8LSAuLi4gPC0gY2hlcnJ5dmll
d19pcnFfaGFuZGxlcgozKSBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIKNCkgdmlydHVh
bF94ZmVyX2JyZWFkY3J1bWJzCgpUaGUgZm9ybWVyIHR3byBmdW5jdGlvbnMgYXJlIHJlYWNoYWJs
ZSBmcm9tIElSUSBoYW5kbGVycyB3aGlsZQp0aGUgbGF0dGVyIHR3byBmdW5jdGlvbnMgYXJlIG5v
dCwgYW5kIHRoZXkgY2FsbCBzcGluX2xvY2soKQp3aGljaCBkbyBub3QgZGlzYWJsZSBpbnRlcnJ1
cHQuIEJlaW5nIHByZWVtcHRlZCBieSBhbiBpbnRlcnJ1cHQKYWNxdWlyaW5nIHRoZSBzYW1lIGxv
Y2sgbWF5IGxlYWQgdG8gZGVhZGxvY2suCk90aGVyIGZ1bmN0aW9ucyBhY3F1aXJlIGlycV9sb2Nr
IGJ5IHNwaW5fbG9ja19pcnEvaXJxc2F2ZSgpLgoKVGhpcyBwYXRjaCBzd2l0Y2hlcyBzcGluX2xv
Y2soKSB0byBzcGluX2xvY2tfaXJxIGluIHRoZSB0d28KcHJvY2Vzcy1jb250ZXh0IGZ1bmN0aW9u
cy4KClRoZSBpc3N1ZSBpcyBpZGVudGlmaWVkIGJ5IGEgc3RhdGljIGFuYWx5emVyIGJhc2VkIG9u
IENvY2NpbmVsbGUuCgpTaWduZWQtb2ZmLWJ5OiBXYW5nIFhpYXlhbmcgPHh5d2FuZy5zanR1QHNq
dHUuZWR1LmNuPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJz
LmMgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAg
fCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jCmluZGV4IGMw
OTJiZGY1ZjBiZi4uZTBiNDY0NTBjMmY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9icmVhZGNydW1icy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2JyZWFkY3J1bWJzLmMKQEAgLTMwMSw3ICszMDEsNyBAQCBib29sIGk5MTVfcmVxdWVzdF9l
bmFibGVfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkJc3RydWN0IGludGVs
X2NvbnRleHQgKmNlID0gcnEtPmh3X2NvbnRleHQ7CiAJCXN0cnVjdCBsaXN0X2hlYWQgKnBvczsK
IAotCQlzcGluX2xvY2soJmItPmlycV9sb2NrKTsKKwkJc3Bpbl9sb2NrX2lycSgmYi0+aXJxX2xv
Y2spOwogCQlHRU1fQlVHX09OKHRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdOQUwsICZycS0+
ZmVuY2UuZmxhZ3MpKTsKIAogCQlfX2ludGVsX2JyZWFkY3J1bWJzX2FybV9pcnEoYik7CkBAIC0z
MzMsNyArMzMzLDcgQEAgYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEpCiAJCUdFTV9CVUdfT04oIWNoZWNrX3NpZ25hbF9vcmRlcihjZSwg
cnEpKTsKIAogCQlzZXRfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdOQUwsICZycS0+ZmVuY2UuZmxh
Z3MpOwotCQlzcGluX3VubG9jaygmYi0+aXJxX2xvY2spOworCQlzcGluX3VubG9ja19pcnEoJmIt
PmlycV9sb2NrKTsKIAl9CiAKIAlyZXR1cm4gIV9fcmVxdWVzdF9jb21wbGV0ZWQocnEpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA4MmI3YWNlNjJkOTcuLjQyMzY3YWVlZmNj
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTgwNiwxMyArODA2LDEzIEBA
IHN0YXRpYyB2b2lkIHZpcnR1YWxfeGZlcl9icmVhZGNydW1icyhzdHJ1Y3QgdmlydHVhbF9lbmdp
bmUgKnZlLAogCiAJLyogQWxsIHVuYXR0YWNoZWQgKHJxLT5lbmdpbmUgPT0gb2xkKSBtdXN0IGFs
cmVhZHkgYmUgY29tcGxldGVkICovCiAKLQlzcGluX2xvY2soJm9sZC0+YnJlYWRjcnVtYnMuaXJx
X2xvY2spOworCXNwaW5fbG9ja19pcnEoJm9sZC0+YnJlYWRjcnVtYnMuaXJxX2xvY2spOwogCWlm
ICghbGlzdF9lbXB0eSgmdmUtPmNvbnRleHQuc2lnbmFsX2xpbmspKSB7CiAJCWxpc3RfbW92ZV90
YWlsKCZ2ZS0+Y29udGV4dC5zaWduYWxfbGluaywKIAkJCSAgICAgICAmZW5naW5lLT5icmVhZGNy
dW1icy5zaWduYWxlcnMpOwogCQlpbnRlbF9lbmdpbmVfcXVldWVfYnJlYWRjcnVtYnMoZW5naW5l
KTsKIAl9Ci0Jc3Bpbl91bmxvY2soJm9sZC0+YnJlYWRjcnVtYnMuaXJxX2xvY2spOworCXNwaW5f
dW5sb2NrX2lycSgmb2xkLT5icmVhZGNydW1icy5pcnFfbG9jayk7CiB9CiAKIHN0YXRpYyB2b2lk
IGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIu
MTEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
