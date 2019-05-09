Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F3187B9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 11:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0FD89708;
	Thu,  9 May 2019 09:27:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CDED89708;
 Thu,  9 May 2019 09:27:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 02:27:43 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2019 02:27:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-2-tvrtko.ursulin@linux.intel.com>
 <155731785242.28545.4596359087636884591@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <93570e4a-0389-d639-7250-4afa2593115f@linux.intel.com>
Date: Thu, 9 May 2019 10:27:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155731785242.28545.4596359087636884591@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/21] scripts/trace.pl: Fix
 after intel_engine_notify removal
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA1LzIwMTkgMTM6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjM4KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBZnRlciB0aGUgcmVtb3ZhbCBvZiBlbmdp
bmUgZ2xvYmFsIHNlcW5vcyBhbmQgdGhlIGNvcnJlc3BvbmRpbmcKPj4gaW50ZWxfZW5naW5lX25v
dGlmeSB0cmFjZXBvaW50cyB0aGUgc2NyaXB0IG5lZWRzIHRvIGJlIGFkanVzdGVkIHRvIGNvcGUK
Pj4gd2l0aCB0aGUgbmV3IHN0YXRlIG9mIHRoaW5ncy4KPj4KPj4gVG8ga2VlcCB3b3JraW5nIGl0
IHN3aXRjaGVzIG92ZXIgdXNpbmcgdGhlIGRtYV9mZW5jZTpkbWFfZmVuY2Vfc2lnbmFsZWQ6Cj4+
IHRyYWNlcG9pbnQgYW5kIGtlZXBzIG9uZSBleHRyYSBpbnRlcm5hbCBtYXAgdG8gY29ubmVjdCB0
aGUgY3R4LXNlcW5vIHBhaXJzCj4+IHdpdGggZW5naW5lcy4KPiAKPiBJcyB0aGUgbWFwIHN1aXRh
YmxlIGZvciB0aGUgcGxhbm5lZCAoYnkgbWUpCj4gCj4gCXMvaTkxNV9yZXF1ZXN0X3dhaXRfYmVn
aW4vZG1hX2ZlbmNlX3dhaXRfYmVnaW4vCj4gCj4gSSBndWVzcyBpdCBzaG91bGQgYmUuCgpJIHRo
aW5rIGl0IHdvdWxkIGJlIHdvcmthYmxlLiBPbmUgY29tcGxpY2F0aW9uIHdvdWxkIGJlIHRoYXQg
ZW5naW5lIGlzIApub3QgZ3VhcmFudGVlZCB0byBiZSBrbm93biBhaGVhZCBvZiB0aGUgd2FpdCwg
bGlrZSBpdCBpcyBhaGVhZCBvZiB0aGUgCnNpZ25hbC4gQnV0IHNpbmNlIGN0eC5zZXFubyBpcyB1
bmlxdWUgaXQgY2FuIGJlIHRyYWNrZWQgYW5kIGFkZGVkIGxhdGVyIApJIHRoaW5rLgoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
