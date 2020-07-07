Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F54217B96
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 01:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BC36E5A4;
	Tue,  7 Jul 2020 23:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA5006E181
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 23:07:13 +0000 (UTC)
IronPort-SDR: ZnbeR7SzxhGVJj4BjAg1atGpxJw23CoaoXhZCVgFHsxX/ksa6HPatehldzTxuC47RLJm1YF0A6
 +VD//FAndsHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="135169420"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="135169420"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 16:07:13 -0700
IronPort-SDR: hhMyiRV5RaDlvarMpiZTTJygzOMitPxPrkwWRB9MTFhsZB8KlnIoKQi6Nko/C21o51pbI5OARE
 7mS+dMOCzI2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="266958833"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.100.66])
 ([10.212.100.66])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jul 2020 16:07:12 -0700
To: =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal@hardline.pl>,
 intel-gfx@lists.freedesktop.org
References: <20200707215218.272031-1-michal@hardline.pl>
 <20200707215218.272031-2-michal@hardline.pl>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a85327ea-ed52-e05a-66a3-552829760e32@intel.com>
Date: Tue, 7 Jul 2020 16:07:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200707215218.272031-2-michal@hardline.pl>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/huc: Adjust HuC state
 accordingly after GuC fetch error
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
Cc: Marcin Bernatowicz <marcin.bernatowicz@intel.com>,
 =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzcvMjAyMCAyOjUyIFBNLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90ZToKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4KPiBGaXJtd2Fy
ZSAiU2VsZWN0ZWQiIHN0YXRlIGlzIGEgdHJhbnNpZW50IHN0YXRlIC0gd2UgZG9uJ3QgZXhwZWN0
IHRvIHNlZQo+IGl0IGFmdGVyIGZpbmlzaGluZyBkcml2ZXIgcHJvYmUsIHdlIGV2ZW4gaGF2ZSBh
c3NlcnRzIHNwcmlua2xlZCBvdmVyCj4gaTkxNSB0byBjb25maXJtIHdoZXRoZXIgdGhhdCdzIHRo
ZSBjYXNlLgo+IFVuZm9ydHVuYXRlbHkgLSB3ZSBkb24ndCBoYW5kbGUgdGhlIHRyYW5zaXRpb24g
b3V0IG9mICJTZWxlY3RlZCIgaW4gY2FzZQo+IG9mIEd1QyBmZXRjaCBlcnJvciwgbGVhZGluZyB0
aG9zZSBhc3NlcnRzIHRvIGZpcmUgd2hlbiBjYWxsaW5nCj4gImludGVsX2h1Y19pc191c2VkKCki
Lgo+Cj4gUmVwb3J0ZWQtYnk6IE1hcmNpbiBCZXJuYXRvd2ljeiA8bWFyY2luLmJlcm5hdG93aWN6
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndp
bmlhcnNraUBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgo+IENjOiBNYXJjaW4gQmVybmF0b3dpY3ogPG1hcmNpbi5iZXJuYXRvd2lj
ekBpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8
IDggKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+IGluZGV4IDFjMmQ2
MzU4ODI2Yy4uOTkzZTk3NTVmMzE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jCj4gQEAgLTI2Nyw4ICsyNjcsMTQgQEAgc3RhdGljIHZvaWQgX191Y19mZXRjaF9maXJt
d2FyZXMoc3RydWN0IGludGVsX3VjICp1YykKPiAgIAlHRU1fQlVHX09OKCFpbnRlbF91Y193YW50
c19ndWModWMpKTsKPiAgIAo+ICAgCWVyciA9IGludGVsX3VjX2Z3X2ZldGNoKCZ1Yy0+Z3VjLmZ3
KTsKPiAtCWlmIChlcnIpCj4gKwlpZiAoZXJyKSB7Cj4gKwkJLyogTWFrZSBzdXJlIHdlIHRyYW5z
aXRpb24gb3V0IG9mIHRyYW5zaWVudCAiU0VMRUNURUQiIHN0YXRlICovCj4gKwkJaWYgKGludGVs
X3VjX3dhbnRzX2h1Yyh1YykpCj4gKwkJCWludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoJnVjLT5o
dWMuZncsCj4gKwkJCQkJCSAgSU5URUxfVUNfRklSTVdBUkVfRVJST1IpOwoKSSB0aGluayB0aGF0
IGEgZGVidWcgbWVzc2FnZSBzYXlpbmcgdGhhdCB3ZSdyZSBkaXNhYmxpbmcgSHVDIGJlY2F1c2Ug
R3VDIApGVyB3YXMgbm90IGZvdW5kIHdvdWxkIGJlIHVzZWZ1bCB0byBtYWtlIGl0IGNsZWFyIHRo
YXQgdGhlIGVycm9yIGlzIG5vdCAKcmVsYXRlZCB0byB0aGUgSHVDIGJsb2IgaXRzZWxmLgoKPiAr
Cj4gICAJCXJldHVybjsKPiArCX0KPiAgIAo+ICAgCWlmIChpbnRlbF91Y193YW50c19odWModWMp
KQo+ICAgCQlpbnRlbF91Y19md19mZXRjaCgmdWMtPmh1Yy5mdyk7CgpJdCBsb29rcyBsaWtlIHRo
aXMgZnVuY3Rpb24gY291bGQgdXNlIGEgYml0IG9mIHJld29yayBmb3IgYmV0dGVyIG9uaW9uIAp1
bndpbmRpbmcgYmVjYXVzZSBpZiB3ZSBmYWlsIHRvIGZldGNoIHRoZSBIdUMgYW5kIHdlIGRvbid0
IHdhbnQgR3VDIApzdWJtaXNzaW9uIHdlIHNob3VsZCBkaXNhYmxlIHRoZSBHdUMuClRoYXQncyBu
b3QgYW4gaXNzdWUgd2l0aCB0aGlzIHBhdGNoLCBzbyB3aXRoIHRoZSBhZGRlZCBkZWJ1ZyBsb2c6
CgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbzxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
