Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 688F966C4E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 14:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F026E358;
	Fri, 12 Jul 2019 12:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87B26E358
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 12:13:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 05:13:19 -0700
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="160375468"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Jul 2019 05:13:18 -0700
Date: Fri, 12 Jul 2019 05:13:55 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190712121355.GF12992@intel.com>
References: <20190711092254.1719-1-chris@chris-wilson.co.uk>
 <20190711110201.GD9599@intel.com>
 <156284329225.12757.17426687065171875375@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156284329225.12757.17426687065171875375@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915: Enable PSR2 by
 default"
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMTI6MDg6MTJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA3LTExIDEyOjAyOjAxKQo+ID4gT24g
VGh1LCBKdWwgMTEsIDIwMTkgYXQgMTA6MjI6NTRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gPiBNdWx0aXBsZSB1c2VycyBhcmUgcmVwb3J0aW5nIGJsYWNrIHNjcmVlbnMgdXBvbiBi
b290LCBhZnRlciByZXN1bWUsIG9yCj4gPiA+IGZyb3plbiBhZnRlciBhIHNob3J0IHBlcmlvZCBv
ZiBpZGxlbmVzcy4gQSBibGFjayBzY3JlZW4gb24gYm9vdCBpcyBhCj4gPiA+IGNyaXRpY2FsIGlz
c3VlIHNvIGRpc2FibGUgcHNyMiBhZ2FpbiB1bnRpbCByZXNvbHZlZC4KPiA+ID4gCj4gPiA+IFRo
aXMgcmV2ZXJ0cyBjb21taXQgOGY2ZTg3ZDZkNTYxZjEwY2ZhNDhhNjg3MzQ1NTEyNDE5ODM5YjZk
OC4KPiA+ID4gCj4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTEwODgKPiA+IAo+ID4gSSBhZ3JlZSBpdCBpcyBjcml0aWNhbCwgYnV0
IHVuZm9ydHVuYXRlbHkgdGhpcyByZXZlcnQgd29uJ3Qgc29sdmUgdGhlIGlzc3VlLgo+ID4gCj4g
PiBbICAgIDEuOTU0ODg2XSBbZHJtOmludGVsX3Bzcl9pbml0X2RwY2QgW2k5MTVdXSBlRFAgcGFu
ZWwgc3VwcG9ydHMgUFNSIHZlcnNpb24gMQo+ID4gWyAgICAyLjAwMzY4Nl0gW2RybTppbnRlbF9w
c3JfZW5hYmxlX2xvY2tlZCBbaTkxNV1dIEVuYWJsaW5nIFBTUjEKPiA+IAo+ID4gVXNlcnMgYXJl
IGNsYWltaW5nIHRoZSByZWdyZXNzaW9uIGlzIG9ubHkgb24gNS4yIHdpdGggNS4xIHdvcmtpbmcg
d2VsbAo+ID4gYW5kIFBTUjEgaXMgZW5hYmxlZCBieSBkZWZhdWx0IHNpbmNlIDUuMC4KPiAKPiBI
bW0sIHdoaWNoIHBhbmVscyBhcmUgcHNyMiBhbmQgaXMgaXQgYmVpbmcgYWNjdXJhdGVseSByZXBv
cnRlZD8KCnllcywgdGhpcyBwYXJ0IG9mIGRldGVjdGlvbiBpcyBwcmV0dHkgcmVsaWFibGUuCkkn
ZCBleHBlY3QgUFNSMiBvbmx5IG9uIGJyYW5kIG5ldyBwYW5lbHMKCj4gCj4gSWYgeW91IHN1c3Bl
Y3QgcHNyMSwganVzdCByZXZlcnQgYm90aCBmb3Igbm93LgoKSSdtIGhlc2l0YXRpbmcgb24gdGhl
IHJldmVydCBiZWNhdXNlIHBzciB3b3JrZWQgZmluZCBmb3IgNS4wIGFuZCA1LjEKYW5kIGV2ZW4g
b24gdGhlIGN1cnJlbnQgaXNzdWUgdGhlIHJlcHJvZHVjaWJpbGl0eSBpcyByZWFsbHkgbG93CnBs
dXMgdGhlIGZhY3QgdGhhdCBKb3NlIGlzIG9uIHRvcCBvZiB0aGF0IHdvcmtpbmcgcmlnaHQgbm93
LgoKYnV0IHllYXAsIGlmIG1vcmUgaXNzdWVzIHN0YXJ0IHRvIHBvcCB1cCBhbmQgdGltZSBwYXNz
aW5nIGJ5IHdlCndpbGwgaGF2ZSBubyBjaG9pY2UgYWdhaW4uCgo+IC1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
