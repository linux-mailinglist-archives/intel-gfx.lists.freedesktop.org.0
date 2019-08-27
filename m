Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986FC9ECB1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 17:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD413899E7;
	Tue, 27 Aug 2019 15:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D32899E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 15:30:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 08:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="331855541"
Received: from laaguila-mobl1.amr.corp.intel.com (HELO [10.252.2.212])
 ([10.252.2.212])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 08:30:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190827132631.18627-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <b413bdcc-35b6-cb75-8b30-f1b1715bd9be@intel.com>
Date: Tue, 27 Aug 2019 16:30:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190827132631.18627-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only activate i915_active
 debugobject once
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

T24gMjcvMDgvMjAxOSAxNDoyNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFRoZSBwb2ludCBvZiBk
ZWJ1Z19vYmplY3RfYWN0aXZhdGUgaXMgdG8gbWFyayB3ZSBmaXJzdCwgb25seSB0aGUgZmlyc3Qs
Cj4gYWNxdWlzaXRpb24uIAotZXBhcnNlCgo+IFRoZSBvYmplY3QgdGhlbiByZW1haW5zIGFjdGl2
ZSB1bnRpbCB0aGUgbGFzdCByZWxlYXNlLgo+IEhvd2V2ZXIsIHdlIG1hcmtlZCB1cCBhbGwgc3Vj
Y2Vzc2Z1bCBmaXJzdCBhY3F1aXJlcyBldmVuIHRob3VnaCB3ZQo+IGFsbG93ZWQgY29uY3VycmVu
dCBwYXJ0aWVzIHRvIHRyeSBhbmQgYWNxdWlyZSB0aGUgaTkxNV9hY3RpdmUKPiBzaW11bHRhbmVv
dXNseSAoc2VyaWFsaXNlZCBieSB0aGUgaTkxNV9hY3RpdmUubXV0ZXgpLgo+IAo+IFRlc3RjYXNl
OiBpZ3QvZ2VtX21tYXBfZ3R0L2ZhdWx0LWNvbmN1cnJlbnQKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
