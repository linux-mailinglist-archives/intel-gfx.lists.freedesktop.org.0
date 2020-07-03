Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D42138AF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 12:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87AE06E8D5;
	Fri,  3 Jul 2020 10:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D556E8D5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 10:35:57 +0000 (UTC)
IronPort-SDR: f+PE0qLsWIaPzbexyrycfJS7S0b5Y6mNO5nmUCk+W1cE8FvoKABTHG2hX2IHLcp483Kd0a7PE1
 HOCkvN6Eg9Wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="212154217"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="212154217"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 03:35:56 -0700
IronPort-SDR: 0bH22vHE89a9dG/Vdabtc42nyFydrTLif/77fnwmrBiUNCQbe10d6YD0fpcniSEE0yXMwQiskV
 BZiazx65nlLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="322384644"
Received: from iasinel-mobl.ccr.corp.intel.com (HELO [10.249.43.201])
 ([10.249.43.201])
 by orsmga007.jf.intel.com with ESMTP; 03 Jul 2020 03:35:55 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
 <20200624110515.454665-1-maarten.lankhorst@linux.intel.com>
 <b32f5114-8268-c03c-967d-0348f3bdab4b@linux.intel.com>
 <5dcfeaeb-7c6c-36be-b01e-a69ec5627fb8@linux.intel.com>
 <e44599b5-b28c-9142-c6df-a9ee62cca05f@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <df43f488-ca25-1d8b-82dc-7dc2fb968a9f@linux.intel.com>
Date: Fri, 3 Jul 2020 12:35:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <e44599b5-b28c-9142-c6df-a9ee62cca05f@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill context before taking
 ctx->mutex
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDItMDctMjAyMCBvbSAxNjo1MSBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+IE9uIDAyLzA3
LzIwMjAgMTQ6MjYsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+PiBPcCAzMC0wNi0yMDIwIG9t
IDE2OjE2IHNjaHJlZWYgVHZydGtvIFVyc3VsaW46Cj4+PiBPbiAyNC8wNi8yMDIwIDEyOjA1LCBN
YWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+PiBLaWxsaW5nIGNvbnRleHQgYmVmb3JlIHRha2lu
ZyBjdHgtPm11dGV4IGZpeGVzIGEgaGFuZyBpbgo+Pj4+IGdlbV9jdHhfcGVyc2lzdGVuY2UuY2xv
c2UtcmVwbGFjZS1yYWNlLCB3aGVyZSBsdXRfY2xvc2UKPj4+PiB0YWtlcyBvYmotPnJlc3YubG9j
ayB3aGljaCBpcyBhbHJlYWR5IGhlbGQgYnkgZXhlY2J1ZiwKPj4+PiBjYXVzaW5nIGEgc3RhbGxp
bmcgaW5kZWZpbml0ZWx5Lgo+Pj4gSWYgdGhpcyBpcyB0aGUgY29uc2VxdWVuY2Ugb2YgaW52ZXJ0
aW5nIHRoZSBsb2NraW5nIG9yZGVyIEkgdGhpbmsgeW91IG5lZWQgdG8gbW92ZSB0aGUgZml4IGVh
cmxpZXIgaW4gdGhlIHNlcmllcywgdG8gcHJlY2VkZSB0aGUgcGF0Y2ggd2hpY2ggY3JlYXRlcyB0
aGUgaW52ZXJzaW9uLiBPdGhlcndpc2UgQUZBSUNUIHRoZSByZS1vcmRlciBvZiBraWxsX2NvbnRl
eHQgdnMgbHV0X2Nsb3NlIHNlZW1zIGZpbmUuCj4+IFllYWgsIGl0IHdhcyBqdXN0IGEgYnVnZml4
IEkgZm91bmQgd2hlbiBsb29raW5nIGF0IHRoZSBjb2RlLCBpZiB5b3UgcmV2aWV3IGl0IEkgY2Fu
IHB1c2ggaXQgbm93IHNvIEkgZG9uJ3QgaGF2ZSB0byByZXNlbmQuwqAgOikKPiBZb3UgYXJlIHNh
eWluZyBpdCdzIGEgYnVnIGluIGRybS10aXAgdG9kYXk/Cj4KPiBGcm9tIHRoZSBjb21taXQ6Cj4K
PiBbIDE5MDQuMzQyODQ3XSAyIGxvY2tzIGhlbGQgYnkgZ2VtX2N0eF9wZXJzaXN0LzExNTIwOgo+
IFsgMTkwNC4zNDI4NDldICAjMDogZmZmZjg4ODIxODhlNDk2OCAoJmN0eC0+bXV0ZXgpeysuKy59
LXszOjN9LCBhdDogY29udGV4dF9jbG9zZSsweGU2LzB4ODUwIFtpOTE1XQo+IFsgMTkwNC4zNDI5
NDFdICAjMTogZmZmZjg4ODIxYzU4YTVhOCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpeysu
Ky59LXszOjN9LCBhdDogbHV0X2Nsb3NlKzB4MmMyLzB4YmEwIFtpOTE1XQo+IFsgMTkwNC4zNDMw
MzNdIDMgbG9ja3MgaGVsZCBieSBnZW1fY3R4X3BlcnNpc3QvMTE1MjE6Cj4gWyAxOTA0LjM0MzAz
NV0gICMwOiBmZmZmYzkwMDAwOGZmOTM4IChyZXNlcnZhdGlvbl93d19jbGFzc19hY3F1aXJlKXsr
LisufS17MDowfSwgYXQ6IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIrMHgxMDNkLzB4NTRjMCBbaTkx
NV0KPiBbIDE5MDQuMzQzMTU3XSAgIzE6IGZmZmY4ODgyMWM1OGE1YTggKHJlc2VydmF0aW9uX3d3
X2NsYXNzX211dGV4KXsrLisufS17MzozfSwgYXQ6IGViX3ZhbGlkYXRlX3ZtYXMrMHg2MDIvMHgy
MDEwIFtpOTE1XQo+IFsgMTkwNC4zNDMyNjddICAjMjogZmZmZjg4ODIwYWZkOTIwMCAoJnZtLT5t
dXRleC8xKXsrLisufS17MzozfSwgYXQ6IGk5MTVfdm1hX3Bpbl93dysweDMzNS8weDIzMDAgW2k5
MTVdCj4KPiBJIGRvbid0IHNlZSB0d28gaW52ZXJ0ZWQgbG9ja3MgaW4gdHdvIHRocmVhZHMgLSB3
aGF0IGlzIGhhcHBlbmluZyBjYXVzaW5nICJzdGFsbGluZyIgLSBkZWFkbG9jaz8gTGl2ZWxvY2s/
Cj4KPiBSZWdhcmRzLAo+Cj4gVHZydGtvCgpUaGlzIHBhdGNoIGNhbiBwcm9iYWJseSBiZSByZW1v
dmVkIG5vdyB0aGF0IGx1dF9sb2NrIGlzIHNwbGl0IG91dCBhcyBhIHNwaW5sb2NrLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
