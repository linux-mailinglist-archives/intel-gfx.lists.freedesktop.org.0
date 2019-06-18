Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B09D4A21A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2076E17D;
	Tue, 18 Jun 2019 13:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462666E188
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:28:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="186116357"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 06:28:26 -0700
Date: Tue, 18 Jun 2019 16:28:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190618132826.GE3733@ideak-desk.fi.intel.com>
References: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
 <20190612130801.2085-4-ville.syrjala@linux.intel.com>
 <20190618123446.GD3733@ideak-desk.fi.intel.com>
 <20190618125553.GM5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618125553.GM5942@intel.com>
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

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDM6NTU6NTNQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDAzOjM0OjQ2UE0gKzAzMDAsIEltcmUg
RGVhayB3cm90ZToKPiA+IE9uIFdlZCwgSnVuIDEyLCAyMDE5IGF0IDA0OjA4OjAxUE0gKzAzMDAs
IFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IAo+ID4gPiBXZSBoYXZlIGZ1bGwgaW5mb2Zy
YW1lIHJlYWRvdXQgbm93IHNvIHdlIGNhbiByZXBsYWNlIHRoZQo+ID4gPiBQSVBFX0NPTkZfQ0hF
Q0tfQk9PTF9JTkNPTVBMRVRFKGhhc19pbmZvZnJhbWUpIHdpdGggdGhlIG5vcm1hbAo+ID4gPiBQ
SVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfaW5mb2ZyYW1lKS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
PiAKPiA+IFJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiAK
PiA+IExvb2tzIGxpa2UgaGFzX2F1ZGlvIGhhcyB0aGUgcmVhZG91dCB0b28gaW4gcGxhY2UuCj4g
Cj4gSSBzdXBwb3NlIGF1ZGlvIGlzIHVzaW5nIElOQ09NUExFVEUgZHVlIHRvIGxhY2sgb2YgRUxE
IHJlYWRvdXQ/CgpBaCBvaywgc28gdGhlIGNvbXB1dGVkIGhhc19hdWRpbyBzdGF0ZSBkZXBlbmRp
bmcgb24gRUxEIHdvbid0IGJlCmNvcnJlY3QuCgo+IAo+ID4gCj4gPiA+IC0tLQo+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gPiA+IGluZGV4IGVjM2I3ZTgyNTYxMy4uNzJmYjA0
ODYzYWNkIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4g
PiA+IEBAIC0xMjU3MCw3ICsxMjU3MCw3IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAo+ID4gPiAgCj4gPiA+
ICAJUElQRV9DT05GX0NIRUNLX0JPT0woaGRtaV9zY3JhbWJsaW5nKTsKPiA+ID4gIAlQSVBFX0NP
TkZfQ0hFQ0tfQk9PTChoZG1pX2hpZ2hfdG1kc19jbG9ja19yYXRpbyk7Cj4gPiA+IC0JUElQRV9D
T05GX0NIRUNLX0JPT0xfSU5DT01QTEVURShoYXNfaW5mb2ZyYW1lKTsKPiA+ID4gKwlQSVBFX0NP
TkZfQ0hFQ0tfQk9PTChoYXNfaW5mb2ZyYW1lKTsKPiA+ID4gIAo+ID4gPiAgCVBJUEVfQ09ORl9D
SEVDS19CT09MX0lOQ09NUExFVEUoaGFzX2F1ZGlvKTsKPiA+ID4gIAo+ID4gPiAtLSAKPiA+ID4g
Mi4yMS4wCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiA+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
