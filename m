Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0CA3B5C65
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 12:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFCB6E417;
	Mon, 28 Jun 2021 10:18:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D8B6E417;
 Mon, 28 Jun 2021 10:18:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="293561775"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="293561775"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:18:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="419117739"
Received: from sankeeth-mobl.ger.corp.intel.com (HELO [10.213.225.79])
 ([10.213.225.79])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:18:17 -0700
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
 <6cf2f14a-6a16-5ea3-d307-004faad4cc79@linux.intel.com>
 <a2b03603-eb3e-7bef-a799-c15cfb1a8e0b@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <52dc8610-de57-a5a8-9a1d-0efebb29b881@linux.intel.com>
Date: Mon, 28 Jun 2021 11:16:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a2b03603-eb3e-7bef-a799-c15cfb1a8e0b@amd.com>
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

CgpPbiAxNC8wNS8yMDIxIDE2OjEwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+IEFtIDE0LjA1
LjIxIHVtIDE3OjAzIHNjaHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Cj4+IE9uIDE0LzA1LzIwMjEg
MTU6NTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxNC4wNS4yMSB1bSAxNjo0NyBz
Y2hyaWViIFR2cnRrbyBVcnN1bGluOgo+Pj4+Cj4+Pj4gT24gMTQvMDUvMjAyMSAxNDo1MywgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBEYXZpZCBhbHNvIHNhaWQgdGhhdCB5
b3UgY29uc2lkZXJlZCBzeXNmcyBidXQgd2VyZSB3YXJ5IG9mIAo+Pj4+Pj4gZXhwb3NpbmcgcHJv
Y2VzcyBpbmZvIGluIHRoZXJlLiBUbyBjbGFyaWZ5LCBteSBwYXRjaCBpcyBub3QgCj4+Pj4+PiBl
eHBvc2luZyBzeXNmcyBlbnRyeSBwZXIgcHJvY2VzcywgYnV0IG9uZSBwZXIgb3BlbiBkcm0gZmQu
Cj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiBZZXMsIHdlIGRpc2N1c3NlZCB0aGlzIGFzIHdlbGwsIGJ1dCB0
aGVuIHJlamVjdGVkIHRoZSBhcHByb2FjaC4KPj4+Pj4KPj4+Pj4gVG8gaGF2ZSB1c2VmdWwgaW5m
b3JtYXRpb24gcmVsYXRlZCB0byB0aGUgb3BlbiBkcm0gZmQgeW91IG5lZWQgdG8gCj4+Pj4+IHJl
bGF0ZWQgdGhhdCB0byBwcm9jZXNzKGVzKSB3aGljaCBoYXZlIHRoYXQgZmlsZSBkZXNjcmlwdG9y
IG9wZW4uIAo+Pj4+PiBKdXN0IHRyYWNraW5nIHdobyBvcGVuZWQgaXQgZmlyc3QgbGlrZSBEUk0g
ZG9lcyBpcyBwcmV0dHkgdXNlbGVzcyAKPj4+Pj4gb24gbW9kZXJuIHN5c3RlbXMuCj4+Pj4KPj4+
PiBXZSBkbyB1cGRhdGUgdGhlIHBpZC9uYW1lIGZvciBmZHMgcGFzc2VkIG92ZXIgdW5peCBzb2Nr
ZXRzLgo+Pj4KPj4+IFdlbGwgSSBqdXN0IGRvdWJsZSBjaGVja2VkIGFuZCB0aGF0IGlzIG5vdCBj
b3JyZWN0Lgo+Pj4KPj4+IENvdWxkIGJlIHRoYXQgaTkxNSBoYXMgc29tZSBzcGVjaWFsIGNvZGUg
Zm9yIHRoYXQsIGJ1dCBvbiBteSBsYXB0b3AgSSAKPj4+IG9ubHkgc2VlIHRoZSBYIHNlcnZlciB1
bmRlciB0aGUgImNsaWVudHMiIGRlYnVnZnMgZmlsZS4KPj4KPj4gWWVzIHdlIGhhdmUgc3BlY2lh
bCBjb2RlIGluIGk5MTUgZm9yIHRoaXMuIFBhcnQgb2YgdGhpcyBzZXJpZXMgd2UgYXJlIAo+PiBk
aXNjdXNzaW5nIGhlcmUuCj4gCj4gQWgsIHllYWggeW91IHNob3VsZCBtZW50aW9uIHRoYXQuIENv
dWxkIHdlIHBsZWFzZSBzZXBhcmF0ZSB0aGF0IGludG8gCj4gY29tbW9uIGNvZGUgaW5zdGVhZD8g
Q2F1c2UgSSByZWFsbHkgc2VlIHRoYXQgYXMgYSBidWcgaW4gdGhlIGN1cnJlbnQgCj4gaGFuZGxp
bmcgaW5kZXBlbmRlbnQgb2YgdGhlIGRpc2N1c3Npb24gaGVyZS4KCldoYXQgd2UgZG8gaW4gaTkx
NSBpcyB1cGRhdGUgdGhlIHBpZCBhbmQgbmFtZSB3aGVuIGEgdGFzayBkaWZmZXJlbnQgdG8gCnRo
ZSBvbmUgd2hpY2ggb3BlbmVkIHRoZSBmZCBkb2VzIGEgR0VNIGNvbnRleHQgY3JlYXRlIGlvY3Rs
LgoKTW92aW5nIHRoYXQgdG8gRFJNIGNvcmUgd291bGQgYmUgYWxvbmcgdGhlIGxpbmVzIG9mIGRv
aW5nIHRoZSBzYW1lIGNoZWNrIAphbmQgdXBkYXRlIG9uIGV2ZXJ5IGlvY3RsLiBNYXliZSBhbGxv
dyB0aGUgdXBkYXRlIHRvIGJlIG9uZSB0aW1lIG9ubHkgaWYgCnRoYXQgd291bGQgd29yay4gV291
bGQgdGhpcyBiZSBkZXNpcmFibGUgYW5kIGFjY2VwdGFibGU/IElmIHNvIEkgY2FuIApkZWZpbml0
ZWx5IHNrZXRjaCBpdCBvdXQuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
