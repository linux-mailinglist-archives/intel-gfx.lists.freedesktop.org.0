Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9227667148
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 16:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD186E0B8;
	Fri, 12 Jul 2019 14:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D063D6E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 14:24:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 07:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="177517000"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 12 Jul 2019 07:24:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jul 2019 17:24:25 +0300
Date: Fri, 12 Jul 2019 17:24:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190712142425.GK5942@intel.com>
References: <20190712134234.29893-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712134234.29893-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Drop kerneldoc for
 'intel_atomic_commit'
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDI6NDI6MzRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGludGVsX2F0b21pY19jb21taXQoKSBpcyBub3QgZm9yIHVzZSBpbnRlcm5hbGx5LCBi
dXQgb25seSBhcyBhbiBlbnRyeQo+IHBvaW50IGZyb20gdGhlIGNvcmUgZHJtIGF0b21pYyBoZWxw
ZXIgKGRybV9hdG9taWNfY29tbWl0KS4KPiAKPiBTcXVlbGNoZXMgdGhlIHdhcm5pbmcgZm9yOgo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0MTQ4OiB3YXJu
aW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdfc3RhdGUnIG5vdCBkZXNjcmliZWQg
aW4gJ2ludGVsX2F0b21pY19jb21taXQnCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmM6MTQxNDg6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0ZXIg
J3N0YXRlJyBkZXNjcmlwdGlvbiBpbiAnaW50ZWxfYXRvbWljX2NvbW1pdCcKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMiAtLS0tLS0tLS0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZTEyNjcxY2ExODg2Li45
NzU4NTIzZjA4MzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC0xNDEzMCwxOCArMTQxMzAsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9h
dG9taWNfdHJhY2tfZmJzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJCQkJ
ICBwbGFuZS0+ZnJvbnRidWZmZXJfYml0KTsKPiAgfQo+ICAKPiAtLyoqCj4gLSAqIGludGVsX2F0
b21pY19jb21taXQgLSBjb21taXQgdmFsaWRhdGVkIHN0YXRlIG9iamVjdAo+IC0gKiBAZGV2OiBE
Uk0gZGV2aWNlCj4gLSAqIEBzdGF0ZTogdGhlIHRvcC1sZXZlbCBkcml2ZXIgc3RhdGUgb2JqZWN0
Cj4gLSAqIEBub25ibG9jazogbm9uYmxvY2tpbmcgY29tbWl0Cj4gLSAqCj4gLSAqIFRoaXMgZnVu
Y3Rpb24gY29tbWl0cyBhIHRvcC1sZXZlbCBzdGF0ZSBvYmplY3QgdGhhdCBoYXMgYmVlbiB2YWxp
ZGF0ZWQKPiAtICogd2l0aCBkcm1fYXRvbWljX2hlbHBlcl9jaGVjaygpLgo+IC0gKgo+IC0gKiBS
RVRVUk5TCj4gLSAqIFplcm8gZm9yIHN1Y2Nlc3Mgb3IgLWVycm5vLgo+IC0gKi8KPiAgc3RhdGlj
IGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAkJCSAg
ICAgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqX3N0YXRlLAo+ICAJCQkgICAgICAgYm9vbCBu
b25ibG9jaykKPiAtLSAKPiAyLjIyLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
