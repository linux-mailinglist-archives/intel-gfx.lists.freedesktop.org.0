Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD925F6E7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 11:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215906E2A5;
	Mon,  7 Sep 2020 09:53:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E6B6E2A5;
 Mon,  7 Sep 2020 09:53:17 +0000 (UTC)
IronPort-SDR: D+fWiLWFGrZh7+SY1Y2nVJf6HPB7sAHRz5VuTe+UjaObjsVKrCQ2HV/+yZAgFS159KW8xAqn/I
 u+Q6QQiE6DSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="155382549"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="155382549"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 02:53:17 -0700
IronPort-SDR: A80BfqeAKi/YF/QKG7cV/uc3S9UQLNXZjDUxKkWH8ktp0OorPx1p29g+HKdz8mo+X9L6EeU4Ni
 vv8EglLCYWAw==
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="479587812"
Received: from orozenbo-mobl1.ger.corp.intel.com (HELO [10.214.214.51])
 ([10.214.214.51])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 02:53:15 -0700
To: Petri Latvala <petri.latvala@intel.com>
References: <20200904130607.133724-1-tvrtko.ursulin@linux.intel.com>
 <20200904130607.133724-2-tvrtko.ursulin@linux.intel.com>
 <20200907093117.GX7444@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b7045601-1b6a-e4e4-d116-db4eac9b8111@linux.intel.com>
