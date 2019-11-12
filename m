Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C424F95BF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12E189A8C;
	Tue, 12 Nov 2019 16:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E08889A8C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:36:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="404297211"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 12 Nov 2019 08:36:19 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0B64B5C1E02; Tue, 12 Nov 2019 18:36:08 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112160941.23969-1-chris@chris-wilson.co.uk>
References: <20191112151729.13370-1-chris@chris-wilson.co.uk>
 <20191112160941.23969-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 18:36:08 +0200
Message-ID: <87h8393vd3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Flush gen7 even harder
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gbGl2ZV9i
bHQgaXMgc3RpbGwgZmFpbGluZyBvbiBoc3csIHNob3dpbmcgdGhlIGhhbGxtYXJrIG9mIGluY29o
ZXJlbmN5Lgo+IFNpbmNlIHdlIGFyZSBmYWlybHkgY2VydGFpbiB0aGF0IHRoZSBpbnRlcnJ1cHQg
aXMgYWZ0ZXIgdGhlIHNlcW5vIGlzCj4gdmlzaWJsZSwgdGhlIG90aGVyIHBvc3NpYmlsaXR5IGlz
IHRoYXQgdGhlIHNlcW5vIGlzIGJlZm9yZSB0aGUgd3JpdGVzIHRvCj4gbWVtb3J5IGFyZSBmbHVz
aGVkLiBUaHJvdyBpbiBhbiBUTEIgaW52YWxpZGF0ZSBiZWZvcmUgdGhlIGJyZWFkY3J1bWIgYXMK
PiB3ZSBhcmUgcmVhc29uYWJseSBjb25maWRlbnQgdGhhdCBmb3JjZXMgYSBDUyBzdGFsbC4KPgo+
IFJlZmVyZW5jZXM6IGY5MjI4Zjc2NTg3MyAoImRybS9pOTE1L2d0OiBUcnkgYW4gZXh0cmEgZmx1
c2ggb24gdGhlIEhhc3dlbGwgYmxpdHRlciIpCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTQ3Cj4gVGVzdGNhc2U6IGlndC9pOTE1
X3NlbGZ0ZXN0L2xpdmVfYmx0Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+IFRyeSBNaWthJ3Mgc3VnZ2VzdGlvbiBvZiBhbiBpbnZhbGlk
YXRlIGZpcnN0Lgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1
Ym1pc3Npb24uYyB8IDUgKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jp
bmdfc3VibWlzc2lvbi5jCj4gaW5kZXggZmMyOWRmNzEyODEwLi5lOGJlZTQ0YWRkMzQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwo+
IEBAIC00NTQsOCArNDU0LDkgQEAgc3RhdGljIHUzMiAqZ2VuN194Y3NfZW1pdF9icmVhZGNydW1i
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgKmNzKQo+ICAJR0VNX0JVR19PTihpOTE1X3Jl
cXVlc3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9nZ3R0ICE9IHJxLT5lbmdpbmUtPnN0YXR1
c19wYWdlLnZtYSk7Cj4gIAlHRU1fQlVHX09OKG9mZnNldF9pbl9wYWdlKGk5MTVfcmVxdWVzdF9h
Y3RpdmVfdGltZWxpbmUocnEpLT5od3NwX29mZnNldCkgIT0gSTkxNV9HRU1fSFdTX1NFUU5PX0FE
RFIpOwo+ICAKPiAtCSpjcysrID0gTUlfRkxVU0hfRFc7Cj4gLQkqY3MrKyA9IDA7Cj4gKwkqY3Mr
KyA9IChNSV9GTFVTSF9EVyB8IE1JX0lOVkFMSURBVEVfVExCIHwKPiArCQkgTUlfRkxVU0hfRFdf
U1RPUkVfSU5ERVggfCBNSV9GTFVTSF9EV19PUF9TVE9SRURXKTsKPiArCSpjcysrID0gSTkxNV9H
RU1fSFdTX1NDUkFUQ0hfQUREUiB8IE1JX0ZMVVNIX0RXX1VTRV9HVFQ7CgpJZi93aGVuIGl0IGRv
ZXNuJ3Qgd29yaywgd2UgY291bGQgdHJ5IHRvIHB1c2ggdGhlIGludmFsaWRhdGUgdG8gYm90aApw
YXJ0cyBhbmQvb3IgdGlja2xlIHRoZSBzYW1lIGNhY2hlbGluZS4KCkFja2VkLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAkqY3MrKyA9IDA7Cj4g
IAo+ICAJKmNzKysgPSBNSV9GTFVTSF9EVyB8IE1JX0ZMVVNIX0RXX09QX1NUT1JFRFcgfCBNSV9G
TFVTSF9EV19TVE9SRV9JTkRFWDsKPiAtLSAKPiAyLjI0LjAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
