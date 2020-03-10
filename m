Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D537D18096F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3960E6E8DE;
	Tue, 10 Mar 2020 20:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E811D6E8DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:44:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="353705754"
Received: from brockhau-mobl.ger.corp.intel.com (HELO [10.249.39.31])
 ([10.249.39.31])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2020 13:44:30 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-8-umesh.nerlige.ramappa@intel.com>
 <87v9nku0uu.wl-ashutosh.dixit@intel.com>
 <bc369a53-ec87-f459-e798-2212f9a73d90@intel.com>
 <87o8tb2vlf.wl-ashutosh.dixit@intel.com>
 <20200309195141.GA9651@orsosgc001.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <753314a2-1768-0110-ba20-e2515b8e5a1c@intel.com>
Date: Tue, 10 Mar 2020 22:44:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200309195141.GA9651@orsosgc001.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/perf: add flushing ioctl
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDMvMjAyMCAyMTo1MSwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IE9uIFdl
ZCwgTWFyIDA0LCAyMDIwIGF0IDA5OjU2OjI4UE0gLTA4MDAsIERpeGl0LCBBc2h1dG9zaCB3cm90
ZToKPj4gT24gV2VkLCAwNCBNYXIgMjAyMCAwMDo1MjozNCAtMDgwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj4+Pgo+Pj4gT24gMDQvMDMvMjAyMCAwNzo0OCwgRGl4aXQsIEFzaHV0b3NoIHdy
b3RlOgo+Pj4gPiBPbiBUdWUsIDAzIE1hciAyMDIwIDE0OjE5OjA1IC0wODAwLCBVbWVzaCBOZXJs
aWdlIFJhbWFwcGEgd3JvdGU6Cj4+PiA+PiBGcm9tOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4+PiA+Pgo+Pj4gPj4gV2l0aCB0aGUgY3VycmVudGx5
IGF2YWlsYWJsZSBwYXJhbWV0ZXJzIGZvciB0aGUgaTkxNS1wZXJmIHN0cmVhbSwKPj4+ID4+IHRo
ZXJlIGFyZSBzdGlsbCBzaXR1YXRpb25zIHRoYXQgYXJlIG5vdCB3ZWxsIGNvdmVyZWQgOgo+Pj4g
Pj4KPj4+ID4+IElmIGFuIGFwcGxpY2F0aW9uIG9wZW5zIHRoZSBzdHJlYW0gd2l0aCBwb2xsaW5n
IGRpc2FibGUgb3IgYXQgCj4+PiB2ZXJ5IGxvdwo+Pj4gPj4gZnJlcXVlbmN5IGFuZCBPQSBpbnRl
cnJ1cHQgZW5hYmxlZCwgbm8gZGF0YSB3aWxsIGJlIGF2YWlsYWJsZSBldmVuCj4+PiA+PiB0aG91
Z2ggc29tZXdoZXJlIGJldHdlZW4gbm90aGluZyBhbmQgaGFsZiBvZiB0aGUgT0EgYnVmZmVyIHdv
cnRoIG9mCj4+PiA+PiBkYXRhIG1pZ2h0IGhhdmUgbGFuZGVkIGluIG1lbW9yeS4KPj4+ID4+Cj4+
PiA+PiBUbyBzb2x2ZSB0aGlzIGlzc3VlIHdlIGhhdmUgYSBuZXcgZmx1c2ggaW9jdGwgb24gdGhl
IHBlcmYgc3RyZWFtIAo+Pj4gdGhhdAo+Pj4gPj4gZm9yY2VzIHRoZSBpOTE1LXBlcmYgZHJpdmVy
IHRvIGxvb2sgYXQgdGhlIHN0YXRlIG9mIHRoZSBidWZmZXIgd2hlbgo+Pj4gPj4gY2FsbGVkIGFu
ZCBtYWtlcyBhbnkgZGF0YSBhdmFpbGFibGUgdGhyb3VnaCBib3RoIHBvbGwoKSAmIHJlYWQoKSAK
Pj4+IHR5cGUKPj4+ID4+IHN5c2NhbGxzLgo+Pj4gPj4KPj4+ID4+IHYyOiBWZXJzaW9uIHRoZSBp
b2N0bCAoSm9vbmFzKQo+Pj4gPj4gdjM6IFJlYmFzZSAoVW1lc2gpCj4+PiA+Pgo+Pj4gPj4gU2ln
bmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgo+Pj4gPj4gU2lnbmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIAo+Pj4gPHVt
ZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+Cj4+PiA+IFtzbmlwXQo+Pj4gPgo+Pj4gPj4g
Ky8qKgo+Pj4gPj4gKyAqIGk5MTVfcGVyZl9mbHVzaF9kYXRhIC0gaGFuZGxlIGBJOTE1X1BFUkZf
SU9DVExfRkxVU0hfREFUQWAgaW9jdGwKPj4+ID4+ICsgKiBAc3RyZWFtOiBBbiBlbmFibGVkIGk5
MTUgcGVyZiBzdHJlYW0KPj4+ID4+ICsgKgo+Pj4gPj4gKyAqIFRoZSBpbnRlbnRpb24gaXMgdG8g
Zmx1c2ggYWxsIHRoZSBkYXRhIGF2YWlsYWJsZSBmb3IgcmVhZGluZyAKPj4+IGZyb20gdGhlIE9B
Cj4+PiA+PiArICogYnVmZmVyCj4+PiA+PiArICovCj4+PiA+PiArc3RhdGljIHZvaWQgaTkxNV9w
ZXJmX2ZsdXNoX2RhdGEoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4+ID4+ICt7
Cj4+PiA+PiArwqDCoMKgIHN0cmVhbS0+cG9sbGluID0gb2FfYnVmZmVyX2NoZWNrKHN0cmVhbSwg
dHJ1ZSk7Cj4+PiA+PiArfQo+Pj4gPiBTaW5jZSB0aGlzIGZ1bmN0aW9uIGRvZXNuJ3QgYWN0dWFs
bHkgd2FrZSB1cCBhbnkgdGhyZWFkICh3aGljaCAKPj4+IGFueXdheSBjYW4KPj4+ID4gYmUgZG9u
ZSBieSBzZW5kaW5nIGEgc2lnbmFsIHRvIHRoZSBibG9ja2VkIHRocmVhZCksIGlzIHRoZSBvbmx5
IAo+Pj4gcHVycG9zZSBvZgo+Pj4gPiB0aGlzIGZ1bmN0aW9uIHRvIHVwZGF0ZSBPQSBidWZmZXIg
aGVhZC90YWlsPyBCdXQgaW4gdGhhdCBpdCBpcyBub3QgCj4+PiBjbGVhcgo+Pj4gPiB3aHkgYSBz
ZXBhcmF0ZSBpb2N0bCBzaG91bGQgYmUgY3JlYXRlZCBmb3IgdGhpcywgY2FuJ3QgdGhlIHJlYWQo
KSAKPj4+IGNhbGwKPj4+ID4gaXRzZWxmIGNhbGwgb2FfYnVmZmVyX2NoZWNrKCkgdG8gdXBkYXRl
IHRoZSBPQSBidWZmZXIgaGVhZC90YWlsPwo+Pj4gPgo+Pj4gPiBBZ2FpbiBqdXN0IHRyeWluZyB0
byBtaW5pbWl6ZSB1YXBpIGNoYW5nZXMgaWYgcG9zc2libGUuCj4+Pgo+Pj4gTW9zdCBhcHBsaWNh
dGlvbnMgd2lsbCBjYWxsIHJlYWQoKSBhZnRlciBiZWluZyBub3RpZmllZCBieSAKPj4+IHBvbGwo
KS9zZWxlY3QoKQo+Pj4gdGhhdCBzb21lIGRhdGEgaXMgYXZhaWxhYmxlLgo+Pgo+PiBDb3JyZWN0
IHRoaXMgaXMgdGhlIHN0YW5kYXJkIG5vbiBibG9ja2luZyByZWFkIGJlaGF2aW9yLgo+Pgo+Pj4g
Q2hhbmdpbmcgdGhhdCBiZWhhdmlvciB3aWxsIGJyZWFrIHNvbWUgb2YgdGhlIGV4aXN0aW5nIHBl
cmYgdGVzdHMgLgo+Pgo+PiBJIGFtIG5vdCBzdWdnZXN0aW5nIGNoYW5naW5nIHRoYXQgKHRoYXQg
c3RhbmRhcmQgbm9uIGJsb2NraW5nIHJlYWQKPj4gYmVoYXZpb3IpLgo+Pgo+Pj4gSWYgYW55IGRh
dGEgaXMgYXZhaWxhYmxlLCB0aGlzIG5ldyBpb2N0bCB3aWxsIHdha2UgdXAgZXhpc3RpbmcgCj4+
PiB3YWl0ZXJzIG9uCj4+PiBwb2xsKCkvc2VsZWN0KCkuCj4+Cj4+IFRoZSBpc3N1ZSBpcyB3ZSBh
cmUgbm90IGNhbGxpbmcgd2FrZV91cCgpIGluIHRoZSBhYm92ZSBmdW5jdGlvbiB0byAKPj4gd2Fr
ZSB1cAo+PiBhbnkgYmxvY2tlZCB3YWl0ZXJzLiBUaGUgaW9jdGwgd2lsbCBqdXN0IHVwZGF0ZSB0
aGUgT0EgYnVmZmVyIAo+PiBoZWFkL3RhaWwgc28KPj4gdGhhdCAoYSkgYSBzdWJzZXF1ZW50IGJs
b2NraW5nIHJlYWQgd2lsbCBub3QgYmxvY2ssIG9yIChiKSBhIAo+PiBzdWJzZXF1ZW50IG5vbgo+
PiBibG9ja2luZyByZWFkIHdpbGwgcmV0dXJuIHZhbGlkIGRhdGEgKG5vdCAtRUFHQUlOKSwgb3Ig
KGMpIGEgcG9sbC9zZWxlY3QKPj4gd2lsbCBub3QgYmxvY2sgYnV0IHJldHVybiBpbW1lZGlhdGVs
eSBzYXlpbmcgZGF0YSBpcyBhdmFpbGFibGUuCj4+Cj4+IFRoYXQgaXMgd2h5IGl0IHNlZW1zIHRv
IG1lIHRoZSBpb2N0bCBpcyBub3QgcmVxdWlyZWQsIHVwZGF0aW5nIHRoZSBPQQo+PiBidWZmZXIg
aGVhZC90YWlsIGNhbiBiZSBkb25lIGFzIHBhcnQgb2YgdGhlIHJlYWQoKSAoYW5kIHRoZSBwb2xs
L3NlbGVjdCkKPj4gY2FsbHMgdGhlbXNlbHZlcy4KPj4KPj4gV2Ugd2lsbCBpbnZlc3RpZ2F0ZSBp
ZiB0aGlzIGNhbiBiZSBkb25lIGFuZCB1cGRhdGUgdGhlIHBhdGNoZXMgaW4gdGhlIAo+PiBuZXh0
Cj4+IHJldmlzaW9uIGFjY29yZGluZ2x5LiBUaGFua3MhCj4KPiBJbiB0aGlzIGNhc2UsIHdoZXJl
IHdlIGFyZSB0cnlpbmcgdG8gZGV0ZXJtaW5lIGlmIHRoZXJlIGlzIGFueSBkYXRhIGluIAo+IHRo
ZSBvYSBidWZmZXIgYmVmb3JlIHRoZSBuZXh0IGludGVycnVwdCBoYXMgZmlyZWQsIHVzZXIgY291
bGQgY2FsbCAKPiBwb2xsIHdpdGggYSByZWFzb25hYmxlIHRpbWVvdXQgdG8gZGV0ZXJtaW5lIGlm
IGRhdGEgaXMgYXZhaWxhYmxlIG9yIAo+IG5vdC7CoCBUaGF0IHdvdWxkIGVsaW1pbmF0ZSB0aGUg
bmVlZCBmb3IgdGhlIGZsdXNoIGlvY3RsLiBUaG91Z2h0cz8KPgo+IFRoYW5rcywKPiBVbWVzaAoK
CkkgYWxtb3N0IGZvcmdvdCB3aHkgdGhpcyB3b3VsZCBjYXVzZSBwcm9ibGVtLgoKQ2hlY2tpbmcg
dGhlIHN0YXRlIG9mIHRoZSBidWZmZXIgZXZlcnkgdGltZSB5b3UgY2FsbCBwb2xsKCkgd2lsbCBw
cmV0dHkgCm11Y2ggZ3VhcmFudGVlIHlvdSBoYXZlIGF0IGxlYXN0IG9uZSByZXBvcnQgdG8gcmVh
ZCBldmVyeSB0aW1lLgoKU28gdGhhdCB3b3VsZCBsZWFkIHRvIGxvdCBtb3JlIHdha2V1cHMgOigK
CgpUaGUgd2hvbGUgc3lzdGVtIGhhcyB0byBzdGF5ICJ1bmlkaXJlY3Rpb25hbCIgd2l0aCBlaXRo
ZXIgaW50ZXJydXB0cyBvciAKdGltZW91dCBkcml2aW5nIHRoZSB3YWtldXBzLgoKVGhpcyBhZGRp
dGlvbmFsIGlvY3RsIGlzIHRoZSBvbmx5IHNvbHV0aW9uIEkgY291bGQgZmluZCB0byBhZGQgb25l
IG1vcmUgCmlucHV0IHRvIHRoZSB3YWtldXAgbWVjaGFuaXNtLgoKCi1MaW9uZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
