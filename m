Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B96E2677D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1F489C14;
	Wed, 22 May 2019 15:57:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B946289BF0;
 Wed, 22 May 2019 15:57:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:57:32 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2019 08:57:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 16:57:08 +0100
Message-Id: <20190522155720.28723-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 03/15] gem_wsim: Compact int command
 parsing with a macro
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClBhcnNpbmcg
YW4gaW50ZWdlciB3b3JrbG9hZCBkZXNjcmlwdG9yIGZpZWxkIGlzIGEgY29tbW9uIHBhdHRlcm4g
d2hpY2ggd2UKY2FuIGV4dHJhY3QgdG8gYSBoZWxwZXIgbWFjcm8gYW5kIGJ5IGRvaW5nIHNvIGZ1
cnRoZXIgaW1wcm92ZSB0aGUKcmVhZGFiaWxpdHkgb2YgdGhlIG1haW4gcGFyc2luZyBsb29wLgoK
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGJlbmNobWFya3MvZ2VtX3dzaW0uYyB8IDgwICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA1NSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMgYi9iZW5jaG1hcmtz
L2dlbV93c2ltLmMKaW5kZXggYmFhMzg5YzNmMGU3Li42NjgzMmY3NGUzNGEgMTAwNjQ0Ci0tLSBh
L2JlbmNobWFya3MvZ2VtX3dzaW0uYworKysgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKQEAgLTM3
Niw2ICszNzYsMTUgQEAgc3RhdGljIGludCBwYXJzZV9lbmdpbmVfbWFwKHN0cnVjdCB3X3N0ZXAg
KnN0ZXAsIGNvbnN0IGNoYXIgKl9zdHIpCiAJcmV0dXJuIDA7CiB9CiAKKyNkZWZpbmUgaW50X2Zp
ZWxkKF9TVEVQXywgX0ZJRUxEXywgX0NPTkRfLCBfRVJSXykgXAorCWlmICgoZmllbGQgPSBzdHJ0
b2tfcihmc3RhcnQsICIuIiwgJmZjdHgpKSkgeyBcCisJCXRtcCA9IGF0b2koZmllbGQpOyBcCisJ
CWNoZWNrX2FyZyhfQ09ORF8sIF9FUlJfLCBucl9zdGVwcyk7IFwKKwkJc3RlcC50eXBlID0gX1NU
RVBfOyBcCisJCXN0ZXAuX0ZJRUxEXyA9IHRtcDsgXAorCQlnb3RvIGFkZF9zdGVwOyBcCisJfSBc
CisKIHN0YXRpYyBzdHJ1Y3Qgd29ya2xvYWQgKgogcGFyc2Vfd29ya2xvYWQoc3RydWN0IHdfYXJn
ICphcmcsIHVuc2lnbmVkIGludCBmbGFncywgc3RydWN0IHdvcmtsb2FkICphcHBfdykKIHsKQEAg
LTQwMywyNSArNDEyLDExIEBAIHBhcnNlX3dvcmtsb2FkKHN0cnVjdCB3X2FyZyAqYXJnLCB1bnNp
Z25lZCBpbnQgZmxhZ3MsIHN0cnVjdCB3b3JrbG9hZCAqYXBwX3cpCiAJCQlmc3RhcnQgPSBOVUxM
OwogCiAJCQlpZiAoIXN0cmNtcChmaWVsZCwgImQiKSkgewotCQkJCWlmICgoZmllbGQgPSBzdHJ0
b2tfcihmc3RhcnQsICIuIiwgJmZjdHgpKSkgewotCQkJCQl0bXAgPSBhdG9pKGZpZWxkKTsKLQkJ
CQkJY2hlY2tfYXJnKHRtcCA8PSAwLAotCQkJCQkJICAiSW52YWxpZCBkZWxheSBhdCBzdGVwICV1
IVxuIiwKLQkJCQkJCSAgbnJfc3RlcHMpOwotCQkJCQlzdGVwLnR5cGUgPSBERUxBWTsKLQkJCQkJ
c3RlcC5kZWxheSA9IHRtcDsKLQkJCQkJZ290byBhZGRfc3RlcDsKLQkJCQl9CisJCQkJaW50X2Zp
ZWxkKERFTEFZLCBkZWxheSwgdG1wIDw9IDAsCisJCQkJCSAgIkludmFsaWQgZGVsYXkgYXQgc3Rl
cCAldSFcbiIpOwogCQkJfSBlbHNlIGlmICghc3RyY21wKGZpZWxkLCAicCIpKSB7Ci0JCQkJaWYg
KChmaWVsZCA9IHN0cnRva19yKGZzdGFydCwgIi4iLCAmZmN0eCkpKSB7Ci0JCQkJCXRtcCA9IGF0
b2koZmllbGQpOwotCQkJCQljaGVja19hcmcodG1wIDw9IDAsCi0JCQkJCQkgICJJbnZhbGlkIHBl
cmlvZCBhdCBzdGVwICV1IVxuIiwKLQkJCQkJCSAgbnJfc3RlcHMpOwotCQkJCQlzdGVwLnR5cGUg
PSBQRVJJT0Q7Ci0JCQkJCXN0ZXAucGVyaW9kID0gdG1wOwotCQkJCQlnb3RvIGFkZF9zdGVwOwot
CQkJCX0KKwkJCQlpbnRfZmllbGQoUEVSSU9ELCBwZXJpb2QsIHRtcCA8PSAwLAorCQkJCQkgICJJ
bnZhbGlkIHBlcmlvZCBhdCBzdGVwICV1IVxuIik7CiAJCQl9IGVsc2UgaWYgKCFzdHJjbXAoZmll
bGQsICJQIikpIHsKIAkJCQl1bnNpZ25lZCBpbnQgbnIgPSAwOwogCQkJCXdoaWxlICgoZmllbGQg
PSBzdHJ0b2tfcihmc3RhcnQsICIuIiwgJmZjdHgpKSkgewpAQCAtNDQ0LDQ2ICs0MzksMjEgQEAg
cGFyc2Vfd29ya2xvYWQoc3RydWN0IHdfYXJnICphcmcsIHVuc2lnbmVkIGludCBmbGFncywgc3Ry
dWN0IHdvcmtsb2FkICphcHBfdykKIAkJCQlzdGVwLnR5cGUgPSBDVFhfUFJJT1JJVFk7CiAJCQkJ
Z290byBhZGRfc3RlcDsKIAkJCX0gZWxzZSBpZiAoIXN0cmNtcChmaWVsZCwgInMiKSkgewotCQkJ
CWlmICgoZmllbGQgPSBzdHJ0b2tfcihmc3RhcnQsICIuIiwgJmZjdHgpKSkgewotCQkJCQl0bXAg
PSBhdG9pKGZpZWxkKTsKLQkJCQkJY2hlY2tfYXJnKHRtcCA+PSAwIHx8Ci0JCQkJCQkgICgoaW50
KW5yX3N0ZXBzICsgdG1wKSA8IDAsCi0JCQkJCQkgICJJbnZhbGlkIHN5bmMgdGFyZ2V0IGF0IHN0
ZXAgJXUhXG4iLAotCQkJCQkJICBucl9zdGVwcyk7Ci0JCQkJCXN0ZXAudHlwZSA9IFNZTkM7Ci0J
CQkJCXN0ZXAudGFyZ2V0ID0gdG1wOwotCQkJCQlnb3RvIGFkZF9zdGVwOwotCQkJCX0KKwkJCQlp
bnRfZmllbGQoU1lOQywgdGFyZ2V0LAorCQkJCQkgIHRtcCA+PSAwIHx8ICgoaW50KW5yX3N0ZXBz
ICsgdG1wKSA8IDAsCisJCQkJCSAgIkludmFsaWQgc3luYyB0YXJnZXQgYXQgc3RlcCAldSFcbiIp
OwogCQkJfSBlbHNlIGlmICghc3RyY21wKGZpZWxkLCAidCIpKSB7Ci0JCQkJaWYgKChmaWVsZCA9
IHN0cnRva19yKGZzdGFydCwgIi4iLCAmZmN0eCkpKSB7Ci0JCQkJCXRtcCA9IGF0b2koZmllbGQp
OwotCQkJCQljaGVja19hcmcodG1wIDwgMCwKLQkJCQkJCSAgIkludmFsaWQgdGhyb3R0bGUgYXQg
c3RlcCAldSFcbiIsCi0JCQkJCQkgIG5yX3N0ZXBzKTsKLQkJCQkJc3RlcC50eXBlID0gVEhST1RU
TEU7Ci0JCQkJCXN0ZXAudGhyb3R0bGUgPSB0bXA7Ci0JCQkJCWdvdG8gYWRkX3N0ZXA7Ci0JCQkJ
fQorCQkJCWludF9maWVsZChUSFJPVFRMRSwgdGhyb3R0bGUsCisJCQkJCSAgdG1wIDwgMCwKKwkJ
CQkJICAiSW52YWxpZCB0aHJvdHRsZSBhdCBzdGVwICV1IVxuIik7CiAJCQl9IGVsc2UgaWYgKCFz
dHJjbXAoZmllbGQsICJxIikpIHsKLQkJCQlpZiAoKGZpZWxkID0gc3RydG9rX3IoZnN0YXJ0LCAi
LiIsICZmY3R4KSkpIHsKLQkJCQkJdG1wID0gYXRvaShmaWVsZCk7Ci0JCQkJCWNoZWNrX2FyZyh0
bXAgPCAwLAotCQkJCQkJICAiSW52YWxpZCBxZCB0aHJvdHRsZSBhdCBzdGVwICV1IVxuIiwKLQkJ
CQkJCSAgbnJfc3RlcHMpOwotCQkJCQlzdGVwLnR5cGUgPSBRRF9USFJPVFRMRTsKLQkJCQkJc3Rl
cC50aHJvdHRsZSA9IHRtcDsKLQkJCQkJZ290byBhZGRfc3RlcDsKLQkJCQl9CisJCQkJaW50X2Zp
ZWxkKFFEX1RIUk9UVExFLCB0aHJvdHRsZSwKKwkJCQkJICB0bXAgPCAwLAorCQkJCQkgICJJbnZh
bGlkIHFkIHRocm90dGxlIGF0IHN0ZXAgJXUhXG4iKTsKIAkJCX0gZWxzZSBpZiAoIXN0cmNtcChm
aWVsZCwgImEiKSkgewotCQkJCWlmICgoZmllbGQgPSBzdHJ0b2tfcihmc3RhcnQsICIuIiwgJmZj
dHgpKSkgewotCQkJCQl0bXAgPSBhdG9pKGZpZWxkKTsKLQkJCQkJY2hlY2tfYXJnKHRtcCA+PSAw
LAotCQkJCQkJICAiSW52YWxpZCBzdyBmZW5jZSBzaWduYWwgYXQgc3RlcCAldSFcbiIsCi0JCQkJ
CQkgIG5yX3N0ZXBzKTsKLQkJCQkJc3RlcC50eXBlID0gU1dfRkVOQ0VfU0lHTkFMOwotCQkJCQlz
dGVwLnRhcmdldCA9IHRtcDsKLQkJCQkJZ290byBhZGRfc3RlcDsKLQkJCQl9CisJCQkJaW50X2Zp
ZWxkKFNXX0ZFTkNFX1NJR05BTCwgdGFyZ2V0LAorCQkJCQkgIHRtcCA+PSAwLAorCQkJCQkgICJJ
bnZhbGlkIHN3IGZlbmNlIHNpZ25hbCBhdCBzdGVwICV1IVxuIik7CiAJCQl9IGVsc2UgaWYgKCFz
dHJjbXAoZmllbGQsICJmIikpIHsKIAkJCQlzdGVwLnR5cGUgPSBTV19GRU5DRTsKIAkJCQlnb3Rv
IGFkZF9zdGVwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
