Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79622EF78E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:41:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A606E88B;
	Fri,  8 Jan 2021 18:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628036E88B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:41:17 +0000 (UTC)
IronPort-SDR: JQMo2VKdJ8OuX5vv0W7Zem40UGx2qOLg3oRE1OX+EdbrNna3kFITv6QT6/ppl1QdcH6eoZjUBx
 PlPLE2f8OGCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="239188615"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="239188615"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:41:16 -0800
IronPort-SDR: FkSjWPN6pYqYyEr83ZM4UA77K7c5geQ88ce8jFYe5aLI22thZ+5h5zSvmSbUEj7/efverWKB4o
 qCA05t2MW74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="423031061"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 08 Jan 2021 10:41:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Jan 2021 20:41:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:56 +0200
Message-Id: <20210108184101.30972-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
References: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Move the async_flip bit setup
 into the .async_flip() hook
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNl
dCB1cCB0aGUgYXN5bmMgZmxpcCBQTEFORV9DVEwgYml0IGRpcmVjdGx5IGluIHRoZQouYXN5bmNf
ZmxpcCgpIGhvb2suIE5laXRoZXIgLnVwZGF0ZV9wbGFuZSgpIG5vciAuZGlzYWJsZV9wbGFuZSgp
CmV2ZXIgbmVlZCB0byBzZXQgdGhpcyBzbyBoYXZpbmcgaXQgZG9uZSBieSBza2xfcGxhbmVfY3Rs
X2NydGMoKQppcyByYXRoZXIgcG9pbnRsZXNzLgoKQ2M6IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIu
c0BpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDMgLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
ICB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
MTJkNTU2YjBkN2U0Li5jMWU5ODg2OGViMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC00MjQ2LDkgKzQyNDYsNiBAQCB1MzIgc2tsX3BsYW5l
X2N0bF9jcnRjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjLT5kZXYpOwogCXUzMiBwbGFuZV9jdGwgPSAwOwogCi0JaWYgKGNydGNfc3RhdGUtPnVh
cGkuYXN5bmNfZmxpcCkKLQkJcGxhbmVfY3RsIHw9IFBMQU5FX0NUTF9BU1lOQ19GTElQOwotCiAJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikp
CiAJCXJldHVybiBwbGFuZV9jdGw7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jCmluZGV4IGFmZmQ4Y2ZmYTMwNi4uMjc5OGVlMDA1Y2EwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTc4Miw2ICs3ODIsOCBA
QCBza2xfcGxhbmVfYXN5bmNfZmxpcChzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCiAJcGxh
bmVfY3RsIHw9IHNrbF9wbGFuZV9jdGxfY3J0YyhjcnRjX3N0YXRlKTsKIAorCXBsYW5lX2N0bCB8
PSBQTEFORV9DVExfQVNZTkNfRkxJUDsKKwogCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+
dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsKIAogCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQ
TEFORV9DVEwocGlwZSwgcGxhbmVfaWQpLCBwbGFuZV9jdGwpOwotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
