Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD45822012
	for <lists+intel-gfx@lfdr.de>; Sat, 18 May 2019 00:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D322899B3;
	Fri, 17 May 2019 22:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B64E899B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 22:07:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:07:38 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2019 15:07:37 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HM7akc003176; Fri, 17 May 2019 23:07:36 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517214028.14388-1-michal.wajdeczko@intel.com>
 <155812995700.4652.2229049868155151039@skylake-alporthouse-com>
Date: Sat, 18 May 2019 00:07:36 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1yfqyl8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155812995700.4652.2229049868155151039@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Don't try to check HuC status
 if it's not loaded
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

T24gRnJpLCAxNyBNYXkgMjAxOSAyMzo1MjozNyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAyMjo0MDoyOCkKPj4gSWYgd2UgbmV2ZXIgYXR0ZW1wdGVkIHRvIGxvYWQgSHVD
IGZpcm13YXJlLCBvciB3ZSBhbHJlYWR5IHdlZGdlZAo+PiBvciByZXNldCBHdUMvSHVDLCB0aGVu
IHRoZXJlIGlzIG5vIHJlYXNvbiB0byB3YWtlIHVwIHRoZSBkZXZpY2UKPj4gdG8gY2hlY2sgb25l
IGJpdCBpbiB0aGUgcmVnaXN0ZXIgdGhhdCB3aWxsIGJlIGZvciBzdXJlIGNsZWFyZWQuCj4+Cj4+
IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgo+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IENj
OiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9odWMuYyB8IDMgKysrCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9o
dWMuaCB8IDUgKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuYyAgCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKPj4gaW5kZXggMWZmMWZiMDE1ZTU4Li45ZDkx
MDg5ZTJjZDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCj4+IEBAIC0xNjMsNiAr
MTYzLDkgQEAgaW50IGludGVsX2h1Y19jaGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVj
KQo+PiAgICAgICAgIGlmICghSEFTX0hVQyhkZXZfcHJpdikpCj4+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT0RFVjsKPj4KPj4gKyAgICAgICBpZiAoIWludGVsX2h1Y19pc19sb2FkZWQoaHVj
KSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+Cj4gSnVzdCB0byB0aHJvdyBvdXQgYW4g
aWRlYSwgLUVOWElPPwo+Cj4gQSBzdWJ0bGUgY2hhbmdlIGluIEFCSSB0aGF0IHNob3VsZCBnbyB1
bm5vdGljZWQgYnkgdGhlIG1lZGlhIGRyaXZlciwgYnV0Cj4gaGVscHMgZGlmZmVyZW50aWF0ZSBj
YXVzZSB3aXRob3V0IGhhdmluZyB0byBkaWcgZGVlcGVyLgoKb3IgbWF5YmU6CgoJaWYgKCFVU0VT
X0hVQyhkZXZfcHJpdikpCgkJcmV0dXJuIDA7CgoJaWYgKCFpbnRlbF9odWNfaXNfbG9hZGVkKGh1
YykpCgkJcmV0dXJuIC1FTlhJTzsKCgkuLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
