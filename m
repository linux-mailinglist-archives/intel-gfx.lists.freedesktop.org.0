Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008EA266B6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1717289BFB;
	Wed, 22 May 2019 15:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECEE89BFF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 15:12:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:12:10 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.238.204]) ([10.103.238.204])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2019 08:12:09 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190522130524.10223-1-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <dfb41b3f-b43a-e193-08c4-f4c5fd4f19bc@intel.com>
Date: Wed, 22 May 2019 16:12:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522130524.10223-1-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: Vulkan performance query
 support
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

TWVzYSBjaGFuZ2UgOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhL21l
cmdlX3JlcXVlc3RzLzkzMgoKT24gMjIvMDUvMjAxOSAxNDowNSwgTGlvbmVsIExhbmR3ZXJsaW4g
d3JvdGU6Cj4gSGkgYWxsLAo+Cj4gVGhpcyBzbWFsbCAoYnV0IG1heWJlIG5vdCB0byBldmVyeWJv
ZHkncyB0YXN0ZSkgc2VyaWVzIGVuYWJsZXMgdXMgdG8KPiBzdXBwb3J0IHBlcmZvcm1hbmNlIHF1
ZXJpZXMgb24gVnVsa2FuLiBXZSd2ZSBnb25lIHRocm91Z2ggdGhlIHByb2Nlc3MKPiB0byBkZWZp
bmUgdGhpcyBhcyBhIFZ1bGthbiBJTlRFTCBleHRlbnNpb24gKGl0IHNob3VsZCBhcHBlYXIgb24g
WzFdCj4gc29vbmlzaCkuCj4KPiBUaGlzIHYyIGluY2x1ZGVzIGZpeGVzIGFmdGVyIENocmlzJyBm
aXJzdCByb3VuZCBvZiByZXZpZXcuCj4KPiBDaGVlcnMsCj4KPiAgIFsxXSA6IGh0dHBzOi8vZ2l0
aHViLmNvbS9LaHJvbm9zR3JvdXAvVnVsa2FuLURvY3MKPgo+IExpb25lbCBMYW5kd2VybGluICg1
KToKPiAgICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2UgYSB2ZXJzaW9uaW5nIG9mIHRoZSBpOTE1
LXBlcmYgdWFwaQo+ICAgIGRybS9pOTE1L3BlcmY6IGFsbG93IGhvbGRpbmcgcHJlZW1wdGlvbiBv
biBmaWx0ZXJlZCBjdHgKPiAgICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBmb3IgQ1MgT0EgY29uZmln
cyB0byBiZSBjcmVhdGVkIGxhemlseQo+ICAgIGRybS9pOTE1OiBhZGQgYSBuZXcgcGVyZiBjb25m
aWd1cmF0aW9uIGV4ZWNidWYgcGFyYW1ldGVyCj4gICAgZHJtL2k5MTU6IGFkZCBzdXBwb3J0IGZv
ciBwZXJmIGNvbmZpZ3VyYXRpb24gcXVlcmllcwo+Cj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmMgICAgICAgfCAgIDEgKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dF90eXBlcy5oIHwgICAzICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICB8ICAgNyArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgIDEgKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwgICAzICstCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAgfCAgIDQgKy0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAgNyArCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMjkgKy0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICA5NyArKysrKy0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8IDIxNCArKysrKysrKysr
Ky0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwg
Mjc3ICsrKysrKysrKysrKysrKysrKwo+ICAgaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAg
ICAgICAgICAgICAgICAgIHwgMTEyICsrKysrKy0KPiAgIDEyIGZpbGVzIGNoYW5nZWQsIDcwNSBp
bnNlcnRpb25zKCspLCA1MCBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4yMS4wLjM5Mi5nZjhmNjc4
NzE1OWUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
