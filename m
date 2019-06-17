Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F202E480AF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 13:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C2689144;
	Mon, 17 Jun 2019 11:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E42089144
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 11:30:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 04:30:17 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.252.2.103]) ([10.252.2.103])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2019 04:30:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617112036.9373-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6f6ca280-99bb-fa4f-aa28-35cdc94a3f4a@intel.com>
Date: Mon, 17 Jun 2019 12:30:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190617112036.9373-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gtt: Serialise both updates to
 PDE and our shadow
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTcvMDYvMjAxOSAxMjoyMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEN1cnJlbnRseSwgd2Ug
cGVyZm9ybSBhIGxvY2tlZCB1cGRhdGUgb2YgdGhlIHNoYWRvdyBlbnRyeSB3aGVuCj4gYWxsb2Nh
dGluZyBhIHBhZ2UgZGlyZWN0b3J5IGVudHJ5IHN1Y2ggdGhhdCBpZiB0d28gY2xpZW50cyBhcmUK
PiBjb25jdXJyZW50bHkgYWxsb2NhdGluZyBuZWlnaGJvdXJpbmcgcmFuZ2VzIHdlIG9ubHkgaW5z
ZXJ0IG9uZSBuZXcgZW50cnkKPiBmb3IgdGhlIHBhaXIgb2YgdGhlbS4gSG93ZXZlciwgd2UgYWxz
byBuZWVkIHRvIHNlcmlhbGlzZSBib3RoIGNsaWVudHMKPiB3cnQgdG8gdGhlIGFjdHVhbCBlbnRy
eSBpbiB0aGUgSFcgdGFibGUsIG9yIGVsc2Ugd2UgbWF5IGFsbG93IG9uZSBjbGllbnQKPiBvciBl
dmVuIGEgdGhpcmQgY2xpZW50IHRvIHByb2NlZWQgYWhlYWQgb2YgdGhlIEhXIHdyaXRlLiBNeSBo
YW5kd2F2ZQo+IGJlZm9yZSB3YXMgdGhhdCB1bmRlciB0aGUgX3BhdGhvbG9naWNhbF8gY29uZGl0
aW9uIHdlIHdvdWxkIHNlZSB0aGUKPiBzY3JhdGNoIGVudHJ5IGluc3RlYWQgb2YgdGhlIGV4cGVj
dGVkIGVudHJ5LCBjYXVzaW5nIGEgdGVtcG9yYXJ5Cj4gZ2xpdGNoLiBUaGF0IHN0YXJ2YXRpb24g
Y29uZGl0aW9uIHdpbGwgZXZlbnR1YWxseSBzaG93IHVwIGluIHByYWN0aWNlLCBzbwo+IGZpeCBp
dC4KPiAKPiBUaGUgcmVhc29uIGZvciB0aGUgcHJldmlvdXMgY2hlYXQgd2FzIHRvIGF2b2lkIGhh
dmluZyB0byBmcmVlIHRoZSBleHRyYQo+IGFsbG9jYXRpb24gd2hpbGUgdW5kZXIgdGhlIHNwaW5s
b2NrLiBOb3csIHdlIGtlZXAgdGhlIGV4dHJhIGVudHJ5Cj4gYWxsb2NhdGVkIHVudGlsIHRoZSBl
bmQgaW5zdGVhZC4KPiAKPiB2MjogRml4IGVycm9yIHBhdGhzIGZvciBnZW42Cj4gCj4gRml4ZXM6
IDFkMWI1NDkwYjkxYyAoImRybS9pOTE1L2d0dDogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggc2VyaWFs
aXNhdGlvbiBmb3IgYWxsb2NhdGlvbiIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
