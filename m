Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 718BF1903CD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 04:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7496E056;
	Tue, 24 Mar 2020 03:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDEC46E056
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 03:15:34 +0000 (UTC)
IronPort-SDR: A/uyOuBEP4GF0MQ2I7Dibiq7h5rgDPkM8CEJgS121MI3F+4wkIkNs4kX5uOUU9b1SGHX5APKks
 RxGKltty28tA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 20:15:34 -0700
IronPort-SDR: RX24POrK/NxcQZ4rINMgaOtAVbxbBId8n5SmdkOUf3rffHH3tVqm6m9mNIeHUIE/eqc+i4QAoe
 KePqidhw5oKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,298,1580803200"; d="scan'208";a="446059008"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Mar 2020 20:15:34 -0700
Date: Mon, 23 Mar 2020 20:15:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20200324031534.GA44281@orsosgc001.amr.corp.intel.com>
References: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
 <20200319225203.29679-2-umesh.nerlige.ramappa@intel.com>
 <87zhc9p9vx.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhc9p9vx.wl-ashutosh.dixit@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: rework aging tail
 workaround
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

T24gU2F0LCBNYXIgMjEsIDIwMjAgYXQgMDQ6MjY6NDJQTSAtMDcwMCwgRGl4aXQsIEFzaHV0b3No
IHdyb3RlOgo+T24gVGh1LCAxOSBNYXIgMjAyMCAxNTo1MjowMSAtMDcwMCwgVW1lc2ggTmVybGln
ZSBSYW1hcHBhIHdyb3RlOgo+Pgo+PiBGcm9tOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4+Cj4+IFdlJ3JlIGFib3V0IHRvIGludHJvZHVjZSBhbiBv
cHRpb25zIHRvIG9wZW4gdGhlIHBlcmYgc3RyZWFtLCBnaXZpbmcKPj4gdGhlIHVzZXIgYWJpbGl0
eSB0byBjb25maWd1cmUgaG93IG9mdGVuIGl0IHdhbnRzIHRoZSBrZXJuZWwgdG8gcG9sbAo+PiB0
aGUgT0EgcmVnaXN0ZXJzIGZvciBhdmFpbGFibGUgZGF0YS4KPj4KPj4gUmlnaHQgbm93IHRoZSB3
b3JrYXJvdW5kIGFnYWluc3QgdGhlIE9BIHRhaWwgcG9pbnRlciByYWNlIGNvbmRpdGlvbgo+PiBy
ZXF1aXJlcyBhdCBsZWFzdCB0d2ljZSB0aGUgaW50ZXJuYWwga2VybmVsIHBvbGxpbmcgdGltZXIg
dG8gbWFrZSBhbnkKPj4gZGF0YSBhdmFpbGFibGUuCj4+Cj4+IFRoaXMgY2hhbmdlcyBpbnRyb2R1
Y2UgY2hlY2tzIG9uIHRoZSBPQSBkYXRhIHdyaXR0ZW4gaW50byB0aGUgY2lyY3VsYXIKPj4gYnVm
ZmVyIHRvIG1ha2UgYXMgbXVjaCBkYXRhIGFzIHBvc3NpYmxlIGF2YWlsYWJsZSBvbiB0aGUgZmly
c3QKPj4gaXRlcmF0aW9uIG9mIHRoZSBwb2xsaW5nIHRpbWVyLgo+Cj4vc25pcC8KPgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+PiBpbmRleCAzMjIyZjZjZDgyNTUuLmMxNDI5ZDNhY2FmOSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4gQEAgLTIyMywyNiArMjIzLDE3IEBA
Cj4+ICAgKgo+PiAgICogQWx0aG91Z2ggdGhpcyBjYW4gYmUgb2JzZXJ2ZWQgZXhwbGljaXRseSB3
aGlsZSBjb3B5aW5nIHJlcG9ydHMgdG8gdXNlcnNwYWNlCj4+ICAgKiBieSBjaGVja2luZyBmb3Ig
YSB6ZXJvZWQgcmVwb3J0LWlkIGZpZWxkIGluIHRhaWwgcmVwb3J0cywgd2Ugd2FudCB0byBhY2Nv
dW50Cj4+IC0gKiBmb3IgdGhpcyBlYXJsaWVyLCBhcyBwYXJ0IG9mIHRoZSBvYV9idWZmZXJfY2hl
Y2sgdG8gYXZvaWQgbG90cyBvZiByZWR1bmRhbnQKPj4gLSAqIHJlYWQoKSBhdHRlbXB0cy4KPj4g
LSAqCj4+IC0gKiBJbiBlZmZlY3Qgd2UgZGVmaW5lIGEgdGFpbCBwb2ludGVyIGZvciByZWFkaW5n
IHRoYXQgbGFncyB0aGUgcmVhbCB0YWlsCj4+IC0gKiBwb2ludGVyIGJ5IGF0IGxlYXN0ICVPQV9U
QUlMX01BUkdJTl9OU0VDIG5hbm9zZWNvbmRzLCB3aGljaCBnaXZlcyBlbm91Z2gKPj4gLSAqIHRp
bWUgZm9yIHRoZSBjb3JyZXNwb25kaW5nIHJlcG9ydHMgdG8gYmVjb21lIHZpc2libGUgdG8gdGhl
IENQVS4KPj4gLSAqCj4+IC0gKiBUbyBtYW5hZ2UgdGhpcyB3ZSBhY3R1YWxseSB0cmFjayB0d28g
dGFpbCBwb2ludGVyczoKPj4gLSAqICAxKSBBbiAnYWdpbmcnIHRhaWwgd2l0aCBhbiBhc3NvY2lh
dGVkIHRpbWVzdGFtcCB0aGF0IGlzIHRyYWNrZWQgdW50aWwgd2UKPj4gLSAqICAgICBjYW4gdHJ1
c3QgdGhlIGNvcnJlc3BvbmRpbmcgZGF0YSBpcyB2aXNpYmxlIHRvIHRoZSBDUFU7IGF0IHdoaWNo
IHBvaW50Cj4+IC0gKiAgICAgaXQgaXMgY29uc2lkZXJlZCAnYWdlZCcuCj4+IC0gKiAgMikgQW4g
J2FnZWQnIHRhaWwgdGhhdCBjYW4gYmUgdXNlZCBmb3IgcmVhZCgpaW5nLgo+PiAtICoKPj4gLSAq
IFRoZSB0d28gc2VwYXJhdGUgcG9pbnRlcnMgbGV0IHVzIGRlY291cGxlIHJlYWQoKXMgZnJvbSB0
YWlsIHBvaW50ZXIgYWdpbmcuCj4+IC0gKgo+PiAtICogVGhlIHRhaWwgcG9pbnRlcnMgYXJlIGNo
ZWNrZWQgYW5kIHVwZGF0ZWQgYXQgYSBsaW1pdGVkIHJhdGUgd2l0aGluIGEgaHJ0aW1lcgo+PiAt
ICogY2FsbGJhY2sgKHRoZSBzYW1lIGNhbGxiYWNrIHRoYXQgaXMgdXNlZCBmb3IgZGVsaXZlcmlu
ZyBFUE9MTElOIGV2ZW50cykKPj4gLSAqCj4+IC0gKiBJbml0aWFsbHkgdGhlIHRhaWxzIGFyZSBt
YXJrZWQgaW52YWxpZCB3aXRoICVJTlZBTElEX1RBSUxfUFRSIHdoaWNoCj4+IC0gKiBpbmRpY2F0
ZXMgdGhhdCBhbiB1cGRhdGVkIHRhaWwgcG9pbnRlciBpcyBuZWVkZWQuCj4+ICsgKiBmb3IgdGhp
cyBlYXJsaWVyLCBhcyBwYXJ0IG9mIHRoZSBvYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQgdG8gYXZv
aWQgbG90cyBvZgo+PiArICogcmVkdW5kYW50IHJlYWQoKSBhdHRlbXB0cy4KPj4gKyAqCj4+ICsg
KiBXZSB3b3JrYXJvdW5kIHRoaXMgaXNzdWUgaW4gb2FfYnVmZmVyX2NoZWNrX3VubG9ja2VkKCkg
YnkgcmVhZGluZyB0aGUgcmVwb3J0cwo+PiArICogaW4gdGhlIE9BIGJ1ZmZlciwgc3RhcnRpbmcg
ZnJvbSB0aGUgdGFpbCByZXBvcnRlZCBieSB0aGUgSFcgdW50aWwgd2UgZmluZCAyCj4+ICsgKiBj
b25zZWN1dGl2ZSByZXBvcnRzIHdpdGggdGhlaXIgZmlyc3QgMiBkd29yZHMgb2Ygbm90IGF0IDAu
IFRob3NlIGR3b3JkcyBhcmUKPgo+dW50aWwgd2UgZmluZCBhIHJlcG9ydCB3aXRoIGl0cyBmaXJz
dCAyIGR3b3JkcyBub3QgMCBtZWFuaW5nIGl0cyBwcmV2aW91cwo+cmVwb3J0IGlzIGNvbXBsZXRl
bHkgaW4gbWVtb3J5IGFuZCByZWFkeSB0byBiZSByZWFkLgo+Cj4+ICsgKiBhbHNvIHNldCB0byAw
IG9uY2UgcmVhZCBhbmQgdGhlIHdob2xlIGJ1ZmZlciBpcyBjbGVhcmVkIHVwb24gT0EgYnVmZmVy
Cj4+ICsgKiBpbml0aWFsaXphdGlvbi4gVGhlIGZpcnN0IGR3b3JkIGlzIHRoZSByZWFzb24gZm9y
IHRoaXMgcmVwb3J0IHdoaWxlIHRoZQo+PiArICogc2Vjb25kIGlzIHRoZSB0aW1lc3RhbXAsIG1h
a2luZyB0aGUgY2hhbmNlcyBvZiBoYXZpbmcgdGhvc2UgMiBmaWVsZHMgYXQgMAo+PiArICogZmFp
cmx5IHVubGlrZWx5LiBBIG1vcmUgZGV0YWlsZWQgZXhwbGFuYXRpb24gaXMgYXZhaWxhYmxlIGlu
Cj4+ICsgKiBvYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQoKS4KPgo+PiBAQCAtNDc3LDE2ICs0Njgs
NiBAQCBzdGF0aWMgYm9vbCBvYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKPj4JICovCj4+CXNwaW5fbG9ja19pcnFzYXZlKCZzdHJlYW0tPm9h
X2J1ZmZlci5wdHJfbG9jaywgZmxhZ3MpOwo+Pgo+Pglod190YWlsID0gc3RyZWFtLT5wZXJmLT5v
cHMub2FfaHdfdGFpbF9yZWFkKHN0cmVhbSk7Cj4+Cj4+CWh3X3RhaWwgJj0gfihyZXBvcnRfc2l6
ZSAtIDEpOwo+Pgo+PiBAQCAtNDk2LDY0ICs0NzcsNjQgQEAgc3RhdGljIGJvb2wgb2FfYnVmZmVy
X2NoZWNrX3VubG9ja2VkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+Cj4+CW5v
dyA9IGt0aW1lX2dldF9tb25vX2Zhc3RfbnMoKTsKPj4KPj4gKwlpZiAoaHdfdGFpbCA9PSBzdHJl
YW0tPm9hX2J1ZmZlci5hZ2luZ190YWlsICYmCj4+ICsJICAgKG5vdyAtIHN0cmVhbS0+b2FfYnVm
ZmVyLmFnaW5nX3RpbWVzdGFtcCkgPiBPQV9UQUlMX01BUkdJTl9OU0VDKSB7Cj4+ICsJCS8qIElm
IHRoZSBIVyB0YWlsIGhhc24ndCBtb3ZlIHNpbmNlIHRoZSBsYXN0IGNoZWNrIGFuZCB0aGUgSFcK
Pj4gKwkJICogdGFpbCBoYXMgYmVlbiBhZ2luZyBmb3IgbG9uZyBlbm91Z2gsIGRlY2xhcmUgaXQg
dGhlIG5ldwo+PiArCQkgKiB0YWlsLgo+PiArCQkgKi8KPj4gKwkJc3RyZWFtLT5vYV9idWZmZXIu
dGFpbCA9IHN0cmVhbS0+b2FfYnVmZmVyLmFnaW5nX3RhaWw7Cj4+ICsJfSBlbHNlIHsKPj4gKwkJ
dTMyIGhlYWQsIHRhaWw7Cj4+Cj4+ICsJCS8qIE5COiBUaGUgaGVhZCB3ZSBvYnNlcnZlIGhlcmUg
bWlnaHQgZWZmZWN0aXZlbHkgYmUgYSBsaXR0bGUKPj4gKwkJICogb3V0IG9mIGRhdGUuIElmIGEg
cmVhZCgpIGlzIGluIHByb2dyZXNzLCB0aGUgaGVhZCBjb3VsZCBiZQo+PiArCQkgKiBhbnl3aGVy
ZSBiZXR3ZWVuIHRoaXMgaGVhZCBhbmQgc3RyZWFtLT5vYV9idWZmZXIudGFpbC4KPj4gKwkJICov
Cj4+ICsJCWhlYWQgPSBzdHJlYW0tPm9hX2J1ZmZlci5oZWFkIC0gZ3R0X29mZnNldDsKPj4KPj4g
KwkJaHdfdGFpbCAtPSBndHRfb2Zmc2V0Owo+PiArCQl0YWlsID0gaHdfdGFpbDsKPj4KPj4gKwkJ
LyogV2FsayB0aGUgc3RyZWFtIGJhY2t3YXJkIHVudGlsIHdlIGZpbmQgYSByZXBvcnQgd2l0aCBk
d29yZCAwCj4+ICsJCSAqICYgMSBub3QgYXQgMC4gU2luY2UgdGhlIGNpcmN1bGFyIGJ1ZmZlciBw
b2ludGVycyBwcm9ncmVzcyBieQo+PiArCQkgKiBpbmNyZW1lbnRzIG9mIDY0IGJ5dGVzIGFuZCB0
aGF0IHJlcG9ydHMgY2FuIGJlIHVwIHRvIDI1Ngo+PiArCQkgKiBieXRlcyBsb25nLCB3ZSBjYW4n
dCB0ZWxsIHdoZXRoZXIgYSByZXBvcnQgaGFzIGZ1bGx5IGxhbmRlZAo+PiArCQkgKiBpbiBtZW1v
cnkgYmVmb3JlIHRoZSBmaXJzdCAyIGR3b3JkcyBvZiB0aGUgZm9sbG93aW5nIHJlcG9ydAo+PiAr
CQkgKiBoYXZlIGVmZmVjdGl2ZWx5IGxhbmRlZC4KPj4gKwkJICoKPj4gKwkJICogVGhpcyBpcyBh
c3N1bWluZyB0aGF0IHRoZSB3cml0ZXMgb2YgdGhlIE9BIHVuaXQgbGFuZCBpbgo+PiArCQkgKiBt
ZW1vcnkgaW4gdGhlIG9yZGVyIHRoZXkgd2VyZSB3cml0dGVuIHRvLgo+PiArCQkgKiBJZiBub3Qg
OiAo4pWvwrDilqHCsO+8ieKVr++4tSDilLvilIHilLsKPj4JCSAqLwo+PiAtCQlpZiAoaHdfdGFp
bCA+PSBndHRfb2Zmc2V0ICYmCj4+IC0JCSAgICBod190YWlsIDwgKGd0dF9vZmZzZXQgKyBPQV9C
VUZGRVJfU0laRSkpIHsKPj4gLQkJCXN0cmVhbS0+b2FfYnVmZmVyLnRhaWxzWyFhZ2VkX2lkeF0u
b2Zmc2V0ID0KPj4gLQkJCQlhZ2luZ190YWlsID0gaHdfdGFpbDsKPj4gLQkJCXN0cmVhbS0+b2Ff
YnVmZmVyLmFnaW5nX3RpbWVzdGFtcCA9IG5vdzsKPj4gLQkJfSBlbHNlIHsKPj4gLQkJCWRybV9l
cnIoJnN0cmVhbS0+cGVyZi0+aTkxNS0+ZHJtLAo+PiAtCQkJCSJJZ25vcmluZyBzcHVyaW91cyBv
dXQgb2YgcmFuZ2UgT0EgYnVmZmVyIHRhaWwgcG9pbnRlciA9ICV4XG4iLAo+PiAtCQkJCWh3X3Rh
aWwpOwo+PiArCQl3aGlsZSAoT0FfVEFLRU4odGFpbCwgaGVhZCkgPj0gcmVwb3J0X3NpemUpIHsK
Pj4gKwkJCXUzMiBwcmV2aW91c190YWlsID0gKHRhaWwgLSByZXBvcnRfc2l6ZSkgJiAoT0FfQlVG
RkVSX1NJWkUgLSAxKTsKPj4gKwkJCXUzMiAqcmVwb3J0MzIgPSAodm9pZCAqKShzdHJlYW0tPm9h
X2J1ZmZlci52YWRkciArIHByZXZpb3VzX3RhaWwpOwo+Cj5Tb3JyeSwgdGhpcyBpcyB3cm9uZy4g
VGhpcyBzaG91bGQganVzdCBiZToKPgo+CQkJdGFpbCA9ICh0YWlsIC0gcmVwb3J0X3NpemUpICYg
KE9BX0JVRkZFUl9TSVpFIC0gMSk7Cj4JCQlyZXBvcnQzMiA9ICh2b2lkICopKHN0cmVhbS0+b2Ff
YnVmZmVyLnZhZGRyICsgdGFpbCk7Cj4KPk90aGVyd2lzZSB3aGVuIHdlIGJyZWFrIG91dCBvZiB0
aGUgbG9vcCBiZWxvdyB0YWlsIGlzIHN0aWxsIHNldCBvbmUKPnJlcG9ydF9zaXplIGFoZWFkLiBw
cmV2aW91c190YWlsIGlzIG5vdCBuZWVkZWQuIChJbiB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZgo+
dGhlIHBhdGNoIHRoaXMgdXNlZCB0byB3b3JrIG91dCBjb3JyZWN0bHkpLgoKb2gsIHRoYXQncyBy
aWdodC4gdGFpbCBzaG91bGQgcG9pbnQgdG8gdGhlIGZpcnN0IHJlcG9ydCB0aGF0IGhhcyAKbm9u
LXplcm8gZHdvcmRzLiBldmVyeXRoaW5nIGJlZm9yZSB0aGF0IHNob3VsZCBiZSBjb25zaWRlcmVk
IGxhbmRlZC4gIAoKVGhhbmtzLApVbWVzaAoKPgo+PiArCj4+ICsJCQkvKiBIZWFkIG9mIHRoZSBy
ZXBvcnQgaW5kaWNhdGVkIGJ5IHRoZSBIVyB0YWlsIHJlZ2lzdGVyIGhhcwo+PiArCQkJICogaW5k
ZWVkIGxhbmRlZCBpbnRvIG1lbW9yeS4KPj4gKwkJCSAqLwo+PiArCQkJaWYgKHJlcG9ydDMyWzBd
ICE9IDAgfHwgcmVwb3J0MzJbMV0gIT0gMCkKPj4gKwkJCQlicmVhazsKPj4gKwo+PiArCQkJdGFp
bCA9IHByZXZpb3VzX3RhaWw7Cj4+CQl9Cj4+ICsKPj4gKwkJaWYgKCgodGFpbCAtIGh3X3RhaWwp
ICYgKE9BX0JVRkZFUl9TSVpFIC0gMSkpID4gcmVwb3J0X3NpemUgJiYKPgo+bml0OiBPQV9UQUtF
Tihod190YWlsLCB0YWlsKSA+IHJlcG9ydF9zaXplPwo+Cj4+ICsJCSAgICBfX3JhdGVsaW1pdCgm
c3RyZWFtLT5wZXJmLT50YWlsX3BvaW50ZXJfcmFjZSkpCj4+ICsJCQlEUk1fTk9URSgidW5sYW5k
ZWQgcmVwb3J0KHMpIGhlYWQ9MHgleCAiCj4+ICsJCQkJICJ0YWlsPTB4JXggaHdfdGFpbD0weCV4
XG4iLAo+PiArCQkJCSBoZWFkLCB0YWlsLCBod190YWlsKTsKPj4gKwo+PiArCQlzdHJlYW0tPm9h
X2J1ZmZlci50YWlsID0gZ3R0X29mZnNldCArIHRhaWw7Cj4+ICsJCXN0cmVhbS0+b2FfYnVmZmVy
LmFnaW5nX3RhaWwgPSBndHRfb2Zmc2V0ICsgaHdfdGFpbDsKPj4gKwkJc3RyZWFtLT5vYV9idWZm
ZXIuYWdpbmdfdGltZXN0YW1wID0gbm93Owo+Pgl9Cj4+Cj4+CXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJnN0cmVhbS0+b2FfYnVmZmVyLnB0cl9sb2NrLCBmbGFncyk7Cj4+Cj4+IC0JcmV0dXJuIGFn
ZWRfdGFpbCA9PSBJTlZBTElEX1RBSUxfUFRSID8KPj4gLQkJZmFsc2UgOiBPQV9UQUtFTihhZ2Vk
X3RhaWwsIGhlYWQpID49IHJlcG9ydF9zaXplOwo+PiArCXJldHVybiBPQV9UQUtFTihzdHJlYW0t
Pm9hX2J1ZmZlci50YWlsIC0gZ3R0X29mZnNldCwKPj4gKwkJCXN0cmVhbS0+b2FfYnVmZmVyLmhl
YWQgLSBndHRfb2Zmc2V0KSA+PSByZXBvcnRfc2l6ZTsKPj4gIH0KPgo+PiBAQCAtMzAzLDYgKzI5
MiwxMiBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7Cj4+CQkgKiBPQSBidWZmZXIgZGF0YSB0
byB1c2Vyc3BhY2UuCj4+CQkgKi8KPj4JCXUzMiBoZWFkOwo+PiArCj4+ICsJCS8qKgo+PiArCQkg
KiBAdGFpbDogVGhlIGxhc3QgdGFpbCB2ZXJpZmllZCB0YWlsIHRoYXQgY2FuIGJlIHJlYWQgYnkK
Pgo+VGhlIGxhc3QgdmVyaWZpZWQgdGFpbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
