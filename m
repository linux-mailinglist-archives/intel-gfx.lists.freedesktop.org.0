Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A76020CE21
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 13:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E421C89D99;
	Mon, 29 Jun 2020 11:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF4B89D99
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 11:18:29 +0000 (UTC)
IronPort-SDR: LoZAO0K+yMGchnP7YmjnOoMlE/BkL+/+tD/72kFwlA1SXf23yP57TZWfeBvwgcLQBd3qaF/ET7
 +zdwp6fADigA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="144137617"
X-IronPort-AV: E=Sophos;i="5.75,294,1589266800"; d="scan'208";a="144137617"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 04:18:28 -0700
IronPort-SDR: oOvA3N+LvFOA2f/xgVSwfU626ERnWHp/c+KxdhoXgbYlLehf0lMev3fLzxVURWpDjmJVhuTTWl
 SFPo7DTRYZvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,294,1589266800"; d="scan'208";a="320610258"
Received: from bartholt-mobl1.ger.corp.intel.com (HELO [10.252.38.99])
 ([10.252.38.99])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jun 2020 04:18:27 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-6-maarten.lankhorst@linux.intel.com>
 <6f313791-d0f7-465a-e4ab-63826ef70bf8@shipmail.org>
 <cec259f8-170f-ad74-3eb1-f583cb01920f@linux.intel.com>
 <11cd7a6a-af85-e68f-5936-0a8d4157da91@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ff373032-c935-6a8b-a65d-feeb9e40af54@linux.intel.com>
Date: Mon, 29 Jun 2020 13:18:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <11cd7a6a-af85-e68f-5936-0a8d4157da91@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/26] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjktMDYtMjAyMCBvbSAxMzoxNSBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4gSGksCj4KPiBPbiA2LzI5LzIwIDEyOjQwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToK
Pj4KPj4+PiDCoMKgwqDCoMKgwqAgLyoKPj4+PiDCoMKgwqDCoMKgwqDCoCAqIHNuYi9pdmIvdmx2
IGNvbmZsYXRlIHRoZSAiYmF0Y2ggaW4gcHBndHQiIGJpdCB3aXRoIHRoZSAibm9uLXNlY3VyZQo+
Pj4+IMKgwqDCoMKgwqDCoMKgICogYmF0Y2giIGJpdC4gSGVuY2Ugd2UgbmVlZCB0byBwaW4gc2Vj
dXJlIGJhdGNoZXMgaW50byB0aGUgZ2xvYmFsIGd0dC4KPj4+PiDCoMKgwqDCoMKgwqDCoCAqIGhz
dyBzaG91bGQgaGF2ZSB0aGlzIGZpeGVkLCBidXQgYmR3IG11Y2tzIGl0IHVwIGFnYWluLiAqLwo+
Pj4+IC3CoMKgwqAgYmF0Y2ggPSBlYi5iYXRjaC0+dm1hOwo+Pj4+IMKgwqDCoMKgwqDCoCBpZiAo
ZWIuYmF0Y2hfZmxhZ3MgJiBJOTE1X0RJU1BBVENIX1NFQ1VSRSkgewo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+Pj4+IMKgwqAgQEAgLTI5MjMsMTMgKzI5
MjcsMTUgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKsKgwqAgZml0dGluZyBkdWUgdG8gZnJhZ21lbnRh
dGlvbi4KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogU28gdGhpcyBpcyBhY3R1YWxseSBz
YWZlLgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+PiAtwqDCoMKgwqDCoMKgwqAg
dm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKGJhdGNoLT5vYmosIE5VTEwsIDAsIDAsIDAp
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCB2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oZWIu
YmF0Y2gtPnZtYS0+b2JqLCBOVUxMLCAwLCAwLCAwKTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAoSVNfRVJSKHZtYSkpIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVy
ciA9IFBUUl9FUlIodm1hKTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8g
ZXJyX3BhcnNlOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+PiDCoMKgIMKgwqDCoMKg
wqDCoMKgwqDCoCBiYXRjaCA9IHZtYTsKPj4+PiArwqDCoMKgIH0gZWxzZSB7Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGJhdGNoID0gZWIuYmF0Y2gtPnZtYTsKPj4+PiDCoMKgwqDCoMKgwqAgfQo+Pj4+
IMKgwqAgCj4+PiBIbW0sIGl0J3MgbGF0ZSBmcmlkYXkgYWZ0ZXJub29uIHNvIHRoYXQgbWlnaHQg
YmUgdGhlIGNhdXNlLCBidXQgSSBmYWlsIHRvIHNlZSB3aGF0IHRoZSBhYm92ZSBodW5rIGlzIHRy
eWluZyB0byBhY2hpZXZlPwo+Pgo+PiBFeGVjYnVmIHBhcnNpbmcgbWF5IGNyZWF0ZSBhIHNoYWRv
dyBvYmplY3Qgd2hpY2ggYWxzbyBuZWVkcyB0byBiZSBsb2NrZWQsIHdlIGRvIHRoaXMgaW5zaWRl
IGViX3JlbG9jYXRlKCkgdG8gZW5zdXJlIHRoZSBub3JtYWwgcnVsZXMgZm9yIHcvdyBoYW5kbGlu
ZyBjYW4gYmUgdXNlZCBmb3IgZWIgcGFyc2luZyBhcyB3ZWxsLiA6KQo+Pgo+PiB+TWFhcnRlbgo+
Cj4gSSBtZWFudCB0aGUgY2hhbmdlZCBhc3NpZ25tZW50IG9mIHRoZSBiYXRjaCB2YXJpYWJsZT8K
Pgo+IC9UaG9tYXMKPgo+Ck5vdGhpbmcsIHN0aWxsIGVuZHMgdXAgYmVpbmcgdGhlIHNhbWUuIDop
CgpXYXMgbG9va2luZyBhdCBjaGFuZ2luZyB0aGF0IHBpbiBhcyB3ZWxsLCBkaWRuJ3QgZ2V0IGFy
b3VuZCB0byBpdCB5ZXQuCgp+TWFhcnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
