Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1543123AEA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 16:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD381892DE;
	Mon, 20 May 2019 14:48:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D37E892D7;
 Mon, 20 May 2019 14:48:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 07:48:17 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2019 07:48:16 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 May 2019 15:47:39 +0100
Message-Id: <20190520144739.13111-28-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 27/27] gem_wsim: Allow random seed control
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
Cc: Simon Ser <simon.ser@intel.com>, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5ldyBjb21t
YW5kIGxpbmUgb3B0aW9uIHRvIGFsbG93IGNvbnRyb2xpbmcgdGhlIGluaXRpYWwgcHNldWRvIHJh
bmRvbQpnZW5lcmF0b3Igc2VlZCBpbiBvcmRlciB0byBhbGxvdyByZXBlYXRhYmxlIHJ1bnMuCgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpT
dWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTdWdn
ZXN0ZWQtYnk6IFNpbW9uIFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtz
L2dlbV93c2ltLmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5j
IGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCmluZGV4IGM0M2JiYmM4Yzk0ZC4uZTJmZmI5M2E5NGQ1
IDEwMDY0NAotLS0gYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMKKysrIGIvYmVuY2htYXJrcy9nZW1f
d3NpbS5jCkBAIC0yOTQ2LDYgKzI5NDYsNyBAQCBzdGF0aWMgdm9pZCBwcmludF9oZWxwKHZvaWQp
CiAiICAtdCA8bj4gICAgICAgICAgTm9wIGNhbGlicmF0aW9uIHRvbGVyYW5jZSBwZXJjZW50YWdl
LlxuIgogIiAgICAgICAgICAgICAgICAgIFVzZSB3aGVuIHRoZXJlIGlzIGEgZGlmZmljdWx0eSBv
YnRhaW5pbmcgY2FsaWJyYXRpb24gd2l0aCB0aGVcbiIKICIgICAgICAgICAgICAgICAgICBkZWZh
dWx0IHNldHRpbmdzLlxuIgorIiAgLUkgPG4+ICAgICAgICAgIEluaXRpYWwgcmFuZG9tbmVzcyBz
ZWVkLlxuIgogIiAgLXAgPG4+ICAgICAgICAgIENvbnRleHQgcHJpb3JpdHkgdG8gdXNlIGZvciB0
aGUgZm9sbG93aW5nIHdvcmtsb2FkIG9uIHRoZVxuIgogIiAgICAgICAgICAgICAgICAgIGNvbW1h
bmQgbGluZS5cbiIKICIgIC13IDxkZXNjfHBhdGg+ICBGaWxlbmFtZSBvciBhIHdvcmtsb2FkIGRl
c2NyaXB0b3IuXG4iCkBAIC0zMTE5LDExICszMTIwLDkgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNo
YXIgKiphcmd2KQogCWluaXRfY2xvY2tzKCk7CiAKIAltYXN0ZXJfcHJuZyA9IHRpbWUoTlVMTCk7
Ci0Jc3JhbmQobWFzdGVyX3BybmcpOwotCW1hc3Rlcl9wcm5nID0gcmFuZCgpOwogCiAJd2hpbGUg
KChjID0gZ2V0b3B0KGFyZ2MsIGFyZ3YsCi0JCQkgICAiaHF2MlJzU0h4R2RjOm46cjp3Olc6YTp0
OmI6cDoiKSkgIT0gLTEpIHsKKwkJCSAgICJocXYyUnNTSHhHZGM6bjpyOnc6VzphOnQ6YjpwOkk6
IikpICE9IC0xKSB7CiAJCXN3aXRjaCAoYykgewogCQljYXNlICdXJzoKIAkJCWlmIChtYXN0ZXJf
d29ya2xvYWQgPj0gMCkgewpAQCAtMzIxMCw2ICszMjA5LDkgQEAgaW50IG1haW4oaW50IGFyZ2Ms
IGNoYXIgKiphcmd2KQogCQkJCXJldHVybiAxOwogCQkJfQogCQkJYnJlYWs7CisJCWNhc2UgJ0kn
OgorCQkJbWFzdGVyX3BybmcgPSBzdHJ0b2wob3B0YXJnLCBOVUxMLCAwKTsKKwkJCWJyZWFrOwog
CQljYXNlICdoJzoKIAkJCXByaW50X2hlbHAoKTsKIAkJCXJldHVybiAwOwpAQCAtMzI5NCw2ICsz
Mjk2LDcgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogCQljbGllbnRzID0gbnJf
d19hcmdzOwogCiAJaWYgKHZlcmJvc2UgPiAxKSB7CisJCXByaW50ZigiUmFuZG9tIHNlZWQgaXMg
JXUuXG4iLCBtYXN0ZXJfcHJuZyk7CiAJCXByaW50ZigiVXNpbmcgJWx1IG5vcCBjYWxpYnJhdGlv
biBmb3IgJXV1cyBkZWxheS5cbiIsCiAJCSAgICAgICBub3BfY2FsaWJyYXRpb24sIG5vcF9jYWxp
YnJhdGlvbl91cyk7CiAJCXByaW50ZigiJXUgY2xpZW50JXMuXG4iLCBjbGllbnRzLCBjbGllbnRz
ID4gMSA/ICJzIiA6ICIiKTsKQEAgLTMzMTIsNiArMzMxNSw5IEBAIGludCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKIAkJfQogCX0KIAorCXNyYW5kKG1hc3Rlcl9wcm5nKTsKKwltYXN0ZXJf
cHJuZyA9IHJhbmQoKTsKKwogCWlmIChtYXN0ZXJfd29ya2xvYWQgPj0gMCAmJiBjbGllbnRzID09
IDEpCiAJCW1hc3Rlcl93b3JrbG9hZCA9IC0xOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
