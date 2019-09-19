Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E240B7579
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 10:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A3B6F4E6;
	Thu, 19 Sep 2019 08:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DC86F4E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 08:52:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 01:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="188029472"
Received: from hodel-mobl1.ger.corp.intel.com (HELO [10.252.37.116])
 ([10.252.37.116])
 by fmsmga007.fm.intel.com with ESMTP; 19 Sep 2019 01:52:50 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190905135044.2001-2-ville.syrjala@linux.intel.com>
 <20190918150707.32420-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <5b05b82e-e973-c50b-3af8-ed0a13ecec4e@linux.intel.com>
Date: Thu, 19 Sep 2019 10:52:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190918150707.32420-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Don't advertise modes that
 exceed the max plane size
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
Cc: Leho Kraav <leho@kraav.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTgtMDktMjAxOSBvbSAxNzowNyBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IE1vZGVybiBw
bGF0Zm9ybXMgYWxsb3cgdGhlIHRyYW5zY29kZXJzIGhkaXNwbGF5L3ZkaXNwbGF5IHRvIGV4Y2Vl
ZCB0aGUKPiBwbGFuZXMnIG1heCByZXNvbHV0aW9uLiBUaGlzIGhhcyB0aGUgbmFzdHkgaW1wbGlj
YXRpb24gdGhhdCBtb2RlcyBvbiB0aGUKPiBjb25uZWN0b3JzJyBtb2RlIGxpc3QgbWF5IG5vdCBi
ZSB1c2FibGUgd2hlbiB0aGUgdXNlciBhc2tzIGZvciBhCj4gZnVsbHNjcmVlbiBwbGFuZS4gU2Vl
aW5nIGFzIHRoYXQgaXMgdGhlIG1vc3QgY29tbW9uIHVzZSBjYXNlIGl0IHNlZW1zCj4gcHJ1ZGVu
dCB0byBmaWx0ZXIgb3V0IG1vZGVzIHRoYXQgZG9uJ3QgYWxsb3cgZm9yIGZ1bGxzY3JlZW4gcGxh
bmVzIHRvCj4gYmUgZW5hYmxlZC4KPgo+IExldCdzIGRvIHRoYXQgaW4gdGhlIGNvbm5ldG9yIC5t
b2RlX3ZhbGlkKCkgaG9vayBzbyB0aGF0IG5vcm1hbGx5Cj4gc3VjaCBtb2RlcyBhcmUga2VwdCBo
aWRkZW4gYnV0IHRoZSB1c2VyIGlzIHN0aWxsIGFibGUgdG8gZm9yY2libHkKPiBzcGVjaWZ5IHN1
Y2ggYSBtb2RlIGlmIHRoZXkga25vdyB0aGV5IGRvbid0IG5lZWQgZnVsbHNjcmVlbiBwbGFuZXMu
Cj4KPiBUaGlzIGlzIGluIGxpbmUgd2l0aCBlYWxpZXIgcG9saWNpZXMgcmVnYXJkaW5nIGNlcnRh
aW4gY2xvY2sgbGltaXRzLgo+IFRoZSBpZGVhIGlzIHRvIHByZXZlbnQgdGhlIGNhc3VhbCB1c2Vy
IGZyb20gZW5jb3VudGVyaW5nIGEgbW9kZSB0aGF0Cj4gd291bGQgZmFpbCB1bmRlciB0eXBpY2Fs
IGNvbmRpdGlvbnMsIGJ1dCBhbGxvdyB0aGUgZXhwZXJ0IHVzZXIgdG8KPiBmb3JjZSB0aGluZ3Mg
aWYgdGhleSBzbyB3aXNoLgo+Cj4gTWF5YmUgaW4gdGhlIGZ1dHVyZSB3ZSBzaG91bGQgY29uc2lk
ZXIgYXV0b21hZ2ljYWxseSB1c2luZyB0d28KPiBwbGFuZXMgd2hlbiBvbmUgY2FuJ3QgY292ZXIg
dGhlIGVudGlyZSBzY3JlZW4/IFdvdWxkbid0IGJlIGEKPiBncmVhdCBtYXRjaCBmb3IgdGhlIGN1
cnJlbnQgdWFwaSB3aXRoIGV4cGxpY2l0IHBsYW5lcyB0aG91Z2gsCj4gYnV0IEkgZ3Vlc3Mgbm8g
d29yc2UgdGhhbiB1c2luZyB0d28gcGlwZXMgKHdoaWNoIHdlIGFwcGFyZW50bHkKPiBoYXZlIHRv
IGluIHRoZSBmdXR1cmUgYW55d2F5KS4gRWl0aGVyIHRoYXQgb3Igd2UnZCBoYXZlIHRvCj4gdGVh
Y2ggdXNlcnNwYWNlIHRvIGRvIGl0IGZvciB1cy4KCkluIHRoZW9yeSB0aGlzIGlzIHdoYXQgYmln
am9pbmVyIGlzIGRvaW5nLCBleGNlcHQgdGhlIHBsYW5lcyBhcmUgb24gYSBkaWZmZXJlbnQgcGlw
ZS4KCldpbGwgYmUgZnVuIHdpdGggU0RSIHZzIEhEUiBwbGFuZXMgdGhvdWdoLi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
