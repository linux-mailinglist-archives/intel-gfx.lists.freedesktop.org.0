Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D85118B47
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6086E8EB;
	Tue, 10 Dec 2019 14:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEDE6E8EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:41:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 06:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="215459973"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Dec 2019 06:41:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 16:41:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 16:41:05 +0200
Message-Id: <20191210144105.3239-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
References: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Nuke skl wm.dirty_pipes bitmask
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkaXJ0eV9waXBlcyBiaXRtYXNrIGlzIG5vdyB1bnVzZWQuIEdldCByaWQgb2YgaXQuCgpDYzog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8ICAxIC0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgfCAzNSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDM1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGRiMTVhOGY0ODQ3Zi4uNTRhNDMyMTA0Yzg1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTgwMiw3ICs4MDIsNiBAQCBzdHJ1Y3Qgc2tsX2RkYl9h
bGxvY2F0aW9uIHsKIH07CiAKIHN0cnVjdCBza2xfZGRiX3ZhbHVlcyB7Ci0JdW5zaWduZWQgZGly
dHlfcGlwZXM7CiAJc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiBkZGI7CiB9OwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCAwN2U5NTQ0MGI0MGQuLmY0MmM3OGEyY2QyMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC01MDYzLDIzICs1MDYzLDYgQEAgc3RhdGljIGJvb2wgc2tsX3Bs
YW5lX3dtX2VxdWFscyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJu
IHNrbF93bV9sZXZlbF9lcXVhbHMoJndtMS0+dHJhbnNfd20sICZ3bTItPnRyYW5zX3dtKTsKIH0K
IAotc3RhdGljIGJvb2wgc2tsX3BpcGVfd21fZXF1YWxzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAotCQkJICAgICAgIGNvbnN0IHN0cnVjdCBza2xfcGlwZV93bSAqd20xLAotCQkJICAgICAgIGNv
bnN0IHN0cnVjdCBza2xfcGlwZV93bSAqd20yKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCWVudW0gcGxhbmVfaWQgcGxh
bmVfaWQ7Ci0KLQlmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGNydGMsIHBsYW5lX2lkKSB7Ci0J
CWlmICghc2tsX3BsYW5lX3dtX2VxdWFscyhkZXZfcHJpdiwKLQkJCQkJICZ3bTEtPnBsYW5lc1tw
bGFuZV9pZF0sCi0JCQkJCSAmd20yLT5wbGFuZXNbcGxhbmVfaWRdKSkKLQkJCXJldHVybiBmYWxz
ZTsKLQl9Ci0KLQlyZXR1cm4gdHJ1ZTsKLX0KLQogc3RhdGljIGlubGluZSBib29sIHNrbF9kZGJf
ZW50cmllc19vdmVybGFwKGNvbnN0IHN0cnVjdCBza2xfZGRiX2VudHJ5ICphLAogCQkJCQkgICBj
b25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqYikKIHsKQEAgLTUzMzYsOCArNTMxOSw2IEBAIHNr
bF9kZGJfYWRkX2FmZmVjdGVkX3BpcGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQogCSAqIHRvIGdyYWIgdGhlIGxvY2sgb24gKmFsbCogQ1JUQydzLgogCSAqLwogCWlmIChzdGF0
ZS0+YWN0aXZlX3BpcGVfY2hhbmdlcyB8fCBzdGF0ZS0+bW9kZXNldCkgewotCQlzdGF0ZS0+d21f
cmVzdWx0cy5kaXJ0eV9waXBlcyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5waXBlX21hc2s7Ci0K
IAkJcmV0ID0gaW50ZWxfYWRkX2FsbF9waXBlcyhzdGF0ZSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1
cm4gcmV0OwpAQCAtNTQxMiwxMiArNTM5Myw4IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGU7Ci0Jc3RydWN0IHNrbF9kZGJfdmFsdWVzICpyZXN1bHRzID0g
JnN0YXRlLT53bV9yZXN1bHRzOwogCWludCByZXQsIGk7CiAKLQkvKiBDbGVhciBhbGwgZGlydHkg
ZmxhZ3MgKi8KLQlyZXN1bHRzLT5kaXJ0eV9waXBlcyA9IDA7Ci0KIAlyZXQgPSBza2xfZGRiX2Fk
ZF9hZmZlY3RlZF9waXBlcyhzdGF0ZSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKQEAgLTU0
MjUsOCArNTQwMiw3IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQogCS8qCiAJICogQ2FsY3VsYXRlIFdNJ3MgZm9yIGFsbCBwaXBlcyB0aGF0IGFyZSBw
YXJ0IG9mIHRoaXMgdHJhbnNhY3Rpb24uCiAJICogTm90ZSB0aGF0IHNrbF9kZGJfYWRkX2FmZmVj
dGVkX3BpcGVzIG1heSBoYXZlIGFkZGVkIG1vcmUgQ1JUQydzIHRoYXQKLQkgKiB3ZXJlbid0IG90
aGVyd2lzZSBiZWluZyBtb2RpZmllZCAoYW5kIHNldCBiaXRzIGluIGRpcnR5X3BpcGVzKSBpZgot
CSAqIHBpcGUgYWxsb2NhdGlvbnMgaGFkIHRvIGNoYW5nZS4KKwkgKiB3ZXJlbid0IG90aGVyd2lz
ZSBiZWluZyBtb2RpZmllZCBpZiBwaXBlIGFsbG9jYXRpb25zIGhhZCB0byBjaGFuZ2UuCiAJICov
CiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9j
cnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKQEAgLTU0MzcsMTEgKzU0
MTMsNiBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
IAkJcmV0ID0gc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUsIGNydGMpOwogCQlpZiAo
cmV0KQogCQkJcmV0dXJuIHJldDsKLQotCQlpZiAoIXNrbF9waXBlX3dtX2VxdWFscyhjcnRjLAot
CQkJCQkmb2xkX2NydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLAotCQkJCQkmbmV3X2NydGNfc3Rh
dGUtPndtLnNrbC5vcHRpbWFsKSkKLQkJCXJlc3VsdHMtPmRpcnR5X3BpcGVzIHw9IEJJVChjcnRj
LT5waXBlKTsKIAl9CiAKIAlyZXQgPSBza2xfY29tcHV0ZV9kZGIoc3RhdGUpOwpAQCAtNTU3OSw3
ICs1NTUwLDYgQEAgdm9pZCBza2xfcGlwZV93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCiAKIHZvaWQgc2tsX3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiB7Ci0Jc3RydWN0IHNrbF9kZGJfdmFsdWVzICpodyA9ICZkZXZfcHJp
di0+d20uc2tsX2h3OwogCXN0cnVjdCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYiA9ICZkZXZfcHJp
di0+d20uc2tsX2h3LmRkYjsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKQEAgLTU1ODksOSArNTU1OSw2IEBAIHZvaWQgc2ts
X3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWNy
dGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCiAJCXNr
bF9waXBlX3dtX2dldF9od19zdGF0ZShjcnRjLCAmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwp
OwotCi0JCWlmIChjcnRjLT5hY3RpdmUpCi0JCQlody0+ZGlydHlfcGlwZXMgfD0gQklUKGNydGMt
PnBpcGUpOwogCX0KIAogCWlmIChkZXZfcHJpdi0+YWN0aXZlX3BpcGVzKSB7Ci0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
