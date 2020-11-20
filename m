Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B9A2BB0D3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 17:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154706E8DE;
	Fri, 20 Nov 2020 16:45:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513E56E8DE
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 16:45:07 +0000 (UTC)
IronPort-SDR: AQXJKVVS/rF8U7pbXRCavUa9dxVyDHQroLqU5bLrKtid1KwYtHCIOp1KEWK6v7LgEbcIQmv5K1
 ddcRuQN8/6Fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150767068"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="150767068"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 08:45:06 -0800
IronPort-SDR: hZ6y5BtZdryH9us8h5WytSF0jK4JBzsk+Pl+r3KbP/Fyh7937oVkCQFuDRQEW99uNYGAIhQcRh
 kmK00wIlnM1g==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="545505558"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.25.28])
 ([10.212.25.28])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 08:45:05 -0800
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
 <20201120095636.1987395-2-tvrtko.ursulin@linux.intel.com>
 <160588276123.28535.4760687203912180414@build.alporthouse.com>
 <6ccee2a4-73e4-2a7b-5872-4af19161665d@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e44a84ff-77a3-c899-5e04-df6021c5425a@intel.com>
Date: Fri, 20 Nov 2020 08:45:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <6ccee2a4-73e4-2a7b-5872-4af19161665d@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use correct lock for CT
 event handler
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8yMC8yMDIwIDY6NDMgQU0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Cj4gT24gMjAv
MTEvMjAyMCAxNDozMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDIwLTExLTIwIDA5OjU2OjM2KQo+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPj4+Cj4+PiBDVCBldmVudCBoYW5kbGVyIGlzIGNhbGxlZCB1
bmRlciB0aGUgZ3QtPmlycV9sb2NrIGZyb20gdGhlIGludGVycnVwdAo+Pj4gaGFuZGxpbmcgcGF0
aHMgc28gbWFrZSBpdCB0aGUgc2FtZSBmcm9tIHRoZSBpbml0IHBhdGguIEkgZG9uJ3QgdGhpbmsg
Cj4+PiB0aGlzCj4+PiBtaXNtYXRjaCBjYXVzZWQgYW55IGZ1bmN0aW9uYWwgaXNzdWUgYnV0IHdl
IG5lZWQgdG8gd2VhbiB0aGUgY29kZSBvZiAKPj4+IHRoZQo+Pj4gZ2xvYmFsIGk5MTUtPmlycV9s
b2NrLgo+Pgo+PiBjdF9yZWFkIGRlZmluaXRlbHkgd2FudHMgdG8gYmUgc2VyaWFsaXNlZC4gSXMg
Z3VjLT5pcnFfbG9jayB0aGUgcmlnaHQKPj4gY2hvaWNlPwo+Cj4gTm90IHVuZGVyIG15IHVuZGVy
c3RhbmRpbmcgYW5kIGFsc28gY29uZmlybWVkIGJ5IERhbmllbGUgb2ZmIGxpbmUuCj4KPj4+IFNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+
PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
YyB8IDcgKysrKy0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYyAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
Ywo+Pj4gaW5kZXggMjIwNjI2YzNhZDgxLi42YTA0NTI4MTVjNDEgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+PiBAQCAtMjAzLDcgKzIwMyw4IEBAIHN0YXRp
YyB2b2lkIGd1Y19kaXNhYmxlX2ludGVycnVwdHMoc3RydWN0IAo+Pj4gaW50ZWxfZ3VjICpndWMp
Cj4+PiDCoCDCoCBzdGF0aWMgaW50IGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpCj4+PiDCoCB7Cj4+PiAtwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gZ3VjX3RvX2d0KGd1YyktPmk5MTU7Cj4+PiArwqDCoMKgwqDCoMKgIHN0
cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKPj4+ICvCoMKgwqDCoMKgwqAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPj4+IMKgwqDCoMKgwqDCoMKg
wqAgaW50IHJldDsKPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTihndWNfY29tbXVu
aWNhdGlvbl9lbmFibGVkKGd1YykpOwo+Pj4gQEAgLTIyMyw5ICsyMjQsOSBAQCBzdGF0aWMgaW50
IGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgCj4+PiBpbnRlbF9ndWMgKmd1YykKPj4+
IMKgwqDCoMKgwqDCoMKgwqAgZ3VjX2VuYWJsZV9pbnRlcnJ1cHRzKGd1Yyk7Cj4+PiDCoCDCoMKg
wqDCoMKgwqDCoMKgIC8qIGNoZWNrIGZvciBDVCBtZXNzYWdlcyByZWNlaXZlZCBiZWZvcmUgd2Ug
ZW5hYmxlZCAKPj4+IGludGVycnVwdHMgKi8KPj4+IC3CoMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2ly
cSgmaTkxNS0+aXJxX2xvY2spOwo+Pj4gK8KgwqDCoMKgwqDCoCBzcGluX2xvY2tfaXJxKCZndC0+
aXJxX2xvY2spOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9ndWNfY3RfZXZlbnRfaGFuZGxl
cigmZ3VjLT5jdCk7Cj4+PiAtwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycSgmaTkxNS0+aXJx
X2xvY2spOwo+Pj4gK8KgwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnEoJmd0LT5pcnFfbG9jayk7
Cj4+Cj4+IFlvdSB1c2VkIGd1Yy0+aXJxX2xvY2sgaW4gdGhlIHByZXZpb3VzIHBhdGNoLiBJIHN1
Z2dlc3QKPj4gaW50ZWxfZ3VjX2N0X2V2ZW50X2hhbmRsZXIoKSBzaG91bGQgc3BlY2lmeSB3aGF0
IGxvY2sgaXQgcmVxdWlyZXMuCj4KPiBUaGVyZSBhcmUgaW5kZWVkIHRvbyBtYW55IGxvY2tzIGFu
ZCB0b28gbGl0dGxlIGFzc2VydHMgdG8gaGVscCB0aGUgCj4gcmVhZGVyLgo+Cj4gQnV0IHRoZSBv
dGhlciBlbmQgb2YgdGhlIHN0YXRlIGN0X3JlYWQgbmVlZHMgaXMgdXBkYXRlZCBmcm9tIHRoZSBH
dUMgCj4gZmlybXdhcmUgaXRzZWxmLCB3aGljaCB0aGVuIHNlbmQgdGhlIGludGVycnVwdCwgd2hp
Y2ggd2UgcHJvY2VzcyBpbjoKPgo+IMKgZ3VjX2lycV9oYW5kbGVyCj4gwqDCoCAtPiBpbnRlbF9n
dWNfdG9faG9zdF9ldmVudF9oYW5kbGVyCj4gwqDCoMKgwqDCoMKgwqAgLT4gaW50ZWxfZ3VjX2N0
X2V2ZW50X2hhbmRsZXIKPgo+IEFuZCB0aGlzIHNpZGUgcnVucyB1bmRlciB0aGUgZ3QtPmlycV9s
b2NrLgo+CgpndWMtPmlycV9sb2NrIGlzIG5vdCB2ZXJ5IGFwdGx5IG5hbWVkLCBhcyBpdCBpcyB1
c2VkIHRvIHByb3RlY3QgYWNjZXNzIAp0byB0aGUgZ3VjIGludGVycnVwdCBzdGF0ZSB2YXJpYWJs
ZXMgKG1zZ19lbmFibGVkX21hc2ssIG1taW9fbXNnKSBhbmQgCmhhcyBub3RoaW5nIHRvIGRvIHdp
dGggcHJvdGVjdGluZyB0aGUgaW50ZXJydXB0IGhhbmRsZXIuIEZvciB0aGF0LCBhcyAKVHZydGtv
IHNhaWQsIHRoZSBHdUMgY29kZSBjYW4gdXNlIHRoZSBzYW1lIGxvY2sgdGhlIHJlc3Qgb2YgdGhl
IEdUIHVzZXMsIAppLmUuIGd0LT5pcnFfbG9jay4gTWF5YmUgd2UgY2FuIHJlbmFtZSBndWMtPmly
cV9sb2NrIHRvIApndWMtPm1zZ19zdGF0ZV9sb2NrIGZvciBjbGFyaXR5PwoKQW55d2F5LCB0aGlz
IGlzOgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KCkRhbmllbGUKCj4gUmVnYXJkcywKPgo+IFR2cnRrbwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
