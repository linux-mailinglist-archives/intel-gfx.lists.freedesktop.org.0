Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5EE1150C7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 14:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5E16E15D;
	Fri,  6 Dec 2019 13:04:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599246E15D
 for <Intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 13:04:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 05:04:23 -0800
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="206113146"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO [10.251.80.64])
 ([10.251.80.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Dec 2019 05:04:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
 <20191129105436.20100-1-tvrtko.ursulin@linux.intel.com>
 <157563554404.8823.10550311749695088810@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9804a5e4-efad-1746-91f9-a327ccb55dfd@linux.intel.com>
Date: Fri, 6 Dec 2019 13:04:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157563554404.8823.10550311749695088810@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/pmu: Report frequency as zero
 while GPU is sleeping
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

Ck9uIDA2LzEyLzIwMTkgMTI6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI5IDEwOjU0OjM2KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBXZSB1c2VkIHRvIHJlcG9ydCB0aGUgbWlu
aW11bSBwb3NzaWJsZSBmcmVxdWVuY3kgYXMgYm90aCByZXF1ZXN0ZWQgYW5kCj4+IGFjdGl2ZSB3
aGlsZSBHUFUgd2FzIGluIHNsZWVwIHN0YXRlLiBUaGlzIHdhcyBhIGNvbnNlcXVlbmNlIG9mIHNh
bXBsaW5nCj4+IHRoZSB2YWx1ZSBmcm9tIHRoZSAiY3VycmVudCBmcmVxdWVuY3kiIGZpZWxkIGlu
IG91ciBzb2Z0d2FyZSB0cmFja2luZy4KPj4KPj4gVGhpcyB3YXMgc3RyaWN0bHkgc3BlYWtpbmcg
d3JvbmcsIGJ1dCBnaXZlbiB0aGF0IHVudGlsIHJlY2VudGx5IHRoZQo+PiBjdXJyZW50IGZyZXF1
ZW5jeSBpbiBzbGVlcGluZyBzdGF0ZSB1c2VkIHRvIGJlIGVxdWFsIHRvIG1pbmltdW0sIGl0IGRp
ZAo+PiBub3Qgc3RhbmQgb3V0IHN1ZmZpY2llbnRseSB0byBiZSBub3RpY2VkIGFzIHN1Y2guCj4+
Cj4+IEFmdGVyIHNvbWUgcmVjZW50IGNoYW5nZXMgaGF2ZSBtYWRlIHRoZSBjdXJyZW50IGZyZXF1
ZW5jeSBiZSByZXBvcnRlZAo+PiBhcyBsYXN0IGFjdGl2ZSBiZWZvcmUgR1BVIHdlbnQgdG8gc2xl
ZXAsIG1lYW5pbmcgYm90aCByZXF1ZXN0ZWQgYW5kIGFjdGl2ZQo+PiBmcmVxdWVuY2llcyBjb3Vs
ZCBlbmQgdXAgYmVpbmcgcmVwb3J0ZWQgYXQgdGhlaXIgbWF4aW11bSB2YWx1ZXMgZm9yIHRoZQo+
PiBkdXJhdGlvbiBvZiB0aGUgR1BVIGlkbGUgc3RhdGUsIGl0IGJlY2FtZSBtdWNoIG1vcmUgb2J2
aW91cyB0aGF0IHRoaXMgZG9lcwo+PiBub3QgbWFrZSBzZW5zZS4KPj4KPj4gVG8gZml4IHRoaXMg
d2Ugd2lsbCBub3cgc2FtcGxlIHRoZSBmcmVxdWVuY3kgY291bnRlcnMgb25seSB3aGVuIHRoZSBH
UFUgaXMKPj4gYXdha2UuIEFzIGEgY29uc2VxdWVuY2UgcmVwb3J0ZWQgZnJlcXVlbmNpZXMgY291
bGQgYmUgcmVwb3J0ZWQgYXMgYmVsb3cKPj4gdGhlIEdQVSByZXBvcnRlZCBtaW5pbXVtIGJ1dCB0
aGF0IHNob3VsZCBiZSBtdWNoIGxlc3MgY29uZnVzaW5nIHRoYXQgdGhlCj4+IGN1cnJlbnQgc2l0
dWF0aW9uLgo+Pgo+PiB2MjoKPj4gICAqIFNwbGl0IG91dCBlYXJseSBleGl0IGNvbmRpdGlvbnMg
Zm9yIHJlYWRhYmlsaXR5LiAoQ2hyaXMpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAKPiBJJ20gaGFwcHkgaWYgeW91IGFyZSBo
YXBweS4uLgoKT2theSBwdXNoZWQsIHRoYW5rcyEKClJlZ2FyZHMsCgpUdnJ0a28KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
