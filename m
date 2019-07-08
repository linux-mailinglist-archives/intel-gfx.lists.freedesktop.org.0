Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1743B6216E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 17:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785ED89D5B;
	Mon,  8 Jul 2019 15:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A99A89D5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 15:16:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 08:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="316744488"
Received: from hollowex-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.101.12])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 08:16:13 -0700
Date: Mon, 8 Jul 2019 08:16:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190708151613.yxjk2tn4xtm6bzkd@ldmartin-desk1>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMDc6MjE6MzhQTSArMDIwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPk9uIFRodSwgMDQgSnVsIDIwMTkgMDI6MDY6NDcgKzAyMDAsIEx1Y2FzIERlIE1h
cmNoaSAKPjxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4+TWFrZSBpbnRlbF90
Yy5oIHRoZSBmaXJzdCBpbmNsdWRlIHNvIHdlIGd1YXJhbnRlZSBpdCdzIHNlbGYtY29udGFpbmVk
Lgo+PlNvcnQgdGhlIHJlc3QuIFNhbWUgcHJpbmNpcGxlIGFwcGxpZXMgZm9yIGluY2x1ZGVzIGlu
IHRoZSBoZWFkZXIuCj4+Cj4+U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Cj4+LS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYyB8IDUgKysrLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oIHwgNSArKystLQo+PiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPj4KPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jIAo+PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
Cj4+aW5kZXggMWE5ZGQzMmZiMGE1Li5lNmU2MTYzYzEyMzIgMTAwNjQ0Cj4+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4+QEAgLTMsMTAgKzMsMTEgQEAKPj4gICogQ29weXJp
Z2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPj4gICovCj4+KyNpbmNsdWRlICJpbnRlbF90
Yy5oIgo+PisKPj4rI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4KPnRoaXMgbWFzdGVyIGhlYWRlciB3
aWxsIGxpa2VseSBpbmNsdWRlIGV2ZXJ5dGhpbmcsIHNvIHdoaWxlCj55b3VyIC5oIGlzIG5vdyBz
ZWxmLWNvbnRhaW5lZCwgLmMgcmVtYWlucyB1bmNsZWFuCgp0aGVyZSBhcmUgMiBkaWZmZXJlbnQg
Y29uY2VwdHMgb24gaGVhZGVyIG9yZ2FuaXphdGlvbjoKMSkgYmVpbmcgc2VsZi1jb250YWluZWQg
YW5kIDIpIGluY2x1ZGUtd2hhdC15b3UtdXNlCgooMikgaXMgbm90IGRvbmUgYnkgdGhpcyBwYXRj
aC4uLiBpOTE1X2Rydi5oIHdhcyBhbHJlYWR5IHRoZXJlLApqdXN0IGluIHRoZSB3cm9uZyBwb3Np
dGlvbi4KCkx1Y2FzIERlIE1hcmNoaQoKPgo+PiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIgo+
PiAjaW5jbHVkZSAiaW50ZWxfZHBfbXN0LmgiCj4+LSNpbmNsdWRlICJpOTE1X2Rydi5oIgo+Pi0j
aW5jbHVkZSAiaW50ZWxfdGMuaCIKPj5zdGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25h
bWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkKPj4gewo+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggCj4+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmgKPj5pbmRleCAwZDg0MTFkNGE5MWQuLjQ1YWUzMDUzN2I3OCAxMDA2
NDQKPj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKPj4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKPj5AQCAtNiwxMCArNiwx
MSBAQAo+PiAjaWZuZGVmIF9fSU5URUxfVENfSF9fCj4+ICNkZWZpbmUgX19JTlRFTF9UQ19IX18K
Pj4tI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+LSNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+
PiAjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCj4KPmFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0aGlzIGdp
YW50IGhlYWRlciB0byBiZSBpbmNsdWRlZCBoZXJlPwo+bm90ZSB0aGF0IGl0IHdpbGwgI2luY2x1
ZGUgYWxtb3N0IGV2ZXJ5dGhpbmcgKGk5MTVfZHJ2LmggdG9vKQo+YW5kIG1heSBpbnRyb2R1Y2Ug
aGFyZCB0byByZXNvbHZlIGNpcmN1bGFyIGRlcGVuZGVuY2llcwo+Cj4+KyNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgo+Cj53ZSBkb24ndCBuZWVkIG11dGV4IGRlZmluaXRpb25zIGhlcmUgaW4gY3Vy
cmVudCBoZWFkZXIgZmlsZQo+Cj4+KyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+PisKPgo+c28g
eW91IG5lZWQgb25seSBhYm92ZSB0eXBlcy5oIGFuZCB0aGVuIGFkZCBmb3J3YXJkIGRlY2wgZm9y
Ogo+Cj5zdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Owo+Cj4+IGJvb2wgaW50ZWxfdGNfcG9ydF9j
b25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+PiB1MzIgaW50
ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KTsKPj4gaW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgCj4+KmRpZ19wb3J0KTsKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
