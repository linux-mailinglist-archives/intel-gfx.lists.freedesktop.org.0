Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2584E01F4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5722088FF7;
	Tue, 22 Oct 2019 10:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550466E58E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:21:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 03:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="227651853"
Received: from dcolomor-mobl.ger.corp.intel.com (HELO [10.252.41.121])
 ([10.252.41.121])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 03:21:44 -0700
To: Anna Karas <anna.karas@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191022101338.17048-1-anna.karas@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0e6df803-dc64-02c2-be32-6b3403fb0600@intel.com>
Date: Tue, 22 Oct 2019 13:21:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022101338.17048-1-anna.karas@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Describe structure members
 in documentation
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjIvMTAvMjAxOSAxMzoxMywgQW5uYSBLYXJhcyB3cm90ZToKPiBBZGQgbWlzc2luZyBkZXNj
cmlwdGlvbnMgb2YgaTkxNV9wZXJmX3N0cmVhbSBzdHJ1Y3R1cmUgbWVtYmVycwo+IHRvIGRvY3Vt
ZW50YXRpb24uCj4KPiBDYzogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJh
bWFwcGFAaW50ZWwuY29tPgo+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdl
cmxpbkBpbnRlbC5jb20+Cj4gQ2M6IFJvYmVydCBCcmFnZyA8cm9iZXJ0QHNpeGJ5bmluZS5vcmc+
Cj4gU2lnbmVkLW9mZi1ieTogQW5uYSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRlbC5jb20+CgoKTG9v
a3MgZ29vZDogUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2Vy
bGluQGludGVsLmNvbT4KCgpUaGFua3MhCgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZl90eXBlcy5oIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAo+IGluZGV4IGExZjczM2ZjOTA1YS4uNzRkZGMy
MGEwZDM3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBl
cy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmgKPiBAQCAt
MTk5LDE0ICsxOTksNDMgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewo+ICAgCSAqIEBwaW5u
ZWRfY3R4OiBUaGUgT0EgY29udGV4dCBzcGVjaWZpYyBpbmZvcm1hdGlvbi4KPiAgIAkgKi8KPiAg
IAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqcGlubmVkX2N0eDsKPiArCj4gKwkvKioKPiArCSAqIEBz
cGVjaWZpY19jdHhfaWQ6IFRoZSBpZCBvZiB0aGUgc3BlY2lmaWMgY29udGV4dC4KPiArCSAqLwo+
ICAgCXUzMiBzcGVjaWZpY19jdHhfaWQ7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAc3BlY2lmaWNfY3R4
X2lkX21hc2s6IFRoZSBtYXNrIHVzZWQgdG8gbWFza2luZyBzcGVjaWZpY19jdHhfaWQgYml0cy4K
PiArCSAqLwo+ICAgCXUzMiBzcGVjaWZpY19jdHhfaWRfbWFzazsKPiAgIAo+ICsJLyoqCj4gKwkg
KiBAcG9sbF9jaGVja190aW1lcjogSGlnaCByZXNvbHV0aW9uIHRpbWVyIHRoYXQgd2lsbCBwZXJp
b2RpY2FsbHkKPiArCSAqIGNoZWNrIGZvciBkYXRhIGluIHRoZSBjaXJjdWxhciBPQSBidWZmZXIg
Zm9yIG5vdGlmeWluZyB1c2Vyc3BhY2UKPiArCSAqIChlLmcuIGR1cmluZyBhIHJlYWQoKSBvciBw
b2xsKCkpLgo+ICsJICovCj4gICAJc3RydWN0IGhydGltZXIgcG9sbF9jaGVja190aW1lcjsKPiAr
Cj4gKwkvKioKPiArCSAqIEBwb2xsX3dxOiBUaGUgd2FpdCBxdWV1ZSB0aGF0IGhydGltZXIgY2Fs
bGJhY2sgd2FrZXMgd2hlbiBpdAo+ICsJICogc2VlcyBkYXRhIHJlYWR5IHRvIHJlYWQgaW4gdGhl
IGNpcmN1bGFyIE9BIGJ1ZmZlci4KPiArCSAqLwo+ICAgCXdhaXRfcXVldWVfaGVhZF90IHBvbGxf
d3E7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAcG9sbGluOiBXaGV0aGVyIHRoZXJlIGlzIGRhdGEgYXZh
aWxhYmxlIHRvIHJlYWQuCj4gKwkgKi8KPiAgIAlib29sIHBvbGxpbjsKPiAgIAo+ICsJLyoqCj4g
KwkgKiBAcGVyaW9kaWM6IFdoZXRoZXIgcGVyaW9kaWMgc2FtcGxpbmcgaXMgY3VycmVudGx5IGVu
YWJsZWQuCj4gKwkgKi8KPiAgIAlib29sIHBlcmlvZGljOwo+ICsKPiArCS8qKgo+ICsJICogQHBl
cmlvZF9leHBvbmVudDogVGhlIE9BIHVuaXQgc2FtcGxpbmcgZnJlcXVlbmN5IGlzIGRlcml2ZWQg
ZnJvbSB0aGlzLgo+ICsJICovCj4gICAJaW50IHBlcmlvZF9leHBvbmVudDsKPiAgIAo+ICAgCS8q
Kgo+IEBAIC0yNzYsNyArMzA1LDcgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewo+ICAgCX0g
b2FfYnVmZmVyOwo+ICAgCj4gICAJLyoqCj4gLQkgKiBBIGJhdGNoIGJ1ZmZlciBkb2luZyBhIHdh
aXQgb24gdGhlIEdQVSBmb3IgdGhlIE5PQSBsb2dpYyB0byBiZQo+ICsJICogQG5vYV93YWl0OiBB
IGJhdGNoIGJ1ZmZlciBkb2luZyBhIHdhaXQgb24gdGhlIEdQVSBmb3IgdGhlIE5PQSBsb2dpYyB0
byBiZQo+ICAgCSAqIHJlcHJvZ3JhbW1lZC4KPiAgIAkgKi8KPiAgIAlzdHJ1Y3QgaTkxNV92bWEg
Km5vYV93YWl0OwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
