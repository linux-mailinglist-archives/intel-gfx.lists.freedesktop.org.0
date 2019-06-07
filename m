Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA32C38BD6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 15:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7EA89D9B;
	Fri,  7 Jun 2019 13:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCFE889DA7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 13:41:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 06:41:38 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 07 Jun 2019 06:41:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Jun 2019 16:41:34 +0300
Date: Fri, 7 Jun 2019 16:41:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Heinrich Fink <heinrich.fink@daqri.com>
Message-ID: <20190607134134.GY5942@intel.com>
References: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
 <CAB6MLDZVre9+-3-Nc49-m2fyN_KodvmWo5_sp9V34FDm+93mkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB6MLDZVre9+-3-Nc49-m2fyN_KodvmWo5_sp9V34FDm+93mkw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix per-pixel alpha with CCS
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

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMTA6MDM6MTdBTSArMDIwMCwgSGVpbnJpY2ggRmluayB3
cm90ZToKPiBPbiBNb24sIDMgSnVuIDIwMTkgYXQgMTY6MjUsIFZpbGxlIFN5cmphbGEKPiA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4KPiA+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPgo+ID4gV2UgZm9yZ290
IHRvIHNldCAuaGFzX2FscGhhPXRydWUgZm9yIHRoZSBBK0NDUyBmb3JtYXRzIHdoZW4gdGhlIGNv
ZGUKPiA+IHN0YXJ0ZWQgdG8gY29uc3VsdCAuaGFzX2FscGhhLiBUaGlzIG1hbmlmZXN0cyBhcyBB
K0NDUyBiZWluZyB0cmVhdGVkCj4gPiBhcyBYK0NDUyB3aGljaCBtZWFucyBubyBwZXItcGl4ZWwg
YWxwaGEgYmxlbmRpbmcuIEZpeCB0aGUgZm9ybWF0Cj4gPiBsaXN0IGFwcHJvcHJpYXRlbHkuCj4g
Pgo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiBDYzogSGVpbnJpY2ggRmluayA8aGVpbnJp
Y2guZmlua0BkYXFyaS5jb20+Cj4gPiBSZXBvcnRlZC1ieTogSGVpbnJpY2ggRmluayA8aGVpbnJp
Y2guZmlua0BkYXFyaS5jb20+Cj4gPiBGaXhlczogYjIwODE1MjU1NjkzICgiZHJtL2k5MTU6IEFk
ZCBwbGFuZSBhbHBoYSBibGVuZGluZyBzdXBwb3J0LCB2Mi4iKQo+ID4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDEyICsrKysrKysrLS0t
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggYzNlMmIxMTc4
ZDU1Li42N2Q3OTZmNDc0N2UgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kaXNwbGF5LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3Bs
YXkuYwo+ID4gQEAgLTI0NjMsMTAgKzI0NjMsMTQgQEAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRl
bF9mYl9tb2RpZmllcl90b190aWxpbmcodTY0IGZiX21vZGlmaWVyKQo+ID4gICAqIG1haW4gc3Vy
ZmFjZS4KPiA+ICAgKi8KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyBj
Y3NfZm9ybWF0c1tdID0gewo+ID4gLSAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hSR0I4
ODg4LCAuZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9LCAuaHN1
YiA9IDgsIC52c3ViID0gMTYsIH0sCj4gPiAtICAgICAgIHsgLmZvcm1hdCA9IERSTV9GT1JNQVRf
WEJHUjg4ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDIsIC5jcHAgPSB7IDQsIDEsIH0s
IC5oc3ViID0gOCwgLnZzdWIgPSAxNiwgfSwKPiA+IC0gICAgICAgeyAuZm9ybWF0ID0gRFJNX0ZP
Uk1BVF9BUkdCODg4OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9IHsgNCwg
MSwgfSwgLmhzdWIgPSA4LCAudnN1YiA9IDE2LCB9LAo+ID4gLSAgICAgICB7IC5mb3JtYXQgPSBE
Uk1fRk9STUFUX0FCR1I4ODg4LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0g
eyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sCj4gPiArICAgICAgIHsgLmZvcm1h
dCA9IERSTV9GT1JNQVRfWFJHQjg4ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDIsCj4g
PiArICAgICAgICAgLmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIgPSA4LCAudnN1YiA9IDE2LCB9LAo+
ID4gKyAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hCR1I4ODg4LCAuZGVwdGggPSAyNCwg
Lm51bV9wbGFuZXMgPSAyLAo+ID4gKyAgICAgICAgIC5jcHAgPSB7IDQsIDEsIH0sIC5oc3ViID0g
OCwgLnZzdWIgPSAxNiwgfSwKPiA+ICsgICAgICAgeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BUkdC
ODg4OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwKPiA+ICsgICAgICAgICAuY3BwID0g
eyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIC5oYXNfYWxwaGEgPSB0cnVlLCB9LAo+
ID4gKyAgICAgICB7IC5mb3JtYXQgPSBEUk1fRk9STUFUX0FCR1I4ODg4LCAuZGVwdGggPSAzMiwg
Lm51bV9wbGFuZXMgPSAyLAo+ID4gKyAgICAgICAgIC5jcHAgPSB7IDQsIDEsIH0sIC5oc3ViID0g
OCwgLnZzdWIgPSAxNiwgLmhhc19hbHBoYSA9IHRydWUsIH0sCj4gPiAgfTsKPiA+Cj4gPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKgo+ID4gLS0KPiA+IDIuMjEuMAo+ID4K
PiAKPiBKdXN0IHRlc3RlZCBpdCBvbiBvdXIgaW1hZ2UsIGZpeGVzIHRoZSBidWcgYW5kIHdvcmtz
IGZvciBtZS4gVGhhbmsgeW91Cj4gZm9yIHRoZSBzd2lmdCBmaXghCgpDb29sLiBUaGFua3MgZm9y
IGNvbmZpcm1pbmcgdGhlIGZpeC4KClB1c2hlZCB0byBkaW5xLgoKLS0gClZpbGxlIFN5cmrDpGzD
pApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
