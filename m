Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22348380C81
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A63F6EEAB;
	Fri, 14 May 2021 15:03:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA526EEAB;
 Fri, 14 May 2021 15:03:10 +0000 (UTC)
IronPort-SDR: g/f+nh9BL48xmipoDMXNr1iVDptu+XkCFih3mUJvB90yJMrzYi7qHZQynEHB15o1dhg8RI3PAZ
 GBQcWQpzI6Pw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="285714065"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="285714065"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:03:08 -0700
IronPort-SDR: ZL3EDOZzF4m0PijERz92q++EGnMt0CEKJKax/dDCpYx9VyN5WrQbVsFRvdXLyFHwdpYCaJk5TX
 3IcY4mgF43Nw==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="393658662"
Received: from ankitsi2-mobl.ger.corp.intel.com (HELO [10.213.242.91])
 ([10.213.242.91])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:03:06 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Nieto, David M" <David.Nieto@amd.com>, Alex Deucher <alexdeucher@gmail.com>
References: <20210513110002.3641705-1-tvrtko.ursulin@linux.intel.com>
 <CADnq5_NEg4s2AWBTkjW7NXoBe+WB=qQUHCMPP6DcpGSLbBF-rg@mail.gmail.com>
 <c6c61179-5b4b-4e0b-6e57-ec4839ca3268@linux.intel.com>
 <CADnq5_N03pz6GmptzhRnCRQH=qkd4eWuAbuUysHp-A9NZHQMHg@mail.gmail.com>
 <BYAPR12MB2840AA68BCAEBD9279C6184FF4509@BYAPR12MB2840.namprd12.prod.outlook.com>
 <39ccc2ef-05d1-d9f0-0639-ea86bef58b80@amd.com>
 <7d6d09fe-ec85-6aaf-9834-37a49ec7d6c5@linux.intel.com>
 <9144f63b-953d-2019-742d-6553e09f5b40@amd.com>
 <22e7d6ea-f2dd-26da-f264-b17aad25af95@linux.intel.com>
 <b2203d34-2de3-7c58-de2f-bf6fafc3f67c@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6cf2f14a-6a16-5ea3-d307-004faad4cc79@linux.intel.com>
