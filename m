Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 929B33879D5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D583C6EB74;
	Tue, 18 May 2021 13:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207B76EB74;
 Tue, 18 May 2021 13:24:44 +0000 (UTC)
IronPort-SDR: l9L8HyYcfXqcKFiM+WC0PPdG4uTRKuk1DjrL1aqM5f08CJxVgUsg1om9HdpAsE11m88nR3VcTh
 14UMHGeU7COw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221762465"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="221762465"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:24:43 -0700
IronPort-SDR: I4ShFmhOtID88i2QJjYDQtsk8NyXzU3dxjxKCBX2W6i3Um2GLDRYi0d/Qb5lFnpK8lmxE32Ahg
 tMLhjrctxF4A==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="438662178"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:24:42 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-9-thomas.hellstrom@linux.intel.com>
 <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
 <45054121-954d-f20c-52b5-f375db7096e0@linux.intel.com>
 <d547a037-2aa8-76a8-375c-5da580fab631@amd.com>
 <400de9b7-f385-0581-ebb5-e07247d4c996@linux.intel.com>
 <b8e062c5-6b63-09c5-e98a-be9bf4813c61@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <0eb87fe5-439d-5077-cf19-015966bc3f5f@linux.intel.com>
Date: Tue, 18 May 2021 15:24:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <b8e062c5-6b63-09c5-e98a-be9bf4813c61@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 08/15] drm/i915/ttm Add a generic TTM
 memcpy move for page-based iomem
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMzowOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxNDo1MiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pgo+PiBPbiA1LzE4LzIxIDI6
MDkgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxOC4wNS4yMSB1bSAxNDowNCBz
Y2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Cj4+Pj4gT24gNS8xOC8yMSAxOjU1IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbSAxOC4wNS4yMSB1bSAx
MDoyNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4gVGhlIGludGVybmFsIHR0bV9i
b191dGlsIG1lbWNweSB1c2VzIHZtYXAgZnVuY3Rpb25hbGl0eSwgYW5kIAo+Pj4+Pj4gd2hpbGUg
aXQKPj4+Pj4+IHByb2JhYmx5IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHVzZSBpdCBmb3IgY29weWlu
ZyBpbi0gYW5kIG91dCBvZgo+Pj4+Pj4gc2dsaXN0IHJlcHJlc2VudGVkIGlvIG1lbW9yeSwgdXNp
bmcgaW9fbWVtX3Jlc2VydmUoKSAvIGlvX21lbV9mcmVlKCkKPj4+Pj4+IGNhbGxiYWNrcywgdGhh
dCB3b3VsZCBjYXVzZSBwcm9ibGVtcyB3aXRoIGZhdWx0KCkuCj4+Pj4+PiBJbnN0ZWFkLCBpbXBs
ZW1lbnQgYSBtZXRob2QgbWFwcGluZyBwYWdlLWJ5LXBhZ2UgdXNpbmcga21hcF9sb2NhbCgpCj4+
Pj4+PiBzZW1hbnRpY3MuIEFzIGFuIGFkZGl0aW9uYWwgYmVuZWZpdCB3ZSB0aGVuIGF2b2lkIHRo
ZSBvY2Nhc2lvbmFsIAo+Pj4+Pj4gZ2xvYmFsCj4+Pj4+PiBUTEIgZmx1c2hlcyBvZiB2bWFwKCkg
YW5kIGNvbnN1bWluZyB2bWFwIHNwYWNlLCBlbGltaW5hdGlvbiBvZiBhIAo+Pj4+Pj4gY3JpdGlj
YWwKPj4+Pj4+IHBvaW50IG9mIGZhaWx1cmUgYW5kIHdpdGggYSBzbGlnaHQgY2hhbmdlIG9mIHNl
bWFudGljcyB3ZSBjb3VsZCAKPj4+Pj4+IGFsc28gcHVzaAo+Pj4+Pj4gdGhlIG1lbWNweSBvdXQg
YXN5bmMgZm9yIHRlc3RpbmcgYW5kIGFzeW5jIGRyaXZlciBkZXZlbHBtZW50IAo+Pj4+Pj4gcHVy
cG9zZXMuCj4+Pj4+PiBQdXNoaW5nIG91dCBhc3luYyBjYW4gYmUgZG9uZSBzaW5jZSB0aGVyZSBp
cyBubyBtZW1vcnkgYWxsb2NhdGlvbiAKPj4+Pj4+IGdvaW5nIG9uCj4+Pj4+PiB0aGF0IGNvdWxk
IHZpb2xhdGUgdGhlIGRtYV9mZW5jZSBsb2NrZGVwIHJ1bGVzLgo+Pj4+Pj4KPj4+Pj4+IEZvciBj
b3BpZXMgZnJvbSBpb21lbSwgdXNlIHRoZSBXQyBwcmVmZXRjaGluZyBtZW1jcHkgdmFyaWFudCBm
b3IKPj4+Pj4+IGFkZGl0aW9uYWwgc3BlZWQuCj4+Pj4+Pgo+Pj4+Pj4gTm90ZSB0aGF0IGRyaXZl
cnMgdGhhdCBkb24ndCB3YW50IHRvIHVzZSBzdHJ1Y3QgaW9fbWFwcGluZyBidXQgCj4+Pj4+PiBy
ZWxpZXMgb24KPj4+Pj4+IG1lbXJlbWFwIGZ1bmN0aW9uYWxpdHksIGFuZCB0aGF0IGRvbid0IHdh
bnQgdG8gdXNlIHNjYXR0ZXJsaXN0cyBmb3IKPj4+Pj4+IFZSQU0gbWF5IHdlbGwgZGVmaW5lIHNw
ZWNpYWxpemVkIChob3BlZnVsbHkgcmV1c2FibGUpIGl0ZXJhdG9ycyAKPj4+Pj4+IGZvciB0aGVp
cgo+Pj4+Pj4gcGFydGljdWxhciBlbnZpcm9ubWVudC4KPj4+Pj4KPj4+Pj4gSW4gZ2VuZXJhbCB5
ZXMgcGxlYXNlIHNpbmNlIEkgaGF2ZSB0aGF0IGFzIFRPRE8gZm9yIFRUTSBmb3IgYSB2ZXJ5IAo+
Pj4+PiBsb25nIHRpbWUuCj4+Pj4+Cj4+Pj4+IEJ1dCBJIHdvdWxkIHByZWZlciB0byBmaXggdGhl
IGltcGxlbWVudGF0aW9uIGluIFRUTSBpbnN0ZWFkIGFuZCAKPj4+Pj4gZ2l2ZSBpdCBwcm9wZXIg
Y3Vyc29yIGhhbmRsaW5nLgo+Pj4+Pgo+Pj4+PiBBbWRncHUgaXMgYWxzbyB1c2luZyBwYWdlIGJh
c2VkIGlvbWVtIGFuZCB3ZSBhcmUgaGF2aW5nIHNpbWlsYXIgCj4+Pj4+IHdvcmthcm91bmRzIGlu
IHBsYWNlIHRoZXJlIGFzIHdlbGwuCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2Ug
dG8gdW5pZnkgdGhpcyBpbnNpZGUgVFRNIGFuZCByZW1vdmUgdGhlIG9sZCAKPj4+Pj4gbWVtY3B5
IHV0aWwgZnVuY3Rpb24gd2hlbiBkb25lLgo+Pj4+Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBDaHJp
c3RpYW4uCj4+Pj4KPj4+PiBDaHJpc3RpYW4sCj4+Pj4KPj4+PiBJIHdhcyB0aGlua2luZyB3aGVu
IHdlIHJlcGxhY2UgdGhlIGJvLm1lbSB3aXRoIGEgcG9pbnRlciAoYW5kIAo+Pj4+IHBlcmhhcHMg
aGF2ZSBhIGRyaXZlciBjYWxsYmFjayB0byBhbGxvY2F0ZSB0aGUgYm8tPm1lbSwKPj4+PiB3ZSBj
b3VsZCBwZXJoYXBzIGVtYmVkIGEgc3RydWN0IHR0bV9rbWFwX2l0ZXIgYW5kIHVzZSBpdCBmb3Ig
YWxsIAo+Pj4+IG1hcHBpbmcgaW4gb25lIHdheSBvciBhbm90aGVyKS4gVGhhdCB3b3VsZCBtZWFu
IHBlcmhhcHMgbGFuZCB0aGlzIAo+Pj4+IGlzIGk5MTUgbm93IGFuZCBzb3J0IG91dCB0aGUgdW5p
ZmljYXRpb24gb25jZSB0aGUgc3RydWN0IAo+Pj4+IHR0bV9yZXNvdXJjZSwgc3RydWN0IHR0bV9i
dWZmZXJfb2JqZWN0IHNlcGFyYXRpb24gaGFzIGxhbmRlZD8KPj4+Cj4+PiBUaGF0IHN0dWZmIGlz
IHJlYWR5LCByZXZpZXdlZCBhbmQgSSdtIGp1c3Qgd2FpdGluZyBmb3Igc29tZSBhbWRncHUgCj4+
PiBjaGFuZ2VzIHRvIGxhbmQgaW4gZHJtLW1pc2MtbmV4dCB0byBwdXNoIGl0Lgo+Pj4KPj4+IEJ1
dCB5ZXMgaW4gZ2VuZXJhbCBhbiBpdGVyYXRvciBmb3IgdGhlIHJlc291cmNlIG9iamVjdCBzb3Vu
ZHMgbGlrZSAKPj4+IHRoZSByaWdodCBwbGFuIHRvIG1lIGFzIHdlbGwuCj4+Pgo+Pj4gQ2hyaXN0
aWFuLgo+Pgo+PiBPSywgc28gdGhlbiBhcmUgeW91IE9LIHdpdGggbGFuZGluZyB0aGlzIGluIGk5
MTUgZm9yIG5vdz8gVGhhdCB3b3VsZCAKPj4gYWxzbyBvZmMgbWVhbiB0aGUgZXhwb3J0IHlvdSBO
QUsnZCBidXQgc3RyaWN0bHkgZm9yIHRoaXMgbWVtY3B5IHVzZSAKPj4gdW50aWwgd2UgbWVyZ2Ug
aXQgd2l0aCBUVE0/Cj4KPiBXZWxsIHlvdSBjYW4gb2YgY291cnNlIHByb3RvdHlwZSB0aGF0IGlu
IGk5MTUsIGJ1dCBJIHJlYWxseSBkb24ndCB3YW50IAo+IHRvIGV4cG9ydCB0aGUgVFQgZnVuY3Rp
b25zIHVwc3RyZWFtLgoKSSB1bmRlcnN0YW5kLCBJIG9uY2UgaGFkIHRoZSBzYW1lIHRob3VnaHRz
IHRyeWluZyB0byBhdm9pZCB0aGF0IGFzIGZhciAKYXMgcG9zc2libGUsIHNvIHRoaXMgZnVuY3Rp
b24gd2FzIGFjdHVhbGx5IHRoZW4gYWRkZWQgdG8gdGhlIHR0bV9ibyAKaW50ZXJmYWNlLCAoaGVu
Y2UgdGhlIGF3a3dhcmQgbmFtaW5nKSBhcyBhIGhlbHBlciBmb3IgZHJpdmVycyAKaW1wbGVtZW50
aW5nIG1vdmUoKSwgZXNzZW50aWFsbHkgYSB2ZXJ5IHNwZWNpYWwgY2FzZSBvZiAKdHRtX2JvX21v
dmVfYWNjZWxfY2xlYW51cCgpLCBidXQgYW55d2F5LCBzZWUgYmVsb3c6Cgo+Cj4gQ2FuIHdlIGNs
ZWFubHkgbW92ZSB0aGF0IGZ1bmN0aW9uYWxpdHkgaW50byBUVE0gaW5zdGVhZD8KCkknbGwgdGFr
ZSBhIGxvb2sgYXQgdGhhdCwgYnV0IEkgdGhpbmsgd2UnZCBpbml0aWFsbHkgYmUgaGF2aW5nIGl0
ZXJhdG9ycyAKbWltaWNpbmcgdGhlIGN1cnJlbnQgbW92ZV9tZW1jcHkoKSBmb3IgdGhlCmxpbmVh
ciBpb21lbSAhV0MgY2FzZXMsIGhvcGUgdGhhdCdzIE9LLgoKL1Rob21hcwoKCj4KPiBDaHJpc3Rp
YW4uCj4KPj4KPj4KPj4gL1Rob21hcwo+Pgo+Pj4KPj4+Pgo+Pj4+IC9UaG9tYXMKPj4+Pgo+Pj4+
Cj4+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
