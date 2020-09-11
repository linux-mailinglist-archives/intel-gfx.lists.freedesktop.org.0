Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5134265E76
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 13:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5386E158;
	Fri, 11 Sep 2020 11:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60ED06E158
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 11:02:54 +0000 (UTC)
IronPort-SDR: 3IyhDi5gWbl2PWIkwM5NArAoOlqM/TYEolrakVEZyRi+yhac3CSsuM8GZqJYK58/yFxUi/FDRW
 Vn4A/2uArF3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138753476"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="138753476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 04:02:52 -0700
IronPort-SDR: DqISXLLUeIXI7T3n9wzezsQTkYCOshS126r+R9vTWMlF+sNeM+mJGfZ/yIfeNgiUzlnBLmpFpA
 slTwsXctfAuQ==
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="481285117"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 04:02:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200910104421.GT6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200910095227.9466-1-jani.nikula@intel.com>
 <20200910104421.GT6112@intel.com>
Date: Fri, 11 Sep 2020 14:02:51 +0300
Message-ID: <87zh5wzick.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: disable all display features
 when no display
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxMCBTZXAgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBTZXAgMTAsIDIwMjAgYXQgMTI6NTI6MjVQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IERpc2FibGUgYWxsIGRpc3BsYXkgZmVhdHVyZSBm
bGFncyB3aGVuIHRoZXJlIGFyZSBubyBwaXBlcyBpLmUuIHRoZXJlIGlzCj4+IG5vIGRpc3BsYXku
IFRoaXMgc2hvdWxkIGhlbHAgd2l0aCBub3QgaGF2aW5nIHRvIGFkZGl0aW9uYWxseSBjaGVjayBm
b3IKPj4gSEFTX0RJU1BMQVkoKSB3aGVuIGEgZmVhdHVyZSBmbGFnIGNoZWNrIHdvdWxkIHN1ZmZp
Y2UuCj4+IAo+PiBBbHNvIGRpc2FibGUgbW9kZXNldCBhbmQgYXRvbWljIGRyaXZlciBmZWF0dXJl
cy4KPgo+IFdoaWxlIGJzcGVjIGlzIHJhdGhlciB2YWd1ZSB3aGV0aGVyIHRoaXMgaXMgYWN0dWFs
bHkgZW50aXJlbHkgY29uc2lzdGVudAo+IHdpdGggaG93IHRoIGh3IHdvcmtzLCBpdCBzZWVtcyBy
YXRoZXIgc2lsbHkgaWYgYW55IGRpc3BsYXkgaHcgYmxvY2tzCj4gd291bGQgZ2V0IGluaXRpYWxp
emVkIGJ5IHRoZSBCSU9TL3doYXRldmVyIHdoZW4gdGhlcmUgYXJlIG5vIHVzYWJsZQo+IHBpcGVz
Lgo+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CgpQdXNoZWQgdGhlIGxvdCwgdGhhbmtzIGZvciB0aGUgcmV2aWV3cy4KCkJSLApK
YW5pLgoKPgo+PiAKPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YyB8IDggKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4gCj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+PiBpbmRleCBlMmFhNWJj
M2E2ZTAuLmFkYzgzNmYxNWZkZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jCj4+IEBAIC01MTYsNiArNTE2LDE0IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2lu
Zm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gIAkJ
CQkJICAgIFMzMl9NQVgpLAo+PiAgCQkJCVVTRUNfUEVSX1NFQykpOwo+PiAgCX0KPj4gKwo+PiAr
CWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSB7Cj4+ICsJCWRldl9wcml2LT5kcm0uZHJpdmVy
X2ZlYXR1cmVzICY9IH4oRFJJVkVSX01PREVTRVQgfAo+PiArCQkJCQkJICAgRFJJVkVSX0FUT01J
Qyk7Cj4+ICsJCW1lbXNldCgmaW5mby0+ZGlzcGxheSwgMCwgc2l6ZW9mKGluZm8tPmRpc3BsYXkp
KTsKPj4gKwkJbWVtc2V0KHJ1bnRpbWUtPm51bV9zcHJpdGVzLCAwLCBzaXplb2YocnVudGltZS0+
bnVtX3Nwcml0ZXMpKTsKPj4gKwkJbWVtc2V0KHJ1bnRpbWUtPm51bV9zY2FsZXJzLCAwLCBzaXpl
b2YocnVudGltZS0+bnVtX3NjYWxlcnMpKTsKPgo+IFNpZGUgbm90ZTogTm8gaWRlYSB3aHkgdGhl
IG51bV9zY2FsZXJzL3Nwcml0ZXMgaXMgc3RvcmVkIHVuZGVyIHRoZQo+IHJ1bnRpbWUgaW5mby4g
SSB0aGluayB0aG9zZSBjb3VsZCBqdXN0IGxpdmUgaW4gdGhlIG5vcm1hbCBQQ0kgSUQKPiBiYXNl
ZCBkZXZpY2UgaW5mby4KPgo+PiArCX0KPj4gIH0KPj4gIAo+PiAgdm9pZCBpbnRlbF9kcml2ZXJf
Y2Fwc19wcmludChjb25zdCBzdHJ1Y3QgaW50ZWxfZHJpdmVyX2NhcHMgKmNhcHMsCj4+IC0tIAo+
PiAyLjIwLjEKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2Vu
dGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
