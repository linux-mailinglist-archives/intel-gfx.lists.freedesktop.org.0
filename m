Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086EB96612
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 18:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7878E6E835;
	Tue, 20 Aug 2019 16:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFCD6E835
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 16:17:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 09:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="207417303"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 20 Aug 2019 09:16:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Aug 2019 19:16:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 19:16:57 +0300
Message-Id: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Do not create a new max_bpc prop for
 MST connectors
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
Cc: sunpeng.li@amd.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3JlIG5vdCBhbGxvd2VkIHRvIGNyZWF0ZSBuZXcgcHJvcGVydGllcyBhZnRlciBkZXZpY2UgcmVn
aXN0cmF0aW9uCnNvIGZvciBNU1QgY29ubmVjdG9ycyB3ZSBuZWVkIHRvIGVpdGhlciBjcmVhdGUg
dGhlIG1heF9icGMgcHJvcGVydHkKZWFybGllciwgb3Igd2UgcmV1c2Ugb25lIHdlIGFscmVhZHkg
aGF2ZS4gTGV0J3MgZG8gdGhlIGxhdHRlciBhcHBvcmFjaApzaW5jZSB0aGUgY29ycmVzcG9uZGlu
ZyBTU1QgY29ubmVjdG9yIGFscmVhZHkgaGFzIHRoZSBwcm9wIGFuZCBpdHMKbWluL21heCBhcmUg
Y29ycmVjdCBhbHNvIGZvciB0aGUgTVNUIGNvbm5lY3Rvci4KClRoZSBwcm9ibGVtIHdhcyBoaWdo
bGlnaHRlZCBieSBjb21taXQgNGY1MzY4YjU1NDFhICgiZHJtL2ttczoKQ2F0Y2ggbW9kZV9vYmpl
Y3QgbGlmZXRpbWUgZXJyb3JzIikgd2hpY2ggcmVzdWx0cyBpbiB0aGUgZm9sbG93aW5nCnNwZXc6
ClsgMTMzMC44Nzg5NDFdIFdBUk5JTkc6IENQVTogMiBQSUQ6IDE1NTQgYXQgZHJpdmVycy9ncHUv
ZHJtL2RybV9tb2RlX29iamVjdC5jOjQ1IF9fZHJtX21vZGVfb2JqZWN0X2FkZCsweGEwLzB4YjAg
W2RybV0KLi4uClsgMTMzMC44NzkwMDhdIENhbGwgVHJhY2U6ClsgMTMzMC44NzkwMjNdICBkcm1f
cHJvcGVydHlfY3JlYXRlKzB4YmEvMHgxODAgW2RybV0KWyAxMzMwLjg3OTAzNl0gIGRybV9wcm9w
ZXJ0eV9jcmVhdGVfcmFuZ2UrMHgxNS8weDMwIFtkcm1dClsgMTMzMC44NzkwNDhdICBkcm1fY29u
bmVjdG9yX2F0dGFjaF9tYXhfYnBjX3Byb3BlcnR5KzB4NjIvMHg4MCBbZHJtXQpbIDEzMzAuODc5
MDg2XSAgaW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3IrMHgxMWYvMHgxNDAgW2k5MTVdClsgMTMz
MC44NzkwOTRdICBkcm1fZHBfYWRkX3BvcnQuaXNyYS4yMCsweDIwYi8weDQ0MCBbZHJtX2ttc19o
ZWxwZXJdCi4uLgoKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IEx5dWRlIFBhdWwgPGx5
dWRlQHJlZGhhdC5jb20+CkNjOiBzdW5wZW5nLmxpQGFtZC5jb20KQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4K
Rml4ZXM6IDVjYTBlZjhhNTZiOCAoImRybS9pOTE1OiBBZGQgbWF4X2JwYyBwcm9wZXJ0eSBmb3Ig
RFAgTVNUIikKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCmluZGV4IDgzZmFhMjQ2ZTM2MS4uOTc0ODU4MWMxZDYyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTUzNiw3ICs1MzYsMTUgQEAgc3RhdGlj
IHN0cnVjdCBkcm1fY29ubmVjdG9yICppbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3RvcihzdHJ1Y3Qg
ZHJtX2RwX21zdF90b3BvbG8KIAogCWludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19wcm9wZXJ0eShj
b25uZWN0b3IpOwogCWludGVsX2F0dGFjaF9icm9hZGNhc3RfcmdiX3Byb3BlcnR5KGNvbm5lY3Rv
cik7Ci0JZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfbWF4X2JwY19wcm9wZXJ0eShjb25uZWN0b3IsIDYs
IDEyKTsKKworCS8qCisJICogUmV1c2UgdGhlIHByb3AgZnJvbSB0aGUgU1NUIGNvbm5lY3RvciBi
ZWNhdXNlIHdlJ3JlCisJICogbm90IGFsbG93ZWQgdG8gY3JlYXRlIG5ldyBwcm9wcyBhZnRlciBk
ZXZpY2UgcmVnaXN0cmF0aW9uLgorCSAqLworCWNvbm5lY3Rvci0+bWF4X2JwY19wcm9wZXJ0eSA9
CisJCWludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3ItPmJhc2UubWF4X2JwY19wcm9wZXJ0eTsK
KwlpZiAoY29ubmVjdG9yLT5tYXhfYnBjX3Byb3BlcnR5KQorCQlkcm1fY29ubmVjdG9yX2F0dGFj
aF9tYXhfYnBjX3Byb3BlcnR5KGNvbm5lY3RvciwgNiwgMTIpOwogCiAJcmV0dXJuIGNvbm5lY3Rv
cjsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
