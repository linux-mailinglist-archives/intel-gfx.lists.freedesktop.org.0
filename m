Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6595F48B98
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BA189322;
	Mon, 17 Jun 2019 18:13:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54DEC8931F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:13:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:13:12 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2019 11:13:11 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 19:12:19 +0100
Message-Id: <20190617181236.7981-17-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 16/33] drm/i915: Move intel_engines_resume into
 common init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpbmNlIHRo
aXMgcGFydCBzdGlsbCBvcGVyYXRlcyBvbiBpOTE1IGFuZCBub3QgaW50ZWxfZ3QsIG1vdmUgaXQg
dG8gdGhlCmNvbW1vbiAodG9wLWxldmVsKSBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCmluZGV4IDRhYjcxMjg0NGVhZS4uYmJiZjdhMGFmNTBjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKQEAgLTEyODYsMTcgKzEyODYsMTAgQEAgc3RhdGljIGludCBpbml0X2h3KHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiAKIAlpbnRlbF9tb2NzX2luaXRfbDNjY190YWJsZShndCk7CiAKLQkv
KiBPbmx5IHdoZW4gdGhlIEhXIGlzIHJlLWluaXRpYWxpc2VkLCBjYW4gd2UgcmVwbGF5IHRoZSBy
ZXF1ZXN0cyAqLwotCXJldCA9IGludGVsX2VuZ2luZXNfcmVzdW1lKGk5MTUpOwotCWlmIChyZXQp
Ci0JCWdvdG8gY2xlYW51cF91YzsKLQogCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHVuY29y
ZSwgRk9SQ0VXQUtFX0FMTCk7CiAKIAlyZXR1cm4gMDsKIAotY2xlYW51cF91YzoKLQlpbnRlbF91
Y19maW5pX2h3KGk5MTUpOwogb3V0OgogCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHVuY29y
ZSwgRk9SQ0VXQUtFX0FMTCk7CiAKQEAgLTEzMDUsNiArMTI5OCw3IEBAIHN0YXRpYyBpbnQgaW5p
dF9odyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCiBpbnQgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSAmaTkxNS0+dW5jb3JlOwogCWludCByZXQ7CiAKIAlCVUdfT04oIWk5MTUtPmtlcm5lbF9jb250
ZXh0KTsKQEAgLTEzMTIsNyArMTMwNiwyOCBAQCBpbnQgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJLyog
RG91YmxlIGxheWVyIHNlY3VyaXR5IGJsYW5rZXQsIHNlZSBpOTE1X2dlbV9pbml0KCkgKi8KKwlp
bnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCh1bmNvcmUsIEZPUkNFV0FLRV9BTEwpOworCiAJcmV0
ID0gaW5pdF9odygmaTkxNS0+Z3QpOworCWlmIChyZXQpCisJCWdvdG8gZXJyX2luaXQ7CisKKwkv
KiBPbmx5IHdoZW4gdGhlIEhXIGlzIHJlLWluaXRpYWxpc2VkLCBjYW4gd2UgcmVwbGF5IHRoZSBy
ZXF1ZXN0cyAqLworCXJldCA9IGludGVsX2VuZ2luZXNfcmVzdW1lKGk5MTUpOworCWlmIChyZXQp
CisJCWdvdG8gZXJyX2VuZ2luZXM7CisKKwlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1bmNv
cmUsIEZPUkNFV0FLRV9BTEwpOworCisJaW50ZWxfZW5naW5lc19zZXRfc2NoZWR1bGVyX2NhcHMo
aTkxNSk7CisKKwlyZXR1cm4gMDsKKworZXJyX2VuZ2luZXM6CisJaW50ZWxfdWNfZmluaV9odyhp
OTE1KTsKK2Vycl9pbml0OgorCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHVuY29yZSwgRk9S
Q0VXQUtFX0FMTCk7CiAKIAlpbnRlbF9lbmdpbmVzX3NldF9zY2hlZHVsZXJfY2FwcyhpOTE1KTsK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
