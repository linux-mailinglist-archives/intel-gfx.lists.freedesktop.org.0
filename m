Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAA813760B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90EF6EA81;
	Fri, 10 Jan 2020 18:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E74F6EA81
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:32:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:32:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="218734128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 10 Jan 2020 10:32:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jan 2020 20:32:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 20:32:23 +0200
Message-Id: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Make a copy of the ggtt view for
 slave plane
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX3ByZXBhcmVfcGxhbmVfZmIoKSB3aWxsIGFsd2F5cyBwaW4gcGxhbmVfc3RhdGUtPmh3LmZi
IHdoZW5ldmVyCml0IGlzIHByZXNlbnQuIFdlIGNvcHkgdGhhdCBmcm9tIHRoZSBtYXN0ZXIgcGxh
bmUgdG8gdGhlIHNsYXZlIHBsYW5lLApidXQgd2UgZmFpbCB0byBjb3B5IHRoZSBjb3JyZXNwb25k
aW5nIGdndHQgdmlldy4gVGh1cyB3aGVuIGl0IGNvbWVzIHRpbWUKdG8gcGluIHRoZSBzbGF2ZSBw
bGFuZSdzIGZiIHdlIHVzZSBzb21lIHN0YWxlIGdndHQgdmlldyBsZWZ0IG92ZXIgZnJvbQp0aGUg
bGFzdCB0aW1lIHRoZSBwbGFuZSB3YXMgdXNlZCBhcyBhIG5vbi1zbGF2ZSBwbGFuZS4gSWYgdGhh
dCBwcmV2aW91cwp1c2UgaW52b2x2ZWQgOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiBvciByZW1hcHBp
bmcgd2UnbGwgdHJ5IHRvIHNodWZmbGUKdGhlIHBhZ2VzIG9mIHRoZSBuZXcgZmIgYXJvdW5kIGFj
Y29yZGluZ2luZ2x5LiBIb3dldmVyIHRoZSBuZXcKZmIgbWF5IGJlIGJhY2tlZCBieSBhIGJvIHdp
dGggbGVzcyBwYWdlcyB0aGFuIHdoYXQgdGhlIGdndHQgdmlldwpyb3RhdGlvbi9yZW1hcHBlZCBp
bmZvIHJlcXVpcmVzLCBhbmQgc28gd2Ugd2UgdHJpcCBhIEdFTV9CVUcoKS4KClN0ZXBzIHRvIHJl
cHJvZHVjZSBvbiBpY2w6CjEuIHBsYW5lIDE6IHdoYXRldmVyCiAgIHBsYW5lIDY6IGxhcmdpc2gg
IU5WMTIgZmIgKyA5MCBkZWdyZWUgcm90YXRpb24KMi4gcGxhbmUgMTogc21hbGxpc2ggTlYxMiBm
YgogICBwbGFuZSA2OiBtYWtlIGludmlzaWJsZSBzbyBpdCBnZXRzIHNsYXZlZCB0byBwbGFuZSAx
CjMuIEdFTV9CVUcoKQoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vl
cy85NTEKRml4ZXM6IDFmNTk0YjIwOWZlMSAoImRybS9pOTE1OiBSZW1vdmUgc3BlY2lhbCBjYXNl
IHNsYXZlIGhhbmRsaW5nIGR1cmluZyBodyBwcm9ncmFtbWluZywgdjMuIikKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1OWMzNzU4NzkxODYuLmZhZmI2NzY4OWRlZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEyMzY2LDYg
KzEyMzY2LDcgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCS8qIENvcHkgcGFyYW1ldGVycyB0byBzbGF2ZSBw
bGFuZSAqLwogCQlsaW5rZWRfc3RhdGUtPmN0bCA9IHBsYW5lX3N0YXRlLT5jdGwgfCBQTEFORV9D
VExfWVVWNDIwX1lfUExBTkU7CiAJCWxpbmtlZF9zdGF0ZS0+Y29sb3JfY3RsID0gcGxhbmVfc3Rh
dGUtPmNvbG9yX2N0bDsKKwkJbGlua2VkX3N0YXRlLT52aWV3ID0gcGxhbmVfc3RhdGUtPnZpZXc7
CiAJCW1lbWNweShsaW5rZWRfc3RhdGUtPmNvbG9yX3BsYW5lLCBwbGFuZV9zdGF0ZS0+Y29sb3Jf
cGxhbmUsCiAJCSAgICAgICBzaXplb2YobGlua2VkX3N0YXRlLT5jb2xvcl9wbGFuZSkpOwogCi0t
IAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
