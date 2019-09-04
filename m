Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A46A869B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55F689C60;
	Wed,  4 Sep 2019 16:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993A489C60
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:27:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="212453877"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Sep 2019 09:27:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:27:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:25 +0300
Message-Id: <20190904162625.15048-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: Expose margin properties on DP
 MST
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
cG9zZSB0aGUgbWFyZ2luIHByb3BlcnRpZXMgZm9yIERQIE1TVCBhcyB3ZWxsLiBPbmx5IEhTVysg
dG8Kd29ycnkgYWJvdXQgaGVyZSwgc28gbm90aGluZyByZWFsbHkgdG8gZG8gYnV0IHNldCB1cCB0
aGUKcGZpdCBhcHByb3ByaWF0ZWx5LgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTI5NzIzClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCmluZGV4IDM3MzY2ZjgxMjU1Yi4uNzY3MTlhODIyZWE1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTM2LDYgKzM2LDcgQEAKICNpbmNsdWRl
ICJpbnRlbF9kcC5oIgogI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgogI2luY2x1ZGUgImludGVs
X2RwaW9fcGh5LmgiCisjaW5jbHVkZSAiaW50ZWxfcGFuZWwuaCIKIAogc3RhdGljIGludCBpbnRl
bF9kcF9tc3RfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAkJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApAQCAtMTE3
LDYgKzExOCwxMCBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9CiAJ
CQlpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRpbyA9PSBIRE1JX0FVRElPX09OOwogCisJcmV0
ID0gaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOworCWlm
IChyZXQpCisJCXJldHVybiByZXQ7CisKIAkvKgogCSAqIGZvciBNU1Qgd2UgYWx3YXlzIGNvbmZp
Z3VyZSBtYXggbGluayBidyAtIHRoZSBzcGVjIGRvZXNuJ3QKIAkgKiBzZWVtIHRvIHN1Z2dlc3Qg
d2Ugc2hvdWxkIGRvIG90aGVyd2lzZS4KQEAgLTU1NCw2ICs1NTksOCBAQCBzdGF0aWMgc3RydWN0
IGRybV9jb25uZWN0b3IgKmludGVsX2RwX2FkZF9tc3RfY29ubmVjdG9yKHN0cnVjdCBkcm1fZHBf
bXN0X3RvcG9sbwogCWlmIChjb25uZWN0b3ItPm1heF9icGNfcHJvcGVydHkpCiAJCWRybV9jb25u
ZWN0b3JfYXR0YWNoX21heF9icGNfcHJvcGVydHkoY29ubmVjdG9yLCA2LCAxMik7CiAKKwlkcm1f
Y29ubmVjdG9yX2F0dGFjaF90dl9tYXJnaW5fcHJvcGVydGllcyhjb25uZWN0b3IpOworCiAJcmV0
dXJuIGNvbm5lY3RvcjsKIAogZXJyOgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
