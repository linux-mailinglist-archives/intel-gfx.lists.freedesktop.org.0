Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 452242B6F08
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8C66E075;
	Tue, 17 Nov 2020 19:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A176E06D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:55 +0000 (UTC)
IronPort-SDR: aI/HGn8YfUyOj8aD/aEBUaFd7Wapdj14w0tGO1AIh+zpvGCyo3RIBlQctrknfSPFdBz7TE+ArT
 Ui8PorsHtU4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232612524"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232612524"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:52 -0800
IronPort-SDR: qndBA3Pgyd98cBrfjIo3b5MLC1XbqeKPZ0yvbeQJZpsQ5fco34PH00a8HgI7maYhhiZQpcz1PZ
 TCWAFmxnIo9Q==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034173"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:52 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:04 -0800
Message-Id: <20201117194718.11462-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 01/15] drm/i915: Copy the plane hw state directly
 for Y planes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gZG9pbmcgdGhlIHBsYW5lIHN0YXRlIGNvcHkgZnJvbSB0aGUgVVYgcGxhbmUgdG8gdGhlIFkg
cGxhbmUKbGV0J3MganVzdCBjb3B5IHRoZSBodyBzdGF0ZSBkaXJlY3RseSBpbnN0ZWFkIG9mIHVz
aW5nIHRoZSBvcmlnaW5hbAp1YXBpIHN0YXRlLiBUaGUgVVYgcGxhbmUgaGFzIGFscmVhZHkgaGFk
IGl0cyB1YXBpIHN0YXRlIGNvcGllZCBpbnRvCml0cyBodyBzdGF0ZSwgc28gdGhpcyBleHRyYSBk
ZXRvdXIgdmlhIHRoZSB1YXBpIHN0YXRlIGZvciB0aGUgWSBwbGFuZQppcyBwb2ludGxlc3MuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tp
eUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWNfcGxhbmUuYyB8IDEyICsrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgIHwgIDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IDMzMzRmZjI1MzYwMC4uZjQ3NTU4ZWZi
M2MyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMKQEAgLTI2NSw2ICsyNjUsMTggQEAgdm9pZCBpbnRlbF9wbGFuZV9jb3B5X3VhcGlf
dG9faHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKIAlwbGFu
ZV9zdGF0ZS0+aHcuc2NhbGluZ19maWx0ZXIgPSBmcm9tX3BsYW5lX3N0YXRlLT51YXBpLnNjYWxp
bmdfZmlsdGVyOwogfQogCit2b2lkIGludGVsX3BsYW5lX2NvcHlfaHdfc3RhdGUoc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKmZyb21fcGxhbmVfc3RhdGUpCit7CisJaW50ZWxfcGxhbmVfY2xlYXJf
aHdfc3RhdGUocGxhbmVfc3RhdGUpOworCisJbWVtY3B5KCZwbGFuZV9zdGF0ZS0+aHcsICZmcm9t
X3BsYW5lX3N0YXRlLT5odywKKwkgICAgICAgc2l6ZW9mKHBsYW5lX3N0YXRlLT5odykpOworCisJ
aWYgKHBsYW5lX3N0YXRlLT5ody5mYikKKwkJZHJtX2ZyYW1lYnVmZmVyX2dldChwbGFuZV9zdGF0
ZS0+aHcuZmIpOworfQorCiB2b2lkIGludGVsX3BsYW5lX3NldF9pbnZpc2libGUoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgICAgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5oCmluZGV4IDU5ZGQxZmJiMDJlYS4uMjRhM2ExNDhhYTYy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmgKQEAgLTI1LDYgKzI1LDggQEAgdW5zaWduZWQgaW50IGludGVsX3BsYW5lX2RhdGFfcmF0
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKIHZvaWQgaW50ZWxfcGxh
bmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUsCiAJCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqZnJvbV9w
bGFuZV9zdGF0ZSk7Cit2b2lkIGludGVsX3BsYW5lX2NvcHlfaHdfc3RhdGUoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKmZyb21fcGxhbmVfc3RhdGUpOwogdm9pZCBpbnRlbF91cGRhdGVfcGxhbmUo
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAogCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IGJjNTMyNzExNDcwYi4uYTFiOTc1YWIzYmIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI3OTIsNyArMTI3OTIsNyBAQCBzdGF0
aWMgaW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAkJbWVtY3B5KGxpbmtlZF9zdGF0ZS0+Y29sb3JfcGxhbmUsIHBsYW5lX3N0YXRl
LT5jb2xvcl9wbGFuZSwKIAkJICAgICAgIHNpemVvZihsaW5rZWRfc3RhdGUtPmNvbG9yX3BsYW5l
KSk7CiAKLQkJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGxpbmtlZF9zdGF0ZSwg
cGxhbmVfc3RhdGUpOworCQlpbnRlbF9wbGFuZV9jb3B5X2h3X3N0YXRlKGxpbmtlZF9zdGF0ZSwg
cGxhbmVfc3RhdGUpOwogCQlsaW5rZWRfc3RhdGUtPnVhcGkuc3JjID0gcGxhbmVfc3RhdGUtPnVh
cGkuc3JjOwogCQlsaW5rZWRfc3RhdGUtPnVhcGkuZHN0ID0gcGxhbmVfc3RhdGUtPnVhcGkuZHN0
OwogCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
