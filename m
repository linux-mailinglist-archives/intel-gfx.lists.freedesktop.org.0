Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6818011702C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:18:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBA36E4A1;
	Mon,  9 Dec 2019 15:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0596E4AA;
 Mon,  9 Dec 2019 15:18:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="206922150"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 09 Dec 2019 07:18:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Dec 2019 17:18:46 +0200
Date: Mon, 9 Dec 2019 17:18:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sean Paul <sean@poorly.run>
Message-ID: <20191209151846.GQ1208@intel.com>
References: <20191203173638.94919-1-sean@poorly.run>
 <20191203173638.94919-4-sean@poorly.run>
 <20191205193319.GK1208@intel.com>
 <20191206135509.GE162979@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206135509.GE162979@art_vandelay>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Disable HDCP signalling on
 transcoder disable
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
 ramalingm.c@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBEZWMgMDYsIDIwMTkgYXQgMDg6NTU6MDlBTSAtMDUwMCwgU2VhbiBQYXVsIHdyb3Rl
Ogo+IE9uIFRodSwgRGVjIDA1LCAyMDE5IGF0IDA5OjMzOjE5UE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToKPiA+IE9uIFR1ZSwgRGVjIDAzLCAyMDE5IGF0IDEyOjM2OjI2UE0gLTA1MDAs
IFNlYW4gUGF1bCB3cm90ZToKPiA+ID4gRnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1
bS5vcmc+Cj4gPiA+IAo+ID4gPiBDdXJyZW50bHkgd2UgcmVseSBvbiBpbnRlbF9oZGNwX2Rpc2Fi
bGUoKSB0byBkaXNhYmxlIEhEQ1Agc2lnbmFsbGluZyBpbgo+ID4gPiB0aGUgRERJIEZ1bmN0aW9u
IENvbnRyb2wgcmVnaXN0ZXIuIFRoaXMgcGF0Y2ggYWRkcyBhIHNhZmV0eSBuZXQgYnkgYWxzbwo+
ID4gPiBjbGVhcmluZyB0aGUgYml0IHdoZW4gd2UgZGlzYWJsZSB0aGUgdHJhbnNjb2Rlci4KPiA+
ID4gCj4gPiA+IE9uY2Ugd2UgaGF2ZSBIRENQIG92ZXIgTVNUIGFuZCBkaXNhcHBlYXJpbmcgY29u
bmVjdG9ycywgd2Ugd2FudCB0byBtYWtlCj4gPiA+IHN1cmUgdGhhdCB0aGUgc2lnbmFsbGluZyBp
cyB0cnVseSBkaXNhYmxlZCBldmVuIGlmIEhEQ1AgdGVhcmRvd24gZG9lc24ndAo+ID4gPiBnbyBh
cyBwbGFubmVkLgo+ID4gCj4gPiBXaHkgd291bGRuJ3QgaXQgZ28gYXMgcGxhbm5lZD8KPiA+IAo+
IAo+IEJlY2F1c2UgdGhpbmdzIGNhbiBmYWlsIGluIHdlaXJkIGFuZCB3b25kZXJmdWwgd2F5cyBv
biB1bnBsdWcgOi0pCgpOb3QgcmVhbGx5LgoKPiAKPiBJdCdzIGEgc2FmZXR5IG5ldC4gSSBzYXcg
dGhpcyBmdW5jdGlvbiBhbmQgZmlndXJlZCBIRENQIHNpZ25hbGxpbmcgc2hvdWxkIGJlCj4gZXhw
bGljaXRseSBjbGVhcmVkIGhlcmUgYXMgd2VsbC4KCkkgY2FsbCBpdCBkZWFkIGFuZCBjb25mdXNp
bmcgY29kZS4gSWYgd2UgZ2V0IGhlcmUgd2l0aCBIRENQIHN0aWxsCmVuYWJsZWQgd2UgaGF2ZSBh
IG1vcmUgc2VyaW91cyBidWcgc29tZXdoZXJlIGVsc2UuCgotLSAKVmlsbGUgU3lyasOkbMOkCklu
dGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
