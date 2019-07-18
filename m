Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B856D648
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 23:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE2F6E46C;
	Thu, 18 Jul 2019 21:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2C06E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 21:14:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 14:14:09 -0700
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="319764154"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Jul 2019 14:14:09 -0700
Date: Thu, 18 Jul 2019 14:14:45 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190718211445.GC30177@intel.com>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
 <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDk6NTg6MTZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA3LTE4IDIxOjQ5OjEyKQo+ID4gK3Zv
aWQgaW50ZWxfZGlzcGxheV9wb3dlcl9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gPiArewo+ID4gKyAgICAgICBpZiAoIUhBU19ESVNQTEFZKGk5MTUpKQo+ID4g
KyAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsgICAgICAgaWYgKElOVEVMX0dFTihp
OTE1KSA+PSAxMSB8fCBJU19HRU45X0xQKGk5MTUpKSB7Cj4gPiArICAgICAgICAgICAgICAgZ2Vu
OV9zYW5pdGl6ZV9kY19zdGF0ZShpOTE1KTsKPiAKPiBBcmUgeW91IHN1cmUgdGhhdCB3aGF0ZXZl
ciBzdGF0ZSB5b3UgYXJlIHJlc3VtaW5nIGZyb20gYWdyZWVzIHdpdGggeW91cgo+IG5vdGlvbiBv
ZiAhZGlzcGxheT8gVGhlIHNhbml0aXplIHJvdXRpbmVzIGFyZSBzdXBwb3NlZCB0byBiZSBhYm91
dAo+IGNsZWFuaW5nIHVwIGFmdGVyIHRoaXJkIHBhcnRpZXMgd2hvIGRvbid0IHBsYXkgYnkgdGhl
IHNhbWUgcnVsZXMuCgpJIGRvbid0IGV4cGVjdCBhbnkgZnVuY3Rpb24gc2V0dGluZyBhbnkga2lu
ZCBvZiBkYyBzdGF0ZXMgd2hlbiB3ZSBkb24ndApoYXZlIGRpc3BsYXkuIEJlc2lkZXMgdGhlIHBh
dGggdGhhdCBzZXRzIERDX1NUQVRFX0VOIGlzIGFuZCBuZWVlZHMgdG8KYmUgc2FuaXRpemVkIGlz
IGFsc28gY292ZXJlZCBieSB0aGlzIHBhdGNoIGFuZCB0aGlzIHNob3VsZG4ndCBoYXBwZW4uCgpP
ciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nIGVsc2U/Cgo+IC1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
