Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A97E9219D2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 16:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1696C898EA;
	Fri, 17 May 2019 14:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F6C898EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 14:29:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 07:29:03 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 07:29:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190515130052.4475-1-chris@chris-wilson.co.uk>
 <20190515130052.4475-4-chris@chris-wilson.co.uk>
 <1b639da1-0c28-fead-19be-814e2a99a1b3@linux.intel.com>
 <155809981690.12244.14203829964352634007@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7b374161-4418-f106-867f-fe5517299197@linux.intel.com>
Date: Fri, 17 May 2019 15:29:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155809981690.12244.14203829964352634007@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Downgrade NEWCLIENT to
 non-preemptive
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMTQ6MzAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE3IDEzOjU1OjQ4KQo+Pgo+PiBPbiAxNS8wNS8yMDE5IDE0OjAw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBDb21taXQgMTQxM2IyYmMwNzE3ICgiZHJtL2k5MTU6
IFRyaW0gTkVXQ0xJRU5UIGJvb3N0aW5nIikgaGFkIHRoZQo+Pj4gaW50ZW5kZWQgY29uc2VxdWVu
Y2Ugb2Ygbm90IGFsbG93aW5nIGEgc2VxdWVuY2Ugb2Ygd29yayB0aGF0IG1lcmVseQo+Pj4gY3Jv
c3NlZCBpbnRvIGEgbmV3IGVuZ2luZSB0aGUgcHJpdmlsZWdlIHRvIGJlIHByb21vdGVkIHRvIE5F
V0NMSUVOVAo+Pgo+PiBXaGF0IGRvIHlvdSBtZWFuIHdpdGggY3Jvc3NlZCBpbnRvIGEgbmV3IGVu
Z2luZT8gQXQgZmlyc3QgSSB0aG91Z2h0IHRoZQo+PiBzdGF0ZW1lbnQgaW1wbGllcyB0aGUgZW5n
aW5lIHRpbWVsaW5lIHdhcyB1c2VkIHRvIHF1ZXJ5IGZvciBwcmV2aW91cwo+PiByZXF1ZXN0LCBi
dXQgdGhhdCdzIG5vdCB0cnVlLgo+IAo+IE91ciBwcmV2aW91cyB0ZXN0IHdhcyBpZiBhbGwgcHJl
dmlvdXMgcmVxdWVzdHMgaW4gdGhlIHJpbmcgKGFsb25nIHRoZQo+IGVuZ2luZSB0aW1lbGluZSkg
d2VyZSBjb21wbGV0ZSB0aGVuIGdpdmUgdGhpcyBuZXcgcmVxdWVzdCBhIGJvb3N0LiBUaGF0Cj4g
YWxzbyBnYXZlIHRoZSBib29zdCB0byBhbnkgZGVwZW5kZW5jaWVzIGluIG90aGVyIGNvbnRleHRz
IGFuZCBhY3Jvc3MKPiBlbmdpbmVzIC0tIHRoZSBjb25zaWRlcmF0aW9uIHRoZXJlIHdhcyBmb3Ig
YSBkaXNwbGF5IHNlcnZlciB3aG8gd2FzIG9ubHkKPiBibGl0dGluZyBmcm9tIGNsaWVudCBidWZm
ZXJzIGludG8gdGhlIGZyYW1lYnVmZmVyIHRvIGdldCBhbiBlYXJseSBib29zdAo+IGFuZCBidW1w
IGFsbCBvZiBpdHMgY2xpZW50cyBpbiBvcmRlciB0byBiZSBhaGVhZCBvZiB0aGUgbmV4dCB2Ymxh
bmsuIFRoZQo+IHNlY29uZCB0aG91Z2h0IHdhcyB0aGF0IHdhcyBhIGJpdCB0b28gd2lkZSwgYnV0
IG5vdyB3ZSBoYXZlIGV2aWRlbmNlCj4gZnJvbSB3aWxsLWl0LXNjYWxlIHN0eWxlIG92ZXJzYXR1
cmF0aW9uIG9mIHRyYW5zY29kZSB3b3JrIHRoYXQgd2Ugc2hvdWxkCj4gdGFrZSBpbnRvIGFjY291
bnQgdGhlIHdvcmtsb2FkcyBhY3Jvc3MgZW5naW5lcyBhbmQgYWNyb3NzIGNvbnRleHRzLgo+IAo+
IEkgdGhpbmsgdGhlc2UgdHdvIHBhdGNoZXMgYXJlIHF1aXRlIG5pY2UgaW4gdGhhdCBlZmZlY3Qs
IHdvcmsgaXMKPiBlc3NlbnRpYWxseSBib3R0bGVkIHVwIHVudGlsIHJlcXVpcmVkIGFuZCBzbyBz
aG91bGQgYXJyaXZlIGF0IHRoZSBHUFUgaW4KPiBiYXRjaGVzIG9mIHJlbGF0ZWQgd29yayAoYnV0
IHdlIGRvbid0IHByZXZlbnQgd29yayBmcm9tIGJlaW5nIGV4ZWN1dGVkCj4gaWYgdGhlIEdQVSBp
cyBpZGxlKS4gVGhlbiBjb21iaW5lZCB3aXRoIHRoZSB0aW1lc2xpY2Ugd2Ugd2lsbAo+IHJvdW5k
LXJvYmluIGJldHdlZW4gdGhlIHdvcmsgcmVxdWlyZWQgZm9yIHRoZSBleHRlcm5hbCBvYnNlcnZl
ciB0byBtYWtlCj4gcHJvZ3Jlc3MgYmVmb3JlIGRvaW5nIG90aGVyIHdvcmsuCj4gCj4gSXQgbWFr
ZXMgYSBwcmV0dHkgcGljdHVyZSBpbiBteSBoZWFkIGFuZCBzbyBmYXIgbG9va3MgcmVzcGVjdGFi
bGUgaW4gdGhlCj4gd3NpbSBjb21wYXJpc29ucyAoYXMgd2VsbCBhcyB0aGUgc2FtcGxlIHRyYW5z
Y29kZSByZXByb2R1Y2VycykuIFRoZQo+IGNhc3VhbHR5IGlzIHRoZSByZWFsdGltZS1yZXNwb25z
ZSB1bmRlciBsb2FkIGhhcyBsb3N0IGl0cyBwcmVlbXB0aXZlCj4gcG93ZXIsIGFuZCBpcyByZWxl
Z2F0ZWQgdG8ganVzdCB0b3dhcmRzIHRoZSBoZWFkIG9mIHRoZSBxdWV1ZSBhcyBvcHBvc2VkCj4g
dG8gdGhlIGZyb250LiBPbiB0aGUgb3RoZXIgaGVhZCwgaXQgbWFrZXMgV0FJVCBmYXIsIGZhciBs
ZXNzIHNwZWNpYWwuCgpTb3JyeSBmb3Igc29tZSByZWFzb24gSSB3YXMgdGhpbmtpbmcgb2YgYSBz
aW5nbGUgdGltZWxpbmUgY29udGV4dHMgd2hlbiAKdGhpbmtpbmcgYWJvdXQgdGhlIGNvbW1pdCBt
ZXNzYWdlLiA6KCAgTnVtYmVycyBwcm92ZSB3ZSBuZWVkIGl0Li4KClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
