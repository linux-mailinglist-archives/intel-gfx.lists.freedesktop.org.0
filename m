Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40E932DC2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 12:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5284889203;
	Mon,  3 Jun 2019 10:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4152889203;
 Mon,  3 Jun 2019 10:39:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 03:39:26 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2019 03:39:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, 
 igt-dev@lists.freedesktop.org
References: <20190529132421.27905-1-chris@chris-wilson.co.uk>
 <dcc8f38f-2c9b-cb95-3061-0384e95fb7a2@linux.intel.com>
 <20190603103253.GZ22949@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2165d563-140f-1fb8-5234-c0099892fe96@linux.intel.com>
Date: Mon, 3 Jun 2019 11:39:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603103253.GZ22949@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Fix
 intel_get_current_physical_engine() iterator
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

Ck9uIDAzLzA2LzIwMTkgMTE6MzIsIFBldHJpIExhdHZhbGEgd3JvdGU6Cj4gT24gTW9uLCBKdW4g
MDMsIDIwMTkgYXQgMTE6MTk6NDhBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+
IE9uIDI5LzA1LzIwMTkgMTQ6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPj4+IElmIHdlIHJ1biBv
dXQgb2YgZW5naW5lcywgaW50ZWxfZ2V0X2N1cnJlbnRfcGh5c2ljYWxfZW5naW5lKCkgZGVncmFk
ZXMKPj4+IGludG8gYW4gaW5maW5pdGUgbG9vcCBhcyBhbHRob3VnaCBpdCBhZHZhbmNlZCB0aGUg
aXRlcmF0b3IsIGl0IGRpZCBub3QKPj4+IHVwZGF0ZSBpdHMgbG9jYWwgZW5naW5lIHBvaW50ZXIu
Cj4+Cj4+IFdlIGhhZCBvbmUgaW5maW5pdGUgbG9vcCBpbiB0aGVyZSBhbHJlYWR5Li4gQUZBSVIg
aXQgd2FzIG9uIG9uZSBlbmdpbmUKPj4gcGxhdGZvcm1zLiBEb2VzIHRoZSBuZXcgaW5jYXJuYXRp
b24gaGFwcGVuIGFjdHVhbGx5IHZpYSB0aGUKPj4gX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUg
aXRlcmF0b3Igb3IgcGVyaGFwcyBvbmx5IHdoZW4gY2FsbGluZwo+PiBpbnRlbF9nZXRfY3VycmVu
dF9waHlzaWNhbF9lbmdpbmUgYWZ0ZXIgbG9vcCBlbmQ/IFdoeSBpdCB3YXNuJ3Qgc2VlbiBpbgo+
PiB0ZXN0aW5nPwo+IAo+IAo+IFRoZSBuZXcgaW5jYXJuYXRpb24gaGFwcGVucyB3aXRoIGEgd2Vk
Z2VkIEdQVS4gVGhhdCdzIGEgY2FzZSB0aGF0J3MKPiBoYXJkIHRvIGNvbWUgYnkgaW4gdGVzdGlu
Zy4KCjEuCkNvbG91ciBtZSBjb25mdXNlZC4gOikgSG93IGRvZXMgYSB3ZWRnZWQgR1BVIGFmZmVj
dCB0aGlzIGxvb3A/CgoyLgpBcmUgd2UgbWlzc2luZyBhIHRlc3Q/IFdlZGdlLWRvLXN0dWZmLXVu
d2VkZ2Ugc2hvdWxkIGJlIGVhc3kgdG8gd3JpdGUuCgpSZWdhcmRzLAoKVHZydGtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
