Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4792B9AF8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076E289BB3;
	Thu, 19 Nov 2020 18:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1671589BAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:30 +0000 (UTC)
IronPort-SDR: l9akoC3llAo9vgrj04/El42UAWeDuePyzAhJbBJ9RKPnHZQu9Nmy5RwxG/7Yiv63lcoCZMl+b7
 bl/KnP+FBMGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="168771201"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="168771201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:29 -0800
IronPort-SDR: PZGzvhqCRYVxEwd1a+PavWFmdyAGbtvTienZ7EZt3J4AVpf75IEA5Qkppsxn2zqqs0TIuP/c8Z
 1gO9fv1VJ/xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="401601964"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Nov 2020 10:54:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:57 +0200
Message-Id: <20201119185401.31883-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/13] drm/i915: Extract intel_adjusted_rate()
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
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IDMx
OGIyZDBjMDg0NC4uNWM5MjE0Nzk3NWZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
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
bmVfc3RhdGUsCiAJCQkJICAgaW50IGNvbG9yX3BsYW5lKQotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
