Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B112934F124
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 20:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397BD6E950;
	Tue, 30 Mar 2021 18:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288986E950
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 18:42:58 +0000 (UTC)
IronPort-SDR: 765Li58vQKqOE+x0wf4OP+3VPOcgebDtm0v4wU8fR41ZcV6wI22xzFH13KwKo34mOYEgEzjdo/
 JnNZ2yZSZLqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="255824428"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="255824428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:42:56 -0700
IronPort-SDR: nXYF9DUFxbwUsUgnizXlE3SiB8FvnEGpi5zvRmpGLddNeIO6vAmL25K7Sa1w20TenTUxLokzp0
 MipO+hQXlhkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="411761959"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 30 Mar 2021 11:42:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Mar 2021 21:42:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Mar 2021 21:42:53 +0300
Message-Id: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Extract intel_adjusted_rate()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgYSBzbWFsbCBoZWxwZXIgdG8gY2FsY3VsYXRlIHRoZSBkb3duc2NhbGluZwphZGp1c3Rl
ZCBwaXhlbCByYXRlL2RhdGEgcmF0ZS9ldGMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDI3ICsrKysrKysrKysrKystLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IGMz
ZjI5NjJhYTFlYi4uM2Y4MzBiNzBiMGMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKQEAgLTEzMywyNSArMTMzLDM2IEBAIGludGVs
X3BsYW5lX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJa2ZyZWUocGxh
bmVfc3RhdGUpOwogfQogCi11bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLQkJCQkgICAgY29uc3Qgc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK3N0YXRpYyB1bnNpZ25lZCBpbnQg
aW50ZWxfYWRqdXN0ZWRfcmF0ZShjb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKnNyYywKKwkJCQkJY29u
c3Qgc3RydWN0IGRybV9yZWN0ICpkc3QsCisJCQkJCXVuc2lnbmVkIGludCByYXRlKQogewogCXVu
c2lnbmVkIGludCBzcmNfdywgc3JjX2gsIGRzdF93LCBkc3RfaDsKLQl1bnNpZ25lZCBpbnQgcGl4
ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVsX3JhdGU7CiAKLQlzcmNfdyA9IGRybV9yZWN0X3dp
ZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2OwotCXNyY19oID0gZHJtX3JlY3RfaGVp
Z2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2OwotCWRzdF93ID0gZHJtX3JlY3Rfd2lk
dGgoJnBsYW5lX3N0YXRlLT51YXBpLmRzdCk7Ci0JZHN0X2ggPSBkcm1fcmVjdF9oZWlnaHQoJnBs
YW5lX3N0YXRlLT51YXBpLmRzdCk7CisJc3JjX3cgPSBkcm1fcmVjdF93aWR0aChzcmMpID4+IDE2
OworCXNyY19oID0gZHJtX3JlY3RfaGVpZ2h0KHNyYykgPj4gMTY7CisJZHN0X3cgPSBkcm1fcmVj
dF93aWR0aChkc3QpOworCWRzdF9oID0gZHJtX3JlY3RfaGVpZ2h0KGRzdCk7CiAKIAkvKiBEb3du
c2NhbGluZyBsaW1pdHMgdGhlIG1heGltdW0gcGl4ZWwgcmF0ZSAqLwogCWRzdF93ID0gbWluKHNy
Y193LCBkc3Rfdyk7CiAJZHN0X2ggPSBtaW4oc3JjX2gsIGRzdF9oKTsKIAotCXJldHVybiBESVZf
Uk9VTkRfVVBfVUxMKG11bF91MzJfdTMyKHBpeGVsX3JhdGUsIHNyY193ICogc3JjX2gpLAorCXJl
dHVybiBESVZfUk9VTkRfVVBfVUxMKG11bF91MzJfdTMyKHJhdGUsIHNyY193ICogc3JjX2gpLAog
CQkJCWRzdF93ICogZHN0X2gpOwogfQogCit1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxf
cmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAg
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK3sKKwlpZiAoIXBs
YW5lX3N0YXRlLT51YXBpLnZpc2libGUpCisJCXJldHVybiAwOworCisJcmV0dXJuIGludGVsX2Fk
anVzdGVkX3JhdGUoJnBsYW5lX3N0YXRlLT51YXBpLnNyYywKKwkJCQkgICAmcGxhbmVfc3RhdGUt
PnVhcGkuZHN0LAorCQkJCSAgIGNydGNfc3RhdGUtPnBpeGVsX3JhdGUpOworfQorCiB1bnNpZ25l
ZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAogCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxh
bmVfc3RhdGUpCiB7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
