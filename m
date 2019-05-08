Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 274F917926
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A57898F1;
	Wed,  8 May 2019 12:11:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F627898D9;
 Wed,  8 May 2019 12:11:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:11:15 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.159])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2019 05:11:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 May 2019 13:10:47 +0100
Message-Id: <20190508121058.27038-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 10/21] gem_wsim: Extract str to engine
 lookup
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpZ25lZC1v
ZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogYmVu
Y2htYXJrcy9nZW1fd3NpbS5jIHwgMzQgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwpp
bmRleCA1MjQ1NjkyZGY2ZWIuLmY2NTRkZWNiMjRjYyAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9n
ZW1fd3NpbS5jCisrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwpAQCAtMzE4LDYgKzMxOCwxOCBA
QCB3c2ltX2Vycihjb25zdCBjaGFyICpmbXQsIC4uLikKIAl9IFwKIH0KIAorc3RhdGljIGludCBz
dHJfdG9fZW5naW5lKGNvbnN0IGNoYXIgKnN0cikKK3sKKwl1bnNpZ25lZCBpbnQgaTsKKworCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHJpbmdfc3RyX21hcCk7IGkrKykgeworCQlpZiAoIXN0
cmNhc2VjbXAoc3RyLCByaW5nX3N0cl9tYXBbaV0pKQorCQkJcmV0dXJuIGk7CisJfQorCisJcmV0
dXJuIC0xOworfQorCiBzdGF0aWMgc3RydWN0IHdvcmtsb2FkICoKIHBhcnNlX3dvcmtsb2FkKHN0
cnVjdCB3X2FyZyAqYXJnLCB1bnNpZ25lZCBpbnQgZmxhZ3MsIHN0cnVjdCB3b3JrbG9hZCAqYXBw
X3cpCiB7CkBAIC00ODAsMjIgKzQ5MiwxOCBAQCBwYXJzZV93b3JrbG9hZChzdHJ1Y3Qgd19hcmcg
KmFyZywgdW5zaWduZWQgaW50IGZsYWdzLCBzdHJ1Y3Qgd29ya2xvYWQgKmFwcF93KQogCQl9CiAK
IAkJaWYgKChmaWVsZCA9IHN0cnRva19yKGZzdGFydCwgIi4iLCAmZmN0eCkpICE9IE5VTEwpIHsK
LQkJCXVuc2lnbmVkIGludCBvbGRfdmFsaWQgPSB2YWxpZDsKLQogCQkJZnN0YXJ0ID0gTlVMTDsK
IAotCQkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocmluZ19zdHJfbWFwKTsgaSsrKSB7Ci0J
CQkJaWYgKCFzdHJjYXNlY21wKGZpZWxkLCByaW5nX3N0cl9tYXBbaV0pKSB7Ci0JCQkJCXN0ZXAu
ZW5naW5lID0gaTsKLQkJCQkJaWYgKHN0ZXAuZW5naW5lID09IEJDUykKLQkJCQkJCWJjc191c2Vk
ID0gdHJ1ZTsKLQkJCQkJdmFsaWQrKzsKLQkJCQkJYnJlYWs7Ci0JCQkJfQotCQkJfQotCi0JCQlj
aGVja19hcmcob2xkX3ZhbGlkID09IHZhbGlkLAorCQkJaSA9IHN0cl90b19lbmdpbmUoZmllbGQp
OworCQkJY2hlY2tfYXJnKGkgPCAwLAogCQkJCSAgIkludmFsaWQgZW5naW5lIGlkIGF0IHN0ZXAg
JXUhXG4iLCBucl9zdGVwcyk7CisJCQlpZiAoaSA+PSAwKQorCQkJCXZhbGlkKys7CisKKwkJCXN0
ZXAuZW5naW5lID0gaTsKKworCQkJaWYgKHN0ZXAuZW5naW5lID09IEJDUykKKwkJCQliY3NfdXNl
ZCA9IHRydWU7CiAJCX0KIAogCQlpZiAoKGZpZWxkID0gc3RydG9rX3IoZnN0YXJ0LCAiLiIsICZm
Y3R4KSkgIT0gTlVMTCkgewotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
