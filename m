Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA1628882C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 14:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B806ECC9;
	Fri,  9 Oct 2020 12:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C02C6ECC6
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Oct 2020 12:00:32 +0000 (UTC)
IronPort-SDR: 1pug7YgUO4B1XI8kSXWhp9qCaufiMPtzm+1/+EWIe7+S7xDufQZgW+E/lGqWR5/1cfCCTcJRbI
 V+8cxFxUL6Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="144795551"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="144795551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 05:00:32 -0700
IronPort-SDR: QrYygQIaTC6ZG30aw6b3o8Ofv76ahEXnp9jU5rrDsBAI6ZLxfbtsYYvnuAxxA8JTUEaghJurKU
 hxpMBFMVEaJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="345038391"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 09 Oct 2020 05:00:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Oct 2020 15:00:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Oct 2020 15:00:28 +0300
Message-Id: <20201009120028.32422-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201008101608.8652-2-ville.syrjala@linux.intel.com>
References: <20201008101608.8652-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Skip aux plane stuff when
 there is no aux plane
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCndo
ZW4gdGhlIGhhcmR3YXJlIGlzbid0IGdvaW5nIHRvIHVzZSB0aGUgYXV4IHBsYW5lIHRoZXJlJ3Mg
bm8KcmVhbCBwb2ludCBpbiBkZWFsaW5nIHdpdGggdGhlIHJlbGV2YW50IGhhcmR3YXJlIHJlc3Ry
aWN0aW9ucy4KU28gbGV0J3MganVzdCBza2lwIGFsbCB0aGF0IHdoZW4gbm90IG5lY2Vzc2FyeS4K
CldlIGNhbiBub3cgYWxzbyByZW1vdmUgdGhlIG9mZnNldD1+MHhmZmYgYmVoYXZpb3VyIGZvciB1
bnVzZWQKY29sb3IgcGxhbmVzLiBMZXQncyBqdXN0IHplcm8gb3V0IGV2ZXJ5dGluZyBzbyBhcyB0
byBub3QgbGVhdmUKc3RhbGUgZ2FyYmFnZSBiZWhpbmQgdG8gY29uZnVzZSBwZW9wbGUgZGVidWdn
aW5nIHRoZSBjb2RlLgoKdjI6IEV4cGxpY2l0bHkgc2V0IEFVWF9ESVNUIHRvIHplcm8gd2hlbiB0
aGVyZSBpcyBubyBhdXggcGxhbmUKClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+ICN2MQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMTQgKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc3ByaXRlLmMgIHwgMTMgKysrKysrKystLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxNyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDQ0ZmQ3MDU5ODM4Zi4uMzRiYTM0Zjg0
YjJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMjAwMSwxMyArMjAwMSwxNyBAQCBzdGF0aWMgaW50IGNjc190b19tYWluX3BsYW5lKGNvbnN0
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY2NzX3BsYW5lKQogCXJldHVybiBjY3Nf
cGxhbmUgLSBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzIC8gMjsKIH0KIAotLyogUmV0dXJuIGVpdGhl
ciB0aGUgbWFpbiBwbGFuZSdzIENDUyBvciAtIGlmIG5vdCBhIENDUyBGQiAtIFVWIHBsYW5lICov
CiBpbnQgaW50ZWxfbWFpbl90b19hdXhfcGxhbmUoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZl
ciAqZmIsIGludCBtYWluX3BsYW5lKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShmYi0+ZGV2KTsKKwogCWlmIChpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVy
KSkKIAkJcmV0dXJuIG1haW5fdG9fY2NzX3BsYW5lKGZiLCBtYWluX3BsYW5lKTsKLQotCXJldHVy
biAxOworCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA8IDExICYmCisJCSBpbnRlbF9mb3JtYXRf
aW5mb19pc195dXZfc2VtaXBsYW5hcihmYi0+Zm9ybWF0LCBmYi0+bW9kaWZpZXIpKQorCQlyZXR1
cm4gMTsKKwllbHNlCisJCXJldHVybiAwOwogfQogCiBib29sCkBAIC0zOTMzLDcgKzM5MzcsNyBA
QCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkKIAkgKiBtYWluIHN1cmZhY2Ugb2Zmc2V0LCBhbmQgaXQgbXVzdCBi
ZSBub24tbmVnYXRpdmUuIE1ha2UKIAkgKiBzdXJlIHRoYXQgaXMgd2hhdCB3ZSB3aWxsIGdldC4K
IAkgKi8KLQlpZiAob2Zmc2V0ID4gYXV4X29mZnNldCkKKwlpZiAoYXV4X3BsYW5lICYmIG9mZnNl
dCA+IGF1eF9vZmZzZXQpCiAJCW9mZnNldCA9IGludGVsX3BsYW5lX2FkanVzdF9hbGlnbmVkX29m
ZnNldCgmeCwgJnksIHBsYW5lX3N0YXRlLCAwLAogCQkJCQkJCSAgIG9mZnNldCwgYXV4X29mZnNl
dCAmIH4oYWxpZ25tZW50IC0gMSkpOwogCkBAIC00MTMxLDcgKzQxMzUsNyBAQCBpbnQgc2tsX2No
ZWNrX3BsYW5lX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkK
IAl9CiAKIAlmb3IgKGkgPSBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzOyBpIDwgQVJSQVlfU0laRShw
bGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmUpOyBpKyspIHsKLQkJcGxhbmVfc3RhdGUtPmNvbG9yX3Bs
YW5lW2ldLm9mZnNldCA9IH4weGZmZjsKKwkJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2ldLm9m
ZnNldCA9IDA7CiAJCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtpXS54ID0gMDsKIAkJcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW2ldLnkgPSAwOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDJkYTExYWI2MzQzYy4uYWY2YTBhZDlhNDNkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTY1NSw4
ICs2NTUsNiBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAog
CXUzMiBzdHJpZGUgPSBza2xfcGxhbmVfc3RyaWRlKHBsYW5lX3N0YXRlLCBjb2xvcl9wbGFuZSk7
CiAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7
CiAJaW50IGF1eF9wbGFuZSA9IGludGVsX21haW5fdG9fYXV4X3BsYW5lKGZiLCBjb2xvcl9wbGFu
ZSk7Ci0JdTMyIGF1eF9kaXN0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2F1eF9wbGFuZV0u
b2Zmc2V0IC0gc3VyZl9hZGRyOwotCXUzMiBhdXhfc3RyaWRlID0gc2tsX3BsYW5lX3N0cmlkZShw
bGFuZV9zdGF0ZSwgYXV4X3BsYW5lKTsKIAlpbnQgY3J0Y194ID0gcGxhbmVfc3RhdGUtPnVhcGku
ZHN0LngxOwogCWludCBjcnRjX3kgPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7CiAJdTMyIHgg
PSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLng7CkBAIC02NjQsNyArNjYy
LDcgQEAgc2tsX3Byb2dyYW1fcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAl1MzIg
c3JjX3cgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKIAl1
MzIgc3JjX2ggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7
CiAJdTggYWxwaGEgPSBwbGFuZV9zdGF0ZS0+aHcuYWxwaGEgPj4gODsKLQl1MzIgcGxhbmVfY29s
b3JfY3RsID0gMDsKKwl1MzIgcGxhbmVfY29sb3JfY3RsID0gMCwgYXV4X2Rpc3QgPSAwOwogCXVu
c2lnbmVkIGxvbmcgaXJxZmxhZ3M7CiAJdTMyIGtleW1zaywga2V5bWF4OwogCXUzMiBwbGFuZV9j
dGwgPSBwbGFuZV9zdGF0ZS0+Y3RsOwpAQCAtNjkxLDYgKzY4OSwxMyBAQCBza2xfcHJvZ3JhbV9w
bGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQljcnRjX3kgPSAwOwogCX0KIAorCWlm
IChhdXhfcGxhbmUpIHsKKwkJYXV4X2Rpc3QgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbYXV4
X3BsYW5lXS5vZmZzZXQgLSBzdXJmX2FkZHI7CisKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
PCAxMikKKwkJCWF1eF9kaXN0IHw9IHNrbF9wbGFuZV9zdHJpZGUocGxhbmVfc3RhdGUsIGF1eF9w
bGFuZSk7CisJfQorCiAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldl9wcml2LT51bmNvcmUubG9jaywg
aXJxZmxhZ3MpOwogCiAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX1NUUklERShw
aXBlLCBwbGFuZV9pZCksIHN0cmlkZSk7CkBAIC02OTksOCArNzA0LDYgQEAgc2tsX3Byb2dyYW1f
cGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgUExBTkVfU0laRShwaXBlLCBwbGFuZV9pZCksCiAJCQkgIChzcmNfaCA8PCAxNikgfCBz
cmNfdyk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKQotCQlhdXhfZGlzdCB8PSBh
dXhfc3RyaWRlOwogCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9BVVhfRElTVChw
aXBlLCBwbGFuZV9pZCksIGF1eF9kaXN0KTsKIAogCWlmIChpY2xfaXNfaGRyX3BsYW5lKGRldl9w
cml2LCBwbGFuZV9pZCkpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
