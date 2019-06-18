Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9EA49E42
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 12:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924676E12E;
	Tue, 18 Jun 2019 10:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F506E12E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 10:30:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 03:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,388,1557212400"; d="scan'208";a="161828490"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 18 Jun 2019 03:30:28 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5IAUR6r031409; Tue, 18 Jun 2019 11:30:28 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190617100917.13110-1-chris@chris-wilson.co.uk>
 <op.z3i9m3f4xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156085347039.31375.13894975603668668933@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 12:30:26 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3kss0jwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156085347039.31375.13894975603668668933@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log
 overflows
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBKdW4gMjAxOSAxMjoyNDozMCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNi0xNyAxNTozODo1MykKPj4gT24gTW9uLCAxNyBKdW4gMjAxOSAxMjowOToxNyArMDIw
MCwgQ2hyaXMgV2lsc29uCj4+IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+Pgo+
PiA+IElmIHRoZSB1c2VyIGlzIGNsZWFyaW5nIHRoZSBsb2cgYnVmZmVyIHRvbyBzbG93bHksIHdl
IG92ZXJmbG93LiBBcyAgCj4+IHRoaXMKPj4gPiBpcyBhbiBleHBlY3RlZCBjb25kaXRpb24sIGFu
ZCB0aGUgZHJpdmVyIHRyaWVzIHRvIGhhbmRsZSBpdCwgcmVkdWNlICAKPj4gdGhlCj4+ID4gZXJy
b3IgbWVzc2FnZSBkb3duIHRvIGEgbm90aWNlLgo+PiA+Cj4+ID4gQnVnemlsbGE6IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDgxNwo+PiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+IENjOiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gPiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jIHwgNCArKystCj4+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4gPgo+PiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMKPj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYwo+PiA+IGluZGV4IGJmMTQ0NjYyOTcwMy4uZTNi
ODNlY2I5MGI1IDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19sb2cuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYwo+
PiA+IEBAIC0yMDgsNyArMjA4LDkgQEAgc3RhdGljIGJvb2wgZ3VjX2NoZWNrX2xvZ19idWZfb3Zl
cmZsb3coc3RydWN0Cj4+ID4gaW50ZWxfZ3VjX2xvZyAqbG9nLAo+PiA+ICAgICAgICAgICAgICAg
ICAgICAgICAvKiBidWZmZXJfZnVsbF9jbnQgaXMgYSA0IGJpdCBjb3VudGVyICovCj4+ID4gICAg
ICAgICAgICAgICAgICAgICAgIGxvZy0+c3RhdHNbdHlwZV0uc2FtcGxlZF9vdmVyZmxvdyArPSAx
NjsKPj4gPiAgICAgICAgICAgICAgIH0KPj4gPiAtICAgICAgICAgICAgIERSTV9FUlJPUl9SQVRF
TElNSVRFRCgiR3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dcbiIpOwo+PiA+ICsKPj4gPiArICAgICAg
ICAgICAgICAKPj4gZGV2X25vdGljZV9yYXRlbGltaXRlZChndWNfdG9faTkxNShsb2dfdG9fZ3Vj
KGxvZykpLT5kcm0uZGV2LAo+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiR3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dcbiIpOwo+Pgo+PiBXaGlsZSB0aGlzIGNoYW5nZSBh
bG9uZSBpcyBub3QgaGFybWZ1bCwgSSdtIGFmcmFpZCB0aGF0IHRoZXJlIG1pZ2h0Cj4+IGJlIGFu
b3RoZXIgcmVhc29uIHdoeSB3ZSBzZWUgdGhpcyBtZXNzYWdlIDogb25jZSBidWZmZXJfZnVsbF9j
bnQgaXMKPj4gdHVybmVkIG9uIGJ5IHRoZSBmdyBhbmQgdGhlbiB3ZSByZXNldCB0aGUgR3VjLCB0
aGlzIGZpZWxkIG1heSBoYXZlCj4+IHN0YWxlIHZhbHVlIGFzIGl0IGlzIG5vdCBjbGVhcmVkIGJ5
IHVzL3VjIGFuZCB3ZSBtYXkgd3JvbmdseSBhc3N1bWUKPj4gdGhhdCB0aGVyZSB3YXMgYW4gb3Zl
cmZsb3cuCj4KPiBTbyB5YXkvbmF5IG9uIHNpbGVuY2luZyB0aGUgdGVzdCBvdXRwdXQgc28gSSBj
YW4gYmxpc3NmdWxseSBpZ25vcmUgaXQgaW4KPiBidWd6aWxsYT8KCk9LIHRvIG1lcmdlLCB3ZSBj
YW4gZGVidWcgZXh0cmEgJ25vdGljZScgbG9ncyBzZXBhcmF0ZWx5CgpNaWNoYWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
