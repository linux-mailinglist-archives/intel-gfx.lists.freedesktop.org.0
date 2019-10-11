Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685ADD410C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 693106E370;
	Fri, 11 Oct 2019 13:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14C96E370
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:24:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="188317013"
Received: from nissenc-mobl2.ger.corp.intel.com (HELO [10.249.39.125])
 ([10.249.39.125])
 by orsmga008.jf.intel.com with ESMTP; 11 Oct 2019 06:24:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010194851.26592-7-chris@chris-wilson.co.uk>
 <20191010212303.16761-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <df03b919-fce7-461c-77bd-070e60699cff@intel.com>
Date: Fri, 11 Oct 2019 16:25:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010212303.16761-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Allow dynamic
 reconfiguration of the OA stream
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

T24gMTEvMTAvMjAxOSAwMDoyMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEludHJvZHVjZSBhIG5l
dyBwZXJmX2lvY3RsIGNvbW1hbmQgdG8gY2hhbmdlIHRoZSBPQSBjb25maWd1cmF0aW9uIG9mIHRo
ZQo+IGFjdGl2ZSBzdHJlYW0uIFRoaXMgYWxsb3dzIHRoZSBPQSBzdHJlYW0gdG8gYmUgcmVjb25m
aWd1cmVkIGJldHdlZW4KPiBiYXRjaCBidWZmZXJzLCBnaXZpbmcgZ3JlYXRlciBmbGV4aWJpbGl0
eSBpbiBzYW1wbGluZy4gV2UgaW5qZWN0IGEKPiByZXF1ZXN0IGludG8gdGhlIE9BIGNvbnRleHQg
dG8gcmVjb25maWd1cmUgdGhlIHN0cmVhbSBhc3luY2hyb25vdXNseSBvbgo+IHRoZSBHUFUgaW4g
YmV0d2VlbiBhbmQgb3JkZXJlZCB3aXRoIGV4ZWNidWZmZXIgY2FsbHMuCj4KPiBPcmlnaW5hbCBw
YXRjaCBmb3IgZHluYW1pYyByZWNvbmZpZ3VyYXRpb24gYnkgTGlvbmVsIExhbmR3ZXJsaW4uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPgoKVXBkYXRlZCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNh
L21lcmdlX3JlcXVlc3RzLzkzMiB3aXRoIAp0aGlzIG5ldyB1QVBJLCBpdCB3b3JrcyBmaW5lIDop
CgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
