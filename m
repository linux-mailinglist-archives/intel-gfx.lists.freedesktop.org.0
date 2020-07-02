Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD8821280D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362A26EB0D;
	Thu,  2 Jul 2020 15:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFF26EB0D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:37:46 +0000 (UTC)
IronPort-SDR: sN3aXIq0CoWAXgYbv63qTrXJGYzRQPIj/i2OMf1LmlPDBRoTtHFfohruthdJJDXurTM6ssSBZr
 tENHtq5vTOMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="134397988"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="134397988"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:37:29 -0700
IronPort-SDR: 03gZwLfyLOii36ez4mOFyELuyJ8X00+ZbU6Ye+57M/R4LOG6NUksvR7COBGTX6zqZKAJeWpQRa
 MserF4B5BGng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="265730100"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 02 Jul 2020 08:37:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 18:37:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 18:37:20 +0300
Message-Id: <20200702153723.24327-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/fbc: Use the correct plane stride
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNv
bnN1bHQgdGhlIGFjdHVhbCBwbGFuZSBzdHJpZGUgaW5zdGVhZCBvZiB0aGUgZmIgc3RyaWRlLiBU
aGUgdHdvCndpbGwgZGlzYWdyZWUgd2hlbiB3ZSByZW1hcCB0aGUgZ3R0LiBUaGUgcGxhbmUgc3Ry
aWRlIGlzIHdoYXQgdGhlCmh3IHdpbGwgYmUgZmVkIHNvIHRoYXQncyB3aGF0IHdlIHNob3VsZCBs
b29rIGF0IGZvciB0aGUgRkJDCnJldHJpY3Rpb25zL2NmYiBhbGxvY2F0aW9uLgoKU2luY2Ugd2Ug
bm8gbG9uZ2VyIHJlcXVpcmUgYSBmZW5jZSB3ZSBhcmUgZ29pbmcgdG8gYXR0ZW1wdCB1c2luZwpG
QkMgd2l0aCByZW1hcHBpbmcsIGFuZCBzbyB3ZSBzaG91bGQgbG9vayBhdCBjb3JyZWN0IHN0cmlk
ZS4KCldpdGggOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiB0aGUgcGxhbmUgc3RyaWRlIGlzIHN0b3Jl
ZCBpbiB1bml0cwpvZiBwaXhlbHMsIHNvIHdlIG5lZWQgdG8gY29udmVyIGl0IHRvIGJ5dGVzIGZv
ciB0aGUgcHVycG9zZXMKb2YgY2FsY3VsYXRpbmcgdGhlIGNmYiBzdHJpZGUuIE5vdCBlbnRpcmVs
eSBzdXJlIGlmIHRoaXMgbWF0Y2hlcwp0aGUgaHcgYmVoYXZpb3VyIHRob3VnaC4gTmVlZCB0byBy
ZXZlcnNlIGVuZ2luZWVyIHRoYXQgYXQgc29tZQpwb2ludC4uLgoKV2UgYWxzbyBuZWVkIHRvIHJl
b3JkZXIgdGhlIHBpeGVsIGZvcm1hdCBjaGVjayB2cy4gc3RyaWRlIGNoZWNrCnRvIGF2b2lkIHRy
aWdnZXJpbmcgYSBzcHVyaW91cyBXQVJOKHN0cmlkZSAmIDYzKSB3aXRoIGNwcD09MSBhbmQKcGxh
bmUgc3RyaWRlPT0zMi4KCnYyOiBUcnkgdG8gZGVhbCB3aXRoIHJvdGF0ZWQgc3RyaWRlIGFuZCBy
ZWxhdGVkIFdBUk4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KRml4ZXM6IDY5MWY3YmE1OGQ1MiAoImRybS9pOTE1L2Rpc3BsYXkvZmJjOiBNYWtlIGZl
bmNlcyBhIG5pY2UtdG8taGF2ZSBmb3IgR0VOOSsiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxNiArKysrKysrKysrLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA2OWEwNjgyZGRiNmEuLmQzMGMyYTM4OTI5
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC02OTUsOSAr
Njk1LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJY2FjaGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUgPSBwbGFu
ZV9zdGF0ZS0+aHcucGl4ZWxfYmxlbmRfbW9kZTsKIAogCWNhY2hlLT5mYi5mb3JtYXQgPSBmYi0+
Zm9ybWF0OwotCWNhY2hlLT5mYi5zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXTsKIAljYWNoZS0+ZmIu
bW9kaWZpZXIgPSBmYi0+bW9kaWZpZXI7CiAKKwkvKiBGSVhNRSBpcyB0aGlzIGNvcnJlY3Q/ICov
CisJY2FjaGUtPmZiLnN0cmlkZSA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGU7
CisJaWYgKGRybV9yb3RhdGlvbl85MF9vcl8yNzAocGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uKSkK
KwkJY2FjaGUtPmZiLnN0cmlkZSAqPSBmYi0+Zm9ybWF0LT5jcHBbMF07CisKIAkvKiBGQkMxIGNv
bXByZXNzaW9uIGludGVydmFsOiBhcmJpdHJhcnkgY2hvaWNlIG9mIDEgc2Vjb25kICovCiAJY2Fj
aGUtPmludGVydmFsID0gZHJtX21vZGVfdnJlZnJlc2goJmNydGNfc3RhdGUtPmh3LmFkanVzdGVk
X21vZGUpOwogCkBAIC03OTcsNiArODAxLDExIEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5f
YWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCXJldHVybiBmYWxzZTsKIAl9CiAK
KwlpZiAoIXBpeGVsX2Zvcm1hdF9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+
Zm9ybWF0KSkgeworCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAicGl4ZWwgZm9ybWF0IGlzIGludmFs
aWQiOworCQlyZXR1cm4gZmFsc2U7CisJfQorCiAJaWYgKCFyb3RhdGlvbl9pc192YWxpZChkZXZf
cHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+Zm9ybWF0LAogCQkJICAgICAgIGNhY2hlLT5wbGFuZS5y
b3RhdGlvbikpIHsKIAkJZmJjLT5ub19mYmNfcmVhc29uID0gInJvdGF0aW9uIHVuc3VwcG9ydGVk
IjsKQEAgLTgxMywxMSArODIyLDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0
ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJcmV0dXJuIGZhbHNlOwogCX0KIAotCWlmICgh
cGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGRldl9wcml2LCBjYWNoZS0+ZmIuZm9ybWF0LT5mb3JtYXQp
KSB7Ci0JCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJwaXhlbCBmb3JtYXQgaXMgaW52YWxpZCI7Ci0J
CXJldHVybiBmYWxzZTsKLQl9Ci0KIAlpZiAoY2FjaGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUg
IT0gRFJNX01PREVfQkxFTkRfUElYRUxfTk9ORSAmJgogCSAgICBjYWNoZS0+ZmIuZm9ybWF0LT5o
YXNfYWxwaGEpIHsKIAkJZmJjLT5ub19mYmNfcmVhc29uID0gInBlci1waXhlbCBhbHBoYSBibGVu
ZGluZyBpcyBpbmNvbXBhdGlibGUgd2l0aCBGQkMiOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
