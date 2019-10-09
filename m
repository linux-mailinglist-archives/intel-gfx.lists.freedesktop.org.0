Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51413D194F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 21:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5EDE6EA5C;
	Wed,  9 Oct 2019 19:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C02A6EA63;
 Wed,  9 Oct 2019 19:59:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 12:59:38 -0700
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="187725755"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 12:59:38 -0700
Date: Wed, 9 Oct 2019 13:00:07 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191009200007.GA25267@intel.com>
References: <20190916233251.387-1-matthew.d.roper@intel.com>
 <20f4641a-8811-5753-efad-42b8acb22a98@ubuntu.com>
 <20191009172943.GJ10780@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009172943.GJ10780@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cml: Add second PCH ID for CMP
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
Cc: drm-intel-fixes@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMTA6Mjk6NDNBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBXZWQsIE9jdCAwOSwgMjAxOSBhdCAxMDowMzozMUFNICswMzAwLCBUaW1vIEFhbHRv
bmVuIHdyb3RlOgo+ID4gT24gMTcuOS4yMDE5IDIuMzIsIE1hdHQgUm9wZXIgd3JvdGU6Cj4gPiA+
IFRoZSBDTVAgUENIIElEIHdlIGhhdmUgaW4gdGhlIGRyaXZlciBpcyBjb3JyZWN0IGZvciB0aGUg
Q01MLVUgbWFjaGluZXMgd2UgaGF2ZQo+ID4gPiBpbiBvdXIgQ0kgc3lzdGVtLCBidXQgdGhlIENN
TC1TIGFuZCBDTUwtSCBDSSBtYWNoaW5lcyBhcHBlYXIgdG8gdXNlIGEKPiA+ID4gZGlmZmVyZW50
IFBDSCBJRCwgbGVhZGluZyBvdXIgZHJpdmVyIHRvIGRldGVjdCBubyBQQ0ggZm9yIHRoZW0uCj4g
PiA+IAo+ID4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4g
PiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+ID4gPiBS
ZWZlcmVuY2VzOiA3MjlhZTMzMGEwZjJlMiAoImRybS9pOTE1L2NtbDogSW50cm9kdWNlIENvbWV0
IExha2UgUENIIikKPiA+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTQ2MQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IAo+IENjOiBkcm0taW50ZWwtZml4ZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCgpJIGRvbid0IGJlbGlldmUgdGhpcyBsaXN0IGV2ZW4gZXhpc3QgYW55
bW9yZS4KClRoZSByaWdodCB3YXkgd291bGQgYmU6CgpGaXhlczogNzI5YWUzMzBhMGYyZTIgKCJk
cm0vaTkxNS9jbWw6IEludHJvZHVjZSBDb21ldCBMYWtlIFBDSCIpCgppbnN0ZWFkIG9mIFJlZmVy
ZW5jZXMuLi4uCgo+IAo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BjaC5jIHwgMSArCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8IDEg
Kwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jCj4gPiA+IGluZGV4IGZhODY0ZDhmMmI3My4uMTVmOGJmZjE0
MWY5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+ID4gPiBAQCAtNjks
NiArNjksNyBAQCBpbnRlbF9wY2hfdHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIHVuc2lnbmVkIHNob3J0IGlkKQo+ID4gPiAgCQlXQVJOX09OKCFJU19DQU5OT05M
QUtFKGRldl9wcml2KSAmJiAhSVNfQ09GRkVFTEFLRShkZXZfcHJpdikpOwo+ID4gPiAgCQlyZXR1
cm4gUENIX0NOUDsKPiA+ID4gIAljYXNlIElOVEVMX1BDSF9DTVBfREVWSUNFX0lEX1RZUEU6Cj4g
PiA+ICsJY2FzZSBJTlRFTF9QQ0hfQ01QMl9ERVZJQ0VfSURfVFlQRToKPiA+ID4gIAkJRFJNX0RF
QlVHX0tNUygiRm91bmQgQ29tZXQgTGFrZSBQQ0ggKENNUClcbiIpOwo+ID4gPiAgCQlXQVJOX09O
KCFJU19DT0ZGRUVMQUtFKGRldl9wcml2KSk7Cj4gPiA+ICAJCS8qIENvbWV0UG9pbnQgaXMgQ05Q
IENvbXBhdGlibGUgKi8KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgKPiA+ID4gaW5kZXgg
ZTZhMmQ2NWYxOWM2Li5jMjljODFlYzc5NzEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5oCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5oCj4gPiA+IEBAIC00MSw2ICs0MSw3IEBAIGVudW0gaW50ZWxfcGNoIHsKPiA+ID4g
ICNkZWZpbmUgSU5URUxfUENIX0NOUF9ERVZJQ0VfSURfVFlQRQkJMHhBMzAwCj4gPiA+ICAjZGVm
aW5lIElOVEVMX1BDSF9DTlBfTFBfREVWSUNFX0lEX1RZUEUJCTB4OUQ4MAo+ID4gPiAgI2RlZmlu
ZSBJTlRFTF9QQ0hfQ01QX0RFVklDRV9JRF9UWVBFCQkweDAyODAKPiA+ID4gKyNkZWZpbmUgSU5U
RUxfUENIX0NNUDJfREVWSUNFX0lEX1RZUEUJCTB4MDY4MAo+ID4gPiAgI2RlZmluZSBJTlRFTF9Q
Q0hfSUNQX0RFVklDRV9JRF9UWVBFCQkweDM0ODAKPiA+ID4gICNkZWZpbmUgSU5URUxfUENIX01D
Q19ERVZJQ0VfSURfVFlQRQkJMHg0QjAwCj4gPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9NQ0MyX0RF
VklDRV9JRF9UWVBFCQkweDM4ODAKPiA+IAo+ID4gSGksCj4gPiAKPiA+IFBsZWFzZSBhZGQgdGhp
cyBpbiAtZml4ZXMgc28gNS40IHdpbGwgZ2V0IGl0LCB0aGFua3MuCj4gPiAKPiA+IAo+ID4gLS0g
Cj4gPiB0Cj4gCj4gLS0gCj4gTWF0dCBSb3Blcgo+IEdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVy
Cj4gVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudAo+IEludGVsIENvcnBvcmF0aW9uCj4gKDkx
NikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
