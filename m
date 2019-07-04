Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 382875F64F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855396E313;
	Thu,  4 Jul 2019 10:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620C06E313
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:06:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="184968125"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2019 03:06:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703143702.11339-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ae06b6fe-f818-f294-d648-0dba924fbcb9@linux.intel.com>
Date: Thu, 4 Jul 2019 11:06:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703143702.11339-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Show support for accurate sw PMU
 busyness tracking
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

Ck9uIDAzLzA3LzIwMTkgMTU6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBFeHBvc2Ugd2hldGhl
ciBvciBub3Qgd2Ugc3VwcG9ydCB0aGUgUE1VIHNvZnR3YXJlIHRyYWNraW5nIGluIG91cgo+IHNj
aGVkdWxlciBjYXBhYmlsaXRpZXMsIHNvIHVzZXJzcGFjZSBjYW4gcXVlcnkgYXQgcnVudGltZS4K
PiAKPiB2MjogVXNlIEk5MTVfU0NIRURVTEVSX0NBUF9FTkdJTkVfQlVTWV9TVEFUUyBmb3IgYSBs
ZXNzIGFtYmlndW91cwo+IGNhcGFiaWxpdHkgbmFtZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiBGb3IgcmVmZXJlbmNlLCBUdnJ0a28g
c3VnZ2VzdGVkIGFuIGFsdGVybmF0aXZlIGJhY2sgaW4gRmViLAo+ICJJIGFtIGxlYW5pbmcgdG93
YXJkcyB0aGlua2luZyBQTVUgaXMgYSBiYWNrZW5kIGFuZCBub3QgdGhlIHNjaGVkdWxlcgo+IGZl
YXR1cmUuIFdlIGNvdWxkIGV4cG9ydCBpdCB2aWEgZW5naW5lIGRpc2NvdmVyeSBmb3IgaW5zdGFu
Y2UuIgo+IC1DaHJpcwo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgfCA3ICsrKystLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMg
ICAgICAgICAgIHwgNCArLS0tCj4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAg
ICAgICAgICB8IDEgKwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMK
PiBpbmRleCBjMWZiNWZhMzk1MmUuLjdkNmQ2ZTYyZTljYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTY4OCw5ICs2ODgsMTAgQEAgdm9pZCBp
bnRlbF9lbmdpbmVzX3NldF9zY2hlZHVsZXJfY2FwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgIAkJdTggZW5naW5lOwo+ICAgCQl1OCBzY2hlZDsKPiAgIAl9IG1hcFtdID0gewo+
IC0jZGVmaW5lIE1BUCh4LCB5KSB7IGlsb2cyKEk5MTVfRU5HSU5FX0hBU18jI3gpLCBpbG9nMihJ
OTE1X1NDSEVEVUxFUl9DQVBfIyN5KSB9Cj4gLQkJTUFQKFBSRUVNUFRJT04sIFBSRUVNUFRJT04p
LAo+IC0JCU1BUChTRU1BUEhPUkVTLCBTRU1BUEhPUkVTKSwKPiArI2RlZmluZSBNQVAoeCwgeSkg
eyBpbG9nMihJOTE1X0VOR0lORV8jI3gpLCBpbG9nMihJOTE1X1NDSEVEVUxFUl9DQVBfIyN5KSB9
Cj4gKwkJTUFQKEhBU19QUkVFTVBUSU9OLCBQUkVFTVBUSU9OKSwKPiArCQlNQVAoSEFTX1NFTUFQ
SE9SRVMsIFNFTUFQSE9SRVMpLAo+ICsJCU1BUChTVVBQT1JUU19TVEFUUywgRU5HSU5FX0JVU1lf
U1RBVFMpLAo+ICAgI3VuZGVmIE1BUAo+ICAgCX07Cj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+IGluZGV4IDhmZTQ2ZWU5MjBhMC4u
ZWZmODY0ODNiZWMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gQEAgLTEwMiwxMCAr
MTAyLDggQEAgc3RhdGljIGJvb2wgcG11X25lZWRzX3RpbWVyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBib29sIGdwdV9hY3RpdmUpCj4gICAJLyoKPiAgIAkgKiBBbHNvIHRoZXJlIGlz
IHNvZnR3YXJlIGJ1c3luZXNzIHRyYWNraW5nIGF2YWlsYWJsZSB3ZSBkbyBub3QKPiAgIAkgKiBu
ZWVkIHRoZSB0aW1lciBmb3IgSTkxNV9TQU1QTEVfQlVTWSBjb3VudGVyLgo+IC0JICoKPiAtCSAq
IFVzZSBSQ1MgYXMgcHJveHkgZm9yIGFsbCBlbmdpbmVzLgo+ICAgCSAqLwo+IC0JZWxzZSBpZiAo
aW50ZWxfZW5naW5lX3N1cHBvcnRzX3N0YXRzKGk5MTUtPmVuZ2luZVtSQ1MwXSkpCj4gKwllbHNl
IGlmIChpOTE1LT5jYXBzLnNjaGVkdWxlciAmIEk5MTVfU0NIRURVTEVSX0NBUF9FTkdJTkVfQlVT
WV9TVEFUUykKPiAgIAkJZW5hYmxlICY9IH5CSVQoSTkxNV9TQU1QTEVfQlVTWSk7Cj4gICAKPiAg
IAkvKgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRl
L3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBpbmRleCAzMjhkMDVlNzdkOWYuLjQ2OWRjNTEyY2NhMyAx
MDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiArKysgYi9pbmNsdWRl
L3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBAQCAtNTIxLDYgKzUyMSw3IEBAIHR5cGVkZWYgc3RydWN0
IGRybV9pOTE1X2lycV93YWl0IHsKPiAgICNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfUFJJ
T1JJVFkJKDF1bCA8PCAxKQo+ICAgI2RlZmluZSAgIEk5MTVfU0NIRURVTEVSX0NBUF9QUkVFTVBU
SU9OCSgxdWwgPDwgMikKPiAgICNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfU0VNQVBIT1JF
UwkoMXVsIDw8IDMpCj4gKyNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfRU5HSU5FX0JVU1lf
U1RBVFMJKDF1bCA8PCA0KQo+ICAgCj4gICAjZGVmaW5lIEk5MTVfUEFSQU1fSFVDX1NUQVRVUwkJ
IDQyCj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
