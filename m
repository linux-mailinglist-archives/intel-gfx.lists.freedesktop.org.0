Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BEEC07A4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 16:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD8C6E8A4;
	Fri, 27 Sep 2019 14:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817F46E8A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 14:34:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 07:34:10 -0700
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="214847984"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 07:34:09 -0700
Date: Fri, 27 Sep 2019 17:33:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190927143309.GC29139@ideak-desk.fi.intel.com>
References: <20190926145621.9090-1-anshuman.gupta@intel.com>
 <20190926145621.9090-4-anshuman.gupta@intel.com>
 <20190927110743.GA29139@ideak-desk.fi.intel.com>
 <20190927133248.GB29139@ideak-desk.fi.intel.com>
 <87v9tddfh0.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9tddfh0.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v9 3/7] drm/i915/tgl: Enable DC3CO state in
 "DC Off" power well
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

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMDQ6NDA6NTlQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gRnJpLCAyNyBTZXAgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PiB3cm90ZToKPiA+IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDAyOjA3OjQzUE0gKzAzMDAsIElt
cmUgRGVhayB3cm90ZToKPiA+PiBPbiBUaHUsIFNlcCAyNiwgMjAxOSBhdCAwODoyNjoxN1BNICsw
NTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToKPiA+PiA+ICt2b2lkIHRnbF9zZXRfdGFyZ2V0X2Rj
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHN0YXRlKQo+ID4K
PiA+IFdlIG5lZWQgYSBkb2N1bWVudGF0aW9uIGZvciBleHBvcnRlZCBmdW5jdGlvbnMuCj4gCj4g
QW5kIHJlYWxseSB5b3Ugc2hvdWxkIG1ha2UgYW4gZWZmb3J0IHRvICpOT1QqIGV4cG9zZSBwbGF0
Zm9ybSBzcGVjaWZpYwo+IGZ1bmN0aW9ucyBmcm9tIHlvdXIgQyBtb2R1bGVzLiBZZXMsIHdlIGhh
dmUgc29tZSwgYnV0IHRoZSBkaXJlY3Rpb24KPiBzaG91bGQgYmUgdGhlIG9wcG9zaXRlIG9mIGFk
ZGluZyBtb3JlLgo+IAo+IEknbGwgYmUgbW9yZSBzdHJpY3QgYWJvdXQgdGhpcyBnb2luZyBmb3J3
YXJkLiBXZSBuZWVkIHRvIGltcHJvdmUgdGhlCj4gaW50ZXJmYWNlcyB3ZSBoYXZlLgoKWWVzLCB0
aGUgb3JpZ2luYWwgaWRlYSB3YXMgdG8gYWRkIGEgbmV3IHBvd2VyIHdlbGwgZm9yIHRoZSBEQzNj
byBwb3dlcgpzdGF0ZSwgd2hpY2ggd291bGQgYWxsb3cgdXMgdG8gdXNlIHRoZSBleGlzdGluZyBn
ZXQvcHV0IGludGVyZmFjZS4gVGhhdApkb2Vzbid0IHdvcmsgdG9vIHdlbGwgdGhvdWdoLCBiZWNh
dXNlIHdlIGNhbiBoYXZlIG9ubHkgb25lIG9mIHRoZSBzdGF0ZXMKZW5hYmxlZCwgc28gd2Ugd2Vu
dCB3aXRoIGhhdmluZyBvbmx5IG9uZSBEQyBwb3dlciB3ZWxsIGFuZCBhIG5ldyBBUEkgdG8Kc2V0
IGl0cyB0YXJnZXQgREMgc3RhdGUuCgo+IAo+ID4+ID4gQEAgLTI1Niw2ICsyNTcsNyBAQCB2b2lk
IGludGVsX2Rpc3BsYXlfcG93ZXJfc3VzcGVuZF9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKPiA+PiA+ICB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiA+PiA+ICB2b2lkIGludGVsX2Rpc3BsYXlf
cG93ZXJfc3VzcGVuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gPj4gPiAgdm9p
ZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSk7Cj4gPj4gPiArdm9pZCB0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBzdGF0ZSk7Cj4gCj4gVGhpcyBzdGlja3Mgb3V0IGxpa2Ug
YSBzb3JlIHRodW1iLgoKWWVwLCBzbyB0aGUgcnVsZSBpcyB0byBoYXZlIGEgdW5pZm9ybSBwcmVm
aXggZm9yIGFsbCBleHBvcnRlZCBmdW5jdGlvbnMsCnNvIHdlIGNvdWxkIHJlbmFtZSB0aGlzIHRv
IGludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X2RjX3RhcmdldCgpLAoKPiBBbmQgeW91J3JlIG5vdCBl
dmVuIHVzaW5nIHRoZSBmdW5jdGlvbiBvdXRzaWRlIG9mIGludGVsX2Rpc3BsYXlfcG93ZXIuaCEK
Ckl0J3MgdXNlZCwgYnV0IHRoZSB1c2UgaXMgYWRkZWQgb25seSBsYXRlci4gSSBhZ3JlZSB0aGF0
LCBhcyBjb21tZW50ZWQKZWxzZXdoZXJlLCBuZXcgZnVuY3Rpb25zIHNob3VsZCBiZSBhZGRlZCBp
biB0aGUgc2FtZSBwYXRjaCB3aGVyZSB0aGV5CmFyZSB1c2VkLiAKCj4gQlIsCj4gSmFuaS4KPiAK
PiAKPiA+PiA+ICAKPiA+PiA+ICBjb25zdCBjaGFyICoKPiA+PiA+ICBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2RvbWFpbl9zdHIoZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pOwo+
IAo+IC0tIAo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
