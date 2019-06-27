Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 003955852F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 17:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AFE6E03D;
	Thu, 27 Jun 2019 15:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1DA6E03D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 15:07:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 08:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="189097051"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 08:06:59 -0700
Date: Thu, 27 Jun 2019 18:06:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20190627150657.GA13359@ideak-desk.fi.intel.com>
References: <20190627144438.32458-1-mika.kuoppala@linux.intel.com>
 <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
 <87h88b3wfu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h88b3wfu.fsf@gaia.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Fix memleak in runtime
 wakeref tracking
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

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDY6MDA6MjFQTSArMDMwMCwgTWlrYSBLdW9wcGFsYSB3
cm90ZToKPiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+
IAo+ID4gUXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI3IDE1OjQ0OjM4KQo+ID4+IElm
IHdlIHVudHJhY2sgd2FrZXJlZnMsIHRoZSBhY3R1YWwgY291bnQgbWF5IHJlYWNoIHplcm8uCj4g
Pj4gSG93ZXZlciB0aGUga3JlYWxsb2NlZCBvd25lcnMgYXJyYXkgaXMgc3RpbGwgdGhlcmUgYW5k
Cj4gPj4gbmVlZHMgdG8gYmUgdGFrZW4gY2FyZSBvZi4gRnJlZSB0aGUgb3duZXJzIHVuY29uZGl0
aW9uYWxseQo+ID4+IHRvIGZpeCB0aGUgbGVhay4KPiA+Cj4gPiBUaGF0IGlzIHRydWUuCj4gPgo+
ID4+IEZpeGVzOiBkYmY5OWMxZjhjN2UgKCJkcm0vaTkxNTogRm9yY2UgcHJpbnRpbmcgd2FrZXJl
ZiB0YWNraW5nIGR1cmluZyBwbV9jbGVhbnVwIikKPiA+Cj4gPiBIb3dldmVyLCB0aGUgYnVnIGlz
IG1pbmUKPiA+IEZpeGVzOiBiZDc4MGYzN2EzNjEgKCJkcm0vaTkxNTogVHJhY2sgYWxsIGhlbGQg
cnBtIHdha2VyZWZzIikKPiAKPiBJbmRlZWQuIEFwb2xvZ2llcyBJbXJlIQo+IAo+IEkgcGVyc29u
YWxseSBrbm93IHRoZSByZXZpZXdlciBvZiB0aGUgb3JpZ2luYWwgcGF0Y2gKPiBhbmQgd2lsbCBo
YXZlIGEgZGlzY3Vzc2lvbi4KCkdvb2QgY2F0Y2gsIEkndmUgYmVlbiBzdGFyaW5nIGF0IHRoZSBr
bWVtbGVhayBsb2dzIEotUCBwcm92aWRlZCwgYnV0CmNvdWxkbid0IHNlZSBob3cgaXQgY2FuIGhh
cHBlbi4gCgo+IC1NaWthCj4gCj4gPgo+ID4+IFJlcG9ydGVkLWJ5OiBKdWhhLVBla2thIEhlaWtr
aWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPgo+ID4+IENjOiBKdWhhLVBla2thIEhl
aWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPgo+ID4+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
