Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F59A1B53
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 15:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2D86E0FA;
	Thu, 29 Aug 2019 13:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116CE6E0E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 13:24:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 06:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; d="scan'208";a="197804993"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2019 06:24:13 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190827191026.26175-1-animesh.manna@intel.com>
 <20190827191026.26175-6-animesh.manna@intel.com>
 <55e0f2a6-08f3-2a63-ff83-c2129fd3e80f@intel.com>
Message-ID: <bf71bf10-aab7-8b92-1ef5-566a4c8f991a@intel.com>
Date: Thu, 29 Aug 2019 18:54:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <55e0f2a6-08f3-2a63-ff83-c2129fd3e80f@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 05/11] drm/i915/dsb: Register definition
 of DSB registers.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgoKT24gOC8yOC8yMDE5IDEwOjMyIFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4g
T24gOC8yOC8yMDE5IDEyOjQwIEFNLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+PiBBZGRlZCBrZXkg
cmVnaXN0ZXIgZGVmaW5pdGlvbnMgb2YgRFNCLgo+Pgo+PiBkc2ItY3RybCByZWdpc3RlciBpcyBy
ZXF1aXJlZCB0byBlbmFibGUgZHNiLWVuZ2luZS4KPj4KPj4gaGVhZC1wdHIgcmVnaXN0ZXIgaG9s
ZCB0aGUgaGVhZCBvZiBidWZmZXIgYWRkcmVzcyBmcm9tIHdoZXJlIHRoZQo+PiBleGVjdXRpb24g
d2lsbCBzdGFydC4KPj4KPj4gUHJvZ3JhbW1pbmcgdGFpbC1wdHIgcmVnaXN0ZXIgaXMgYSB0cmln
Z2VyIHBvaW50IHRvIHN0YXJ0IGV4ZWN1dGlvbi4KPj4KPj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+Cj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPj4gLS0t
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDE1ICsrKysrKysrKysrKysr
Kwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPj4gaW5kZXggMDJlMWVmMTBjNDdlLi43MWM2YzIzODA0NDMgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiBAQCAtMTE1NjQsNCArMTE1NjQsMTkgQEAgZW51
bSBza2xfcG93ZXJfZ2F0ZSB7Cj4+ICAgI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBDU1NTKGZpYSkg
ICAgICAgIF9NTUlPX0ZJQSgoZmlhKSwgMHgwMDg5NCkKPj4gICAjZGVmaW5lICAgRFBfUEhZX01P
REVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQpICAgICAgICAoMSA8PCAodGNfcG9ydCkpCj4+ICAg
Ky8qIFRoaXMgcmVnaXN0ZXIgY29udHJvbHMgdGhlIERpc3BsYXkgU3RhdGUgQnVmZmVyIChEU0Ip
IGVuZ2luZXMuICovCj4+ICsjZGVmaW5lIF9EU0JTTF9JTlNUQU5DRV9CQVNFICAgICAgICAweDcw
QjAwCj4+ICsjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSAgICAoX0RTQlNMX0lOU1RB
TkNFX0JBU0UgKyBcCj4+ICsgICAgICAgICAgICAgICAgICAgICAocGlwZSkgKiAweDEwMDAgKyAo
aWQpICogMTAwKQo+PiArI2RlZmluZSBEU0JfSEVBRChwaXBlLCBpZCkgICAgICAgIF9NTUlPKERT
QlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4MCkKPj4gKyNkZWZpbmUgRFNCX1RBSUwocGlwZSwg
aWQpICAgICAgICBfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDQpCj4+ICsjZGVm
aW5lIERTQl9DVFJMKHBpcGUsIGlkKSAgICAgICAgX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwg
aWQpICsgMHg4KQo+PiArI2RlZmluZSAgIERTQl9FTkFCTEUgICAgICAgICAgICAoMSA8PCAzMSkK
Pj4gKyNkZWZpbmUgICBEU0JfQlVGRkVSX1JFSVRFUkFURSAgICAgICAgKDEgPDwgMjkpCj4+ICsj
ZGVmaW5lICAgRFNCX1dBSVRfRk9SX1ZCTEFOSyAgICAgICAgKDEgPDwgMjgpCj4+ICsjZGVmaW5l
ICAgRFNCX1dBSVRfRk9SX0xJTkVfSU5fUkFOR0UgICAgKDEgPDwgMjcpCj4+ICsjZGVmaW5lICAg
RFNCX0hBTFQgICAgICAgICAgICAoMSA8PCAxNikKPj4gKyNkZWZpbmUgICBEU0JfTk9OX1BPU1RF
RF9FTkFCTEUgICAgICAgICgxIDw8IDgpCj4+ICsjZGVmaW5lICAgRFNCX1NUQVRVUyAgICAgICAg
ICAgICgxIDw8IDApCj4+ICsKPgo+IEFnYWluLCB0aGlzIHBhdGNoIGlzIGp1c3QgYWRkaW5nIHRo
ZSBoZWFkZXIgZGVmaW5pdGlvbnMsIHBsZWFzZSBtZXJnZSAKPiB0aGlzIHBhdGNoIGluIHRoZSBw
YXRjaCB3aGVyZSB0aGVzZSBkZWZpbml0aW9ucyBhcmUgYmVpbmcgdXNlZC4KCk9rLgoKUmVnYXJk
cywKQW5pbWVzaAo+Cj4gLSBTaGFzaGFuawo+Cj4+ICAgI2VuZGlmIC8qIF9JOTE1X1JFR19IXyAq
LwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
