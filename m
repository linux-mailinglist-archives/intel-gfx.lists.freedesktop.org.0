Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CA7E76EC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 17:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63876E987;
	Mon, 28 Oct 2019 16:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DF46E987
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 16:44:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:44:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="198118274"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 28 Oct 2019 09:44:43 -0700
To: don.hiatt@intel.com, intel-gfx@lists.freedesktop.org
References: <20191024162958.11839-1-don.hiatt@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
Date: Mon, 28 Oct 2019 09:44:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191024162958.11839-1-don.hiatt@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
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

CgpPbiAxMC8yNC8xOSA5OjI5IEFNLCBkb24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOgo+IEZyb206
IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KPiAKPiBDaGVjayB0byBzZWUgaWYgR3VD
IHN1Ym1pc3Npb24gaXMgZW5hYmxlZCBiZWZvcmUgcmVxdWVzdGluZyB0aGUKPiBFWElUX1NfU1RB
VEUgYWN0aW9uLgo+IAoKWW91J3JlIG9ubHkgc2tpcHBpbmcgdGhlIHJlc3VtZSwgYnV0IGRvZXMg
aXQgbWFrZSBhbnkgc2Vuc2UgdG8gZG8gdGhlIApzdXNwZW5kIGFjdGlvbiBpZiB3ZSdyZSBub3Qg
Z29pbmcgdG8gY2FsbCB0aGUgcmVzdW1lIG9uZT8gRG9lcyBndWMgZG8gCmFueXRoaW5nIGluIHRo
ZSBzdXNwZW5kIGFjdGlvbiB0aGF0IHdlIHN0aWxsIHJlcXVpcmU/IEkgdGhvdWdodCBpdCBvbmx5
IApzYXZlZCB0aGUgc3VibWlzc2lvbiBzdGF0dXMsIHdoaWNoIHdlIGRvbid0IGNhcmUgYWJvdXQg
aWYgZ3VjIHN1Ym1pc3Npb24gCmlzIGRpc2FibGVkLgoKRGFuaWVsZQoKPiBPbiBzb21lIHBsYXRm
b3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24sIGJ1dAo+
IHRoZSB1c2VyIGVuYWJsZWQgdGhlIEd1QyBjb21tdW5pY2F0aW9uIChlLmcgZm9yIEh1QyBhdXRo
ZW50aWNhdGlvbikKPiBjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRz
IGluIGxvc2Ugb2YgYWJpbGl0eSB0bwo+IGVudGVyIFJDNi4gR3VhcmQgYWdhaW5zdCB0aGlzIGJ5
IG9ubHkgcmVxdWVzdGluZyB0aGUgR3VDIGFjdGlvbiBvbgo+IHBsYXRmb3JtcyB0aGF0IHN1cHBv
cnQgR3VDIHN1Ym1pc3Npb24uCj4gCj4gSSd2ZSB2ZXJmaWVkIHRoYXQgaW50ZWxfZ3VjX3Jlc3Vt
ZSgpIG9ubHkgZ2V0cyBjYWxsZWQgd2hlbiBkcml2ZXIKPiBpcyBsb2FkZWQgd2l0aDogZ3VjX2Vu
YWJsZT17MSwyLDN9LCBhbGwgb3RoZXIgY2FzZXMgKG5vIGFyZ3MsCj4gZ3VjX2VuYWJsZT17MCwt
MX0gdGhlIGludGVsX2d1Y19yZXN1bWUoKSBpcyBub3QgY2FsbGVkLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgNSArKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCj4gaW5kZXggMzdmN2JjYmY3ZGFjLi4zMzMxOGVkMTM1YzAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+IEBAIC01NjUsNyArNTY1LDEw
IEBAIGludCBpbnRlbF9ndWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgIAkJR1VD
X1BPV0VSX0QwLAo+ICAgCX07Cj4gICAKPiAtCXJldHVybiBpbnRlbF9ndWNfc2VuZChndWMsIGFj
dGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsKPiArCWlmIChndWMtPnN1Ym1pc3Npb25fc3VwcG9y
dGVkKQo+ICsJCXJldHVybiBpbnRlbF9ndWNfc2VuZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShh
Y3Rpb24pKTsKPiArCj4gKwlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICAgLyoqCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