Date: Fri, 14 May 2021 16:03:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <b2203d34-2de3-7c58-de2f-bf6fafc3f67c@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/7] Per client engine busyness
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
Cc: Intel Graphics Development <Intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzA1LzIwMjEgMTU6NTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMTQuMDUu
MjEgdW0gMTY6NDcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMTQvMDUvMjAyMSAx
NDo1MywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pgo+Pj4+IERhdmlkIGFsc28gc2FpZCB0
aGF0IHlvdSBjb25zaWRlcmVkIHN5c2ZzIGJ1dCB3ZXJlIHdhcnkgb2YgZXhwb3NpbmcgCj4+Pj4g
cHJvY2VzcyBpbmZvIGluIHRoZXJlLiBUbyBjbGFyaWZ5LCBteSBwYXRjaCBpcyBub3QgZXhwb3Np
bmcgc3lzZnMgCj4+Pj4gZW50cnkgcGVyIHByb2Nlc3MsIGJ1dCBvbmUgcGVyIG9wZW4gZHJtIGZk
Lgo+Pj4+Cj4+Pgo+Pj4gWWVzLCB3ZSBkaXNjdXNzZWQgdGhpcyBhcyB3ZWxsLCBidXQgdGhlbiBy
ZWplY3RlZCB0aGUgYXBwcm9hY2guCj4+Pgo+Pj4gVG8gaGF2ZSB1c2VmdWwgaW5mb3JtYXRpb24g
cmVsYXRlZCB0byB0aGUgb3BlbiBkcm0gZmQgeW91IG5lZWQgdG8gCj4+PiByZWxhdGVkIHRoYXQg
dG8gcHJvY2Vzcyhlcykgd2hpY2ggaGF2ZSB0aGF0IGZpbGUgZGVzY3JpcHRvciBvcGVuLiAKPj4+
IEp1c3QgdHJhY2tpbmcgd2hvIG9wZW5lZCBpdCBmaXJzdCBsaWtlIERSTSBkb2VzIGlzIHByZXR0
eSB1c2VsZXNzIG9uIAo+Pj4gbW9kZXJuIHN5c3RlbXMuCj4+Cj4+IFdlIGRvIHVwZGF0ZSB0aGUg
cGlkL25hbWUgZm9yIGZkcyBwYXNzZWQgb3ZlciB1bml4IHNvY2tldHMuCj4gCj4gV2VsbCBJIGp1
c3QgZG91YmxlIGNoZWNrZWQgYW5kIHRoYXQgaXMgbm90IGNvcnJlY3QuCj4gCj4gQ291bGQgYmUg
dGhhdCBpOTE1IGhhcyBzb21lIHNwZWNpYWwgY29kZSBmb3IgdGhhdCwgYnV0IG9uIG15IGxhcHRv
cCBJIAo+IG9ubHkgc2VlIHRoZSBYIHNlcnZlciB1bmRlciB0aGUgImNsaWVudHMiIGRlYnVnZnMg
ZmlsZS4KClllcyB3ZSBoYXZlIHNwZWNpYWwgY29kZSBpbiBpOTE1IGZvciB0aGlzLiBQYXJ0IG9m
IHRoaXMgc2VyaWVzIHdlIGFyZSAKZGlzY3Vzc2luZyBoZXJlLgoKPj4+IEJ1dCBhbiAibHNvZiAv
ZGV2L2RyaS9yZW5kZXJEMTI4IiBmb3IgZXhhbXBsZSBkb2VzIGV4YWN0bHkgd2hhdCB0b3AgCj4+
PiBkb2VzIGFzIHdlbGwsIGl0IGl0ZXJhdGVzIG92ZXIgL3Byb2MgYW5kIHNlZXMgd2hpY2ggcHJv
Y2VzcyBoYXMgdGhhdCAKPj4+IGZpbGUgb3Blbi4KPj4KPj4gTHNvZiBpcyBxdWl0ZSBpbmVmZmlj
aWVudCBmb3IgdGhpcyB1c2UgY2FzZS4gSXQgaGFzIHRvIG9wZW4gX2FsbF8gb3BlbiAKPj4gZmls
ZXMgZm9yIF9hbGxfIHByb2Nlc3NlcyBvbiB0aGUgc3lzdGVtIHRvIGZpbmQgYSBoYW5kZnVsIG9m
IG9uZXMgCj4+IHdoaWNoIG1heSBoYXZlIHRoZSBEUk0gZGV2aWNlIG9wZW4uCj4gCj4gQ29tcGxl
dGVseSBhZ3JlZS4KPiAKPiBUaGUga2V5IHBvaW50IGlzIHlvdSBlaXRoZXIgbmVlZCB0byBoYXZl
IGFsbCByZWZlcmVuY2VzIHRvIGFuIG9wZW4gZmQsIAo+IG9yIGF0IGxlYXN0IHRyYWNrIHdob2V2
ZXIgbGFzdCB1c2VkIHRoYXQgZmQuCj4gCj4gQXQgbGVhc3QgdGhlIGxhc3QgdGltZSBJIGxvb2tl
ZCBldmVuIHRoZSBmcyBsYXllciBkaWRuJ3Qga25vdyB3aGljaCBmZCAKPiBpcyBvcGVuIGJ5IHdo
aWNoIHByb2Nlc3MuIFNvIHRoZXJlIHdhc24ndCByZWFsbHkgYW55IGFsdGVybmF0aXZlIHRvIHRo
ZSAKPiBsc29mIGFwcHJvYWNoLgoKSSBhc2tlZCB5b3UgYWJvdXQgdGhlIHVzZSBjYXNlIHlvdSBo
YXZlIGluIG1pbmQgd2hpY2ggeW91IGRpZCBub3QgCmFuc3dlci4gT3RoZXJ3aXNlIEkgZG9uJ3Qg
dW5kZXJzdGFuZCB3aGVuIGRvIHlvdSBuZWVkIHRvIHdhbGsgYWxsIGZpbGVzLiAKV2hhdCBpbmZv
cm1hdGlvbiB5b3Ugd2FudCB0byBnZXQ/CgpGb3IgdGhlIHVzZSBjYXNlIG9mIGtub3dpbmcgd2hp
Y2ggRFJNIGZpbGUgaXMgdXNpbmcgaG93IG11Y2ggR1BVIHRpbWUgb24gCmVuZ2luZSBYIHdlIGRv
IG5vdCBuZWVkIHRvIHdhbGsgYWxsIG9wZW4gZmlsZXMgZWl0aGVyIHdpdGggbXkgc3lzZnMgCmFw
cHJvYWNoIG9yIHRoZSBwcm9jIGFwcHJvYWNoIGZyb20gQ2hyaXMuIChJbiB0aGUgZm9ybWVyIGNh
c2Ugd2UgCm9wdGlvbmFsbHkgYWdncmVnYXRlIGJ5IFBJRCBhdCBwcmVzZW50YXRpb24gdGltZSwg
YW5kIGluIHRoZSBsYXR0ZXIgY2FzZSAKYWdncmVnYXRpb24gaXMgaW1wbGljaXQuKQoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
