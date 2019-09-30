Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE81C1ED6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 12:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90326E239;
	Mon, 30 Sep 2019 10:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD566E239
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 10:19:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 03:19:17 -0700
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="190213784"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 30 Sep 2019 03:19:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190929083338.24816-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <944064fb-1584-42db-5b0d-ce13ca461834@linux.intel.com>
Date: Mon, 30 Sep 2019 11:19:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190929083338.24816-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Initialise breadcrumb lists on
 the virtual engine
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

Ck9uIDI5LzA5LzIwMTkgMDk6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaXRoIGRlZmVycmlu
ZyB0aGUgYnJlYWRjcnVtYiBzaWduYWxsaW5nIHRvIHRoZSB2aXJ0dWFsIGVuZ2luZSAodGhhbmtz
Cj4gcHJlZW1wdC10by1idXN5KSB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGUgbGlzdHMgYW5kIGly
cS13b3JrZXIgYXJlIHJlYWR5Cj4gdG8gc2VuZCBhIHNpZ25hbC4KPiAKPiBGaXhlczogY2IyMzc3
YTkxOWJiICgiZHJtL2k5MTU6IEZpeHVwIHByZWVtcHQtdG8tYnVzeSB2cyByZXNldCBvZiBhIHZp
cnR1YWwgcmVxdWVzdCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKPiAg
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gaW5kZXggNDVmZTg3YTU5Nzk2Li5kZWQ2MThiY2E1ODcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC00MTc3LDYgKzQxNzcsNyBAQCBpbnRlbF9l
eGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKPiAg
IAlzbnByaW50Zih2ZS0+YmFzZS5uYW1lLCBzaXplb2YodmUtPmJhc2UubmFtZSksICJ2aXJ0dWFs
Iik7Cj4gICAKPiAgIAlpbnRlbF9lbmdpbmVfaW5pdF9hY3RpdmUoJnZlLT5iYXNlLCBFTkdJTkVf
VklSVFVBTCk7Cj4gKwlpbnRlbF9lbmdpbmVfaW5pdF9icmVhZGNydW1icygmdmUtPmJhc2UpOwo+
ICAgCj4gICAJaW50ZWxfZW5naW5lX2luaXRfZXhlY2xpc3RzKCZ2ZS0+YmFzZSk7Cj4gICAKPiAK
Cl9faW50ZWxfZ3Rfc2V0X3dlZGdlZCAtPiBub3Bfc3VibWl0X3JlcXVlc3Q/IEJ1dCBob3cgZG9l
cyB0aGUgY29tbWl0IApmcm9tIGZpeGVzIGNvbWUgaW50byBwbGF5PyBUaGF0IG9uZSB3YXMgYWJv
dXQgbm90IGxvb2tpbmcgYXQgdGhlIGVuZ2luZSAKdGltZWxpbmUgd2hlbiB3ZSBkZXRlY3Qgdmly
dHVhbCByZXF1ZXN0IGlzIGhhbmdpbmcgYXMgZmFyIGFzIEkgcmVtZW1iZXIuCgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
