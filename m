Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBE9249CE4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E649F6E2E4;
	Wed, 19 Aug 2020 11:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6826E2E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:57:39 +0000 (UTC)
IronPort-SDR: 2C3uvuVSRqcm8F0Meq6gz+RobdjenUpVRq0LG9d/ruIpmtiZE9fyYh35b8B8QwoSBz75TSxyc2
 KBrlIoRfHJSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="152506903"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="152506903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:57:39 -0700
IronPort-SDR: DzwesXMC37v34/Z3aTNq2o5//Q+WYmUhCE7a6Y5a3xxkOmWpolvyzdz5Qbnpb/NQeeskyFIYXl
 /IzVrtIcbY6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="371220747"
Received: from dashah-mobl.ger.corp.intel.com (HELO [10.252.46.246])
 ([10.252.46.246])
 by orsmga001.jf.intel.com with ESMTP; 19 Aug 2020 04:57:38 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-19-maarten.lankhorst@linux.intel.com>
 <dcb03269-7652-7aed-7993-452893ce845f@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0451e64a-f285-4381-9032-c41f65ffb751@linux.intel.com>
Date: Wed, 19 Aug 2020 13:57:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <dcb03269-7652-7aed-7993-452893ce845f@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/24] drm/i915: Convert i915_perf to ww
 locking as well
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTItMDgtMjAyMCBvbSAyMTo1MyBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiA4LzEwLzIwIDEyOjMwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gV2Ug
aGF2ZSB0aGUgb3JkZXJpbmcgb2YgdGltZWxpbmUtPm11dGV4IHZzIHJlc3ZfbG9jayB3cm9uZywK
Pj4gY29udmVydCB0aGUgaTkxNV9waW5fdm1hIGFuZCBpbnRlbF9jb250ZXh0X3BpbiBhcyB3ZWxs
IHRvCj4+IGZ1dHVyZS1wcm9vZiB0aGlzLgo+Pgo+PiBXZSBtYXkgbmVlZCB0byBkbyBmdXR1cmUg
Y2hhbmdlcyB0byBkbyB0aGlzIG1vcmUgdHJhbnNhY3Rpb24tbGlrZSwKPj4gYW5kIG9ubHkgZ2V0
IGRvd24gdG8gYSBzaW5nbGUgaTkxNV9nZW1fd3dfY3R4LCBidXQgZm9yIG5vdyB0aGlzCj4+IHNo
b3VsZCB3b3JrLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+IGluZGV4IGM2ZjYzNzAyODNjZi4uZTk0OTc2
OTc2NTcxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiBAQCAtMTE5NSwyNCAr
MTE5NSwzOSBAQCBzdGF0aWMgc3RydWN0IGludGVsX2NvbnRleHQgKm9hX3Bpbl9jb250ZXh0KHN0
cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+IMKgwqDCoMKgwqAgc3RydWN0IGk5MTVf
Z2VtX2VuZ2luZXNfaXRlciBpdDsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4ID0gc3RyZWFtLT5jdHg7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NvbnRleHQg
KmNlOwo+PiAtwqDCoMKgIGludCBlcnI7Cj4+ICvCoMKgwqAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0
eCB3dzsKPj4gK8KgwqDCoCBpbnQgZXJyID0gLUVOT0RFVjsKPj4gwqAgwqDCoMKgwqDCoCBmb3Jf
ZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBp
dCkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNlLT5lbmdpbmUgIT0gc3RyZWFtLT5lbmdp
bmUpIC8qIGZpcnN0IG1hdGNoISAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250
aW51ZTsKPj4gwqAgLcKgwqDCoMKgwqDCoMKgIC8qCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogQXMg
dGhlIElEIGlzIHRoZSBndHQgb2Zmc2V0IG9mIHRoZSBjb250ZXh0J3Mgdm1hIHdlCj4+IC3CoMKg
wqDCoMKgwqDCoMKgICogcGluIHRoZSB2bWEgdG8gZW5zdXJlIHRoZSBJRCByZW1haW5zIGZpeGVk
Lgo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgwqDCoMKgwqAgZXJyID0gaW50ZWxf
Y29udGV4dF9waW4oY2UpOwo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKGVyciA9PSAwKSB7Cj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmVhbS0+cGlubmVkX2N0eCA9IGNlOwo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4gK8KgwqDCoMKg
wqDCoMKgIGVyciA9IDA7Cj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gwqDCoMKgwqDCoCB9
Cj4+IMKgwqDCoMKgwqAgaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOwo+PiDC
oCArwqDCoMKgIGlmIChlcnIpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUihlcnIp
Owo+PiArCj4+ICvCoMKgwqAgaTkxNV9nZW1fd3dfY3R4X2luaXQoJnd3LCB0cnVlKTsKPj4gK3Jl
dHJ5Ogo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIEFzIHRoZSBJRCBpcyB0aGUgZ3R0IG9m
ZnNldCBvZiB0aGUgY29udGV4dCdzIHZtYSB3ZQo+PiArwqDCoMKgwqAgKiBwaW4gdGhlIHZtYSB0
byBlbnN1cmUgdGhlIElEIHJlbWFpbnMgZml4ZWQuCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKg
IGVyciA9IGludGVsX2NvbnRleHRfcGluX3d3KGNlLCAmd3cpOwo+PiArwqDCoMKgIGlmIChlcnIg
PT0gLUVERUFETEspIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IGk5MTVfZ2VtX3d3X2N0eF9i
YWNrb2ZmKCZ3dyk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIWVycikKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZ290byByZXRyeTsKPj4gK8KgwqDCoCB9Cj4+ICvCoMKgwqAgaTkxNV9nZW1f
d3dfY3R4X2ZpbmkoJnd3KTsKPj4gKwo+Cj4gSG1tLiBEaWRuJ3Qgd2Uga2VlcCBhbiBpbnRlbF9j
b250ZXh0X3BpbigpIHRoYXQgZG9lcyBleGFjdGx5IHRoZSBhYm92ZSB3aXRob3V0IHJlY29kaW5n
IHRoZSB3aG9sZSB3dyB0cmFuc2FjdGlvbj8gT3IgZG8geW91IHBsYW4gdG8gcmVtb3ZlIHRoYXQ/
Cj4KPiBXaXRoIHRoYXQgdGFrZW4gaW50byBhY2NvdW50LAo+Cj4gUmV2aWV3ZWQtYnk6IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KPgo+ClllYWgsIEkgd2Fu
dCB0byByZW1vdmUgdGhhdCBldmVudHVhbGx5LCBtaWdodCBuZWVkIHRvIGNoYW5nZSBpOTE1X3Bl
cmYgZXZlbiBtb3JlIHRvIGZ1bGx5IGRvIHRoaXMuIFRoYW5rcyBmb3IgcmV2aWV3aW5nLgoKfk1h
YXJ0ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
