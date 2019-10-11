Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AF7D3AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE4E6EBD5;
	Fri, 11 Oct 2019 08:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56126EBD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:20:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 01:20:17 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197514054"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 01:20:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
 <157071588745.29611.7390894218720747310@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7e93c515-39a4-c67e-43ce-323b68ca932e@linux.intel.com>
Date: Fri, 11 Oct 2019 09:20:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157071588745.29611.7390894218720747310@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before
 throttling execbuf submissions
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzEwLzIwMTkgMTQ6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMC0xMCAxNDo0ODo0OSkKPj4gQ2hlY2sgdGhlIHVzZXIncyBmbGFncyBv
biB0aGUgc3RydWN0IGZpbGUgYmVmb3JlIGRlY2lkaW5nIHdoZXRoZXIgb3Igbm90Cj4+IHRvIHN0
YWxsIGJlZm9yZSBzdWJtaXR0aW5nIGEgcmVxdWVzdC4gVGhpcyBhbGxvd3MgdXMgdG8gcmVhc29u
YWJseQo+PiBjaGVhcGx5IGhvbm91ciBPX05PTkJMT0NLIHdpdGhvdXQgY2hlY2tpbmcgYXQgbW9y
ZSBjcml0aWNhbCBwaGFzZXMKPj4gZHVyaW5nIHJlcXVlc3Qgc3VibWlzc2lvbi4KPiAKPiBPbmUg
bWlnaHQgcmVhc29uYWJseSBleHBlY3QgcG9sbChQT0xMT1VUKSB0byBiZSBzdXBwb3J0ZWQgYXMg
d2VsbCBpbgo+IHRoaXMgY2FzZSA6fAoKVGhhdCBkb2Vzbid0IGtpbmQgb2YgZml0IC0gbWlzbWF0
Y2ggYmV0d2VlbiBvbmUgZmQgYW5kIG11bHRpcGxlIApjb250ZXh0cywgbm8/IE9yIHlvdSBjb3Vs
ZCBzaWduYWwgUE9MTE9VVCBvbiBhbnksIG9yIG9uIGFsbCBoYXZlIHNwYWNlLiAKQnV0IHRoYXQn
cyB0YWtpbmcgaXQgdG9vIGZhci4gOikKClJlZ2FyZHMsCgpUdnJ0a28KCj4gQnJpbmcgb24gdWdw
dS4KPiAtQ2hyaXMKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
