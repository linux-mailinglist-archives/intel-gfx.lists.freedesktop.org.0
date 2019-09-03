Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63561A76AC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 00:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4995C898AF;
	Tue,  3 Sep 2019 22:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30591898AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 22:06:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 15:05:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="182277276"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by fmsmga008.fm.intel.com with ESMTP; 03 Sep 2019 15:05:59 -0700
Date: Tue, 3 Sep 2019 15:05:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190903220559.GM13677@mdroper-desk.amr.corp.intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829092554.32198-6-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915/tgl: disable SAGV
 temporarily
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

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MjU6NTJBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFNBR1YgaXMgbm90IGN1cnJlbnRseSB3b3JraW5nIGZvciBUaWdlciBMYWtlLiBX
ZSBiZXR0ZXIgZGlzYWJsZSBpdCB1bnRpbAo+IHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBzdGFiaWxp
emVkIGFuZCB3ZSBjYW4gZW5hYmxlIGl0LgoKRG9lcyAibm90IGN1cnJlbnRseSB3b3JraW5nIiBy
ZWZlciB0byB0aGUgaGFyZHdhcmUgbm90IHdvcmtpbmcgaW4gdGhlCmN1cnJlbnQgc3RlcHBpbmcs
IG9yIGlzIGl0IGp1c3QgYSBtYXR0ZXIgb2YgdXMgbm90IGhhdmluZyBwcm9wZXIKc2VxdWVuY2Vz
IGRvY3VtZW50ZWQgeWV0IGluIHRoZSBic3BlYyAoYW5kIGdlbjExJ3Mgc2VxdWVuY2VzIG5vdCBi
ZWluZwpzdWZmaWNpZW50KT8KClNvbWV0aGluZyBtb3JlIGRlc2NyaXB0aXZlIHRoYW4gIkhBQ0sh
IiBpbiB0aGUgY29tbWVudCBiZWxvdyBtaWdodCBiZSBhCmdvb2QgaWRlYSBzaW5jZSB3ZSdyZSB0
cnlpbmcgdG8gbGFuZCB0aGlzIHVwc3RyZWFtLgoKCk1hdHQKCj4gCj4gU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+IGluZGV4IDRmYTliYzgz
YzhiNC4uNzI5NGZjZjA1MzIzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gQEAgLTM2
NTQsNiArMzY1NCwxMCBAQCBzdGF0aWMgYm9vbCBza2xfbmVlZHNfbWVtb3J5X2J3X3dhKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgc3RhdGljIGJvb2wKPiAgaW50ZWxfaGFz
X3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gKwkvKiBIQUNL
ISAqLwo+ICsJaWYgKElTX0dFTihkZXZfcHJpdiwgMTIpKQo+ICsJCXJldHVybiBmYWxzZTsKPiAr
Cj4gIAlyZXR1cm4gKElTX0dFTjlfQkMoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTApICYmCj4gIAkJZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzICE9IEk5MTVfU0FHVl9OT1RfQ09O
VFJPTExFRDsKPiAgfQo+IC0tIAo+IDIuMjMuMAo+IAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3Mg
U29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRlbCBDb3Jw
b3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
