Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAC4FE75A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 23:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F303B6E131;
	Fri, 15 Nov 2019 22:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3526E131
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 22:02:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 14:02:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="203504460"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 15 Nov 2019 14:02:10 -0800
To: don.hiatt@intel.com, intel-gfx@lists.freedesktop.org
References: <20191115182051.27182-1-don.hiatt@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <7355e3c9-71ad-bcc2-f069-4e9be308aed4@intel.com>
Date: Fri, 15 Nov 2019 14:02:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191115182051.27182-1-don.hiatt@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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
Cc: "S . Zharkoff" <s.zharkoff@gmail.com>,
 KiteStramuort <kitestramuort@autistici.org>, Tomas Janousek <tomi@nomi.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8xNS8xOSAxMDoyMCBBTSwgZG9uLmhpYXR0QGludGVsLmNvbSB3cm90ZToKPiBGcm9t
OiBEb24gSGlhdHQgPGRvbi5oaWF0dEBpbnRlbC5jb20+Cj4gCj4gT24gc29tZSBwbGF0Zm9ybXMg
KGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQKPiB0aGUg
dXNlciBlbmFibGVkIHRoZSBHdUMgY29tbXVuaWNhdGlvbiAoZS5nIGZvciBIdUMgYXV0aGVudGlj
YXRpb24pCj4gY2FsbGluZyB0aGUgR3VDIEVYSVRfU19TVEFURSBhY3Rpb24gcmVzdWx0cyBpbiBs
b3NlIG9mIGFiaWxpdHkgdG8KPiBlbnRlciBSQzYuIFdlIGNhbiByZW1vdmUgdGhlIEd1QyBzdXNw
ZW5kL3Jlc3VtZSBlbnRpcmVseSBhcyB3ZSBkbwo+IG5vdCBuZWVkIHRvIHNhdmUgdGhlIEd1QyBz
dWJtaXNzaW9uIHN0YXR1cy4KPiAKPiBBZGQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfZW5hYmxl
ZCgpIGZ1bmN0aW9uIHRvIGRldGVybWluZSBpZgo+IEd1QyBzdWJtaXNzaW9uIGlzIGFjdGl2ZS4K
PiAKPiB2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBHdUMgb24gcGxhdGZvcm1zIHRoYXQg
ZG8gbm90IHN1cHBvcnQKPiAgICAgIEd1YyBTdWJtaXNzaW9uLgo+IHYzOiBGaXggdHlwbywgbW92
ZSBzdXNwZW5kIGxvZ2ljIHRvIHJlbW92ZSBnb3RvLgo+IHY0OiBVc2UgaW50ZWxfZ3VjX3N1Ym1p
c3Npb25faXNfZW5hYmxlZCgpIHRvIGNoZWNrIEd1QyBzdWJtaXNzaW9uCj4gICAgICBzdGF0dXMu
Cj4gdjU6IE5vIG5lZWQgdG8gbG9vayBhdCBlbmdpbmUgdG8gZGV0ZXJtaW5lIGlmIHN1Ym1pc3Np
b24gaXMgZW5hYmxlZC4KPiAgICAgIFNxdWFzaCBmaXggKyBpbnRlbF9ndWNfc3VibWlzc2lvbl9p
c19lbmFibGVkKCkgcGF0Y2ggaW50byBvbmUuCj4gCj4gUmVwb3J0ZWQtYnk6IEtpdGVTdHJhbXVv
cnQgPGtpdGVzdHJhbXVvcnRAYXV0aXN0aWNpLm9yZz4KPiBSZXBvcnRlZC1ieTogUy4gWmhhcmtv
ZmYgPHMuemhhcmtvZmZAZ21haWwuY29tPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTQKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjIzCj4gRml4ZXM6IGY3NzRmMDk2
NDkxOSAoImRybS9pOTE1L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1dG8gbW9kZSIpCgpJIGRvbid0
IHRoaW5rIHRoaXMgRml4ZXMgdGFnIGlzIGFwcHJvcHJpYXRlIHNpbmNlIHdlIGFscmVhZHkgcmV2
ZXJ0ZWQgCnRoYXQgcGF0Y2guCgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNA
aW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBUZXN0ZWQtYnk6IFRvbWFzIEphbm91c2VrIDx0b21pQG5vbWkuY3o+Cj4gU2lnbmVkLW9mZi1i
eTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgfCA3ICsrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgIHwgOCArKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgfCA2ICsrKysrKwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMK
PiBpbmRleCAwMTlhZTY0ODZlOGQuLjkyZDkzMDVjMGQ3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4gQEAgLTU1Myw2ICs1NTMsMTMgQEAgaW50IGludGVsX2d1
Y19zdXNwZW5kKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgIAkJR1VDX1BPV0VSX0QxLCAvKiBh
bnkgdmFsdWUgZ3JlYXRlciB0aGFuIEdVQ19QT1dFUl9EMCAqLwo+ICAgCX07Cj4gICAKPiArCS8q
Cj4gKwkgKiBJZiBHdUMgY29tbXVuaWNhdGlvbiBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9uIGlz
IG5vdCBzdXBwb3J0ZWQsCj4gKwkgKiB3ZSBkbyBub3QgbmVlZCB0byBzdXNwZW5kIHRoZSBHdUMu
Cj4gKwkgKi8KPiArCWlmICghaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfZW5hYmxlZChndWMpKQo+
ICsJCXJldHVybiAwOwo+ICsKPiAgIAkvKgo+ICAgCSAqIFRoZSBFTlRFUl9TX1NUQVRFIGFjdGlv
biBxdWV1ZXMgdGhlIHNhdmUvcmVzdG9yZSBvcGVyYXRpb24gaW4gR3VDIEZXCj4gICAJICogYW5k
IHRoZW4gcmV0dXJucywgc28gd2FpdGluZyBvbiB0aGUgSDJHIGlzIG5vdCBlbm91Z2ggdG8gZ3Vh
cmFudGVlCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gaW5kZXggNjI5YjE5
Mzc3YTI5Li40ZGQ0M2I5OWEzMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMKPiBAQCAtNjA1LDYgKzYwNSwxNCBAQCBzdGF0aWMgaW50IF9fdWNfcmVzdW1lKHN0cnVj
dCBpbnRlbF91YyAqdWMsIGJvb2wgZW5hYmxlX2NvbW11bmljYXRpb24pCj4gICAJaWYgKGVuYWJs
ZV9jb21tdW5pY2F0aW9uKQo+ICAgCQlndWNfZW5hYmxlX2NvbW11bmljYXRpb24oZ3VjKTsKPiAg
IAo+ICsJLyoKPiArCSAqIElmIEd1QyBjb21tdW5pY2F0aW9uIGlzIGVuYWJsZWQgYnV0IHN1Ym1p
c3Npb24gaXMgbm90IHN1cHBvcnRlZCwKPiArCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHJlc3VtZSB0
aGUgR3VDIGJ1dCB3ZSBkbyBuZWVkIHRvIGVuYWJsZSB0aGUKPiArCSAqIEd1QyBjb21tdW5pY2F0
aW9uIG9uIHJlc3VtZSAoYWJvdmUpLgo+ICsJICovCj4gKwlpZiAoIWludGVsX2d1Y19zdWJtaXNz
aW9uX2lzX2VuYWJsZWQoZ3VjKSkKPiArCQlyZXR1cm4gMDsKPiArCgpJIHdvdWxkIHB1dCB0aGlz
IGNoZWNrIGluc2lkZSBpbnRlbF9ndWNfcmVzdW1lKCksIGZvciBzeW1tZXRyeSB3aXRoIHRoZSAK
b25lIHlvdSBwdXQgaW5zaWRlIGludGVsX2d1Y19zdXNwZW5kKCkuCgpEYW5pZWxlCgo+ICAgCWVy
ciA9IGludGVsX2d1Y19yZXN1bWUoZ3VjKTsKPiAgIAlpZiAoZXJyKSB7Cj4gICAJCURSTV9ERUJV
R19EUklWRVIoIkZhaWxlZCB0byByZXN1bWUgR3VDLCBlcnI9JWQiLCBlcnIpOwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAo+IGluZGV4IDdiYzFkOGMxMDJiMi4uMmI4Nzk0NzJlNzYwIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTIwNDQsNCArMjA0NCwxMCBAQCBpOTE1X2NvaGVy
ZW50X21hcF90eXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCXJldHVybiBI
QVNfTExDKGk5MTUpID8gSTkxNV9NQVBfV0IgOiBJOTE1X01BUF9XQzsKPiAgIH0KPiAgIAo+ICtz
dGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfZW5hYmxlZChzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMpCj4gK3sKPiArCXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9z
dXBwb3J0ZWQoZ3VjKSAmJgo+ICsJCWludGVsX2d1Y19pc19ydW5uaW5nKGd1Yyk7Cj4gK30KPiAr
Cj4gICAjZW5kaWYKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
