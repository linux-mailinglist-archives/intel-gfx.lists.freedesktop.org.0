Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D93735B9E9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81496E03E;
	Mon, 12 Apr 2021 05:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7B06E03E
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:23 +0000 (UTC)
IronPort-SDR: coZLm5TPElCCc3AL8kmnN/4Di5GD3G9nRZ6uxJaaIC8hVtHeBpTrAjNlF/gpW8lMdLYzaWTb/2
 z3CqeI8tNsog==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="258091651"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="258091651"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:20 -0700
IronPort-SDR: lM3IhHdRLKrNxgSl91UBN8N8LcD2mROa/JC3jA51cnPw/vd8f5jNgbj/jwcAjcP5RSIyDWvH7y
 5x99kDbyfdQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="398231283"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 11 Apr 2021 22:46:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:05 +0300
Message-Id: <20210412054607.18133-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Disable LTTPR detection on GLK
 once again
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
ZSBnbGsgZGlzcGxheSB2ZXJzaW9uIGNoYW5nZSBpcyBjYXVzaW5nIHVzIHRvIGFnYWluIGF0dGVt
cHQKTFRUUFIgZGV0ZWN0aW9uIG9uIGdsay4gV2UgbXVzdCBub3QgZG8gdGhhIHNpbmNlIGdsayBk
b2Vzbid0CmhhdmUgYSBsb25nIGVub3VnaCBBVVggdGltZW91dC4gUmVzdG9yZSB0aGUgY29ycmVj
dCBsb2dpYyB0bwpza2lwIHRoZSBkZXRlY3Rpb24uCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KRml4ZXM6IDJiNWE0NTYyZWRkMCAoImRybS9pOTE1L2Rpc3BsYXk6
IFNpbXBsaWZ5IEdMSyBkaXNwbGF5IHZlcnNpb24gdGVzdHMiKQpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRl
eCA1ZTljM2M3NDMxMGMuLjU5NzYzNGU0ZjM1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKQEAgLTk2LDcgKzk2LDcg
QEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfcmVhZF9sdHRwcl9jb21tb25fY2FwcyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCSAqIERldGVjdGluZyBMVFRQUnMgbXVzdCBiZSBhdm9pZGVkIG9u
IHBsYXRmb3JtcyB3aXRoIGFuIEFVWCB0aW1lb3V0CiAJICogcGVyaW9kIDwgMy4ybXMuIChzZWUg
RFAgU3RhbmRhcmQgdjIuMCwgMi4xMS4yLCAzLjYuNi4xKS4KIAkgKi8KLQlpZiAoRElTUExBWV9W
RVIoaTkxNSkgPCAxMCkKKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxMCB8fCBJU19HRU1JTklM
QUtFKGk5MTUpKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlpZiAoZHJtX2RwX3JlYWRfbHR0cHJfY29t
bW9uX2NhcHMoJmludGVsX2RwLT5hdXgsCi0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
