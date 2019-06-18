Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81834A370
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214F76E1D6;
	Tue, 18 Jun 2019 14:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2769D6E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:08:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 07:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="357867493"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 07:08:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 37D205C1EC4; Tue, 18 Jun 2019 17:08:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156086634275.31375.18343283345365740768@skylake-alporthouse-com>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <87wohj6m7q.fsf@gaia.fi.intel.com>
 <156086634275.31375.18343283345365740768@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 17:08:32 +0300
Message-ID: <87tvcn6l5r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/26] drm/i915: Keep engine alive as we
 retire the context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE4IDE0OjQ1OjQ1KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiA+IEBAIC0zMjgsNiArMzQ1LDcgQEAg
dm9pZCBpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYp
Cj4+ID4gIAo+PiA+ICAgICAgICAgICAgICAgbGxpc3RfYWRkKChzdHJ1Y3QgbGxpc3Rfbm9kZSAq
KSZub2RlLT5iYXNlLmxpbmssCj4+ID4gICAgICAgICAgICAgICAgICAgICAgICAgJmVuZ2luZS0+
YmFycmllcl90YXNrcyk7Cj4+ID4gKyAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fcHV0KGVu
Z2luZSk7Cj4+IAo+PiBCdXQgeW91IHNhaWQgdGhhdCB5b3Uga2VlcCB0aGUgd2FrZXJlZiB1bnRp
bCB1bnBpbj8KPgo+IGludGVsX2NvbnRleHRfdW5waW4gLT4KPiAgIGludGVsX2NvbnRleHRfYWN0
aXZlX3JlbGVhc2UgLT4KPiAgICAgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyCgpOb3QgdGhl
IGZpcnN0IHRpbWUgSSB0cmlwIG9uIHRoZSBuYW1pbmcgaW4gaGVyZS4KQnV0IEkgZG9uJ3QgaGF2
ZSBiZXR0ZXIgc3VnZ2VzdGlvbnMuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
