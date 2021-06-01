Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD84939756F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB166EA7B;
	Tue,  1 Jun 2021 14:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3EEB6EA7B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 14:30:32 +0000 (UTC)
IronPort-SDR: htubpSlpHWGGvGtuUBZ2TsB/ONoI4Hl2MKjqx8CfLtuAtrT806WmbpMftoGfjHXlhoGNsymTJb
 RgdM+uCMyfLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="201689629"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="201689629"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:30:28 -0700
IronPort-SDR: CvFP20cOjW4YcRWjYdiqmCBIIVDhWvXXVNJcyZr1wxrLyFJqtjJnz/igIHcFexP7KN6FY7w0tH
 lMMAmjifi+/w==
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="479301663"
Received: from ycohenha-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.130])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:30:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <2871190.Sgy9Pd6rRy@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210429134450.302912-1-janusz.krzysztofik@linux.intel.com>
 <87zgxbzpiu.fsf@intel.com>
 <2871190.Sgy9Pd6rRy@jkrzyszt-mobl1.ger.corp.intel.com>
Date: Tue, 01 Jun 2021 17:30:20 +0300
Message-ID: <87bl8pr72b.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong name announced on FB
 driver switching
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNiBNYXkgMjAyMSwgSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9m
aWtAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiBIaSwKPgo+IE9uIHBvbmllZHppYcWCZWssIDMg
bWFqYSAyMDIxIDE5OjM4OjE3IENFU1QgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFRodSwgMjkg
QXByIDIwMjEsIEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4Lmlu
dGVsLmNvbT4gCj4gd3JvdGU6Cj4+ID4gQ29tbWl0IDdhMGY5ZWY5NzAzZCAoImRybS9pOTE1OiBV
c2UgZHJtX2ZiX2hlbHBlcl9maWxsX2luZm8iKQo+PiA+IGVmZmVjdGl2ZWx5IGNoYW5nZWQgb3Vy
IEZCIGRyaXZlciBuYW1lIGZyb20gImludGVsZHJtZmIiIHRvCj4+ID4gImk5MTVkcm1mYiIuICBI
b3dldmVyLCB3ZSBhcmUgc3RpbGwgdXNpbmcgdGhlIG9sZCBuYW1lIHdoZW4ga2lja2luZyBvdXQK
Pj4gPiBhIGZpcm13YXJlIGZiZGV2IGRyaXZlciBwb3RlbnRpYWxseSBib3VuZCB0byBvdXIgZGV2
aWNlLiAgVXNlIHRoZSBuZXcKPj4gPiBuYW1lIHRvIGF2b2lkIGNvbmZ1c2lvbi4KPj4gPgo+PiA+
IE5vdGU6IHNpbmNlIHRoZSBuZXcgbmFtZSBpcyBhc3NpZ25lZCBieSBhIERSTSBmYmRldiBoZWxw
ZXIgY2FsbGVkIGF0Cj4+ID4gdGhlIERSTSBkcml2ZXIgcmVnaXN0cmF0aW9uIHRpbWUsIHRoYXQg
bmFtZSBpcyBub3QgYXZhaWxhYmxlIHdoZW4gd2UKPj4gPiBraWNrIHRoZSBvdGhlciBkcml2ZXIg
b3V0IGVhcmx5LCBoZW5jZSBhIGhhcmRjb2RlZCBuYW1lIG11c3QgYmUgdXNlZAo+PiA+IHVubGVz
cyB0aGUgRFJNIGxheWVyIGV4cG9zZXMgYSBtYWNybyBmb3IgY29udmVydGluZyBhIERSTSBkcml2
ZXIgbmFtZQo+PiA+IHRvIGl0cyBhc3NvY2lhdGVkIGZiZGV2IGRyaXZlciBuYW1lLgo+PiA+Cj4+
ID4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtA
bGludXguaW50ZWwuY29tPgo+PiAKPj4gTEdUTSwgRGFuaWVsPwo+PiAKPj4gUmV2aWV3ZWQtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4KPiBBbSBJIHN1cHBvc2VkIHRv
IGRvIHNvbWV0aGluZyB0byBwdXNoIHByb2Nlc3Npbmcgb2YgdGhpcyBwYXRjaCBmb3J3YXJkPyAg
Cj4gUGxlYXNlIG5vdGUgSSBoYXZlIG5vIHB1c2ggcGVybWlzc2lvbnMgc28gY2FuJ3QgbWVyZ2Ug
aXQgbXlzZWxmLgoKSSB3YXMgaG9waW5nIHRvIGdldCBhbiBhY2sgZnJvbSBEYW5pZWwgaW4gY2Fz
ZSBJIG1pc3NlZCBzb21ldGhpbmcuCgo+Cj4+IAo+PiAkIGRpbSBmaXhlcyA3YTBmOWVmOTcwM2QK
Pj4gRml4ZXM6IDdhMGY5ZWY5NzAzZCAoImRybS9pOTE1OiBVc2UgZHJtX2ZiX2hlbHBlcl9maWxs
X2luZm8iKQo+PiBDYzogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cj4+IENj
OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4+IENjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+Cj4+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IENj
OiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS4yKwo+Cj4gU2hvdWxkIEkgcmVzdWJtaXQg
d2l0aCB0aG9zZSB0YWdzIGFwcGVuZGVkPwoKTm8gbmVlZCwgd2lsbCBiZSBhZGRlZCBieSB3aG9l
dmVyIGFwcGxpZXMgdGhlIHBhdGNoLgoKQlIsCkphbmkuCgo+Cj4gVGhhbmtzLAo+IEphbnVzego+
Cj4+IAo+PiAKPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8
IDIgKy0KPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4+ID4KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1Lwo+IGk5MTVfZHJ2LmMKPj4gPiBpbmRleCA3ODVkY2YyMGM3
N2IuLjQ2MDgyNDkwZGM5YSAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCj4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+PiA+
IEBAIC01NTQsNyArNTU0LDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9od19wcm9iZShzdHJ1
Y3QgCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ID4gIAlpZiAocmV0KQo+PiA+ICAJ
CWdvdG8gZXJyX3BlcmY7Cj4+ID4gIAo+PiA+IC0JcmV0ID0gZHJtX2FwZXJ0dXJlX3JlbW92ZV9j
b25mbGljdGluZ19wY2lfZnJhbWVidWZmZXJzKHBkZXYsIAo+ICJpbnRlbGRybWZiIik7Cj4+ID4g
KwlyZXQgPSBkcm1fYXBlcnR1cmVfcmVtb3ZlX2NvbmZsaWN0aW5nX3BjaV9mcmFtZWJ1ZmZlcnMo
cGRldiwgCj4gImk5MTVkcm1mYiIpOwo+PiA+ICAJaWYgKHJldCkKPj4gPiAgCQlnb3RvIGVycl9n
Z3R0Owo+PiAKPj4gCj4KPgo+Cj4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
