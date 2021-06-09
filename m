Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BDD3A1520
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 15:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122516E05A;
	Wed,  9 Jun 2021 13:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606C16E05A;
 Wed,  9 Jun 2021 13:08:52 +0000 (UTC)
IronPort-SDR: S/MNObBbceaZ8bgjV6d67IpVTHt04U1UvqLIAik+18UbgruYq/nSS7pIfzaZ0giGFYVH/DGxW7
 YoAneCzprbQw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192382727"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="192382727"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 06:08:36 -0700
IronPort-SDR: xXglEx2f/6uwO5YpV3F+wmccuJ9SYxNegOXEBnf5xs3ERK8DOKqNAo5mK98H1YRLbMURWS7ZDn
 qKmOnr7D8xPA==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="440837614"
Received: from hkrasnod-mobl1.ger.corp.intel.com (HELO [10.249.254.21])
 ([10.249.254.21])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 06:08:35 -0700
To: Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel@ffwll.ch>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <YMCqm48rZIKLYk/s@phenom.ffwll.local>
 <9f38fc28-15fb-2736-ba01-503821fdbe54@linux.intel.com>
 <4d570a5b-0ea7-71ab-5082-e67f0cd668a7@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1cd6b04d-8928-14b3-a63d-c9ac2e81fcca@linux.intel.com>
Date: Wed, 9 Jun 2021 15:08:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <4d570a5b-0ea7-71ab-5082-e67f0cd668a7@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvOS8yMSAyOjIwIFBNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gT24gMDkvMDYvMjAyMSAx
MzoxNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+Cj4+IE9uIDYvOS8yMSAxOjQ4IFBNLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4gT24gV2VkLCBKdW4gMDksIDIwMjEgYXQgMDg6MzQ6MjdB
TSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+Pj4gQSBjb3VwbGUgb2YgcGF0Y2hl
cyBmcm9tIENocmlzIHdoaWNoIGltcGxlbWVudCBwaXBlbGluZWQgbWlncmF0aW9uIGFuZAo+Pj4+
IGNsZWFycyBieSBhdG9taWNhbGx5IHdyaXRpbmcgdGhlIFBURXMgaW4gcGxhY2UgYmVmb3JlIHBl
cmZvcm1pbmcgdGhlCj4+Pj4gYWN0dWFsIGJsaXQuCj4+Pj4KPj4+PiBTb21lIHd3IHV0aWxpdGll
cyBtYWlubHkgZm9yIHRoZSBhY2NvbXBhbnlpbmcgc2VsZnRlc3RzIGFkZGVkIGJ5IAo+Pj4+IFRo
b21hcywKPj4+PiBhcyB3ZWxsIGFzIG1vZGlmaWVkIHRoZSBhYm92ZSBwYXRjaGVzIGZvciB3dyBs
b2NraW5nLSBhbmQgbG1lbSAKPj4+PiBzdXBwb3J0Lgo+Pj4+Cj4+Pj4gVGhlIGFjdHVhbCBob29r
IHVwIHRvIHRoZSBpOTE1IHR0bSBiYWNrZW5kIGlzIGJlaW5nIHdvcmtlZCBvbiBhbmQgbm90Cj4+
Pj4gaW5jbHVkZWQgeWV0LCBzbyB0aGlzIGlzIGNvbnNpZGVyZWQgdG8gYmUgYW4gZWFybHkgcmV2
aWV3IG9wcG9ydHVuaXR5Lgo+Pj4+Cj4+Pj4gdjI6Cj4+Pj4gLSBBIGNvdXBsZSBvZiBtaW5vciBz
dHlsZSBmaXhlcyBwb2ludGVkIG91dCBieSBNYXR0aGV3IEF1bGQKPj4+PiAtIEV4cG9ydCBhbmQg
dXNlIGludGVsX2VuZ2luZV9kZXN0cm95X3Bpbm5lZF9jb250ZXh0KCkgdG8gYWRkcmVzcyBhCj4+
Pj4gbHPCoMKgIENJIHdhcm5pbmcgLyBmYWlsdXJlLgo+Pj4gSnVzdCB0byBjaGVjayBteSB1bmRl
cnN0YW5kaW5nIG9mIHRoZSBwbGFuOiBUaGVzZSBhcmUgdGhlIG5ldyB3aW5kb3dlZAo+Pj4gY2xl
YXIvYmx0IGZ1bmN0aW9ucyB3aGljaCB3ZSBwbGFuIHRvIHVzZSBldmVyeXdoZXJlLCBiZWNhdXNl
IGxlc3MgbmFzdHkKPj4+IGxvY2tpbmcgaW1wbGljYXRpb25zPyBBbmQgdGhlIGNsZWFyL2JsdCB3
ZSBjdXJyZW50bHkgaGF2ZSBpbiAKPj4+IHVwc3RyZWFtIHdpbGwKPj4+IGJlIHJlcGxhY2VkPwo+
Pgo+PiBZZXMuIFRoZXNlIGFyZSBmb3IgTE1FTSBjbGVhcmluZyBhbmQgbWlncmF0aW9uLiBJdCBs
b29rcyB0byBtZSBsaWtlIAo+PiB0aGUgb3RoZXIgb25lcyB3ZSBoYXZlIGluIHVwc3RyZWFtIGFy
ZSBhY3R1YWxseSB1bnVzZWQgZXhjZXB0IGZvciAKPj4gc2VsZnRlc3RzLiBXZSdyZSBhY3R1YWxs
eSB1c2luZyBDUFUgY2xlYXJpbmcgZm9yIG5vdy4KPj4KPj4+Cj4+PiBJZiBzbyB3b3VsZCBiZSBu
aWNlIGlmIHRoaXMgcGF0Y2ggc2V0IGluY2x1ZGVzIHRoYXQgcmVwbGFjZW1lbnQgd29yayAoSQo+
Pj4gdGhpbmsgcmlnaHQgbm93IGFsbCB3ZSBoYXZlIGlzIHRoZSBjbGVhciBmb3IgbG1lbSksIGlu
Y2x1ZGluZyAKPj4+IHVwZGF0aW5nIG9mCj4+PiBzZWxmdGVzdHMgYW5kIHN0dWZmIGxpa2UgdGhh
dC4gSnVzdCB0byBhdm9pZCBoYXZpbmcgdHdvIHdheXMgdG8gZG8gdGhlCj4+PiBzYW1lIHRoaW5n
IGluIHRoZSBkcml2ZXIuCj4+Cj4+IE9LLCBJJ2xsIGhhdmUgYSBsb29rIGF0IHN0cmlwcGluZyB0
aGUgZXhpc3RpbmcgY29kZS4gSWYgd2UgbmVlZCBpdCAKPj4gbW92aW5nIGZvcndhcmQsIHdlIGNh
biBhbHdheXMgcmUtYWRkLgo+Cj4gU29tZSBsb3cgaGFuZ2luZyBmcnVpdCB3b3VsZCBiZSBhbGwg
dGhlIGNsaWVudF9ibHQgc3R1ZmYgd2hpY2ggY2FuIGZvciAKPiBzdXJlIGJlIGRlbGV0ZWQgbm93
LgoKV2hhdCBoYXMgdGhlIGNsaWVudF9ibHQgc3R1ZmYgYmVlbiB1c2VkIGZvcj8KCkluIGFueSBj
YXNlLCBJIG5lZWQgMjUgY29tbWl0cyBmb3IgY29tbWl0IGFjY2VzcyB0byBiZSBncmFudGVkLgoK
L1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