Date: Mon, 7 Sep 2020 10:53:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907093117.GX7444@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] intel-gpu-top: Support
 for client stats
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA3LzA5LzIwMjAgMTA6MzEsIFBldHJpIExhdHZhbGEgd3JvdGU6Cj4gT24gRnJpLCBTZXAg
MDQsIDIwMjAgYXQgMDI6MDY6MDdQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+IEZy
b206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Cj4+IEFkZHMg
c3VwcG9ydCBmb3IgcGVyLWNsaWVudCBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgaTkxNSBleHBvcnRz
IGluIHN5c2ZzCj4+IGFuZCBwcm9kdWNlcyBvdXRwdXQgbGlrZSB0aGUgYmVsb3c6Cj4+Cj4+ID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09Cj4+IGludGVsLWdwdS10b3AgLSAgOTM1LyA5MzUgTUh6OyAgICAwJSBS
QzY7IDE0LjczIFdhdHRzOyAgICAgMTA5NyBpcnFzL3MKPj4KPj4gICAgICAgIElNQyByZWFkczog
ICAgIDE0MDEgTWlCL3MKPj4gICAgICAgSU1DIHdyaXRlczogICAgICAgIDQgTWlCL3MKPj4KPj4g
ICAgICAgICAgICBFTkdJTkUgICAgICBCVVNZICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgTUlfU0VNQSBNSV9XQUlUCj4+ICAgICAgIFJlbmRlci8zRC8wICAgNjMuNzMlIHzilojiloji
lojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojiloggICAgICAg
ICAgIHwgICAgICAzJSAgICAgIDAlCj4+ICAgICAgICAgQmxpdHRlci8wICAgIDkuNTMlIHziloji
lojiloogICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgNiUgICAgICAwJQo+PiAgICAg
ICAgICAgVmlkZW8vMCAgIDM5LjMyJSB84paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI
4paKICAgICAgICAgICAgICAgICAgfCAgICAgMTYlICAgICAgMCUKPj4gICAgICAgICAgIFZpZGVv
LzEgICAxNS42MiUgfOKWiOKWiOKWiOKWiOKWiyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgMCUgICAgICAwJQo+PiAgICBWaWRlb0VuaGFuY2UvMCAgICAwLjAwJSB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAgIDAlICAgICAgMCUKPj4KPj4gICAgUElEICAgICAgICAg
ICAgTkFNRSAgICAgUkNTICAgICAgICAgIEJDUyAgICAgICAgICBWQ1MgICAgICAgICBWRUNTCj4+
ICAgNDA4NCAgICAgICAgZ2VtX3dzaW0gfOKWiOKWiOKWiOKWiOKWiOKWjCAgICAgfHziloggICAg
ICAgICAgfHwgICAgICAgICAgIHx8ICAgICAgICAgICB8Cj4+ICAgNDA4NiAgICAgICAgZ2VtX3dz
aW0gfOKWiOKWjCAgICAgICAgIHx8ICAgICAgICAgICB8fOKWiOKWiOKWiCAgICAgICAgfHwgICAg
ICAgICAgIHwKPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4KPj4gQXBhcnQgZnJvbSB0aGUgZXhpc3Rp
bmcgcGh5c2ljYWwgZW5naW5lIHV0aWxpemF0aW9uIGl0IG5vdyBhbHNvIHNob3dzCj4+IHV0aWxp
emF0aW9uIHBlciBjbGllbnQgYW5kIHBlciBlbmdpbmUgY2xhc3MuCj4+Cj4+IHYyOgo+PiAgICog
VmVyc2lvbiB0byBtYXRjaCByZW1vdmFsIG9mIGdsb2JhbCBlbmFibGVfc3RhdHMgdG9nZ2xlLgo+
PiAgICogUGx1cyB2YXJpb3VzIGZpeGVzLgo+Pgo+PiB2MzoKPj4gICAqIFN1cHBvcnQgYnJpZWYg
YmFja3dhcmQganVtcHMgaW4gY2xpZW50IHN0YXRzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gICB0b29scy9p
bnRlbF9ncHVfdG9wLmMgfCA1MzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUyOCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYyBiL3Rvb2xzL2lu
dGVsX2dwdV90b3AuYwo+PiBpbmRleCBjYWUwMWMyNWI5MjAuLjllYWM1NjllNzVkZSAxMDA2NDQK
Pj4gLS0tIGEvdG9vbHMvaW50ZWxfZ3B1X3RvcC5jCj4+ICsrKyBiL3Rvb2xzL2ludGVsX2dwdV90
b3AuYwo+PiBAQCAtNjc5LDIzICs2NzksMzQ3IEBAIHN0YXRpYyB2b2lkIHBtdV9zYW1wbGUoc3Ry
dWN0IGVuZ2luZXMgKmVuZ2luZXMpCj4+ICAgCX0KPj4gICB9Cj4+ICAgCj4+ICtlbnVtIGNsaWVu
dF9zdGF0dXMgewo+PiArCUZSRUUgPSAwLCAvKiBtYnogKi8KPj4gKwlBTElWRSwKPj4gKwlQUk9C
RQo+PiArfTsKPj4gKwo+PiArc3RydWN0IGNsaWVudHM7Cj4+ICsKPj4gK3N0cnVjdCBjbGllbnQg
ewo+PiArCXN0cnVjdCBjbGllbnRzICpjbGllbnRzOwo+PiArCj4+ICsJZW51bSBjbGllbnRfc3Rh
dHVzIHN0YXR1czsKPj4gKwl1bnNpZ25lZCBpbnQgaWQ7Cj4+ICsJdW5zaWduZWQgaW50IHBpZDsK
Pj4gKwljaGFyIG5hbWVbMTI4XTsKPj4gKwl1bnNpZ25lZCBpbnQgc2FtcGxlczsKPj4gKwl1bnNp
Z25lZCBsb25nIHRvdGFsOwo+PiArCXN0cnVjdCBlbmdpbmVzICplbmdpbmVzOwo+PiArCXVuc2ln
bmVkIGxvbmcgKnZhbDsKPj4gKwl1aW50NjRfdCAqbGFzdDsKPj4gK307Cj4+ICsKPj4gK3N0cnVj
dCBlbmdpbmVfY2xhc3Mgewo+PiArCXVuc2lnbmVkIGludCBjbGFzczsKPj4gKwljb25zdCBjaGFy
ICpuYW1lOwo+PiArCXVuc2lnbmVkIGludCBudW1fZW5naW5lczsKPj4gK307Cj4+ICsKPj4gK3N0
cnVjdCBjbGllbnRzIHsKPj4gKwl1bnNpZ25lZCBpbnQgbnVtX2NsYXNzZXM7Cj4+ICsJc3RydWN0
IGVuZ2luZV9jbGFzcyAqY2xhc3M7Cj4+ICsKPj4gKwl1bnNpZ25lZCBpbnQgbnVtX2NsaWVudHM7
Cj4+ICsJc3RydWN0IGNsaWVudCAqY2xpZW50Owo+PiArfTsKPj4gKwo+PiArI2RlZmluZSBmb3Jf
ZWFjaF9jbGllbnQoY2xpZW50cywgYywgdG1wKSBcCj4+ICsJZm9yICgodG1wKSA9IChjbGllbnRz
KS0+bnVtX2NsaWVudHMsIGMgPSAoY2xpZW50cyktPmNsaWVudDsgXAo+PiArCSAgICAgKHRtcCA+
IDApOyAodG1wKS0tLCAoYykrKykKPj4gKwo+PiArc3RhdGljIHN0cnVjdCBjbGllbnRzICppbml0
X2NsaWVudHModm9pZCkKPj4gK3sKPj4gKwlzdHJ1Y3QgY2xpZW50cyAqY2xpZW50cyA9IG1hbGxv
YyhzaXplb2YoKmNsaWVudHMpKTsKPj4gKwo+PiArCXJldHVybiBtZW1zZXQoY2xpZW50cywgMCwg
c2l6ZW9mKCpjbGllbnRzKSk7Cj4+ICt9Cj4+ICsKPj4gKyNkZWZpbmUgU1lTRlNfQ0xJRU5UUyAi
L3N5cy9jbGFzcy9kcm0vY2FyZDAvY2xpZW50cyIKPiAKPiBOb3cgdGhhdCBpbnRlbF9ncHVfdG9w
IHN1cHBvcnRzIGRldmljZSBzZWxlY3Rpb24sIHRoaXMgcGF0aCB3b3Jrcwo+IGV2ZXJ5IHRpbWUg
b25seSA2MCUgb2YgdGhlIHRpbWUsIHJpZ2h0PwoKR2FoIHllcy4uIHRoYW5rcy4gSSBjaGVycnkg
cGlja2VkIGZyb20gdGhlIHdyb25nIGJyYW5jaC4gSSBkaWQgYWxyZWFkeSAKaGF2ZSB0aGlzIHVw
ZGF0ZWQgZm9yIGRldmljZSBzZWxlY3Rpb24sIHNvbWV3aGVyZS4gV2lsbCBmaW5kIGl0LgoKUmVn
YXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
