Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E5338786D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 14:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A1B6EB42;
	Tue, 18 May 2021 12:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF166EB3F;
 Tue, 18 May 2021 12:04:54 +0000 (UTC)
IronPort-SDR: cEimaqjl8luMmIjrtid66X4Hd+Zd78dIyZ0rmetkeAR8D+1ONpqTQ6QdcvqblvIfQkhDB9XBkq
 sK+2y7VGlRuA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198742382"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="198742382"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:04:52 -0700
IronPort-SDR: cY2kNC4N+3bFfKbfo11DBKlf7EN2bMO9BAI9GECDa9NfubtCdQnSrQzSHTbfw2OvD4SVJeW35G
 2zQNqhRlzIdg==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="466381869"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:04:50 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-9-thomas.hellstrom@linux.intel.com>
 <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <45054121-954d-f20c-52b5-f375db7096e0@linux.intel.com>
Date: Tue, 18 May 2021 14:04:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <6149ee00-fa4a-3757-117a-8d622eb42070@amd.com>
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

Ck9uIDUvMTgvMjEgMTo1NSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPgo+Cj4gQW0gMTgu
MDUuMjEgdW0gMTA6MjYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4gVGhlIGludGVybmFs
IHR0bV9ib191dGlsIG1lbWNweSB1c2VzIHZtYXAgZnVuY3Rpb25hbGl0eSwgYW5kIHdoaWxlIGl0
Cj4+IHByb2JhYmx5IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHVzZSBpdCBmb3IgY29weWluZyBpbi0g
YW5kIG91dCBvZgo+PiBzZ2xpc3QgcmVwcmVzZW50ZWQgaW8gbWVtb3J5LCB1c2luZyBpb19tZW1f
cmVzZXJ2ZSgpIC8gaW9fbWVtX2ZyZWUoKQo+PiBjYWxsYmFja3MsIHRoYXQgd291bGQgY2F1c2Ug
cHJvYmxlbXMgd2l0aCBmYXVsdCgpLgo+PiBJbnN0ZWFkLCBpbXBsZW1lbnQgYSBtZXRob2QgbWFw
cGluZyBwYWdlLWJ5LXBhZ2UgdXNpbmcga21hcF9sb2NhbCgpCj4+IHNlbWFudGljcy4gQXMgYW4g
YWRkaXRpb25hbCBiZW5lZml0IHdlIHRoZW4gYXZvaWQgdGhlIG9jY2FzaW9uYWwgZ2xvYmFsCj4+
IFRMQiBmbHVzaGVzIG9mIHZtYXAoKSBhbmQgY29uc3VtaW5nIHZtYXAgc3BhY2UsIGVsaW1pbmF0
aW9uIG9mIGEgCj4+IGNyaXRpY2FsCj4+IHBvaW50IG9mIGZhaWx1cmUgYW5kIHdpdGggYSBzbGln
aHQgY2hhbmdlIG9mIHNlbWFudGljcyB3ZSBjb3VsZCBhbHNvIAo+PiBwdXNoCj4+IHRoZSBtZW1j
cHkgb3V0IGFzeW5jIGZvciB0ZXN0aW5nIGFuZCBhc3luYyBkcml2ZXIgZGV2ZWxwbWVudCBwdXJw
b3Nlcy4KPj4gUHVzaGluZyBvdXQgYXN5bmMgY2FuIGJlIGRvbmUgc2luY2UgdGhlcmUgaXMgbm8g
bWVtb3J5IGFsbG9jYXRpb24gCj4+IGdvaW5nIG9uCj4+IHRoYXQgY291bGQgdmlvbGF0ZSB0aGUg
ZG1hX2ZlbmNlIGxvY2tkZXAgcnVsZXMuCj4+Cj4+IEZvciBjb3BpZXMgZnJvbSBpb21lbSwgdXNl
IHRoZSBXQyBwcmVmZXRjaGluZyBtZW1jcHkgdmFyaWFudCBmb3IKPj4gYWRkaXRpb25hbCBzcGVl
ZC4KPj4KPj4gTm90ZSB0aGF0IGRyaXZlcnMgdGhhdCBkb24ndCB3YW50IHRvIHVzZSBzdHJ1Y3Qg
aW9fbWFwcGluZyBidXQgcmVsaWVzIG9uCj4+IG1lbXJlbWFwIGZ1bmN0aW9uYWxpdHksIGFuZCB0
aGF0IGRvbid0IHdhbnQgdG8gdXNlIHNjYXR0ZXJsaXN0cyBmb3IKPj4gVlJBTSBtYXkgd2VsbCBk
ZWZpbmUgc3BlY2lhbGl6ZWQgKGhvcGVmdWxseSByZXVzYWJsZSkgaXRlcmF0b3JzIGZvciAKPj4g
dGhlaXIKPj4gcGFydGljdWxhciBlbnZpcm9ubWVudC4KPgo+IEluIGdlbmVyYWwgeWVzIHBsZWFz
ZSBzaW5jZSBJIGhhdmUgdGhhdCBhcyBUT0RPIGZvciBUVE0gZm9yIGEgdmVyeSAKPiBsb25nIHRp
bWUuCj4KPiBCdXQgSSB3b3VsZCBwcmVmZXIgdG8gZml4IHRoZSBpbXBsZW1lbnRhdGlvbiBpbiBU
VE0gaW5zdGVhZCBhbmQgZ2l2ZSAKPiBpdCBwcm9wZXIgY3Vyc29yIGhhbmRsaW5nLgo+Cj4gQW1k
Z3B1IGlzIGFsc28gdXNpbmcgcGFnZSBiYXNlZCBpb21lbSBhbmQgd2UgYXJlIGhhdmluZyBzaW1p
bGFyIAo+IHdvcmthcm91bmRzIGluIHBsYWNlIHRoZXJlIGFzIHdlbGwuCj4KPiBJIHRoaW5rIGl0
IG1ha2VzIHNlbnNlIHRvIHVuaWZ5IHRoaXMgaW5zaWRlIFRUTSBhbmQgcmVtb3ZlIHRoZSBvbGQg
Cj4gbWVtY3B5IHV0aWwgZnVuY3Rpb24gd2hlbiBkb25lLgo+Cj4gUmVnYXJkcywKPiBDaHJpc3Rp
YW4uCgpDaHJpc3RpYW4sCgpJIHdhcyB0aGlua2luZyB3aGVuIHdlIHJlcGxhY2UgdGhlIGJvLm1l
bSB3aXRoIGEgcG9pbnRlciAoYW5kIHBlcmhhcHMgCmhhdmUgYSBkcml2ZXIgY2FsbGJhY2sgdG8g
YWxsb2NhdGUgdGhlIGJvLT5tZW0sCndlIGNvdWxkIHBlcmhhcHMgZW1iZWQgYSBzdHJ1Y3QgdHRt
X2ttYXBfaXRlciBhbmQgdXNlIGl0IGZvciBhbGwgbWFwcGluZyAKaW4gb25lIHdheSBvciBhbm90
aGVyKS4gVGhhdCB3b3VsZCBtZWFuIHBlcmhhcHMgbGFuZCB0aGlzIGlzIGk5MTUgbm93IAphbmQg
c29ydCBvdXQgdGhlIHVuaWZpY2F0aW9uIG9uY2UgdGhlIHN0cnVjdCB0dG1fcmVzb3VyY2UsIHN0
cnVjdCAKdHRtX2J1ZmZlcl9vYmplY3Qgc2VwYXJhdGlvbiBoYXMgbGFuZGVkPwoKL1Rob21hcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
