Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F3E20F4D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 21:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE73897B5;
	Thu, 16 May 2019 19:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2AFB897B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 19:43:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16581502-1500050 
 for multiple; Thu, 16 May 2019 20:42:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2019 20:42:44 +0100
Message-Id: <20190516194244.20098-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Measure nop latency
 on all engines
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

RGlmZmVyZW50IGVuZ2luZXMgdGFrZSBkaWZmZXJlbnQgbnVtYmVyIG9mIGN5Y2xlcyBmb3IgTUlf
Tk9PUC4gQXMgd2UKc3BlY2lmeSB3b3JrbG9hZHMgaW4gdXMsIHdlIG5lZWQgdG8gdGFrZSBpbnRv
IGFjY291bnQgdGhlIGRpZmZlcmVudApjYWxpYnJhdGlvbiB2YWx1ZXMgc28gdGhhdCB0aGUgd29y
a2xvYWRzIGJlaGF2ZSBhcyBleHBlY3RlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCA3MiArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTIgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1f
d3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCmluZGV4IDk1NjRkY2I3MC4uNTBhMDYyZjBl
IDEwMDY0NAotLS0gYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMKKysrIGIvYmVuY2htYXJrcy9nZW1f
d3NpbS5jCkBAIC0yMzgsNyArMjM4LDcgQEAgc3RydWN0IHdvcmtsb2FkCiB9OwogCiBzdGF0aWMg
Y29uc3QgdW5zaWduZWQgaW50IG5vcF9jYWxpYnJhdGlvbl91cyA9IDEwMDA7Ci1zdGF0aWMgdW5z
aWduZWQgbG9uZyBub3BfY2FsaWJyYXRpb247CitzdGF0aWMgdW5zaWduZWQgbG9uZyBub3BfY2Fs
aWJyYXRpb25bTlVNX0VOR0lORVNdOwogCiBzdGF0aWMgdW5zaWduZWQgaW50IGNvbnRleHRfdmNz
X3JyOwogCkBAIC04MDgsOSArODA4LDkgQEAgc3RhdGljIHVuc2lnbmVkIGludCBnZXRfZHVyYXRp
b24oc3RydWN0IHdfc3RlcCAqdykKIAkJICAgICAgIChkdXItPm1heCArIDEgLSBkdXItPm1pbik7
CiB9CiAKLXN0YXRpYyB1bnNpZ25lZCBsb25nIGdldF9iYl9zeih1bnNpZ25lZCBpbnQgZHVyYXRp
b24pCitzdGF0aWMgdW5zaWduZWQgbG9uZyBnZXRfYmJfc3oodW5zaWduZWQgaW50IGVuZ2luZSwg
dW5zaWduZWQgaW50IGR1cmF0aW9uKQogewotCXJldHVybiBBTElHTihkdXJhdGlvbiAqIG5vcF9j
YWxpYnJhdGlvbiAqIHNpemVvZih1aW50MzJfdCkgLworCXJldHVybiBBTElHTihkdXJhdGlvbiAq
IG5vcF9jYWxpYnJhdGlvbltlbmdpbmVdICogc2l6ZW9mKHVpbnQzMl90KSAvCiAJCSAgICAgbm9w
X2NhbGlicmF0aW9uX3VzLCBzaXplb2YodWludDMyX3QpKTsKIH0KIApAQCAtODE4LDcgKzgxOCw3
IEBAIHN0YXRpYyB2b2lkCiBpbml0X2JiKHN0cnVjdCB3X3N0ZXAgKncsIHVuc2lnbmVkIGludCBm
bGFncykKIHsKIAljb25zdCB1bnNpZ25lZCBpbnQgYXJiX3BlcmlvZCA9Ci0JCQlnZXRfYmJfc3oo
dy0+cHJlZW1wdF91cykgLyBzaXplb2YodWludDMyX3QpOworCQkJZ2V0X2JiX3N6KHctPmVuZ2lu
ZSwgdy0+cHJlZW1wdF91cykgLyBzaXplb2YodWludDMyX3QpOwogCWNvbnN0IHVuc2lnbmVkIGlu
dCBtbWFwX2xlbiA9IEFMSUdOKHctPmJiX3N6LCA0MDk2KTsKIAl1bnNpZ25lZCBpbnQgaTsKIAl1
aW50MzJfdCAqcHRyOwpAQCAtMTA0MywxMCArMTA0MywxMCBAQCBhbGxvY19zdGVwX2JhdGNoKHN0
cnVjdCB3b3JrbG9hZCAqd3JrLCBzdHJ1Y3Qgd19zdGVwICp3LCB1bnNpZ25lZCBpbnQgZmxhZ3Mp
CiAKIAlpZiAody0+dW5ib3VuZF9kdXJhdGlvbikKIAkJLyogbm9wcyArIE1JX0FSQl9DSEsgKyBN
SV9CQVRDSF9CVUZGRVJfU1RBUlQgKi8KLQkJdy0+YmJfc3ogPSBtYXgoNjQsIGdldF9iYl9zeih3
LT5wcmVlbXB0X3VzKSkgKworCQl3LT5iYl9zeiA9IG1heCg2NCwgZ2V0X2JiX3N6KHctPmVuZ2lu
ZSwgdy0+cHJlZW1wdF91cykpICsKIAkJCSAgICgxICsgMykgKiBzaXplb2YodWludDMyX3QpOwog
CWVsc2UKLQkJdy0+YmJfc3ogPSBnZXRfYmJfc3oody0+ZHVyYXRpb24ubWF4KTsKKwkJdy0+YmJf
c3ogPSBnZXRfYmJfc3oody0+ZW5naW5lLCB3LT5kdXJhdGlvbi5tYXgpOwogCXctPmJiX2hhbmRs
ZSA9IHctPm9ialtqXS5oYW5kbGUgPSBnZW1fY3JlYXRlKGZkLCB3LT5iYl9zeiArICh3LT51bmJv
dW5kX2R1cmF0aW9uID8gNDA5NiA6IDApKTsKIAlpbml0X2JiKHcsIGZsYWdzKTsKIAl0ZXJtaW5h
dGVfYmIodywgZmxhZ3MpOwpAQCAtMjMwMCw3ICsyMzAwLDcgQEAgZG9fZWIoc3RydWN0IHdvcmts
b2FkICp3cmssIHN0cnVjdCB3X3N0ZXAgKncsIGVudW0gaW50ZWxfZW5naW5lX2lkIGVuZ2luZSwK
IAl3LT5lYi5iYXRjaF9zdGFydF9vZmZzZXQgPQogCQl3LT51bmJvdW5kX2R1cmF0aW9uID8KIAkJ
MCA6Ci0JCUFMSUdOKHctPmJiX3N6IC0gZ2V0X2JiX3N6KGdldF9kdXJhdGlvbih3KSksCisJCUFM
SUdOKHctPmJiX3N6IC0gZ2V0X2JiX3N6KGVuZ2luZSwgZ2V0X2R1cmF0aW9uKHcpKSwKIAkJICAg
ICAgMiAqIHNpemVvZih1aW50MzJfdCkpOwogCiAJZm9yIChpID0gMDsgaSA8IHctPmZlbmNlX2Rl
cHMubnI7IGkrKykgewpAQCAtMjU4MCwxNyArMjU4MCwyMyBAQCBzdGF0aWMgdm9pZCBmaW5pX3dv
cmtsb2FkKHN0cnVjdCB3b3JrbG9hZCAqd3JrKQogCWZyZWUod3JrKTsKIH0KIAotc3RhdGljIHVu
c2lnbmVkIGxvbmcgY2FsaWJyYXRlX25vcCh1bnNpZ25lZCBpbnQgdG9sZXJhbmNlX3BjdCkKK3N0
YXRpYyB1bnNpZ25lZCBsb25nIGNhbGlicmF0ZV9ub3AodW5zaWduZWQgaW50IGVuZ2luZSwgZG91
YmxlIHRvbGVyYW5jZV9wY3QpCiB7CiAJY29uc3QgdWludDMyX3QgYmJlID0gMHhhIDw8IDIzOwog
CXVuc2lnbmVkIGludCBsb29wcyA9IDE3OwogCXVuc2lnbmVkIGludCB1c2VjcyA9IG5vcF9jYWxp
YnJhdGlvbl91czsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmogPSB7fTsK
LQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyIGViID0KLQkJeyAuYnVmZmVyX2NvdW50
ID0gMSwgLmJ1ZmZlcnNfcHRyID0gKHVpbnRwdHJfdCkmb2JqfTsKKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNidWZmZXIyIGViID0geworCQkuYnVmZmVyX2NvdW50ID0gMSwKKwkJLmJ1ZmZlcnNf
cHRyID0gKHVpbnRwdHJfdCkmb2JqLAorCQkuZmxhZ3MgPSBlYl9lbmdpbmVfbWFwW2VuZ2luZV0s
CisJfTsKIAlsb25nIHNpemUsIGxhc3Rfc2l6ZTsKIAlzdHJ1Y3QgdGltZXNwZWMgdF8wLCB0X2Vu
ZDsKIAorCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZWIpICE9IC1FTk9FTlQpCisJCXJldHVybiAw
OworCiAJY2xvY2tfZ2V0dGltZShDTE9DS19NT05PVE9OSUMsICZ0XzApOwogCiAJc2l6ZSA9IDI1
NiAqIDEwMjQ7CkBAIC0yODAzLDggKzI4MDksOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCiAJaW50IG1hc3Rlcl93b3JrbG9hZCA9IC0xOwogCWNoYXIgKmFwcGVuZF93b3JrbG9h
ZF9hcmcgPSBOVUxMOwogCXN0cnVjdCB3X2FyZyAqd19hcmdzID0gTlVMTDsKLQl1bnNpZ25lZCBp
bnQgdG9sZXJhbmNlX3BjdCA9IDE7CiAJY29uc3Qgc3RydWN0IHdvcmtsb2FkX2JhbGFuY2VyICpi
YWxhbmNlciA9IE5VTEw7CisJZG91YmxlIHRvbGVyYW5jZV9wY3QgPSAxOwogCWNoYXIgKmVuZHB0
ciA9IE5VTEw7CiAJaW50IHByaW8gPSAwOwogCWRvdWJsZSB0OwpAQCAtMjg1MiwxMCArMjg1OCwy
OCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCiAJCQljbGllbnRzID0gc3RydG9s
KG9wdGFyZywgTlVMTCwgMCk7CiAJCQlicmVhazsKIAkJY2FzZSAndCc6Ci0JCQl0b2xlcmFuY2Vf
cGN0ID0gc3RydG9sKG9wdGFyZywgTlVMTCwgMCk7CisJCQl0b2xlcmFuY2VfcGN0ID0gc3RydG9k
KG9wdGFyZywgTlVMTCk7CiAJCQlicmVhazsKIAkJY2FzZSAnbic6Ci0JCQlub3BfY2FsaWJyYXRp
b24gPSBzdHJ0b2wob3B0YXJnLCBOVUxMLCAwKTsKKwkJCWlmIChzdHJjaHIob3B0YXJnLCAnLCcp
KSB7CisJCQkJY2hhciAqY3R4ID0gTlVMTDsKKwkJCQljaGFyICpzdHIgPSBvcHRhcmc7CisJCQkJ
Y2hhciAqdG9rZW47CisKKwkJCQl3aGlsZSAoKHRva2VuID0gc3RydG9rX3Ioc3RyLCAiLCIsICZj
dHgpKSAhPSBOVUxMKSB7CisJCQkJCXVuc2lnbmVkIGxvbmcgbm9wOworCQkJCQlpbnQgZW5naW5l
OworCisJCQkJCXN0ciA9IE5VTEw7CisJCQkJCWlmIChzc2NhbmYodG9rZW4sICIlZDolbHUiLAor
CQkJCQkJICAgJmVuZ2luZSwgJm5vcCkgPT0gMikKKwkJCQkJCW5vcF9jYWxpYnJhdGlvbltlbmdp
bmVdID0gbm9wOworCQkJCX0KKwkJCX0gZWxzZSB7CisJCQkJbm9wX2NhbGlicmF0aW9uWzBdID0g
c3RydG9sKG9wdGFyZywgTlVMTCwgMCk7CisJCQkJZm9yIChpID0gMTsgaSA8IE5VTV9FTkdJTkVT
OyBpKyspCisJCQkJCW5vcF9jYWxpYnJhdGlvbltpXSA9IG5vcF9jYWxpYnJhdGlvblswXTsKKwkJ
CX0KIAkJCWJyZWFrOwogCQljYXNlICdyJzoKIAkJCXJlcGVhdCA9IHN0cnRvbChvcHRhcmcsIE5V
TEwsIDApOwpAQCAtMjkzMCwxNCArMjk1NCwyMiBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCiAJCXJldHVybiAxOwogCX0KIAotCWlmICghbm9wX2NhbGlicmF0aW9uKSB7CisJaWYg
KCFub3BfY2FsaWJyYXRpb25bMF0pIHsKKwkJaW50IGVuZ2luZTsKKwogCQlpZiAodmVyYm9zZSA+
IDEpCi0JCQlwcmludGYoIkNhbGlicmF0aW5nIG5vcCBkZWxheSB3aXRoICV1JSUgdG9sZXJhbmNl
Li4uXG4iLAorCQkJcHJpbnRmKCJDYWxpYnJhdGluZyBub3AgZGVsYXkgd2l0aCAlLjFmJSUgdG9s
ZXJhbmNlLi4uXG4iLAogCQkJCXRvbGVyYW5jZV9wY3QpOwotCQlub3BfY2FsaWJyYXRpb24gPSBj
YWxpYnJhdGVfbm9wKHRvbGVyYW5jZV9wY3QpOwotCQlpZiAodmVyYm9zZSkKLQkJCXByaW50Zigi
Tm9wIGNhbGlicmF0aW9uIGZvciAldXVzIGRlbGF5IGlzICVsdS5cbiIsCi0JCQkgICAgICAgbm9w
X2NhbGlicmF0aW9uX3VzLCBub3BfY2FsaWJyYXRpb24pOworCisJCWZvciAoZW5naW5lID0gMDsg
ZW5naW5lIDwgTlVNX0VOR0lORVM7IGVuZ2luZSsrKSB7CisJCQlub3BfY2FsaWJyYXRpb25bZW5n
aW5lXSA9IGNhbGlicmF0ZV9ub3AoZW5naW5lLCB0b2xlcmFuY2VfcGN0KTsKKwkJCWlmICghbm9w
X2NhbGlicmF0aW9uW2VuZ2luZV0pCisJCQkJY29udGludWU7CisKKwkJCWlmICh2ZXJib3NlKQor
CQkJCXByaW50ZigiTm9wKGVuZ2luZTolZCkgY2FsaWJyYXRpb24gZm9yICV1dXMgZGVsYXkgaXMg
JWx1LlxuIiwKKwkJCQkgICAgICAgZW5naW5lLCBub3BfY2FsaWJyYXRpb25fdXMsIG5vcF9jYWxp
YnJhdGlvbltlbmdpbmVdKTsKKwkJfQogCiAJCXJldHVybiAwOwogCX0KQEAgLTI5OTcsNyArMzAy
OSw3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKIAogCWlmICh2ZXJib3NlID4g
MSkgewogCQlwcmludGYoIlVzaW5nICVsdSBub3AgY2FsaWJyYXRpb24gZm9yICV1dXMgZGVsYXku
XG4iLAotCQkgICAgICAgbm9wX2NhbGlicmF0aW9uLCBub3BfY2FsaWJyYXRpb25fdXMpOworCQkg
ICAgICAgbm9wX2NhbGlicmF0aW9uWzBdLCBub3BfY2FsaWJyYXRpb25fdXMpOwogCQlwcmludGYo
IiV1IGNsaWVudCVzLlxuIiwgY2xpZW50cywgY2xpZW50cyA+IDEgPyAicyIgOiAiIik7CiAJCWlm
IChmbGFncyAmIFNXQVBWQ1MpCiAJCQlwcmludGYoIlN3YXBwaW5nIFZDUyByaW5ncyBiZXR3ZWVu
IGNsaWVudHMuXG4iKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
