Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBE76D691
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 23:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE196E37F;
	Thu, 18 Jul 2019 21:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA73D6E37F
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 21:37:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 14:37:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="173309467"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Jul 2019 14:37:36 -0700
Date: Thu, 18 Jul 2019 14:38:11 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190718213811.GA25506@intel.com>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
 <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
 <20190718211445.GC30177@intel.com>
 <156348515103.7512.11898101333181763201@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156348515103.7512.11898101333181763201@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMTA6MjU6NTFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA3LTE4IDIyOjE0OjQ1KQo+ID4gT24g
VGh1LCBKdWwgMTgsIDIwMTkgYXQgMDk6NTg6MTZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gPiBRdW90aW5nIFJvZHJpZ28gVml2aSAoMjAxOS0wNy0xOCAyMTo0OToxMikKPiA+ID4g
PiArdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3Jlc3VtZV9lYXJseShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAgaWYgKCFIQVNfRElTUExB
WShpOTE1KSkKPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ICsKPiA+ID4g
PiArICAgICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEgfHwgSVNfR0VOOV9MUChpOTE1KSkg
ewo+ID4gPiA+ICsgICAgICAgICAgICAgICBnZW45X3Nhbml0aXplX2RjX3N0YXRlKGk5MTUpOwo+
ID4gPiAKPiA+ID4gQXJlIHlvdSBzdXJlIHRoYXQgd2hhdGV2ZXIgc3RhdGUgeW91IGFyZSByZXN1
bWluZyBmcm9tIGFncmVlcyB3aXRoIHlvdXIKPiA+ID4gbm90aW9uIG9mICFkaXNwbGF5PyBUaGUg
c2FuaXRpemUgcm91dGluZXMgYXJlIHN1cHBvc2VkIHRvIGJlIGFib3V0Cj4gPiA+IGNsZWFuaW5n
IHVwIGFmdGVyIHRoaXJkIHBhcnRpZXMgd2hvIGRvbid0IHBsYXkgYnkgdGhlIHNhbWUgcnVsZXMu
Cj4gPiAKPiA+IEkgZG9uJ3QgZXhwZWN0IGFueSBmdW5jdGlvbiBzZXR0aW5nIGFueSBraW5kIG9m
IGRjIHN0YXRlcyB3aGVuIHdlIGRvbid0Cj4gPiBoYXZlIGRpc3BsYXkuIEJlc2lkZXMgdGhlIHBh
dGggdGhhdCBzZXRzIERDX1NUQVRFX0VOIGlzIGFuZCBuZWVlZHMgdG8KPiA+IGJlIHNhbml0aXpl
ZCBpcyBhbHNvIGNvdmVyZWQgYnkgdGhpcyBwYXRjaCBhbmQgdGhpcyBzaG91bGRuJ3QgaGFwcGVu
Lgo+ID4gCj4gPiBPciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nIGVsc2U/Cj4gCj4gSXQncyBub3Qg
YWJvdXQgdXMsIGl0J3MgYWJvdXQgd2hhdGV2ZXIgZWxzZSBydW5zIGluIGJldHdlZW4uIEFuZAo+
IHJlbWVtYmVyICFIQVNfRElTUExBWSgpIGlzIGFsc28gYSB1c2VyIHNldHRpbmcsIG5vdCBtZXJl
bHkgYSByZWZsZWN0aW9uCj4gb2YgcHJvYmVkIGh3LgoKb3VjaCwgd2UgbmVlZCB0byBnZXQgcmlk
IG9mIHRob3NlIHJ1bnRpbWUgd3JpdGVzIHRvIGluZm8gc3RydWN0IDovCgpJIHdvbmRlciBpZiBp
dCB3b3J0aCB0byBhZGQgYSBpbnRlbF9kaXNwbGF5X3Nhbml0aXplIHRvIGJlIGNhbGxlZAp3aGVu
IHRvZ2dsaW5nIGluZm8tbnVtX3BpcGVzIHRvIDAgYWxvbmcgd2l0aCB0aGF0IERSTV9FUlJPUi4u
LgoKb3IganVzdCBjYWxsIGl0IGJlZm9yZSAhSEFTX0RJU1BMQVkgd2l0aCBhIFhYWCBjb21tZW50
Li4uCgpvdGhlciBpZGVhcz8KCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
