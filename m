Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E15BD266805
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 20:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1BBF6EACA;
	Fri, 11 Sep 2020 18:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAA06EACA
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 18:03:38 +0000 (UTC)
IronPort-SDR: 62s/YdJYGD4RxBALh1YYwIpSOjg0I1Neni1WwpmuC4dZI0J3YnURXu7Ef/6drEsV9p1k9KzABN
 tApgU23d3nUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146554186"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="146554186"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:03:36 -0700
IronPort-SDR: rFDLf8eJ9PBQ92F46etgLqpTqBjCqVbdUUp0Goj/ZvgQ7dnReUSAAmygEjQGiE/P58w1c5QVIU
 mQ9X6s78ScIg==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481409148"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:03:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 21:03:36 +0300
Message-ID: <87ft7oyyvb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix g4x+ sprite dotclock
 limit for upscaling
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

T24gVGh1LCAwNiBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBFdmVuIGlmIHdlJ3JlIG5vdCBkb2luZyBkb3duc2NhbGluZyB3
ZSBzaG91bGQgYWNjb3VudCBmb3IKPiBzb21lIG9mIHRoZSBleHRyYSBkb3RjbG9jayBsaW1pdGF0
aW9ucyBmb3IgZzR4KyBzcHJpdGVzLiBJbgo+IHBhcnRpY3VsYXIgd2UgbXVzdCBuZXZlciBleGNl
ZWQgdGhlIDkwJSBydWxlLCBhbmQgd2l0aCBSR0IKPiB0aGF0IGxpbWl0cyBhY3R1YWxseSBkcm9w
cyB0byA4MCUuCj4KPiBTbyBpbnN0ZWFkIG9mIGJhaWxpbmcgb3V0IHdoZW4gdXBzY2FsaW5nIGxl
dCdzIGNsYW1wIHRoZQo+IHNjYWxpbmcgZmFjdG9yIGFwcHJvcHJpYXRlbHkgYW5kIGdvIHRocm91
Z2ggdGhlIHJlc3Qgb2YKPiBjYWxjdWxhdGlvbiBub3JtYWxseS4gQnkgbHVjayB3ZSBhbHJlYWR5
IGRpZCB0aGUgZnVsbAo+IGNhbGN1bGF0aW9ucyBmb3IgdGhlIDE6MSBjYXNlLgo+Cj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDMg
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+IGluZGV4IDdh
YmVlZmU4ZGNlNS4uNmUyZTIyZDliYmFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gQEAgLTE2MTEsOCArMTYxMSw3IEBAIHN0YXRpYyBpbnQg
ZzR4X3Nwcml0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCj4gIAloc2NhbGUgPSBkcm1fcmVjdF9jYWxjX2hzY2FsZSgmcGxhbmVfc3RhdGUtPnVh
cGkuc3JjLAo+ICAJCQkJICAgICAgJnBsYW5lX3N0YXRlLT51YXBpLmRzdCwKPiAgCQkJCSAgICAg
IDAsIElOVF9NQVgpOwo+IC0JaWYgKGhzY2FsZSA8IDB4MTAwMDApCj4gLQkJcmV0dXJuIHBpeGVs
X3JhdGU7Cj4gKwloc2NhbGUgPSBtYXgoaHNjYWxlLCAweDEwMDAwdSk7CgpJdCBidWdzIG1lIHRo
YXQgZHJtX3JlY3Qgc2VlbXMgdG8gYmUgdXNlZCBmb3IgYm90aCBpbnRlZ2VyIGFuZCAxNi4xNgpm
aXhlZCBwb2ludCBhbmQgd2hhdG5vdC4KCkl0IGFsc28gZ2l2ZXMgbWUgYW4gdW5lYXN5IGZlZWxp
bmcgdGhhdCBoc2NhbGUgaXMgdWludCB3aGlsZQpkcm1fcmVjdF9jYWxjX2hzY2FsZSgpIG1heSBy
ZXR1cm4gLUVSQU5HRS4uLiBidXQgSSBndWVzcyBzaG91bGRuJ3QKaGFwcGVuLgoKQWxsIGluIGFs
bCwKClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCj4g
IAo+ICAJLyogRGVjaW1hdGlvbiBzdGVwcyBhdCAyeCw0eCw4eCwxNnggKi8KPiAgCWRlY2ltYXRl
ID0gaWxvZzIoaHNjYWxlID4+IDE2KTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
