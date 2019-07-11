Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6B665EC0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CBE6E132;
	Thu, 11 Jul 2019 17:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CF66E132
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:38:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:38:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="365342403"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jul 2019 10:38:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190711162415.2938-1-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ed23fe4c-1a15-ee5f-d9f5-349aef31bb45@intel.com>
Date: Thu, 11 Jul 2019 10:38:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190711162415.2938-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Drop redundant ctx param from
 kerenldoc
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

CgpPbiA3LzExLzE5IDk6MjQgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jOjc5OTogd2FybmluZzogRXhjZXNzIGZ1bmN0
aW9uIHBhcmFtZXRlciAnY3R4JyBkZXNjcmlwdGlvbiBpbiAnZ3VjX2NsaWVudF9hbGxvYycKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19zdWJtaXNzaW9uLmMgfCAyIC0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKPiBp
bmRleCAzMDY5MmY4Mjg5YmQuLmI2NjNiNWZlNTFhOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwo+IEBAIC03ODksOCArNzg5LDYgQEAgc3RhdGlj
IGJvb2wgZ3VjX3ZlcmlmeV9kb29yYmVsbHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICAgICoJ
CVRoZSBrZXJuZWwgY2xpZW50IHRvIHJlcGxhY2UgRXhlY0xpc3Qgc3VibWlzc2lvbiBpcyBjcmVh
dGVkIHdpdGgKPiAgICAqCQlOT1JNQUwgcHJpb3JpdHkuIFByaW9yaXR5IG9mIGEgY2xpZW50IGZv
ciBzY2hlZHVsZXIgY2FuIGJlIEhJR0gsCj4gICAgKgkJd2hpbGUgYSBwcmVlbXB0aW9uIGNvbnRl
eHQgY2FuIHVzZSBDUklUSUNBTC4KPiAtICogQGN0eDoJdGhlIGNvbnRleHQgdGhhdCBvd25zIHRo
ZSBjbGllbnQgKHdlIHVzZSB0aGUgZGVmYXVsdCByZW5kZXIKPiAtICoJCWNvbnRleHQpCj4gICAg
Kgo+ICAgICogUmV0dXJuOglBbiBpbnRlbF9ndWNfY2xpZW50IG9iamVjdCBpZiBzdWNjZXNzLCBl
bHNlIE5VTEwuCj4gICAgKi8KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
