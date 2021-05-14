Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC37380C2F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 16:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F926EE92;
	Fri, 14 May 2021 14:48:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2722A6EE92;
 Fri, 14 May 2021 14:48:04 +0000 (UTC)
IronPort-SDR: 745Oo6WW2EW8f5losdSw6ekC3VxojCD+7FPOUP+W6A+pIVn48wnh0udLR4YMKqDZTCYa01G7vb
 l+Sqqcpq3ahw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="180462124"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="180462124"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 07:47:59 -0700
IronPort-SDR: mC2DvXEUs543hvkL18nurt6sOyfXYFqMKfR7c+clY/viw2nbDL40cR+gKQXFg0WCvKeAvAnEdI
 gAcW+JfUzlgA==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="393654702"
Received: from ankitsi2-mobl.ger.corp.intel.com (HELO [10.213.242.91])
 ([10.213.242.91])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 07:47:57 -0700
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <22e7d6ea-f2dd-26da-f264-b17aad25af95@linux.intel.com>
Date: Fri, 14 May 2021 15:47:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9144f63b-953d-2019-742d-6553e09f5b40@amd.com>
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

Ck9uIDE0LzA1LzIwMjEgMTQ6NTMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Cj4+IERhdmlk
IGFsc28gc2FpZCB0aGF0IHlvdSBjb25zaWRlcmVkIHN5c2ZzIGJ1dCB3ZXJlIHdhcnkgb2YgZXhw
b3NpbmcgCj4+IHByb2Nlc3MgaW5mbyBpbiB0aGVyZS4gVG8gY2xhcmlmeSwgbXkgcGF0Y2ggaXMg
bm90IGV4cG9zaW5nIHN5c2ZzIAo+PiBlbnRyeSBwZXIgcHJvY2VzcywgYnV0IG9uZSBwZXIgb3Bl
biBkcm0gZmQuCj4+Cj4gCj4gWWVzLCB3ZSBkaXNjdXNzZWQgdGhpcyBhcyB3ZWxsLCBidXQgdGhl
biByZWplY3RlZCB0aGUgYXBwcm9hY2guCj4gCj4gVG8gaGF2ZSB1c2VmdWwgaW5mb3JtYXRpb24g
cmVsYXRlZCB0byB0aGUgb3BlbiBkcm0gZmQgeW91IG5lZWQgdG8gCj4gcmVsYXRlZCB0aGF0IHRv
IHByb2Nlc3MoZXMpIHdoaWNoIGhhdmUgdGhhdCBmaWxlIGRlc2NyaXB0b3Igb3Blbi4gSnVzdCAK
PiB0cmFja2luZyB3aG8gb3BlbmVkIGl0IGZpcnN0IGxpa2UgRFJNIGRvZXMgaXMgcHJldHR5IHVz
ZWxlc3Mgb24gbW9kZXJuIAo+IHN5c3RlbXMuCgpXZSBkbyB1cGRhdGUgdGhlIHBpZC9uYW1lIGZv
ciBmZHMgcGFzc2VkIG92ZXIgdW5peCBzb2NrZXRzLgoKPiBCdXQgYW4gImxzb2YgL2Rldi9kcmkv
cmVuZGVyRDEyOCIgZm9yIGV4YW1wbGUgZG9lcyBleGFjdGx5IHdoYXQgdG9wIGRvZXMgCj4gYXMg
d2VsbCwgaXQgaXRlcmF0ZXMgb3ZlciAvcHJvYyBhbmQgc2VlcyB3aGljaCBwcm9jZXNzIGhhcyB0
aGF0IGZpbGUgb3Blbi4KCkxzb2YgaXMgcXVpdGUgaW5lZmZpY2llbnQgZm9yIHRoaXMgdXNlIGNh
c2UuIEl0IGhhcyB0byBvcGVuIF9hbGxfIG9wZW4gCmZpbGVzIGZvciBfYWxsXyBwcm9jZXNzZXMg
b24gdGhlIHN5c3RlbSB0byBmaW5kIGEgaGFuZGZ1bCBvZiBvbmVzIHdoaWNoIAptYXkgaGF2ZSB0
aGUgRFJNIGRldmljZSBvcGVuLgoKPiBTbyBldmVuIHdpdGggc3lzZnMgYWlkIGZvciBkaXNjb3Zl
cnkgeW91IGFyZSBiYWNrIHRvIGp1c3QgZ29pbmcgb3ZlciBhbGwgCj4gZmlsZXMgYWdhaW4uCgpG
b3Igd2hhdCB1c2UgY2FzZT8KClRvIGVuYWJsZSBHUFUgdXNhZ2UgaW4gdG9wIHdlIGNhbiBkbyBt
dWNoIGJldHRlciB0aGFuIGl0ZXJhdGUgb3ZlciBhbGwgCm9wZW4gZmlsZXMgaW4gdGhlIHN5c3Rl
bS4gV2UgY2FuIHN0YXJ0IHdpdGggYSBwcm9jZXNzIGlmIGdvaW5nIHdpdGggdGhlIAovcHJvYyBw
cm9wb3NhbCwgb3Igd2l0aCB0aGUgb3BlbmVkIERSTSBmaWxlIGRpcmVjdGx5IHdpdGggdGhlIHN5
c2ZzIApwcm9wb3NhbC4gQm90aCBhcmUgc2lnbmlmaWNhbnRseSBmZXdlciB0aGFuIHRvdGFsIG51
bWJlciBvZiBvcGVuIGZpbGVzIAphY3Jvc3MgYWxsIHByb2Nlc3Nlcy4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
