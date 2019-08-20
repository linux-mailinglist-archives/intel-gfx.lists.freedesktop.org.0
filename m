Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D21996835
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 20:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C396E82E;
	Tue, 20 Aug 2019 18:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B1A6E82E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 18:00:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 11:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="202757052"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 20 Aug 2019 11:00:17 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
Date: Tue, 20 Aug 2019 11:00:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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

CgpPbiA4LzIwLzE5IDg6NDIgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gT24gVHVlLCAy
MCBBdWcgMjAxOSAwNDowMTo0NyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAKPiA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4gCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaCAKPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLjg3YmNlODBkZDVlZAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oCj4gCj4gCj4+ICsKPj4gK3R5
cGVkZWYgc3RydWN0IHsKPj4gK8KgwqDCoCB1MzIgcmVnOwo+PiArfSBpOTE1X3JlZ190Owo+PiAr
Cj4+ICsjZGVmaW5lIF9NTUlPKHIpICgoY29uc3QgaTkxNV9yZWdfdCl7IC5yZWcgPSAocikgfSkK
Pj4gKwo+PiArI2RlZmluZSBJTlZBTElEX01NSU9fUkVHIF9NTUlPKDApCj4+ICsKPj4gK3N0YXRp
YyBpbmxpbmUgdTMyIGk5MTVfbW1pb19yZWdfb2Zmc2V0KGk5MTVfcmVnX3QgcmVnKQo+PiArewo+
PiArwqDCoMKgIHJldHVybiByZWcucmVnOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIGJv
b2wgaTkxNV9tbWlvX3JlZ19lcXVhbChpOTE1X3JlZ190IGEsIGk5MTVfcmVnX3QgYikKPj4gK3sK
Pj4gK8KgwqDCoCByZXR1cm4gaTkxNV9tbWlvX3JlZ19vZmZzZXQoYSkgPT0gaTkxNV9tbWlvX3Jl
Z19vZmZzZXQoYik7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9f
cmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQo+PiArewo+PiArwqDCoMKgIHJldHVybiAhaTkxNV9t
bWlvX3JlZ19lcXVhbChyZWcsIElOVkFMSURfTU1JT19SRUcpOwo+PiArfQo+PiArCj4gCj4gaG1t
LCB0aGVyZSBpcyBub3cgZGlzY29ubmVjdGlvbiBiZXR3ZWVuIHByZWZpeGVzIGluOgo+IAo+ICDC
oMKgwqDCoCdpbnRlbCdfcmVnX3R5cGVzLmgKPiBhbmQKPiAgwqDCoMKgwqAnaTkxNSdfcmVnX3QK
PiAgwqDCoMKgwqAnaTkxNSdfbW1pb19yZWdfeHh4KCkKPiAKPiB0aGF0IGlzIHdoeSBJIHdhcyBz
dWdnZXN0aW5nIHRvIGtlZXA6Cj4gCj4gIMKgwqDCoMKgJ2k5MTUnX3JlZy5oIChvciBhdCB5b3Vy
IHByZWZlcmVuY2UgJ2k5MTUnX3JlZ190eXBlcy5oKQo+IHdpdGgKPiAgwqDCoMKgwqAnaTkxNSdf
cmVnX3QKPiAgwqDCoMKgwqAnaTkxNSdfbW1pb19yZWdfeHh4KCkKPiAKPiBhbmQgdXNlIGludGVs
X3JlZyogZmlsZXMgZm9yIGFjdHVhbCBodyBkZWZpbml0aW9ucy4KPiAKPiBpZiB3ZSBkb24ndCBw
bGFuIHRvIHJlbmFtZSBpOTE1X3JlZ190IGludG8gaW50ZWxfbW1pb19yZWdfdAo+IHRoZW4gbWF5
YmUgYmV0dGVyIHRvIHN0YXkgd2l0aCBpOTE1X3JlZ190eXBlcy5oID8KPiAKCkknZCBwZXJzb25h
bGx5IHByZWZlciB0byBrZWVwIHRoZSBpbnRlbF8qIHByZWZpeCBhbmQgZmxpcCBpOTE1X3JlZ190
IHRvIAppbnRlbF9yZWdfdCAoYXMgYSBzZWNvbmQgc3RlcCB0byBrZWVwIHRoaW5ncyBzaW1wbGUp
LiBCdXQgZ2l2ZW4gdGhlIHNpemUgCm9mIHRoZSBjaGFuZ2UgSSdkIHByZWZlciB0byBoZWFyIHNv
bWUgbW9yZSBvcGluaW9ucyBiZWZvcmUgZ29pbmcgdGhyb3VnaCAKd2l0aCBpdCwgc28gSSdsbCB3
YWl0IGEgYml0IGZvciBtb3JlIGNvbW1lbnRzLgoKRGFuaWVsZQoKPiBNaWNoYWwKPiAKPiBwcy4g
aTkxNS9pbnRlbCBwcmVmaXggcnVsZXMgYXJlIGtpbGxpbmcgbWUgdG9vIDspCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
