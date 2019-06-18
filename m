Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB64A0E6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126566E157;
	Tue, 18 Jun 2019 12:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0621A6E157
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 12:34:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 05:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="186100701"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 05:34:47 -0700
Date: Tue, 18 Jun 2019 15:34:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190618123446.GD3733@ideak-desk.fi.intel.com>
References: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
 <20190612130801.2085-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612130801.2085-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Drop the _INCOMPLETE for
 has_infoframe
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMDQ6MDg6MDFQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFdlIGhhdmUgZnVsbCBpbmZvZnJhbWUgcmVhZG91dCBub3cgc28gd2UgY2FuIHJl
cGxhY2UgdGhlCj4gUElQRV9DT05GX0NIRUNLX0JPT0xfSU5DT01QTEVURShoYXNfaW5mb2ZyYW1l
KSB3aXRoIHRoZSBub3JtYWwKPiBQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfaW5mb2ZyYW1lKS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
Ckxvb2tzIGxpa2UgaGFzX2F1ZGlvIGhhcyB0aGUgcmVhZG91dCB0b28gaW4gcGxhY2UuCgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBlYzNiN2U4MjU2MTMuLjcyZmIwNDg2M2FjZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTI1NzAsNyArMTI1
NzAsNyBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjdXJyZW50X2NvbmZpZywKPiAgCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoZG1p
X3NjcmFtYmxpbmcpOwo+ICAJUElQRV9DT05GX0NIRUNLX0JPT0woaGRtaV9oaWdoX3RtZHNfY2xv
Y2tfcmF0aW8pOwo+IC0JUElQRV9DT05GX0NIRUNLX0JPT0xfSU5DT01QTEVURShoYXNfaW5mb2Zy
YW1lKTsKPiArCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19pbmZvZnJhbWUpOwo+ICAKPiAgCVBJ
UEVfQ09ORl9DSEVDS19CT09MX0lOQ09NUExFVEUoaGFzX2F1ZGlvKTsKPiAgCj4gLS0gCj4gMi4y
MS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
