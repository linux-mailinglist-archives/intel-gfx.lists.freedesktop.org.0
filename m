Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1BD102492
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 13:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B79F66E88D;
	Tue, 19 Nov 2019 12:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 042246E1BB;
 Tue, 19 Nov 2019 12:37:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 04:37:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="200338932"
Received: from unknown (HELO [10.249.33.237]) ([10.249.33.237])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2019 04:37:18 -0800
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191107173820.2wj2b6ziehhnmoyo@ahiler-desk1.fi.intel.com>
 <157316097482.2228.167580740381610009@skylake-alporthouse-com>
 <20191108090405.yes2ktbqngt3vtlj@ahiler-desk1.fi.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <59485e6b-e06f-29c7-14d4-30de572e9022@intel.com>
Date: Tue, 19 Nov 2019 14:37:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191108090405.yes2ktbqngt3vtlj@ahiler-desk1.fi.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [ANNOUNCEMENT] Documenting tests with igt_describe()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDgvMTEvMjAxOSAxMTowNCwgQXJrYWRpdXN6IEhpbGVyIHdyb3RlOgo+IE9uIFRodSwgTm92
IDA3LCAyMDE5IGF0IDA5OjA5OjM0UE0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVv
dGluZyBBcmthZGl1c3ogSGlsZXIgKDIwMTktMTEtMDcgMTc6Mzg6MjApCj4+PiBXZSBkb24ndCB3
YW50IHlvdSB0byB0cmFuc2xhdGUgQyBpbnRvIEVuZ2xpc2gsIHdlIHdhbnQgeW91IHRvIHByb3Zp
ZGUgYSBiaXQgb2YKPj4+IHRoYXQgZXh0cmEgaW5mb3JtYXRpb24gdGhhdCB5b3Ugd291bGQgaGF2
ZSBwdXQgaW4gdGhlIGNvbW1lbnRzIGFueXdheS4KPj4gVGhlIGNvbW1lbnRzIHNob3VsZCBleGlz
dCBhbmQgYXJlIF9pbmxpbmVfIHdpdGggdGhlIGNvZGUuCj4gQW5kIEkgZW5jb3VyYWdlIGRvaW5n
IHNvLiBEZXRhaWxlZCBjb21tZW50cyB3aGF0IHRoaXMgcGFydGljdWxhcgo+IG5vbi1vYnZpb3Vz
IGNodW5rIG9mIGNvZGUgaXMgZG9pbmcgYXJlIGFsd2F5cyB3ZWxjb21lLgo+Cj4+IEluIGFsbCB0
aGUgZXhhbXBsZXMgb2YgaWd0X2Rlc2NyaWJlKCkgSSBoYXZlIHNlZW4sIGl0IGlzIG5vd2hlcmUg
bmVhcgo+PiB0aGUgY29kZSBzbyBpcyB1c2VsZXNzOyB0aGUgaW5mb3JtYXRpb24gY29udmV5ZWQg
ZG9lcyBub3QgYXNzaXN0Cj4+IGFueW9uZSBpbiBkaWFnbm9zaW5nIG9yIGRlYnVnZ2luZyB0aGUg
cHJvYmxlbSwgc28gSSB5ZXQgdG8gdW5kZXJzdGFuZAo+PiBob3cgaXQgaGVscHMuCj4gVGhleSBh
cmUgc3VwcG9zZWQgdG8gZG9jdW1lbnQgbm90IHRoZSBpbXBsZW1lbnRhdGlvbiBidXQgd2hhdCBp
cyB0aGUKPiBncmFuZCBpZGVhIGJlaGluZCBhIGdpdmVuIHN1YnRlc3QsIHNvIHRoZXkgYXJlIG9u
IGEgc3VidGVzdCBsZXZlbCAob3IgYQo+IGdyb3VwIG9mIHN1YnRlc3RzKSwgd2hpY2ggaXMgb3Vy
IGJhc2ljIHRlc3RpbmcgdW5pdCAtIHRoaXMgaXMgd2hhdCBmYWlscwo+IGluIENJLCB0aGlzIGlz
IHdoYXQgeW91IGV4ZWN1dGUgbG9jYWxseSB0byByZXByb2R1Y2UgdGhlIGlzc3VlLgo+Cj4gQ2Fu
IHlvdSB0cnVseSBkZWJ1ZyBhbiBpc3N1ZSBvciB1bmRlcnN0YW5kIHdoYXQgdGhlIGZhaWx1cmUg
bWVhbnMKPiB3aXRob3V0IGtub3dpbmcgd2hhdCB0aGUgdGVzdCBpcyBzdXBwb3NlZCB0byBwcm92
ZT8KPgo+IEEgbG90IG9mIHBlb3BsZSBoZXJlIGhhdmUgc3RydWdnbGVkIHdpdGggdGhpcyBhbmQg
b2Z0ZW4gaXQgdGFrZXMgYSBsb3QKPiBvZiB0aW1lIGFuZCByZXF1aXJlcyBhZHZhbmNlZCBhcmNo
ZW9sb2d5IHdpdGggYGdpdCBibGFtZWAgaG9waW5nIHRoYXQKPiB0aGVyZSBpcyBhdCBsZWFzdCBv
bmUgZGV0YWlsZWQgZW5vdWdoIGNvbW1pdCBtZXNzYWdlIGluIHRoZXJlLgo+Cj4gSWYgbm90IHRo
ZW4gdGFsa2luZyB0byBwZW9wbGUgYW5kIHJlbHlpbmcgb24gb3VyIHRyaWJhbCBrbm93bGVkZ2Ug
aXMKPiByZXF1aXJlZC4KPgo+IEFzIEkgaGF2ZSBtZW50aW9uZWQgLSBnZXR0aW5nIHRoZSBiaWdn
ZXIgcGljdHVyZSBmcm9tIGltcGxlbWVudGF0aW9uCj4gZGV0YWlscyBpcyBoYXJkLiBJIGdldCB0
aGF0IHlvdSBhcmUgbm90IGFmZmVjdGVkIGJ5IHRoaXMsIGJ1dCBwbGVhc2UgZG8KPiBub3QgZGVu
eSB0aGUgb3RoZXJzLgoKCkkga2luZCBvZiBhZ3JlZSB3aXRoIENocmlzIHRoYXQgSSBkb24ndCBm
aW5kIHRoYXQgYWRkaXRpb25hbCBtYWNybyAKdXNlZnVsIGZyb20gdGhlIHBvaW50IG9mIHZpZXcg
b2YgcmVhZGluZyBhIHBhcnRpY3VsYXIgdGVzdC4KCkEgY29tbWVudCBhYm92ZSB0aGUgdGVzdCBm
dW5jdGlvbiBzZWVtcyBtb3JlIGFwcHJvcHJpYXRlLCBhdCBsZWFzdCB5b3UgCmRvbid0IGhhdmUg
dG8gbG9vayBhdCAyIGRpZmZlcmVudCBwbGFjZXMgdG8gZmluZCBvdXQgYWJvdXQgYSBwYXJ0aWN1
bGFyIAp0ZXN0LgoKClVubGVzcyB0aGVyZSBpcyBzb21lIHVudG9sZCBnb2FsIGhlcmUsIGxpa2Ug
cHJvZHVjaW5nIHNvbWUga2luZCBvZiAKcmVwb3J0IGluIGFuIGF1dG9tYXRlZCB3YXkuCgoKLUxp
b25lbAoKCj4KPj4gV2hhdCBpcyBtb3JlIHVzZWZ1bCwgYSBsaW5rIHRvIHRoZSBrZXJuZWwgY292
ZXJhZ2Ugb2YgdGhlIHRlc3QgYW5kCj4+IGxpbmsgdG8gdGhlIHRlc3Qgc291cmNlIGNvZGUsIG9y
IHdhZmZsZT8KPj4gLUNocmlzCj4gVGhvc2UgdGhpbmdzIGFyZSBub3QgZXhjbHVzaXZlLiBDb3Zl
cmFnZSBpcyBleHRyZW1lbHkgdXNlZnVsIG1ldHJpYywKPiBzb3VyY2UgY29kZSBpcyB3aGVyZSB0
aGUgYWN0aW9uIGhhcHBlbnMgYnV0IHNvbWUgaGlnaGVyLWxldmVsCj4gZXhwbGFuYXRpb25zIGFu
ZCB3YWZmbGVzIGNhbiBjb2V4aXN0IHBlYWNlZnVsbHkgYW5kIG1ha2UgbWFueSBsaXZlcyBtdWNo
Cj4gbW9yZSBwbGVhc2FudC4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
