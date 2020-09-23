Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F92427540C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 11:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DFA6E48E;
	Wed, 23 Sep 2020 09:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326B46E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 09:09:27 +0000 (UTC)
IronPort-SDR: cXQTLnnR/CcriuZ86xW5ijcr0m06MBrVctukzDNsKOofqOukP2YtaIpeJH2SfsNuEuKIMlW93E
 npU5RsKCW0bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140305814"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="140305814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:09:26 -0700
IronPort-SDR: 6TnkbyKNB6GohYXGmxflkwRYsZlKiZpNoEZ4Dtv7o+hAFt+jXAg6FGcU6ZQ6R7FM8ySDFEQRrP
 j1absZErM1/w==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511576290"
Received: from bravinar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.250])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:09:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200917170525.GA6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200917165056.29766-1-jani.nikula@intel.com>
 <20200917170525.GA6112@intel.com>
Date: Wed, 23 Sep 2020 12:09:37 +0300
Message-ID: <87blhwrh9q.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: tune down GuC communication
 enabled/disabled messages
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNyBTZXAgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMDc6NTA6NTZQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFRoZSBHdUMgY29tbXVuaWNhdGlvbiBlbmFibGVk
L2Rpc2FibGVkIG1lc3NhZ2VzIGFyZSB0b28gbm9pc3kgaW4gaW5mbwo+PiBsZXZlbC4gQ29udmVy
dCB0aGVtIGZyb20gaW5mbyB0byBkZWJ1ZyBsZXZlbCwgYW5kIHN3aXRjaCB0byBkZXZpY2UgYmFz
ZWQKPj4gbG9nZ2luZyB3aGlsZSBhdCBpdC4KPj4gCj4+IFJlcG9ydGVkLWJ5OiBLYXJvbCBIZXJi
c3QgPGtoZXJic3RAcmVkaGF0LmNvbT4KPj4gQ2M6IEthcm9sIEhlcmJzdCA8a2hlcmJzdEByZWRo
YXQuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CgpUaGFua3MsIHB1c2hlZCB0byBkcm0taW50ZWwtZ3QtbmV4dC4KCkJSLApK
YW5pLgoKCj4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
IHwgNiArKysrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gaW5kZXgg
ZDZmNTVmNzA4ODlkLi40ZTYwNzBlOTVmZTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwo+PiBAQCAtMjMxLDEzICsyMzEsMTUgQEAgc3RhdGljIGludCBndWNfZW5h
YmxlX2NvbW11bmljYXRpb24oc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+PiAgCWludGVsX2d1Y19j
dF9ldmVudF9oYW5kbGVyKCZndWMtPmN0KTsKPj4gIAlzcGluX3VubG9ja19pcnEoJmk5MTUtPmly
cV9sb2NrKTsKPj4gIAo+PiAtCURSTV9JTkZPKCJHdUMgY29tbXVuaWNhdGlvbiBlbmFibGVkXG4i
KTsKPj4gKwlkcm1fZGJnKCZpOTE1LT5kcm0sICJHdUMgY29tbXVuaWNhdGlvbiBlbmFibGVkXG4i
KTsKPj4gIAo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBndWNfZGlz
YWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4gIHsKPj4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19ndChndWMpLT5pOTE1Owo+PiArCj4+
ICAJLyoKPj4gIAkgKiBFdmVudHMgZ2VuZXJhdGVkIGR1cmluZyBvciBhZnRlciBDVCBkaXNhYmxl
IGFyZSBsb2dnZWQgYnkgZ3VjIGluCj4+ICAJICogdmlhIG1taW8uIE1ha2Ugc3VyZSB0aGUgcmVn
aXN0ZXIgaXMgY2xlYXIgYmVmb3JlIGRpc2FibGluZyBDVCBzaW5jZQo+PiBAQCAtMjU3LDcgKzI1
OSw3IEBAIHN0YXRpYyB2b2lkIGd1Y19kaXNhYmxlX2NvbW11bmljYXRpb24oc3RydWN0IGludGVs
X2d1YyAqZ3VjKQo+PiAgCSAqLwo+PiAgCWd1Y19nZXRfbW1pb19tc2coZ3VjKTsKPj4gIAo+PiAt
CURSTV9JTkZPKCJHdUMgY29tbXVuaWNhdGlvbiBkaXNhYmxlZFxuIik7Cj4+ICsJZHJtX2RiZygm
aTkxNS0+ZHJtLCAiR3VDIGNvbW11bmljYXRpb24gZGlzYWJsZWRcbiIpOwo+PiAgfQo+PiAgCj4+
ICBzdGF0aWMgdm9pZCBfX3VjX2ZldGNoX2Zpcm13YXJlcyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+
PiAtLSAKPj4gMi4yMC4xCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
