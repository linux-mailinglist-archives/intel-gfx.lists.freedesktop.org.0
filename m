Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5743109F5E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:39:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C68C89B83;
	Tue, 26 Nov 2019 13:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E1C89B83
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:39:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:39:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202720492"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 05:39:13 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
 <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
 <157477450982.15944.11339107642008525313@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <174321e8-3e92-727e-ecea-f80be2732372@linux.intel.com>
Date: Tue, 26 Nov 2019 13:39:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157477450982.15944.11339107642008525313@skylake-alporthouse-com>
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

Ck9uIDI2LzExLzIwMTkgMTM6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI2IDExOjMxOjE0KQo+Pgo+PiBPbiAyNi8xMS8yMDE5IDExOjA5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBbHNvIGdpdmVuIFR2cnRrbydzIHN0YXRzLCB0aGlz
IGNvdWxkIGFsbCBiZSBkb25lIGZyb20gdXNlcnNwYWNlIHdpdGggYW4KPj4+IGV4dGVuZGVkIENP
TlRFWFRfUEFSQU1fU1NFVSwgc28gd2h5IHdvdWxkIHdlIG5vdCBkbyBpdCB0aGF0IHdheT8KPj4K
Pj4gWW91IG1lYW4gcGF0Y2hpbmcgYW5kIHJlY29tcGlsaW5nIHVzZXJzcGFjZT8gSSBkb24ndCB0
aGluayB0aGF0IHdvdWxkCj4+IHdvcmsgZm9yIHRoZW0uCj4gCj4gTm8uIEkgd2FzIHRoaW5raW5n
IGFib3V0IHNvbWUgcHJvb2Ytb2YtY29uY2VwdCB1c2Vyc3BhY2UgZGFlbW9uIHVzaW5nCj4gcGVy
LWNvbnRleHQgc3RhdHMgYW5kIHR1bmluZyBlYWNoIGNvbnRleHQgZnJvbSBhIHRpbWVyLiBBbG1v
c3QgZXhhY3RseQo+IGFzIHByb3Bvc2VkIGhlcmUsIGJ1dCBpdCB3b3VsZCBiZSB2ZXJ5IG5pY2Ug
dmFsaWRhdGlvbiB0aGF0IG91ciBrZXJuZWwKPiBBUEkgYXJlIG5vdCBnZXR0aW5nIGluIHRoZSB3
YXkgb2YgdXNlcnNwYWNlIGNyZWF0aXZpdHkuIDopCj4gCj4gQnV0IHdobyBhbSBJIHRvIHRhbGss
IEkgdGhpbmsgQyBpcyBhIHNjcmlwdGluZyBsYW5ndWFnZSA7KQoKQWgsIEkgb3Zlcmxvb2tlZCB5
b3Ugd3JvdGUgX2V4dGVuZGVkXyBDT05URVhUX1BBUkFNX1NTRVUuCgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
