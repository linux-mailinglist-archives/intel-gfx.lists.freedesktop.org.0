Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 503F4387933
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 14:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236B56E88C;
	Tue, 18 May 2021 12:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027356E877;
 Tue, 18 May 2021 12:52:23 +0000 (UTC)
IronPort-SDR: Ipka6mtsgWMsMUWcq+aTqkMJpH96siEDYXJub4/pX/jVnGwxkFoKdYdTI/JQLB7Y+Meodkkenf
 9Susl4HENgJg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200750585"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="200750585"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:52:23 -0700
IronPort-SDR: x0nmVCWXmFPMQYCvG8/teADiRPk+QQDi88kwrsVE8iCHRxTHMmI6NbChejx7Yx3GNEO7E3UBU5
 kPNIm5RvW8bA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="466395694"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:52:21 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-9-thomas.hellstrom@linux.intel.com>
 <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
 <45054121-954d-f20c-52b5-f375db7096e0@linux.intel.com>
 <d547a037-2aa8-76a8-375c-5da580fab631@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <400de9b7-f385-0581-ebb5-e07247d4c996@linux.intel.com>
Date: Tue, 18 May 2021 14:52:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <d547a037-2aa8-76a8-375c-5da580fab631@amd.com>
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

Ck9uIDUvMTgvMjEgMjowOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxNDowNCBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pgo+PiBPbiA1LzE4LzIxIDE6
NTUgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pgo+Pj4KPj4+IEFtIDE4LjA1LjIxIHVt
IDEwOjI2IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4gVGhlIGludGVybmFsIHR0bV9i
b191dGlsIG1lbWNweSB1c2VzIHZtYXAgZnVuY3Rpb25hbGl0eSwgYW5kIHdoaWxlIGl0Cj4+Pj4g
cHJvYmFibHkgbWlnaHQgYmUgcG9zc2libGUgdG8gdXNlIGl0IGZvciBjb3B5aW5nIGluLSBhbmQg
b3V0IG9mCj4+Pj4gc2dsaXN0IHJlcHJlc2VudGVkIGlvIG1lbW9yeSwgdXNpbmcgaW9fbWVtX3Jl
c2VydmUoKSAvIGlvX21lbV9mcmVlKCkKPj4+PiBjYWxsYmFja3MsIHRoYXQgd291bGQgY2F1c2Ug
cHJvYmxlbXMgd2l0aCBmYXVsdCgpLgo+Pj4+IEluc3RlYWQsIGltcGxlbWVudCBhIG1ldGhvZCBt
YXBwaW5nIHBhZ2UtYnktcGFnZSB1c2luZyBrbWFwX2xvY2FsKCkKPj4+PiBzZW1hbnRpY3MuIEFz
IGFuIGFkZGl0aW9uYWwgYmVuZWZpdCB3ZSB0aGVuIGF2b2lkIHRoZSBvY2Nhc2lvbmFsIAo+Pj4+
IGdsb2JhbAo+Pj4+IFRMQiBmbHVzaGVzIG9mIHZtYXAoKSBhbmQgY29uc3VtaW5nIHZtYXAgc3Bh
Y2UsIGVsaW1pbmF0aW9uIG9mIGEgCj4+Pj4gY3JpdGljYWwKPj4+PiBwb2ludCBvZiBmYWlsdXJl
IGFuZCB3aXRoIGEgc2xpZ2h0IGNoYW5nZSBvZiBzZW1hbnRpY3Mgd2UgY291bGQgCj4+Pj4gYWxz
byBwdXNoCj4+Pj4gdGhlIG1lbWNweSBvdXQgYXN5bmMgZm9yIHRlc3RpbmcgYW5kIGFzeW5jIGRy
aXZlciBkZXZlbHBtZW50IHB1cnBvc2VzLgo+Pj4+IFB1c2hpbmcgb3V0IGFzeW5jIGNhbiBiZSBk
b25lIHNpbmNlIHRoZXJlIGlzIG5vIG1lbW9yeSBhbGxvY2F0aW9uIAo+Pj4+IGdvaW5nIG9uCj4+
Pj4gdGhhdCBjb3VsZCB2aW9sYXRlIHRoZSBkbWFfZmVuY2UgbG9ja2RlcCBydWxlcy4KPj4+Pgo+
Pj4+IEZvciBjb3BpZXMgZnJvbSBpb21lbSwgdXNlIHRoZSBXQyBwcmVmZXRjaGluZyBtZW1jcHkg
dmFyaWFudCBmb3IKPj4+PiBhZGRpdGlvbmFsIHNwZWVkLgo+Pj4+Cj4+Pj4gTm90ZSB0aGF0IGRy
aXZlcnMgdGhhdCBkb24ndCB3YW50IHRvIHVzZSBzdHJ1Y3QgaW9fbWFwcGluZyBidXQgCj4+Pj4g
cmVsaWVzIG9uCj4+Pj4gbWVtcmVtYXAgZnVuY3Rpb25hbGl0eSwgYW5kIHRoYXQgZG9uJ3Qgd2Fu
dCB0byB1c2Ugc2NhdHRlcmxpc3RzIGZvcgo+Pj4+IFZSQU0gbWF5IHdlbGwgZGVmaW5lIHNwZWNp
YWxpemVkIChob3BlZnVsbHkgcmV1c2FibGUpIGl0ZXJhdG9ycyBmb3IgCj4+Pj4gdGhlaXIKPj4+
PiBwYXJ0aWN1bGFyIGVudmlyb25tZW50Lgo+Pj4KPj4+IEluIGdlbmVyYWwgeWVzIHBsZWFzZSBz
aW5jZSBJIGhhdmUgdGhhdCBhcyBUT0RPIGZvciBUVE0gZm9yIGEgdmVyeSAKPj4+IGxvbmcgdGlt
ZS4KPj4+Cj4+PiBCdXQgSSB3b3VsZCBwcmVmZXIgdG8gZml4IHRoZSBpbXBsZW1lbnRhdGlvbiBp
biBUVE0gaW5zdGVhZCBhbmQgZ2l2ZSAKPj4+IGl0IHByb3BlciBjdXJzb3IgaGFuZGxpbmcuCj4+
Pgo+Pj4gQW1kZ3B1IGlzIGFsc28gdXNpbmcgcGFnZSBiYXNlZCBpb21lbSBhbmQgd2UgYXJlIGhh
dmluZyBzaW1pbGFyIAo+Pj4gd29ya2Fyb3VuZHMgaW4gcGxhY2UgdGhlcmUgYXMgd2VsbC4KPj4+
Cj4+PiBJIHRoaW5rIGl0IG1ha2VzIHNlbnNlIHRvIHVuaWZ5IHRoaXMgaW5zaWRlIFRUTSBhbmQg
cmVtb3ZlIHRoZSBvbGQgCj4+PiBtZW1jcHkgdXRpbCBmdW5jdGlvbiB3aGVuIGRvbmUuCj4+Pgo+
Pj4gUmVnYXJkcywKPj4+IENocmlzdGlhbi4KPj4KPj4gQ2hyaXN0aWFuLAo+Pgo+PiBJIHdhcyB0
aGlua2luZyB3aGVuIHdlIHJlcGxhY2UgdGhlIGJvLm1lbSB3aXRoIGEgcG9pbnRlciAoYW5kIHBl
cmhhcHMgCj4+IGhhdmUgYSBkcml2ZXIgY2FsbGJhY2sgdG8gYWxsb2NhdGUgdGhlIGJvLT5tZW0s
Cj4+IHdlIGNvdWxkIHBlcmhhcHMgZW1iZWQgYSBzdHJ1Y3QgdHRtX2ttYXBfaXRlciBhbmQgdXNl
IGl0IGZvciBhbGwgCj4+IG1hcHBpbmcgaW4gb25lIHdheSBvciBhbm90aGVyKS4gVGhhdCB3b3Vs
ZCBtZWFuIHBlcmhhcHMgbGFuZCB0aGlzIGlzIAo+PiBpOTE1IG5vdyBhbmQgc29ydCBvdXQgdGhl
IHVuaWZpY2F0aW9uIG9uY2UgdGhlIHN0cnVjdCB0dG1fcmVzb3VyY2UsIAo+PiBzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3Qgc2VwYXJhdGlvbiBoYXMgbGFuZGVkPwo+Cj4gVGhhdCBzdHVmZiBpcyBy
ZWFkeSwgcmV2aWV3ZWQgYW5kIEknbSBqdXN0IHdhaXRpbmcgZm9yIHNvbWUgYW1kZ3B1IAo+IGNo
YW5nZXMgdG8gbGFuZCBpbiBkcm0tbWlzYy1uZXh0IHRvIHB1c2ggaXQuCj4KPiBCdXQgeWVzIGlu
IGdlbmVyYWwgYW4gaXRlcmF0b3IgZm9yIHRoZSByZXNvdXJjZSBvYmplY3Qgc291bmRzIGxpa2Ug
dGhlIAo+IHJpZ2h0IHBsYW4gdG8gbWUgYXMgd2VsbC4KPgo+IENocmlzdGlhbi4KCk9LLCBzbyB0
aGVuIGFyZSB5b3UgT0sgd2l0aCBsYW5kaW5nIHRoaXMgaW4gaTkxNSBmb3Igbm93PyBUaGF0IHdv
dWxkIAphbHNvIG9mYyBtZWFuIHRoZSBleHBvcnQgeW91IE5BSydkIGJ1dCBzdHJpY3RseSBmb3Ig
dGhpcyBtZW1jcHkgdXNlIAp1bnRpbCB3ZSBtZXJnZSBpdCB3aXRoIFRUTT8KCi9UaG9tYXMKCj4K
Pj4KPj4gL1Rob21hcwo+Pgo+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
