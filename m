Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A9A3B61B6
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 16:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBD289FF7;
	Mon, 28 Jun 2021 14:37:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE96889D5E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 14:37:18 +0000 (UTC)
Received: by mail-oo1-xc2d.google.com with SMTP id
 g3-20020a4ae8830000b029024c9afa2547so892722ooe.6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 07:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V/saHbRlyOy5ddJuZOY9EHpBakgA7dAfHWaeEThMt6A=;
 b=h/EzmTXiakdw18lflKTMGoyTqhb7BbYy5aWheTjljmzLSCxfZeuhFORgkFlXmrfyKR
 D1HKSOQlOMi37w1J44+TDVqChS827up+ez7wvwE2C09swqywP5eEdrGbvjGwfTbJAsup
 aZQNGpmiVVKbIFp4ZkgvfxqK0uO1904Mqqdl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V/saHbRlyOy5ddJuZOY9EHpBakgA7dAfHWaeEThMt6A=;
 b=Bh4qjRjdm2KDc7+pN4wfF04jQGXJsCDByYvAN0ArmojM1kuuEEm6EMzQOnjk5IciFR
 KoOqYypZLX5IMZrrUvR9KgEmqzM0V/YxalgVO+hynJX2UgbcSno8V/J/VxXBfGs1Nrsz
 75/bc0LJGgQy8WYg3avhP8JUiAlcU/C3Jn67m8Ernhcj0tUecHaRPWWPa9/A9tg50nq+
 E/hHAH9V6TUza2mB84/r54bJS20E1S41hZ394Irxj3fIwYCNsfV0Ntr6fF3HTGtP224z
 LFrnAAC0k+lrGhXlBODo+6Y5sYpfEthcJBeX/GRMt4GgyWTD6Ezwl5yAczp9MdDAYQpk
 qNIg==
X-Gm-Message-State: AOAM5312FU0Zq6ABmUzjs6DoPMxV9dJocCKPxaHf7W4Qbx5+N3SJsj5c
 /nWZkXTZ37uZb4tXz2c+BLETo0VY1zkSkg/GNsD59g==
X-Google-Smtp-Source: ABdhPJwkjv7kqc9F9YfPK4DKsl3yXpQr+eWXfMKOw7gKDof92VntbnCTRW1jJRcCVsDIX2fPprSKarbGArGf9wR/7bc=
X-Received: by 2002:a4a:9b99:: with SMTP id x25mr19638473ooj.85.1624891038030; 
 Mon, 28 Jun 2021 07:37:18 -0700 (PDT)
MIME-Version: 1.0
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
 <52dc8610-de57-a5a8-9a1d-0efebb29b881@linux.intel.com>
In-Reply-To: <52dc8610-de57-a5a8-9a1d-0efebb29b881@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 28 Jun 2021 16:37:06 +0200
Message-ID: <CAKMK7uEiYdfQUo3gEyQ575fXVT9VhBhEB_i5y4O9HVaDW+60ww@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
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
Cc: Alex Deucher <alexdeucher@gmail.com>,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Nieto,
 David M" <David.Nieto@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMjgsIDIwMjEgYXQgMTI6MTggUE0gVHZydGtvIFVyc3VsaW4KPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMTQvMDUvMjAyMSAxNjox
MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+IEFtIDE0LjA1LjIxIHVtIDE3OjAzIHNjaHJp
ZWIgVHZydGtvIFVyc3VsaW46Cj4gPj4KPiA+PiBPbiAxNC8wNS8yMDIxIDE1OjU2LCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOgo+ID4+PiBBbSAxNC4wNS4yMSB1bSAxNjo0NyBzY2hyaWViIFR2cnRr
byBVcnN1bGluOgo+ID4+Pj4KPiA+Pj4+IE9uIDE0LzA1LzIwMjEgMTQ6NTMsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+IERhdmlkIGFsc28gc2FpZCB0aGF0IHlvdSBj
b25zaWRlcmVkIHN5c2ZzIGJ1dCB3ZXJlIHdhcnkgb2YKPiA+Pj4+Pj4gZXhwb3NpbmcgcHJvY2Vz
cyBpbmZvIGluIHRoZXJlLiBUbyBjbGFyaWZ5LCBteSBwYXRjaCBpcyBub3QKPiA+Pj4+Pj4gZXhw
b3Npbmcgc3lzZnMgZW50cnkgcGVyIHByb2Nlc3MsIGJ1dCBvbmUgcGVyIG9wZW4gZHJtIGZkLgo+
ID4+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gWWVzLCB3ZSBkaXNjdXNzZWQgdGhpcyBhcyB3ZWxsLCBi
dXQgdGhlbiByZWplY3RlZCB0aGUgYXBwcm9hY2guCj4gPj4+Pj4KPiA+Pj4+PiBUbyBoYXZlIHVz
ZWZ1bCBpbmZvcm1hdGlvbiByZWxhdGVkIHRvIHRoZSBvcGVuIGRybSBmZCB5b3UgbmVlZCB0bwo+
ID4+Pj4+IHJlbGF0ZWQgdGhhdCB0byBwcm9jZXNzKGVzKSB3aGljaCBoYXZlIHRoYXQgZmlsZSBk
ZXNjcmlwdG9yIG9wZW4uCj4gPj4+Pj4gSnVzdCB0cmFja2luZyB3aG8gb3BlbmVkIGl0IGZpcnN0
IGxpa2UgRFJNIGRvZXMgaXMgcHJldHR5IHVzZWxlc3MKPiA+Pj4+PiBvbiBtb2Rlcm4gc3lzdGVt
cy4KPiA+Pj4+Cj4gPj4+PiBXZSBkbyB1cGRhdGUgdGhlIHBpZC9uYW1lIGZvciBmZHMgcGFzc2Vk
IG92ZXIgdW5peCBzb2NrZXRzLgo+ID4+Pgo+ID4+PiBXZWxsIEkganVzdCBkb3VibGUgY2hlY2tl
ZCBhbmQgdGhhdCBpcyBub3QgY29ycmVjdC4KPiA+Pj4KPiA+Pj4gQ291bGQgYmUgdGhhdCBpOTE1
IGhhcyBzb21lIHNwZWNpYWwgY29kZSBmb3IgdGhhdCwgYnV0IG9uIG15IGxhcHRvcCBJCj4gPj4+
IG9ubHkgc2VlIHRoZSBYIHNlcnZlciB1bmRlciB0aGUgImNsaWVudHMiIGRlYnVnZnMgZmlsZS4K
PiA+Pgo+ID4+IFllcyB3ZSBoYXZlIHNwZWNpYWwgY29kZSBpbiBpOTE1IGZvciB0aGlzLiBQYXJ0
IG9mIHRoaXMgc2VyaWVzIHdlIGFyZQo+ID4+IGRpc2N1c3NpbmcgaGVyZS4KPiA+Cj4gPiBBaCwg
eWVhaCB5b3Ugc2hvdWxkIG1lbnRpb24gdGhhdC4gQ291bGQgd2UgcGxlYXNlIHNlcGFyYXRlIHRo
YXQgaW50bwo+ID4gY29tbW9uIGNvZGUgaW5zdGVhZD8gQ2F1c2UgSSByZWFsbHkgc2VlIHRoYXQg
YXMgYSBidWcgaW4gdGhlIGN1cnJlbnQKPiA+IGhhbmRsaW5nIGluZGVwZW5kZW50IG9mIHRoZSBk
aXNjdXNzaW9uIGhlcmUuCj4KPiBXaGF0IHdlIGRvIGluIGk5MTUgaXMgdXBkYXRlIHRoZSBwaWQg
YW5kIG5hbWUgd2hlbiBhIHRhc2sgZGlmZmVyZW50IHRvCj4gdGhlIG9uZSB3aGljaCBvcGVuZWQg
dGhlIGZkIGRvZXMgYSBHRU0gY29udGV4dCBjcmVhdGUgaW9jdGwuCj4KPiBNb3ZpbmcgdGhhdCB0
byBEUk0gY29yZSB3b3VsZCBiZSBhbG9uZyB0aGUgbGluZXMgb2YgZG9pbmcgdGhlIHNhbWUgY2hl
Y2sKPiBhbmQgdXBkYXRlIG9uIGV2ZXJ5IGlvY3RsLiBNYXliZSBhbGxvdyB0aGUgdXBkYXRlIHRv
IGJlIG9uZSB0aW1lIG9ubHkgaWYKPiB0aGF0IHdvdWxkIHdvcmsuIFdvdWxkIHRoaXMgYmUgZGVz
aXJhYmxlIGFuZCBhY2NlcHRhYmxlPyBJZiBzbyBJIGNhbgo+IGRlZmluaXRlbHkgc2tldGNoIGl0
IG91dC4KCklmIHdlIGdvIHdpdGggZmRpbmZvIGZvciB0aGVzZSBpdCBiZWNvbWVzIGNsZWFyIHdo
byBhbGwgb3ducyB0aGUgZmlsZSwKc2luY2UgaXQncyB0aGVuIGEgcGVyLXByb2Nlc3MgdGhpbmcu
IE5vdCBzdXJlIGhvdyBtdWNoIHNtYXJ0cyB3ZQpzaG91bGQgaGF2ZSBmb3IgaW50ZXJuYWwgZGVi
dWdmcyBvdXRwdXQuIE1heWJlIG9uZS1zaG90IHVwZGF0ZSBvbgpmaXJzdCBkcml2ZXIgaW9jdGwg
KHNpbmNlIGlmIHlvdSdyZSBvbiByZW5kZXIgbm9kZXMgdGhlbiBYIGRvZXMgdGhlCmRybSBhdXRo
IGRhbmNlLCBzbyAiZmlyc3QgaW9jdGwiIGlzIHdyb25nKS4KLURhbmllbAotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
