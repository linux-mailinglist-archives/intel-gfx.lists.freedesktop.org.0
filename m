Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFC1134AF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 23:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1CA88980C;
	Fri,  3 May 2019 21:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E23F89805;
 Fri,  3 May 2019 21:14:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 14:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="296812649"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.254.61.9])
 ([10.254.61.9])
 by orsmga004.jf.intel.com with ESMTP; 03 May 2019 14:14:33 -0700
To: Kenny Ho <y2kenny@gmail.com>, Leon Romanovsky <leon@kernel.org>
References: <20190501140438.9506-1-brian.welty@intel.com>
 <20190502083433.GP7676@mtr-leonro.mtl.com>
 <CAOWid-cYknxeTQvP9vQf3-i3Cpux+bs7uBs7_o-YMFjVCo19bg@mail.gmail.com>
From: "Welty, Brian" <brian.welty@intel.com>
Message-ID: <bb001de0-e4e5-6b3f-7ced-9d0fb329635b@intel.com>
Date: Fri, 3 May 2019 14:14:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAOWid-cYknxeTQvP9vQf3-i3Cpux+bs7uBs7_o-YMFjVCo19bg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 0/5] cgroup support for GPU devices
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
Cc: Parav Pandit <parav@mellanox.com>, David Airlie <airlied@linux.ie>,
 kenny.ho@amd.com, intel-gfx@lists.freedesktop.org,
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Li Zefan <lizefan@huawei.com>, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tejun Heo <tj@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 RDMA mailing list <linux-rdma@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMi8yMDE5IDM6NDggUE0sIEtlbm55IEhvIHdyb3RlOgo+IE9uIDUvMi8yMDE5IDE6MzQg
QU0sIExlb24gUm9tYW5vdnNreSB3cm90ZToKPj4gQ291bnQgdXMgKE1lbGxhbm94KSB0b28sIG91
ciBSRE1BIGRldmljZXMgYXJlIGV4cG9zaW5nIHNwZWNpYWwgYW5kCj4+IGxpbWl0ZWQgaW4gc2l6
ZSBkZXZpY2UgbWVtb3J5IHRvIHRoZSB1c2VycyBhbmQgd2Ugd291bGQgbGlrZSB0byBwcm92aWRl
Cj4+IGFuIG9wdGlvbiB0byB1c2UgY2dyb3VwIHRvIGNvbnRyb2wgaXRzIGV4cG9zdXJlLgoKSGkg
TGVvbiwgZ3JlYXQgdG8gaGVhciBhbmQgaGFwcHkgdG8gd29yayB3aXRoIHlvdSBhbmQgUkRNQSBj
b21tdW5pdHkKdG8gc2hhcGUgdGhpcyBmcmFtZXdvcmsgZm9yIHVzZSBieSBSRE1BIGRldmljZXMg
YXMgd2VsbC4gIFRoZSBpbnRlbnQKd2FzIHRvIHN1cHBvcnQgbW9yZSB0aGFuIEdQVSBkZXZpY2Vz
LgoKSW5jaWRlbnRhbGx5LCBJIGFsc28gd2FudGVkIHRvIGFzayBhYm91dCB0aGUgcmRtYSBjZ3Jv
dXAgY29udHJvbGxlcgphbmQgaWYgdGhlcmUgaXMgaW50ZXJlc3QgaW4gdXBkYXRpbmcgdGhlIGRl
dmljZSByZWdpc3RyYXRpb24gaW1wbGVtZW50ZWQKaW4gdGhhdCBjb250cm9sbGVyLiAgSXQgY291
bGQgdXNlIHRoZSBjZ3JvdXBfZGV2aWNlX3JlZ2lzdGVyKCkgdGhhdCBpcwpwcm9wb3NlZCBoZXJl
LiAgIEJ1dCB0aGlzIGlzIHBlcmhhcHMgZnV0dXJlIHdvcmssIHNvIGNhbiBkaXNjdXNzIHNlcGFy
YXRlbHkuCgoKPiBEb2Vzbid0IFJETUEgYWxyZWFkeSBoYXMgYSBzZXBhcmF0ZSBjZ3JvdXA/ICBX
aHkgbm90IGltcGxlbWVudCBpdCB0aGVyZT8KPiAKCkhpIEtlbm55LCBJIGNhbid0IGFuc3dlciBm
b3IgTGVvbiwgYnV0IEknbSBob3BlZnVsIGhlIGFncmVlcyB3aXRoIHJhdGlvbmFsZQpJIGdhdmUg
aW4gdGhlIGNvdmVyIGxldHRlci4gIE5hbWVseSwgdG8gaW1wbGVtZW50IGluIHJkbWEgY29udHJv
bGxlciwgd291bGQKbWVhbiBkdXBsaWNhdGluZyBleGlzdGluZyBtZW1jZyBjb250cm9scyB0aGVy
ZS4KCklzIEFNRCBpbnRlcmVzdGVkIGluIGNvbGxhYm9yYXRpbmcgdG8gaGVscCBzaGFwZSB0aGlz
IGZyYW1ld29yaz8KSXQgaXMgaW50ZW5kZWQgdG8gYmUgZGV2aWNlLW5ldXRyYWwsIHNvIGNvdWxk
IGJlIGxldmVyYWdlZCBieSB2YXJpb3VzCnR5cGVzIG9mIGRldmljZXMuCklmIHlvdSBoYXZlIGFu
IGFsdGVybmF0aXZlIHNvbHV0aW9uIHdlbGwgdW5kZXJ3YXksIHRoZW4gbWF5YmUKd2UgY2FuIHdv
cmsgdG9nZXRoZXIgdG8gbWVyZ2Ugb3VyIGVmZm9ydHMgaW50byBvbmUuCkluIHRoZSBlbmQsIHRo
ZSBEUk0gY29tbXVuaXR5IGlzIGJlc3Qgc2VydmVkIHdpdGggY29tbW9uIHNvbHV0aW9uLgoKCj4g
Cj4+PiBhbmQgd2l0aCBmdXR1cmUgd29yaywgd2UgY291bGQgZXh0ZW5kIHRvOgo+Pj4gKiAgdHJh
Y2sgYW5kIGNvbnRyb2wgc2hhcmUgb2YgR1BVIHRpbWUgKHJldXNlIG9mIGNwdS9jcHVhY2N0KQo+
Pj4gKiAgYXBwbHkgbWFzayBvZiBhbGxvd2VkIGV4ZWN1dGlvbiBlbmdpbmVzIChyZXVzZSBvZiBj
cHVzZXRzKQo+Pj4KPj4+IEluc3RlYWQgb2YgaW50cm9kdWNpbmcgYSBuZXcgY2dyb3VwIHN1YnN5
c3RlbSBmb3IgR1BVIGRldmljZXMsIGEgbmV3Cj4+PiBmcmFtZXdvcmsgaXMgcHJvcG9zZWQgdG8g
YWxsb3cgZGV2aWNlcyB0byByZWdpc3RlciB3aXRoIGV4aXN0aW5nIGNncm91cAo+Pj4gY29udHJv
bGxlcnMsIHdoaWNoIGNyZWF0ZXMgcGVyLWRldmljZSBjZ3JvdXBfc3Vic3lzX3N0YXRlIHdpdGhp
biB0aGUKPj4+IGNncm91cC4gIFRoaXMgZ2l2ZXMgZGV2aWNlIGRyaXZlcnMgdGhlaXIgb3duIHBy
aXZhdGUgY2dyb3VwIGNvbnRyb2xzCj4+PiAoc3VjaCBhcyBtZW1vcnkgbGltaXRzIG9yIG90aGVy
IHBhcmFtZXRlcnMpIHRvIGJlIGFwcGxpZWQgdG8gZGV2aWNlCj4+PiByZXNvdXJjZXMgaW5zdGVh
ZCBvZiBob3N0IHN5c3RlbSByZXNvdXJjZXMuCj4+PiBEZXZpY2UgZHJpdmVycyAoR1BVIG9yIG90
aGVyKSBhcmUgdGhlbiBhYmxlIHRvIHJldXNlIHRoZSBleGlzdGluZyBjZ3JvdXAKPj4+IGNvbnRy
b2xzLCBpbnN0ZWFkIG9mIGludmVudGluZyBzaW1pbGFyIG9uZXMuCj4+Pgo+Pj4gUGVyLWRldmlj
ZSBjb250cm9scyB3b3VsZCBiZSBleHBvc2VkIGluIGNncm91cCBmaWxlc3lzdGVtIGFzOgo+Pj4g
ICAgIG1vdW50LzxjZ3JvdXBfbmFtZT4vPHN1YnN5c19uYW1lPi5kZXZpY2VzLzxkZXZfbmFtZT4v
PHN1YnN5c19maWxlcz4KPj4+IHN1Y2ggYXMgKGZvciBleGFtcGxlKToKPj4+ICAgICBtb3VudC88
Y2dyb3VwX25hbWU+L21lbW9yeS5kZXZpY2VzLzxkZXZfbmFtZT4vbWVtb3J5Lm1heAo+Pj4gICAg
IG1vdW50LzxjZ3JvdXBfbmFtZT4vbWVtb3J5LmRldmljZXMvPGRldl9uYW1lPi9tZW1vcnkuY3Vy
cmVudAo+Pj4gICAgIG1vdW50LzxjZ3JvdXBfbmFtZT4vY3B1LmRldmljZXMvPGRldl9uYW1lPi9j
cHUuc3RhdAo+Pj4gICAgIG1vdW50LzxjZ3JvdXBfbmFtZT4vY3B1LmRldmljZXMvPGRldl9uYW1l
Pi9jcHUud2VpZ2h0Cj4+Pgo+Pj4gVGhlIGRybS9pOTE1IHBhdGNoIGluIHRoaXMgc2VyaWVzIGlz
IGJhc2VkIG9uIHRvcCBvZiBvdGhlciBSRkMgd29yayBbMV0KPj4+IGZvciBpOTE1IGRldmljZSBt
ZW1vcnkgc3VwcG9ydC4KPj4+Cj4+PiBBTUQgWzJdIGFuZCBJbnRlbCBbM10gaGF2ZSBwcm9wb3Nl
ZCByZWxhdGVkIHdvcmsgaW4gdGhpcyBhcmVhIHdpdGhpbiB0aGUKPj4+IGxhc3QgZmV3IHllYXJz
LCBsaXN0ZWQgYmVsb3cgYXMgcmVmZXJlbmNlLiAgVGhpcyBuZXcgUkZDIHJldXNlcyBleGlzdGlu
Zwo+Pj4gY2dyb3VwIGNvbnRyb2xsZXJzIGFuZCB0YWtlcyBhIGRpZmZlcmVudCBhcHByb2FjaCB0
aGFuIHByaW9yIHdvcmsuCj4+Pgo+Pj4gRmluYWxseSwgc29tZSBwb3RlbnRpYWwgZGlzY3Vzc2lv
biBwb2ludHMgZm9yIHRoaXMgc2VyaWVzOgo+Pj4gKiBtZXJnZSBwcm9wb3NlZCA8c3Vic3lzX25h
bWU+LmRldmljZXMgaW50byBhIHNpbmdsZSBkZXZpY2VzIGRpcmVjdG9yeT8KPj4+ICogYWxsb3cg
ZGV2aWNlcyB0byBoYXZlIG11bHRpcGxlIHJlZ2lzdHJhdGlvbnMgZm9yIHN1YnNldHMgb2YgcmVz
b3VyY2VzPwo+Pj4gKiBkb2N1bWVudCBhICdjb21tb24gY2hhcmdpbmcgcG9saWN5JyBmb3IgZGV2
aWNlIGRyaXZlcnMgdG8gZm9sbG93Pwo+Pj4KPj4+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzU2NjgzLwo+Pj4gWzJdIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE4LU5vdmVtYmVyLzE5NzEwNi5odG1sCj4+PiBb
M10gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMTgt
SmFudWFyeS8xNTMxNTYuaHRtbAo+Pj4KPj4+Cj4+PiBCcmlhbiBXZWx0eSAoNSk6Cj4+PiAgIGNn
cm91cDogQWRkIGNncm91cF9zdWJzeXMgcGVyLWRldmljZSByZWdpc3RyYXRpb24gZnJhbWV3b3Jr
Cj4+PiAgIGNncm91cDogQ2hhbmdlIGtlcm5mc19ub2RlIGZvciBkaXJlY3RvcmllcyB0byBzdG9y
ZQo+Pj4gICAgIGNncm91cF9zdWJzeXNfc3RhdGUKPj4+ICAgbWVtY2c6IEFkZCBwZXItZGV2aWNl
IHN1cHBvcnQgdG8gbWVtb3J5IGNncm91cCBzdWJzeXN0ZW0KPj4+ICAgZHJtOiBBZGQgbWVtb3J5
IGNncm91cCByZWdpc3RyYXRpb24gYW5kIERSSVZFUl9DR1JPVVBTIGZlYXR1cmUgYml0Cj4+PiAg
IGRybS9pOTE1OiBVc2UgbWVtb3J5IGNncm91cCBmb3IgZW5mb3JjaW5nIGRldmljZSBtZW1vcnkg
bGltaXQKPj4+Cj4+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAgICAgICAgICAgICAgICAg
IHwgIDEyICsKPj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAgICAgICAg
fCAgIDcgKwo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICB8
ICAgMiArLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8
ICAyNCArLQo+Pj4gIGluY2x1ZGUvZHJtL2RybV9kZXZpY2UuaCAgICAgICAgICAgICAgICAgICB8
ICAgMyArCj4+PiAgaW5jbHVkZS9kcm0vZHJtX2Rydi5oICAgICAgICAgICAgICAgICAgICAgIHwg
ICA4ICsKPj4+ICBpbmNsdWRlL2RybS9kcm1fZ2VtLmggICAgICAgICAgICAgICAgICAgICAgfCAg
MTEgKwo+Pj4gIGluY2x1ZGUvbGludXgvY2dyb3VwLWRlZnMuaCAgICAgICAgICAgICAgICB8ICAy
OCArKwo+Pj4gIGluY2x1ZGUvbGludXgvY2dyb3VwLmggICAgICAgICAgICAgICAgICAgICB8ICAg
MyArCj4+PiAgaW5jbHVkZS9saW51eC9tZW1jb250cm9sLmggICAgICAgICAgICAgICAgIHwgIDEw
ICsKPj4+ICBrZXJuZWwvY2dyb3VwL2Nncm91cC12MS5jICAgICAgICAgICAgICAgICAgfCAgMTAg
Ky0KPj4+ICBrZXJuZWwvY2dyb3VwL2Nncm91cC5jICAgICAgICAgICAgICAgICAgICAgfCAzMTAg
KysrKysrKysrKysrKysrKysrLS0tCj4+PiAgbW0vbWVtY29udHJvbC5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMTgzICsrKysrKysrKysrLQo+Pj4gIDEzIGZpbGVzIGNoYW5nZWQsIDU1
MiBpbnNlcnRpb25zKCspLCA1OSBkZWxldGlvbnMoLSkKPj4+Cj4+PiAtLQo+Pj4gMi4yMS4wCj4+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBk
cmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
