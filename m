Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56E371285
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 10:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274286E88A;
	Mon,  3 May 2021 08:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1316E094;
 Mon,  3 May 2021 08:41:30 +0000 (UTC)
IronPort-SDR: ClouN4UZH+BpYrBNmrbw+B8nLo1puzF8BzcNv4zCA3HkiC+kMu0oLCGw1xIUpjjrJ5Sqe0aZkE
 AuZA8tRUsYzA==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="197793187"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="197793187"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:41:29 -0700
IronPort-SDR: rslUX3j1GmMzmNkJ9aEBzksT8ijiXc/WsvsHPHOol25GStABnWlEdp9ENfDiC06m3onDWIcsSb
 IgTpvDIBPc2g==
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="432632423"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 01:41:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, Nikola Cornij <nikola.cornij@amd.com>,
 amd-gfx@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>
In-Reply-To: <87mttc1ajm.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210428234346.1085977-1-nikola.cornij@amd.com>
 <20210428234346.1085977-2-nikola.cornij@amd.com>
 <2bc4cf58838635b357e77d2a132fd901dc477c71.camel@redhat.com>
 <8735v82unm.fsf@intel.com> <87mttc1ajm.fsf@intel.com>
Date: Mon, 03 May 2021 11:41:21 +0300
Message-ID: <87k0og1a6m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [Heads up to maintainers] Re: [PATCH v8 1/1]
 drm/drm_mst: Use Extended Base Receiver Capability DPCD space
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
Cc: Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 koba.ko@canonical.com, aurabindo.pillai@amd.com, "Lankhorst,
 Maarten" <maarten.lankhorst@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, mikita.lipski@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMyBNYXkgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gRnJpLCAzMCBBcHIgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4gd3JvdGU6Cj4+IE9uIFRodSwgMjkgQXByIDIwMjEsIEx5dWRlIFBhdWwgPGx5dWRl
QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gSkZZSSBKYW5pIGFuZCBCZW46IEkgd2lsbCBiZSBwdXNo
aW5nIHRoaXMgcGF0Y2ggdG8gZHJtLW1pc2MtbmV4dCBzb21ldGltZQo+Pj4gdG9kYXkgaWYgdGhl
cmUncyBubyBvYmplY3Rpb25zCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIGhlYWRzLXVwLCBJIHRoaW5r
IHRoaXMgYnJlYWtzIGk5MTUuIFNlZSBteSByZXZpZXcKPj4gY29tbWVudHMgZWxzZXdoZXJlIGlu
IHRoZSB0aHJlYWQuCj4KPiBMb29rcyBsaWtlIHRoaXMgd2FzIG1lcmdlZCBhbnl3YXkuCj4KPiA5
ODAyNWE2MmNiMDAgKCJkcm0vZHBfbXN0OiBVc2UgRXh0ZW5kZWQgQmFzZSBSZWNlaXZlciBDYXBh
YmlsaXR5IERQQ0Qgc3BhY2UiKQo+Cj4gSSdtIG5vdCBoYXBweSBob3cgdGhpcyBwbGF5ZWQgb3V0
Lgo+Cj4gMSkgWW91IG5lZWQgdG8gQ2MgcmVsZXZhbnQgcGVvcGxlCj4KPiAyKSBZb3UgbmVlZCB0
byBnZXQgdGhlIGFjayBiZWZvcmUgbWVyZ2luZyBjaGFuZ2VzCj4KPiAzKSBZb3UgbmVlZCB0byBn
aXZlIHBlb3BsZSBtb3JlIHRoYW4gYSBkYXkgdG8gcmVhY3QsIHdpdGggdGltZSB6b25lcyBhbmQK
PiBhbGw7IEkgcmVwbGllZCBhcyBzb29uIGFzIEkgc2F3IHRoZSBoZWFkcy11cCwgYnV0IGl0IHdh
cyBhbHJlYWR5IHRvbwo+IGxhdGUKPgo+IEl0J3MgYnJva2VuIG9uIGk5MTUsIGFuZCBwZXJoYXBz
IHRoYXQgY291bGQgYmUgZml4ZWQuCj4KPiBIb3dldmVyIEkgYWxzbyB0aGluayB1c2luZyBEUCBz
cGVjIHJhdGUgY29kZXMgYW5kIGNhbGxpbmcgdGhlbSAicmF0ZSIgaXMKPiBhIGJhZCBpbnRlcmZh
Y2UsIGVzcGVjaWFsbHkgd2hlbiB0aGUgdW5pdCBicmVha3MgZG93biB3aXRoIERQIDIuMCByYXRl
Cj4gY29kZXMuIEl0J3MgY29uZnVzaW5nIGFuZCBpdCdzIG5vdCBmdXR1cmUgcHJvb2YuIEZpeGlu
ZyB0aGF0IGFmdGVyd2FyZHMKPiBmYWxscyB0byB3aG9ldmVyIGNvbWVzIG5leHQgdG8gcGljayB1
cCB0aGUgcGllY2VzLgo+Cj4gSSdkIHJhdGhlciBqdXN0IHNlZSB0aGlzIHJldmVydGVkIGFuZCBy
ZWRvbmUuCgpPa2F5LCBqdXN0IHNhdyB0aGF0IHlvdSdkIGZpeGVkIGk5MTUgYWxyZWFkeS4gVGhh
bmtzLiBMZXQncyByb2xsIHdpdGgKdGhhdCB0aGVuLgoKQlIsCkphbmkuCgoKPgo+Cj4gQlIsCj4g
SmFuaS4KPgo+Cj4+Cj4+IEJSLAo+PiBKYW5pLgo+Pgo+Pgo+Pj4KPj4+IE9uIFdlZCwgMjAyMS0w
NC0yOCBhdCAxOTo0MyAtMDQwMCwgTmlrb2xhIENvcm5paiB3cm90ZToKPj4+PiBbd2h5XQo+Pj4+
IERQIDEuNGEgc3BlYyBtYWRhdGVzIHRoYXQgaWYgRFBfRVhURU5ERURfUkVDRUlWRVJfQ0FQX0ZJ
RUxEX1BSRVNFTlQgaXMKPj4+PiBzZXQsIEV4dGVuZGVkIEJhc2UgUmVjZWl2ZXIgQ2FwYWJpbGl0
eSBEUENEIHNwYWNlIG11c3QgYmUgdXNlZC4gV2l0aG91dAo+Pj4+IGRvaW5nIHRoYXQsIHRoZSB0
aHJlZSBEUENEIHZhbHVlcyB0aGF0IGRpZmZlciB3aWxsIGJlIHdyb25nLCBsZWFkaW5nIHRvCj4+
Pj4gaW5jb3JyZWN0IG9yIGxpbWl0ZWQgZnVuY3Rpb25hbGl0eS4gTVNUIGxpbmsgcmF0ZSwgZm9y
IGV4YW1wbGUsIGNvdWxkCj4+Pj4gaGF2ZSBhIGxvd2VyIHZhbHVlLiBBbHNvLCBTeW5hcHRpY3Mg
cXVpcmsgd291bGRuJ3Qgd29yayBvdXQgd2VsbCB3aGVuCj4+Pj4gRXh0ZW5kZWQgRFBDRCB3YXMg
bm90IHJlYWQsIHJlc3VsdGluZyBpbiBubyBEU0MgZm9yIHN1Y2ggaHVicy4KPj4+PiAKPj4+PiBb
aG93XQo+Pj4+IE1vZGlmeSBNU1QgdG9wb2xvZ3kgbWFuYWdlciB0byB1c2UgdGhlIHZhbHVlcyBm
cm9tIEV4dGVuZGVkIERQQ0Qgd2hlcmUKPj4+PiBhcHBsaWNhYmxlLgo+Pj4+IAo+Pj4+IFRvIHBy
ZXZlbnQgcmVncmVzc2lvbiBvbiB0aGUgc291cmNlcyB0aGF0IGhhdmUgYSBsb3dlciBtYXhpbXVt
IGxpbmsgcmF0ZQo+Pj4+IGNhcGFiaWxpdHkgdGhhbiBNQVhfTElOS19SQVRFIGZyb20gRXh0ZW5k
ZWQgRFBDRCwgaGF2ZSB0aGUgZHJpdmVycwo+Pj4+IHN1cHBseSBtYXhpbXVtIGxhbmUgY291bnQg
YW5kIHJhdGUgYXQgaW5pdGlhbGl6YXRpb24gdGltZS4KPj4+PiAKPj4+PiBUaGlzIGFsc28gcmV2
ZXJ0cyAnY29tbWl0IDJkY2FiODc1ZTc2MyAoIlJldmVydCBkcm0vZHBfbXN0OiBSZXRyaWV2ZQo+
Pj4+IGV4dGVuZGVkIERQQ0QgY2FwcyBmb3IgdG9wb2xvZ3kgbWFuYWdlciIpJywgYnJpbmluZyB0
aGUgY2hhbmdlIGJhY2sgdG8KPj4+PiB0aGUgb3JpZ2luYWwgJ2NvbW1pdCBhZDQ0YzAzMjA4ZTQg
KCJkcm0vZHBfbXN0OiBSZXRyaWV2ZSBleHRlbmRlZCBEUENECj4+Pj4gY2FwcyBmb3IgdG9wb2xv
Z3kgbWFuYWdlciIpJy4KPj4+PiAKPj4+PiBTaWduZWQtb2ZmLWJ5OiBOaWtvbGEgQ29ybmlqIDxu
aWtvbGEuY29ybmlqQGFtZC5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqAuLi4vZGlzcGxheS9hbWRncHVf
ZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jwqDCoCB8wqAgNSArKysKPj4+PiDCoC4uLi9ncHUvZHJt
L2FtZC9kaXNwbGF5L2RjL2NvcmUvZGNfbGlua19kcC5jwqAgfCAxOCArKysrKysrKysrCj4+Pj4g
wqBkcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvZGNfbGluay5owqDCoMKgwqDCoCB8wqAg
MiArKwo+Pj4+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuY8KgwqDCoMKg
wqDCoMKgwqAgfCAzMyArKysrKysrKysrKystLS0tLS0tCj4+Pj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jwqDCoCB8wqAgNiArKystCj4+Pj4gwqBkcml2ZXJz
L2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmPCoMKgwqDCoMKgwqAgfMKgIDMgKy0KPj4+
PiDCoGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jwqDCoMKgwqDCoMKgwqAg
fMKgIDcgKysrKwo+Pj4+IMKgaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMiArKysrKystCj4+Pj4gwqA4IGZpbGVzIGNoYW5nZWQs
IDcxIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Pj4+IAo+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9tc3RfdHlw
ZXMuYwo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVf
ZG1fbXN0X3R5cGVzLmMKPj4+PiBpbmRleCA5OTc1NjdmNmYwYmEuLmI3ZTAxYjZmYjMyOCAxMDA2
NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbV9tc3RfdHlwZXMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9h
bWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jCj4+Pj4gQEAgLTQyOSw2ICs0MjksOCBAQCB2
b2lkIGFtZGdwdV9kbV9pbml0aWFsaXplX2RwX2Nvbm5lY3RvcihzdHJ1Y3QKPj4+PiBhbWRncHVf
ZGlzcGxheV9tYW5hZ2VyICpkbSwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBhbWRn
cHVfZG1fY29ubmVjdG9yCj4+Pj4gKmFjb25uZWN0b3IsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpbnQgbGlua19pbmRleCkKPj4+PiDCoHsKPj4+PiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGNf
bGlua19zZXR0aW5ncyBtYXhfbGlua19lbmNfY2FwID0gezB9Owo+Pj4+ICsKPj4+PiDCoMKgwqDC
oMKgwqDCoMKgYWNvbm5lY3Rvci0+ZG1fZHBfYXV4LmF1eC5uYW1lID0KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGthc3ByaW50ZihHRlBfS0VSTkVMLCAiQU1ER1BVIERNIGF1
eCBodyBidXMgJWQiLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxpbmtfaW5kZXgpOwo+Pj4+IEBAIC00NDMsNiArNDQ1LDcgQEAgdm9pZCBh
bWRncHVfZG1faW5pdGlhbGl6ZV9kcF9jb25uZWN0b3Ioc3RydWN0Cj4+Pj4gYW1kZ3B1X2Rpc3Bs
YXlfbWFuYWdlciAqZG0sCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoGlmIChhY29ubmVjdG9yLT5iYXNl
LmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFApCj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4+Pj4gwqAKPj4+PiArwqDCoMKgwqDCoMKg
wqBkY19saW5rX2RwX2dldF9tYXhfbGlua19lbmNfY2FwKGFjb25uZWN0b3ItPmRjX2xpbmssCj4+
Pj4gJm1heF9saW5rX2VuY19jYXApOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBhY29ubmVjdG9yLT5t
c3RfbWdyLmNicyA9ICZkbV9tc3RfY2JzOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfbXN0
X3RvcG9sb2d5X21ncl9pbml0KAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
JmFjb25uZWN0b3ItPm1zdF9tZ3IsCj4+Pj4gQEAgLTQ1MCw2ICs0NTMsOCBAQCB2b2lkIGFtZGdw
dV9kbV9pbml0aWFsaXplX2RwX2Nvbm5lY3RvcihzdHJ1Y3QKPj4+PiBhbWRncHVfZGlzcGxheV9t
YW5hZ2VyICpkbSwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCZhY29ubmVj
dG9yLT5kbV9kcF9hdXguYXV4LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
MTYsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA0LAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGlua19lbmNfY2FwLmxhbmVfY291bnQsCj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9saW5rX2VuY19jYXAubGlua19yYXRl
LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWNvbm5lY3Rvci0+Y29ubmVj
dG9yX2lkKTsKPj4+PiDCoAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBkcm1fY29ubmVjdG9yX2F0dGFj
aF9kcF9zdWJjb25uZWN0b3JfcHJvcGVydHkoJmFjb25uZWN0b3ItPmJhc2UpOwo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kY19saW5rX2RwLmMK
Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjX2xpbmtfZHAuYwo+
Pj4+IGluZGV4IDdkMmU0MzNjMjI3NS4uNmZlNjZiN2VlNTNlIDEwMDY0NAo+Pj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjX2xpbmtfZHAuYwo+Pj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjX2xpbmtfZHAuYwo+Pj4+IEBA
IC0xODk0LDYgKzE4OTQsMjQgQEAgYm9vbCBkY19saW5rX2RwX3N5bmNfbHRfZW5kKHN0cnVjdCBk
Y19saW5rICpsaW5rLAo+Pj4+IGJvb2wgbGlua19kb3duKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gdHJ1ZTsKPj4+PiDCoH0KPj4+PiDCoAo+Pj4+ICtib29sIGRjX2xpbmtfZHBfZ2V0X21h
eF9saW5rX2VuY19jYXAoY29uc3Qgc3RydWN0IGRjX2xpbmsgKmxpbmssIHN0cnVjdAo+Pj4+IGRj
X2xpbmtfc2V0dGluZ3MgKm1heF9saW5rX2VuY19jYXApCj4+Pj4gK3sKPj4+PiArwqDCoMKgwqDC
oMKgwqBpZiAoIW1heF9saW5rX2VuY19jYXApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgRENfTE9HX0VSUk9SKCIlczogQ291bGQgbm90IHJldHVybiBtYXggbGluayBlbmNv
ZGVyIGNhcHMiLAo+Pj4+IF9fZnVuY19fKTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIGZhbHNlOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoH0KPj4+PiArCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKGxpbmstPmxpbmtfZW5jLT5mdW5jcy0+Z2V0X21heF9saW5rX2NhcCkg
ewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW5rLT5saW5rX2VuYy0+ZnVu
Y3MtPmdldF9tYXhfbGlua19jYXAobGluay0+bGlua19lbmMsCj4+Pj4gbWF4X2xpbmtfZW5jX2Nh
cCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+Pj4+
ICvCoMKgwqDCoMKgwqDCoH0KPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgRENfTE9HX0VSUk9S
KCIlczogTWF4IGxpbmsgZW5jb2RlciBjYXBzIHVua25vd24iLCBfX2Z1bmNfXyk7Cj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgbWF4X2xpbmtfZW5jX2NhcC0+bGFuZV9jb3VudCA9IDE7Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgbWF4X2xpbmtfZW5jX2NhcC0+bGlua19yYXRlID0gNjsKPj4+PiArwqDCoMKgwqDC
oMKgwqByZXR1cm4gZmFsc2U7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gwqBzdGF0aWMgc3RydWN0IGRj
X2xpbmtfc2V0dGluZ3MgZ2V0X21heF9saW5rX2NhcChzdHJ1Y3QgZGNfbGluayAqbGluaykKPj4+
PiDCoHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRjX2xpbmtfc2V0dGluZ3MgbWF4X2xp
bmtfY2FwID0gezB9Owo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3Bs
YXkvZGMvZGNfbGluay5oCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvZGNf
bGluay5oCj4+Pj4gaW5kZXggYjAwMTNlNjc0ODY0Li5jYjZkMDU0M2Q4MzkgMTAwNjQ0Cj4+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2RjX2xpbmsuaAo+Pj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9kY19saW5rLmgKPj4+PiBAQCAtMzQ2LDYg
KzM0Niw4IEBAIGJvb2wgZGNfbGlua19kcF9zZXRfdGVzdF9wYXR0ZXJuKAo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqBjb25zdCB1bnNpZ25lZCBjaGFyICpwX2N1c3RvbV9wYXR0ZXJuLAo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgY3VzdF9wYXR0ZXJuX3NpemUpOwo+Pj4+IMKgCj4+Pj4g
K2Jvb2wgZGNfbGlua19kcF9nZXRfbWF4X2xpbmtfZW5jX2NhcChjb25zdCBzdHJ1Y3QgZGNfbGlu
ayAqbGluaywgc3RydWN0Cj4+Pj4gZGNfbGlua19zZXR0aW5ncyAqbWF4X2xpbmtfZW5jX2NhcCk7
Cj4+Pj4gKwo+Pj4+IMKgdm9pZCBkY19saW5rX2VuYWJsZV9ocGRfZmlsdGVyKHN0cnVjdCBkY19s
aW5rICpsaW5rLCBib29sIGVuYWJsZSk7Cj4+Pj4gwqAKPj4+PiDCoGJvb2wgZGNfbGlua19pc19k
cF9zaW5rX3ByZXNlbnQoc3RydWN0IGRjX2xpbmsgKmxpbmspOwo+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4+Pj4gaW5kZXggNTUzOWE5MWI0MDMxLi4zMWQ5ZjNm
ZjBkMzkgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xv
Z3kuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPj4+
PiBAQCAtMzcwOCwxOSArMzcwOCwyNCBAQCBpbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3Jfc2V0
X21zdChzdHJ1Y3QKPj4+PiBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLCBib29sIG1zCj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoC8qIHNldCB0aGUgZGV2aWNlIGludG8gTVNUIG1vZGUgKi8KPj4+
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKG1zdF9zdGF0ZSkgewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9kcF9wYXlsb2FkIHJlc2V0X3BheTsKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IGxhbmVfY291bnQ7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBsaW5rX3JhdGU7Cj4+Pj4gwqAKPj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFdBUk5fT04obWdyLT5tc3RfcHJpbWFyeSk7Cj4+Pj4g
wqAKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIGdldCBkcGNkIGluZm8g
Ki8KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gZHJtX2RwX2RwY2Rf
cmVhZChtZ3ItPmF1eCwgRFBfRFBDRF9SRVYsIG1nci0+ZHBjZCwKPj4+PiBEUF9SRUNFSVZFUl9D
QVBfU0laRSk7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgIT0g
RFBfUkVDRUlWRVJfQ0FQX1NJWkUpIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKG1nci0+ZGV2LCAiZmFpbGVkIHRvIHJlYWQg
RFBDRFxuIik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9k
cF9yZWFkX2RwY2RfY2FwcyhtZ3ItPmF1eCwgbWdyLT5kcGNkKTsKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKG1nci0+ZGV2LCAiJXM6IGZh
aWxlZCB0byByZWFkIERQQ0QsIHJldAo+Pj4+ICVkXG4iLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZ3It
PmF1eC0+bmFtZSwgcmV0KTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBnb3RvIG91dF91bmxvY2s7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB9Cj4+Pj4gwqAKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
bGFuZV9jb3VudCA9IG1pbl90KGludCwgbWdyLT5kcGNkWzJdICYKPj4+PiBEUF9NQVhfTEFORV9D
T1VOVF9NQVNLLCBtZ3ItPm1heF9sYW5lX2NvdW50KTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbGlua19yYXRlID0gbWluX3QoaW50LCBtZ3ItPmRwY2RbMV0sIG1nci0+bWF4
X2xpbmtfcmF0ZSk7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtZ3ItPnBi
bl9kaXYgPSBkcm1fZHBfZ2V0X3ZjX3BheWxvYWRfYncobWdyLAo+Pj4+IC0KPj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9id19j
b2RlX3RvX2xpbmsKPj4+PiBfcmF0ZShtZ3ItPmRwY2RbMV0pLAo+Pj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1nci0+ZHBjZFsyXSAmCj4+
Pj4gRFBfTUFYX0xBTkVfQ09VTlRfTUFTSyk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2J3X2NvZGVfdG9fbGkKPj4+PiBu
a19yYXRlKGxpbmtfcmF0ZSksCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFuZV9jb3VudCk7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAobWdyLT5wYm5fZGl2ID09IDApIHsKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSAtRUlOVkFMOwo+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0X3Vu
bG9jazsKPj4+PiBAQCAtNTQ0OCwxNCArNTQ1MywxNyBAQCBFWFBPUlRfU1lNQk9MKGRybV9hdG9t
aWNfZ2V0X21zdF90b3BvbG9neV9zdGF0ZSk7Cj4+Pj4gwqAgKiBAYXV4OiBEUCBoZWxwZXIgYXV4
IGNoYW5uZWwgdG8gdGFsayB0byB0aGlzIGRldmljZQo+Pj4+IMKgICogQG1heF9kcGNkX3RyYW5z
YWN0aW9uX2J5dGVzOiBodyBzcGVjaWZpYyBEUENEIHRyYW5zYWN0aW9uIGxpbWl0Cj4+Pj4gwqAg
KiBAbWF4X3BheWxvYWRzOiBtYXhpbXVtIG51bWJlciBvZiBwYXlsb2FkcyB0aGlzIEdQVSBjYW4g
c291cmNlCj4+Pj4gKyAqIEBtYXhfbGFuZV9jb3VudDogbWF4aW11bSBudW1iZXIgb2YgbGFuZXMg
dGhpcyBHUFUgc3VwcG9ydHMKPj4+PiArICogQG1heF9saW5rX3JhdGU6IG1heGltdW0gbGluayBy
YXRlIHRoaXMgR1BVIHN1cHBvcnRzLCB1bml0cyBhcyBpbiBEUENECj4+Pj4gwqAgKiBAY29ubl9i
YXNlX2lkOiB0aGUgY29ubmVjdG9yIG9iamVjdCBJRCB0aGUgTVNUIGRldmljZSBpcyBjb25uZWN0
ZWQgdG8uCj4+Pj4gwqAgKgo+Pj4+IMKgICogUmV0dXJuIDAgZm9yIHN1Y2Nlc3MsIG9yIG5lZ2F0
aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZQo+Pj4+IMKgICovCj4+Pj4gwqBpbnQgZHJtX2RwX21z
dF90b3BvbG9neV9tZ3JfaW5pdChzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZHBfYXV4Cj4+
Pj4gKmF1eCwKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1heF9kcGNkX3RyYW5zYWN0aW9uX2J5dGVzLAo+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpbnQgbWF4X3BheWxvYWRzLCBpbnQgY29ubl9iYXNlX2lkKQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bnQgbWF4X2RwY2RfdHJhbnNhY3Rpb25fYnl0ZXMsIGludAo+Pj4+IG1heF9wYXlsb2FkcywKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50IG1heF9sYW5lX2NvdW50LCBpbnQgbWF4X2xpbmtfcmF0ZSwKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50IGNvbm5fYmFzZV9pZCkKPj4+PiDCoHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGRybV9kcF9tc3RfdG9wb2xvZ3lfc3RhdGUgKm1zdF9zdGF0ZTsKPj4+PiDCoAo+Pj4+IEBAIC01
NDkwLDYgKzU0OTgsOCBAQCBpbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdChzdHJ1Y3QK
Pj4+PiBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBt
Z3ItPmF1eCA9IGF1eDsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgbWdyLT5tYXhfZHBjZF90cmFuc2Fj
dGlvbl9ieXRlcyA9IG1heF9kcGNkX3RyYW5zYWN0aW9uX2J5dGVzOwo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqBtZ3ItPm1heF9wYXlsb2FkcyA9IG1heF9wYXlsb2FkczsKPj4+PiArwqDCoMKgwqDCoMKg
wqBtZ3ItPm1heF9sYW5lX2NvdW50ID0gbWF4X2xhbmVfY291bnQ7Cj4+Pj4gK8KgwqDCoMKgwqDC
oMKgbWdyLT5tYXhfbGlua19yYXRlID0gbWF4X2xpbmtfcmF0ZTsKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgbWdyLT5jb25uX2Jhc2VfaWQgPSBjb25uX2Jhc2VfaWQ7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oGlmIChtYXhfcGF5bG9hZHMgKyAxID4gc2l6ZW9mKG1nci0+cGF5bG9hZF9tYXNrKSAqIDggfHwK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heF9wYXlsb2FkcyArIDEgPiBzaXplb2YobWdy
LT52Y3BpX21hc2spICogOCkKPj4+PiBAQCAtNTg5NiwxNCArNTkwNiwxMyBAQCBzdHJ1Y3QgZHJt
X2RwX2F1eAo+Pj4+ICpkcm1fZHBfbXN0X2RzY19hdXhfZm9yX3BvcnQoc3RydWN0IGRybV9kcF9t
c3RfcG9ydCAqcG9ydCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgaWYgKGRybV9kcF9oYXNfcXVpcmso
JmRlc2MsIERQX0RQQ0RfUVVJUktfRFNDX1dJVEhPVVRfVklSVFVBTF9EUENEKQo+Pj4+ICYmCj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0LT5tZ3ItPmRwY2RbRFBfRFBDRF9SRVZdID49
IERQX0RQQ0RfUkVWXzE0ICYmCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0LT5wYXJl
bnQgPT0gcG9ydC0+bWdyLT5tc3RfcHJpbWFyeSkgewo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB1OCBkb3duc3RyZWFtcG9ydDsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgdTggZHBjZF9leHRbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdOwo+Pj4+IMKgCj4+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChkcm1fZHBfZHBjZF9yZWFkKCZwb3J0
LT5hdXgsIERQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlQsCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRv
d25zdHJlYW1wb3J0LCAxKSA8IDApCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChkcm1fZHBfcmVhZF9kcGNkX2NhcHMocG9ydC0+bWdyLT5hdXgsIGRwY2RfZXh0KSA8IDAp
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIE5VTEw7Cj4+Pj4gwqAKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KChkb3duc3RyZWFtcG9ydCAmIERQX0RXTl9TVFJNX1BPUlRfUFJFU0VOVCkgJiYKPj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoKGRvd25zdHJlYW1wb3J0ICYgRFBfRFdO
X1NUUk1fUE9SVF9UWVBFX01BU0spCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmICgoZHBjZF9leHRbRFBfRE9XTlNUUkVBTVBPUlRfUFJFU0VOVF0gJgo+Pj4+IERQX0RXTl9T
VFJNX1BPUlRfUFJFU0VOVCkgJiYKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICgoZHBjZF9leHRbRFBfRE9XTlNUUkVBTVBPUlRfUFJFU0VOVF0gJgo+Pj4+IERQX0RX
Tl9TVFJNX1BPUlRfVFlQRV9NQVNLKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIT0gRFBfRFdOX1NUUk1fUE9SVF9UWVBFX0FOQUxPRykpCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBvcnQtPm1n
ci0+YXV4Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqB9Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPj4+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPj4+PiBpbmRleCA4NjAzODFkNjhkOWQuLmE0
MjQ1ZWI0OGVmNCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYwo+Pj4+IEBAIC05NDIsNiArOTQyLDcgQEAgaW50ZWxfZHBfbXN0X2VuY29k
ZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Cj4+Pj4gKmRpZ19wb3J0LCBpbnQgY29u
bl9iYXNlX2lkKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gJmRpZ19wb3J0LT5kcDsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgZW51bSBwb3J0IHBvcnQgPSBk
aWdfcG9ydC0+YmFzZS5wb3J0Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Owo+Pj4+ICvC
oMKgwqDCoMKgwqDCoGludCBiaW9zX21heF9saW5rX3JhdGU7Cj4+Pj4gwqAKPj4+PiDCoMKgwqDC
oMKgwqDCoMKgaWYgKCFIQVNfRFBfTVNUKGk5MTUpIHx8IGludGVsX2RwX2lzX2VkcChpbnRlbF9k
cCkpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPj4+PiBA
QCAtOTU2LDggKzk1NywxMSBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQKPj4+PiAqZGlnX3BvcnQsIGludCBjb25uX2Jhc2VfaWQpCj4+Pj4gwqAK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgLyogY3JlYXRlIGVuY29kZXJzICovCj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVycyhkaWdfcG9ydCk7Cj4+Pj4g
K8KgwqDCoMKgwqDCoMKgYmlvc19tYXhfbGlua19yYXRlID0gaW50ZWxfYmlvc19kcF9tYXhfbGlu
a19yYXRlKCZkaWdfcG9ydC0+YmFzZSk7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9k
cF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoJmludGVsX2RwLT5tc3RfbWdyLCAmaTkxNS0+ZHJtLAo+
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9kcC0+YXV4LCAxNiwgMywKPj4+
PiBjb25uX2Jhc2VfaWQpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9k
cC0+YXV4LCAxNiwgMywKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkaWdfcG9ydC0+
bWF4X2xhbmVzLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJpb3NfbWF4X2xpbmtf
cmF0ZSAvIDI3MDAwLAo+Pj4+IGNvbm5fYmFzZV9pZCk7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoGlm
IChyZXQpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+
Pj4+IMKgCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUw
L2Rpc3AuYwo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCj4+
Pj4gaW5kZXggMWM5YzBjZGY4NWRiLi5lMDJmOWQyZDc0ZWIgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCj4+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCj4+Pj4gQEAgLTE2MTcsNyArMTYxNyw4IEBA
IG52NTBfbXN0bV9uZXcoc3RydWN0IG5vdXZlYXVfZW5jb2RlciAqb3V0cCwgc3RydWN0Cj4+Pj4g
ZHJtX2RwX2F1eCAqYXV4LCBpbnQgYXV4X21heCwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgbXN0bS0+
bWdyLmNicyA9ICZudjUwX21zdG07Cj4+Pj4gwqAKPj4+PiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0g
ZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdCgmbXN0bS0+bWdyLCBkZXYsIGF1eCwgYXV4X21h
eCwKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXhfcGF5bG9hZHMsIGNvbm5fYmFz
ZV9pZCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWF4X3BheWxvYWRzLCBvdXRw
LT5kY2ItCj4+Pj4gPmRwY29uZi5saW5rX25yLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG91dHAtPmRjYi0+ZHBjb25mLmxpbmtfYncsCj4+Pj4gY29ubl9iYXNlX2lkKTsKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiByZXQ7Cj4+Pj4gwqAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZHBfbXN0LmMKPj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFk
ZW9uX2RwX21zdC5jCj4+Pj4gaW5kZXggNTljZjFkMjg4NDY1Li44ZjBiMmRjY2QxOTkgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0LmMKPj4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYwo+Pj4+IEBAIC02Mjks
MTMgKzYyOSwyMCBAQCBpbnQKPj4+PiDCoHJhZGVvbl9kcF9tc3RfaW5pdChzdHJ1Y3QgcmFkZW9u
X2Nvbm5lY3RvciAqcmFkZW9uX2Nvbm5lY3RvcikKPj4+PiDCoHsKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHJhZGVvbl9jb25uZWN0b3ItPmJhc2UuZGV2Owo+
Pj4+ICvCoMKgwqDCoMKgwqDCoGludCBtYXhfbGlua19yYXRlOwo+Pj4+IMKgCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoGlmICghcmFkZW9uX2Nvbm5lY3Rvci0+ZGRjX2J1cy0+aGFzX2F1eCkKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+Pj4+IMKgCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKHJhZGVvbl9jb25uZWN0b3JfaXNfZHAxMl9jYXBhYmxlKCZyYWRlb25f
Y29ubmVjdG9yLT5iYXNlKSkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4
X2xpbmtfcmF0ZSA9IDB4MTQ7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGlua19yYXRlID0gMHgwYTsKPj4+PiArCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoHJhZGVvbl9jb25uZWN0b3ItPm1zdF9tZ3IuY2JzID0gJm1zdF9jYnM7
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9pbml0
KCZyYWRlb25fY29ubmVjdG9yLT5tc3RfbWdyLCBkZXYsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgJnJhZGVvbl9jb25uZWN0b3ItPmRkY19idXMtPmF1eCwKPj4+PiAxNiwgNiwK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQsIG1heF9saW5rX3JhdGUsCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFkZW9uX2Nvbm5lY3Rvci0+YmFzZS5iYXNl
LmlkKTsKPj4+PiDCoH0KPj4+PiDCoAo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
ZHBfbXN0X2hlbHBlci5oCj4+Pj4gYi9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCj4+
Pj4gaW5kZXggMjBkYzcwNTY0MmJkLi5iNWIwYmYzNzgxM2IgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaAo+Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9k
cF9tc3RfaGVscGVyLmgKPj4+PiBAQCAtNTkzLDYgKzU5MywxNCBAQCBzdHJ1Y3QgZHJtX2RwX21z
dF90b3BvbG9neV9tZ3Igewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgKiBAbWF4X3BheWxvYWRzOiBt
YXhpbXVtIG51bWJlciBvZiBwYXlsb2FkcyB0aGUgR1BVIGNhbiBnZW5lcmF0ZS4KPj4+PiDCoMKg
wqDCoMKgwqDCoMKgICovCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoGludCBtYXhfcGF5bG9hZHM7Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgLyoqCj4+Pj4gK8KgwqDCoMKgwqDCoMKgICogQG1heF9sYW5lX2Nv
dW50OiBtYXhpbXVtIG51bWJlciBvZiBsYW5lcyB0aGUgR1BVIGNhbiBkcml2ZS4KPj4+PiArwqDC
oMKgwqDCoMKgwqAgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xhbmVfY291bnQ7Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgLyoqCj4+Pj4gK8KgwqDCoMKgwqDCoMKgICogQG1heF9saW5rX3Jh
dGU6IG1heGltdW0gbGluayByYXRlIHBlciBsYW5lIEdQVSBjYW4gb3V0cHV0Lgo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoGludCBtYXhfbGlua19yYXRlOwo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqAvKioKPj4+PiDCoMKgwqDCoMKgwqDCoMKgICogQGNvbm5fYmFzZV9p
ZDogRFJNIGNvbm5lY3RvciBJRCB0aGlzIG1nciBpcyBjb25uZWN0ZWQgdG8uIE9ubHkKPj4+PiB1
c2VkCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAqIHRvIGJ1aWxkIHRoZSBNU1QgY29ubmVjdG9yIHBh
dGggdmFsdWUuCj4+Pj4gQEAgLTc2NSw3ICs3NzMsOSBAQCBzdHJ1Y3QgZHJtX2RwX21zdF90b3Bv
bG9neV9tZ3Igewo+Pj4+IMKgaW50IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoc3RydWN0
IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2RwX2F1eAo+Pj4+ICphdXgsCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQg
bWF4X2RwY2RfdHJhbnNhY3Rpb25fYnl0ZXMsCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBtYXhfcGF5bG9hZHMs
IGludCBjb25uX2Jhc2VfaWQpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgbWF4X3BheWxvYWRzLAo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbnQgbWF4X2xhbmVfY291bnQsIGludCBtYXhfbGlua19yYXRlLAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bnQgY29ubl9iYXNlX2lkKTsKPj4+PiDCoAo+Pj4+IMKgdm9pZCBkcm1fZHBfbXN0X3RvcG9sb2d5
X21ncl9kZXN0cm95KHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKTsKPj4+PiDC
oAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
