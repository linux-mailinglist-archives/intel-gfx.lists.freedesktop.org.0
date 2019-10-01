Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D12C3711
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9DD6E79E;
	Tue,  1 Oct 2019 14:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E926F6E466
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:22:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:22:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="190605353"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2019 07:22:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:22:48 +0300
Date: Tue, 1 Oct 2019 17:22:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191001142248.GM1208@intel.com>
References: <20191001134353.12028-1-jani.nikula@intel.com>
 <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out
 intel_vga_client.[ch]
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

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDM6MTI6NDlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMTAtMDEgMTQ6NDM6NTMpCj4gPiBTcGxp
dCBvdXQgY29kZSByZWxhdGVkIHRvIHZnYSBjbGllbnQgYW5kIHZnYSBzd2l0Y2hlcm9vCj4gPiBy
ZWdpc3Rlci91bnJlZ2lzdGVyIGFuZCBzdGF0ZSBoYW5kbGluZyBmcm9tIGk5MTVfZHJ2LmMgYW5k
Cj4gPiBpbnRlbF9kaXNwbGF5LmMuCj4gPiAKPiA+IEl0J3MgYSBiaXQgZGlmZmljdWx0IHRvIGRy
YXcgdGhlIGxpbmUgaG93IG11Y2ggdG8gbW92ZSB0byB0aGUgbmV3IGZpbGUKPiA+IGZyb20gaTkx
NV9kcnYuYywgYnV0IGl0IHNlZW1lZCB0byBtZSBrZWVwaW5nIGk5MTVfc3VzcGVuZF9zd2l0Y2hl
cm9vKCkKPiA+IGFuZCBpOTE1X3Jlc3VtZV9zd2l0Y2hlcm9vKCkgaW4gcGxhY2Ugd2FzIGNsZWFu
ZXN0Lgo+ID4gCj4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gPiAKPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+IAo+ID4gLS0tCj4gPiAKPiA+IEl0J3Mg
YWxzbyBhIGJpdCBmdXp6eSBpZiB0aGlzIGlzIGEgc2Vuc2libGUgc3BsaXQgYW55d2F5LiBDb3Vs
ZCBhbHNvCj4gPiBuYW1lIGl0IGludGVsX3ZnYSBhbmQgbW92ZSB0aGVzZSBmcm9tIGludGVsX2Rp
c3BsYXkuYyB0aGVyZT8KPiAKPiBNeSBpbml0aWFsIHRob3VnaHQgdGhhdCB0aGUgc3dpdGNoZXJv
byBpbnRlcmZhY2Ugd291bGQgcmVtYWluIGluIGNvcmUsCgpZZWFoIHRoZSBzd2l0Y2hlcm9vIHN0
dWZmIHNob3VsZCBwZXJoYXBzIHN0YXlzIHdpdGggdGhlIHJlc3Qgb2YgdGhlIHBtIGhvb2tzLgoK
PiB0aGF0IGl0IGlzIG1vcmUgb2YgYSBnbG9iYWwgcG93ZXIgc3RhdGUgdGhhdCB3ZSBjdXJyZW50
bHkganVzdCB1c2UgZm9yCj4gdGhlIGxlZ2FjeSB2Z2Egc3dpdGNoaW5nLgo+IAo+IFRoZSBwYXRj
aCBsb29rcyBmaW5lLCBvbiBhIHB1cmUgbWVjaGFuaWNhbCBwb3YsCj4gUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IAo+IEZvciB0aGUgc2FrZSBv
ZiBhcmd1bWVudCwgY291bGQgeW91IGZsb2F0IHRoZSBzcGxpdCBpbiB0aGUgb3RoZXIKPiBkaXJl
Y3Rpb24/Cj4gCj4gQW5kIG1heWJlIFZpbGxlIGhhcyBhIGdvb2Qgb3BpbmlvbiBvbiBob3cgaXQg
aXMgbWVhbnQgdG8gd29yayA6KQo+IC1DaHJpcwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
