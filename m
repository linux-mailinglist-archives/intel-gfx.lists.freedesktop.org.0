Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A7C109D05
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 12:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501CD896B5;
	Tue, 26 Nov 2019 11:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B4D896B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 11:31:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 03:31:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202690447"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 03:31:16 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
Date: Tue, 26 Nov 2019 11:31:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzExLzIwMTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI2IDEwOjUxOjIyKQo+PiBZb3UgbWVudGlvbmVkIHlvdSBkaWQg
c29tZSBleHBlcmltZW50IHdoZXJlIHlvdSBkaWQgc29tZXRoaW5nIG9uIGNvbnRleHQKPj4gcGlu
bmluZyBhbmQgdGhhdCBpdCBkaWQgbm90IHdvcmsgc28gd2VsbC4gSSBkb24ndCBrbm93IHdoYXQg
dGhhdCB3YXMKPj4gdGhvdWdoLiBJIGRvbid0IHRoaW5rIHRoYXQgd2FzIGV2ZXIgcG9zdGVkPwo+
Pgo+PiBXaGF0IEkgYW0gdGhpbmtpbmcgaXMgdGhpczogWW91IGRyb3AgdGhlIHRpbWVyIGFsdG9n
ZXRoZXIuIEluc3RlYWQgaW4KPj4gX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZSB5b3UgbG9v
ayBhdCB5b3VyIGdlbV9jb250ZXh0LT5yZXFfY250IGFuZAo+PiBpbXBsZW1lbnQgeW91ciBsb2dp
YyB0aGVyZS4KPiAKPiBJIG5vdGljZWQgdGhlIHNhbWUgbm9uLXNlcXVpdHVyLiBFeGNlcHQgSSB3
b3VsZCBwdXNoIHRoYXQgZWl0aGVyIHRoZQo+IGVudGlyZSBtZWFzdXJlbWVudCBhbmQgaGVuY2Ug
cGF0Y2ggc2VyaWVzIGlzIGJvZ3VzIChiZXlvbmQgdGhlIHBhdGNoZXMKPiB0aGVtc2VsdmVzIGJl
aW5nIHRyaXZpYWxseSBicm9rZW4sIHRlc3RlZCBtdWNoPyksIG9yIHRoYXQgaXQgcmVhbGx5Cj4g
c2hvdWxkIGJlIGRvbmUgZnJvbSBhIHRpbWVyIGFuZCBhbHNvIGFkanVzdCBwaW5uZWQgY29udGV4
dHMgYWxhCj4gcmVjb25maWd1cmVfc3NldS4KClllYWgsIGlmIGRvaW5nIGl0IGF0IHBpbiB0aW1l
IHdvdWxkIG5vdCBzaG93IHRoZSBwb3dlciBiZW5lZml0IHRoYXQgCndvdWxkIG1lYW4gbG9va2lu
ZyBhdCByZXFfY250IGF0IHBpbiB0aW1lIGRvZXMgbm90IHdvcmssIHdoaWxlIGxvb2tpbmcgCmF0
IGl0IGhhbGYgYSB0aW1lciBwZXJpb2QgYWdvLCBvbiBhdmVyYWdlLCB3b3Jrcy4gV2hpY2ggd291
bGQgYmUgdmVyeSAKaW50cmlndWluZy4gV2UnZCBwcm9iYWJseSB3YW50IG5pY2UgZ3JhcGhzIGlu
IHRoaXMgY2FzZSBvdmVybGF5aW5nIApwb3dlciwgcmVxdWVzdCBjb3VudHMsIHNlbGVjdGVkIEVV
IGNvbmZpZywgZXRjLgoKPiBBIGJ1bmNoIG9mIHNlbGZ0ZXN0cyBhbmQgaWd0IHByb3ZpbmcgdGhh
dCBkaWZmZXJlbnQgc3NldSBzZXR1cHMgZG8KPiBjb25zdW1lIGRpZmZlcmVudCBwb3dlciAoaS5l
LiB0aGF0IHdlIGNhbiBhZGp1c3Qgc3NldSBjb3JyZWN0bHkpLAo+IGFsb25nIHdpdGggZGVtb25z
dHJhdGluZyBnb29kIHdvcmtsb2FkcyB3aGVyZSBhdXRvdHVuaW5nIHByb2R1Y2VzCj4gYmVuZWZp
Y2lhbCByZXN1bHRzIGlzIGEgbXVzdC4KPiAKPiBBbHNvIGdpdmVuIFR2cnRrbydzIHN0YXRzLCB0
aGlzIGNvdWxkIGFsbCBiZSBkb25lIGZyb20gdXNlcnNwYWNlIHdpdGggYW4KPiBleHRlbmRlZCBD
T05URVhUX1BBUkFNX1NTRVUsIHNvIHdoeSB3b3VsZCB3ZSBub3QgZG8gaXQgdGhhdCB3YXk/CgpZ
b3UgbWVhbiBwYXRjaGluZyBhbmQgcmVjb21waWxpbmcgdXNlcnNwYWNlPyBJIGRvbid0IHRoaW5r
IHRoYXQgd291bGQgCndvcmsgZm9yIHRoZW0uCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
