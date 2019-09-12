Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 207DFB148A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 20:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4706EDF8;
	Thu, 12 Sep 2019 18:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC666EDF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 18:45:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 11:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="190075749"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2019 11:45:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190912131800.12420-1-chris@chris-wilson.co.uk>
 <20190912132313.12751-1-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <750e1ffd-5c96-56fe-bd5e-72824f019680@intel.com>
Date: Thu, 12 Sep 2019 11:45:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912132313.12751-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Disable preemption while
 being debugged
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

CgpPbiA5LzEyLzE5IDY6MjMgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBzZWUgZmFpbHVy
ZXMgd2hlcmUgdGhlIGNvbnRleHQgY29udGludWVzIGV4ZWN1dGluZyBwYXN0IGEKPiBwcmVlbXB0
aW9uIGV2ZW50LCBldmVudHVhbGx5IGxlYWRpbmcgdG8gc2l0dWF0aW9ucyB3aGVyZSBhIHJlcXVl
c3QgaGFzCj4gZXhlY3V0ZWQgYmVmb3JlIHdlIGhhdmUgZXZlbnQgc3VibWl0dGVkIGl0IHRvIEhX
ISBJdCBzZWVtcyBsaWtlIHRnbCBpcwoKQUZBSUsgb24gVEdMIHRoZSBDUyBjYW4gZGV0ZWN0IHRh
aWwgdXBkYXRlcyBpbiB0aGUgaW1hZ2Ugb2YgYSBydW5uaW5nIApjb250ZXh0IGV2ZW4gaWYgdGhl
IGxyYyBoYXNuJ3QgYmVlbiByZXN1Ym1pdHRlZCB2aWEgdGhlIGVsc3AuIENvdWxkIHRoYXQgCmJl
IHJlbGF0ZWQgdG8gdGhlIGVhcmx5IGV4ZWN1dGlvbiBvZiByZXF1ZXN0cz8gSSBoYXZlbid0IGxv
b2tlZCBhdCB0aGUgCmZhaWx1cmUgbG9ncywgc28gZm9yZ2l2ZSBtZSBpZiBJJ20gY29tcGxldGVs
eSBvZmYtbWFyayA6KQoKRGFuaWVsZQoKPiBpZ25vcmluZyBvdXIgUklOR19UQUlMIHVwZGF0ZXMs
IGJ1dCBtb3JlIGxpa2VseSBpcyB0aGF0IHRoZXJlIGlzIGEKPiBtaXNzaW5nIHVwZGF0ZSByZXF1
aXJlZCBmb3Igb3VyIHNlbWFwaG9yZSB3YWl0cyBhcm91bmQgcHJlZW1wdGlvbi4KPiAKPiB2Mjog
QW5kIGRpc2FibGUgaW50ZXJuYWwgc2VtYXBob3JlIHVzYWdlCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAzICsrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYyAgICAgfCAxICsKPiAgIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA0N2Q3NjZjY2VhNzEu
LmEzZjBlNDk5OTc0NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAg
LTI5MzksNiArMjkzOSw5IEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1p
c3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCQkJZW5naW5lLT5mbGFn
cyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKPiAgIAl9Cj4gICAKPiArCWlmIChJTlRF
TF9HRU4oZW5naW5lLT5pOTE1KSA+PSAxMikgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcg
Ki8KPiArCQllbmdpbmUtPmZsYWdzICY9IH5JOTE1X0VOR0lORV9IQVNfU0VNQVBIT1JFUzsKPiAr
Cj4gICAJaWYgKGVuZ2luZS0+Y2xhc3MgIT0gQ09QWV9FTkdJTkVfQ0xBU1MgJiYgSU5URUxfR0VO
KGVuZ2luZS0+aTkxNSkgPj0gMTIpCj4gICAJCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVf
SEFTX1JFTEFUSVZFX01NSU87Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gaW5kZXgg
YjNjYzg1NjA2OTZiLi4yY2EzNGE1Y2Y3ZDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMK
PiBAQCAtNzk4LDYgKzc5OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2lu
Zm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7Cj4gICAJLmVuZ2luZV9tYXNrID0KPiAgIAkJ
QklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1My
KSwKPiAgIAkuaGFzX3JjNiA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVnZ2luZyAq
Lwo+ICsJLmhhc19sb2dpY2FsX3JpbmdfcHJlZW1wdGlvbiA9IGZhbHNlLCAvKiBYWFggZGlzYWJs
ZWQgZm9yIGRlYnVnZ2luZyAqLwo+ICAgfTsKPiAgIAo+ICAgI3VuZGVmIEdFTgo+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
