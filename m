Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1362E7383
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364C46E89F;
	Mon, 28 Oct 2019 14:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E3E6E89F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:20:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 07:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="224643646"
Received: from vslinko-mobl.ccr.corp.intel.com (HELO [10.252.56.7])
 ([10.252.56.7])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2019 07:20:35 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <fd02a3b9-6f1a-df2d-06d1-790067ee9fe5@linux.intel.com>
Date: Mon, 28 Oct 2019 15:20:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix i845/i865 cursor width
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjgtMTAtMjAxOSBvbSAxMjozMCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSBjaGFu
Z2UgZnJvbSB0aGUgdWFwaSBjb29yZGluYXRlcyB0byB0aGUgaW50ZXJuYWwgY29vcmRpbmF0ZXMK
PiBicm9rZSB0aGUgY3Vyc29yIG9uIGk4NDUvaTg2NSBkdWUgdG8gc3JjIGFuZCBkc3QgZ2V0dGlu
ZyBzd2FwcGVkLgo+IEZpeCBpdC4KPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IEZpeGVzOiAzYTYxMjc2NWY0MjMgKCJkcm0vaTkx
NTogUmVtb3ZlIGN1cnNvciB1c2Ugb2YgcHJvcGVydGllcyBmb3IgY29vcmRpbmF0ZXMiKQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5k
ZXggMGYwYzU4MmE1NmQ1Li40N2EzYWVmMGZiNjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMDk0Nyw3ICsxMDk0Nyw3IEBAIHN0
YXRpYyB2b2lkIGk4NDVfdXBkYXRlX2N1cnNvcihzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+
ICAJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKPiAgCj4gIAlpZiAocGxhbmVfc3RhdGUgJiYgcGxh
bmVfc3RhdGUtPmJhc2UudmlzaWJsZSkgewo+IC0JCXVuc2lnbmVkIGludCB3aWR0aCA9IGRybV9y
ZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpOwo+ICsJCXVuc2lnbmVkIGludCB3aWR0
aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3QpOwo+ICAJCXVuc2lnbmVk
IGludCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCk7Cj4g
IAo+ICAJCWNudGwgPSBwbGFuZV9zdGF0ZS0+Y3RsIHwKClllYWgsIEkgZ3Vlc3MgdGhlb3JldGlj
YWxseSBmaXhlcywgc2hvdWxkIGJlIG9rIHJlZ2FyZGxlc3MgYmVjYXVzZSBubyBzY2FsaW5nIGlz
IHN1cHBvcnRlZCBvbiB0aGUgY3Vyc29yIHNvIHJlY3RhbmdsZXMgYXJlIGlkZW50aWNhbC4gOikK
ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
