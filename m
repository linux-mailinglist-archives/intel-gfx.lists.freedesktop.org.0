Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E8739A23F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 15:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2ED36E17D;
	Thu,  3 Jun 2021 13:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8913589EAC;
 Thu,  3 Jun 2021 10:54:27 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DB131063;
 Thu,  3 Jun 2021 03:54:26 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE9B53F774;
 Thu,  3 Jun 2021 03:54:24 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Christoph Hellwig <hch@lst.de>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20210510152525.GA30093@lst.de> <YKZ8eqnSnaso3aoe@0xbeefdead.lan>
 <162270961054.11739.9148402963893484386@jlahtine-mobl.ger.corp.intel.com>
 <d7bd2bde-2b95-44fa-18b0-fd883c78e3b6@linux.intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4ac86429-9289-12b5-f4cd-b23ce020bbd6@arm.com>
Date: Thu, 3 Jun 2021 11:54:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <d7bd2bde-2b95-44fa-18b0-fd883c78e3b6@linux.intel.com>
Content-Language: en-GB
X-Mailman-Approved-At: Thu, 03 Jun 2021 13:32:32 +0000
Subject: Re: [Intel-gfx] i915 and swiotlb_max_segment
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
Cc: intel-gfx@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNi0wMyAxMDoxNywgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gCj4gSGksCj4gCj4g
T24gMDMvMDYvMjAyMSAwOTo0MCwgSm9vbmFzIExhaHRpbmVuIHdyb3RlOgo+PiArIFR2cnRrbyB0
byB0YWtlIGEgbG9vawo+Pgo+PiBRdW90aW5nIEtvbnJhZCBSemVzenV0ZWsgV2lsayAoMjAyMS0w
NS0yMCAxODoxMjo1OCkKPj4+IE9uIE1vbiwgTWF5IDEwLCAyMDIxIGF0IDA1OjI1OjI1UE0gKzAy
MDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+Pj4+IEhpIGFsbCwKPj4+Pgo+Pj4+IHN3aW90
bGJfbWF4X3NlZ21lbnQgaXMgYSByYXRoZXIgc3RyYW5nZSAiQVBJIiBleHBvcnQgYnkgc3dpb3Rs
Yi5jLAo+Pj4+IGFuZCBpOTE1IGlzIHRoZSBvbmx5IChyZW1haW5pbmcpIHVzZXIuCj4+Pj4KPj4+
PiBzd2lvdGxiX21heF9zZWdtZW50IHJldHVybnMgMCBpZiBzd2lvdGxiIGlzIG5vdCBpbiB1c2Us
IDEgaWYKPj4+PiBTV0lPVExCX0ZPUkNFIGlzIHNldCBvciBzd2lvdGxiLXplbiBpcyBzZXQsIGFu
ZCB0aGUgc3dpb3RsYiBzZWdtZW50Cj4+Pj4gc2l6ZSB3aGVuIHN3aW90bGIgaXMgb3RoZXJ3aXNl
IGVuYWJsZWQuCj4+Pj4KPj4+PiBpOTE1IHRoZW4gdXNlcyBpdCB0bzoKPj4+Pgo+Pj4+IMKgIGEp
IGRlY2lkZWQgb24gdGhlIG1heCBvcmRlciBpbiBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2lu
dGVybmFsCj4+Pj4gwqAgYikgZGVjaWRlIG9uIGEgbWF4IHNlZ21lbnQgc2l6ZSBpbiBpOTE1X3Nn
X3NlZ21lbnRfc2l6ZQo+Pj4+Cj4+Pj4gZm9yIGEpIGl0IHJlYWxseSBzZWVtcyBpOTE1IHNob3Vs
ZCBzd2l0Y2ggdG8gZG1hX2FsbG9jX25vbmNvaGVyZW50Cj4+Pj4gb3IgZG1hX2FsbG9jX25vbmNv
bnRpZ291cyBBU0FQIGluc3RlYWQgb2YgdXNpbmcgYWxsb2NfcGFnZSBhbmQKPj4+PiBzdHJlYW1p
bmcgRE1BIG1hcHBpbmdzLsKgIEFueSBjaGFuY2UgSSBjb3VsZCB0cmljayBvbmUgb2YgdGhlIGk5
MTUKPj4+PiBtYWludGFpbmVzIGludG8gZG9pbmcganVzdCB0aGF0IGdpdmVuIHRoYXQgdGhlIGNh
bGxjaGFpbiBpcyBub3QKPj4+PiBleGFjdGx5IHRyaXZpYWw/Cj4+Pj4KPj4+PiBGb3IgYikgSSdt
IG5vdCBzdXJlIHN3aW90bGIgYW5kIGk5MTUgcmVhbGx5IGFncmVlIG9uIHRoZSBtZWFuaW5nCj4+
Pj4gb2YgdGhlIHZhbHVlLsKgIHN3aW90bGJfc2V0X21heF9zZWdtZW50IGJhc2ljYWxseSByZXR1
cm5zIHRoZSBlbnRpcmUKPj4+PiBzaXplIG9mIHRoZSBzd2lvdGxiIGJ1ZmZlciwgd2hpbGUgaTkx
NSBzZWVtcyB0byB1c2UgaXQgdG8gbGltaXQKPj4+PiB0aGUgc2l6ZSBlYWNoIHNjYXR0ZXJsaXN0
IGVudHJ5LsKgIEl0IHNlZW1zIGxpa2UgZG1hX21heF9tYXBwaW5nX3NpemUKPj4+PiBtaWdodCBi
ZSB0aGUgYmVzdCB2YWx1ZSB0byB1c2UgaGVyZS4KPj4+Cj4+PiBZZXMuIFRoZSBiYWNrZ3JvdW5k
IGJlaGluZCB0aGF0IHdhcyBTV0lPVExCIHdvdWxkIGZhaWwgYmVjYXVzZSB3ZWxsLCB0aGUKPj4+
IHNpemUgb2YgdGhlIHNnIHdhcyB0b28gbGFyZ2UuIEFuZCBzb21lIHdheSB0byBsaW1pdCBpdCB0
byBtYXggc2l6ZQo+Pj4gd2FzIG5lZWRlZCAtIHRoZSBkbWFfbWF4X21hcHBpbmdfc2l6ZSAic2hv
dWxkIiBiZSBqdXN0IGZpbmUuCj4gCj4gQ2FuJ3Qgc2F5IEkgYW0gMTAwJSBhdCBob21lIGhlcmUg
YnV0IHdoYXQgSSByZW1lbWJlciBpcyB0aGF0IHRoZSAKPiBsaW1pdGluZyBmYWN0b3Igd2FzIG1h
eGltdW0gc2l6ZSBvZiBhIHNnIHNlZ21lbnQgYW5kIG5vdCB0b3RhbCBzaXplIG9mIAo+IHRoZSBt
YXBwaW5nLgo+IAo+IExvb2tpbmcgYXQgdGhlIGNvZGUgdG9kYXksIGlmIHdlIHdvdWxkIHJlcGxh
Y2UgdXNhZ2UgCj4gc3dpb3RsYl9tYXhfc2VnbWVudCgpIHdpdGggZG1hX21heF9tYXBwaW5nX3Np
emUoKSwgSSBkb24ndCBzZWUgdGhhdCAKPiB3b3VsZCB3b3JrIHdoZW4gd2UgY2FsbCBkbWFfbWFw
X3NnX2F0dHJzKCkuCj4gCj4gQmVjYXVzZSBBRkFJQ1QgY29kZSBjYW4gZW5kIHVwIGluIGRtYV9k
aXJlY3RfbWF4X21hcHBpbmdfc2l6ZSgpIChub3QgCj4gc3VyZSB3aGVuIHRoZSBvcHMtPm1hcF9z
ZyBwYXRoIGlzIGFjdGl2ZSBhbmQgd2hlcmUgdG8gdHJhY2UgdGhhdCkgd2hlcmUgCj4gd2UgaGF2
ZToKPiAKPiBzaXplX3QgZG1hX2RpcmVjdF9tYXhfbWFwcGluZ19zaXplKHN0cnVjdCBkZXZpY2Ug
KmRldikKPiB7Cj4gIMKgwqDCoMKgLyogSWYgU1dJT1RMQiBpcyBhY3RpdmUsIHVzZSBpdHMgbWF4
aW11bSBtYXBwaW5nIHNpemUgKi8KPiAgwqDCoMKgwqBpZiAoaXNfc3dpb3RsYl9hY3RpdmUoKSAm
Jgo+ICDCoMKgwqDCoMKgwqDCoCAoZG1hX2FkZHJlc3NpbmdfbGltaXRlZChkZXYpIHx8IHN3aW90
bGJfZm9yY2UgPT0gU1dJT1RMQl9GT1JDRSkpCj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiBzd2lv
dGxiX21heF9tYXBwaW5nX3NpemUoZGV2KTsKPiAgwqDCoMKgwqByZXR1cm4gU0laRV9NQVg7Cj4g
fQo+IAo+IFNvIGZvciBhbGwgc3dpb3RsYiBjYXNlcywgaW5jbHVkaW5nIGZvcmNlLCB3ZSBnZXQ6
Cj4gCj4gc2l6ZV90IHN3aW90bGJfbWF4X21hcHBpbmdfc2l6ZShzdHJ1Y3QgZGV2aWNlICpkZXYp
Cj4gewo+ICDCoMKgwqDCoHJldHVybiAoKHNpemVfdClJT19UTEJfU0laRSkgKiBJT19UTEJfU0VH
U0laRTsKPiB9Cj4gCj4gV2hpY2ggaXMgZml4ZWQgYW5kIGRvZXNuJ3QgYWxpZ24gd2l0aCBzd2lv
dGxiX21heF9zZWdtZW50KCkuIEJ1dCB5b3UgCj4gZ3V5cyBhcmUgdGhlIGV4cGVydHMgaGVyZSBz
byBwbGVhc2UgZmVlbCB0byBjb3JyZWN0IG1lLgoKQnV0IHN3aW90bGJfbWF4X3NlZ21lbnQgaXMg
YWxzbyBlZmZlY3RpdmVseSBmaXhlZCBmb3IgYSBnaXZlbiBzeXN0ZW0gCmNvaW5maWdyYXRpb24s
IGF0IGVpdGhlciBhIHBhZ2UgKHVuZGVyIGNlcnRhaW4gY2lyY3Vtc3RhbmNlcyksIG9yIGEgCnZh
bHVlIGNvbnNpZGVyYWJseSBsYXJnZXIgdGhhbiB3aGF0IHRoZSBsb25nZXN0IG1hcHBhYmxlIFNH
IHNlZ21lbnQgCmFjdHVhbGx5IGlzLiBOZWl0aGVyIHNlZW1zIHBhcnRpY3VsYXJseSB1c2VmdWws
IGFuZCB0byBiZSBob25lc3QgSSAKc3VzcGVjdCB0aGUgZm9yY2VkLWJvdW5jZSBjYXNlcyBvbmx5
IHNldCBpdCB0byBhIHBhZ2UgYXMgYSBzbGVkZ2VoYW1tZXIgCnRvIG1ha2UgdGhpbmdzIHdvcmsg
KmJlY2F1c2UqIHRoZSAibm9ybWFsIiB2YWx1ZSBpcyBub25zZW5zZS4KClJvYmluLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
