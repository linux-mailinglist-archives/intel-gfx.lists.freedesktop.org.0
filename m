Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C50582C5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6ED6E21A;
	Thu, 27 Jun 2019 12:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4307C6E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 12:43:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 05:43:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="245804388"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 27 Jun 2019 05:43:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jun 2019 15:43:21 +0300
Date: Thu, 27 Jun 2019 15:43:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190627124321.GY5942@intel.com>
References: <20190626224212.10141-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626224212.10141-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make i945gm_vblank_work_func
 static
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgMTE6NDI6MTJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmM6MzM4Mjo2OiB3YXJuaW5nOiBz
eW1ib2wgJ2k5NDVnbV92Ymxhbmtfd29ya19mdW5jJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQg
aXQgYmUgc3RhdGljPwo+ICAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5v
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYzozMzgyOjY6IGVycm9yOiBubyBwcmV2
aW91cyBwcm90b3R5cGUgZm9yIOKAmGk5NDVnbV92Ymxhbmtfd29ya19mdW5j4oCZIFstV2Vycm9y
PW1pc3NpbmctcHJvdG90eXBlc10KPiAgdm9pZCBpOTQ1Z21fdmJsYW5rX3dvcmtfZnVuYyhzdHJ1
Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IDFiODNkNmUyYWU2OS4uNzNm
MDMzOGZhZjlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTMzNzksNyArMzM3
OSw3IEBAIHZvaWQgYmR3X2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiAg
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5pcnFfbG9jaywgaXJxZmxhZ3MpOwo+
ICB9Cj4gIAo+IC12b2lkIGk5NDVnbV92Ymxhbmtfd29ya19mdW5jKHN0cnVjdCB3b3JrX3N0cnVj
dCAqd29yaykKPiArc3RhdGljIHZvaWQgaTk0NWdtX3ZibGFua193b3JrX2Z1bmMoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQoKV2hvb3BzLiBJIHdhcyBhIGJpdCB0b28gZ3JlZWR5IHdoZW4gcmVt
b3ZpbmcgdGhlIHN0YXRpY3MuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9Cj4gIAkJY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlLCBpOTQ1Z21fdmJsYW5rLndvcmspOwo+IC0tIAo+IDIuMjAuMQoKLS0gClZpbGxlIFN5cmrD
pGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
