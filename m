Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A486ABDFBB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 16:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CBD6EBC7;
	Wed, 25 Sep 2019 14:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905DB6EBC7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 14:12:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 07:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="183269285"
Received: from timmpete-desk1.ger.corp.intel.com (HELO [10.252.55.52])
 ([10.252.55.52])
 by orsmga008.jf.intel.com with ESMTP; 25 Sep 2019 07:12:49 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-5-maarten.lankhorst@linux.intel.com>
 <20190925130111.GY1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1710bbf9-fe74-ba06-b9e8-fc59892360cf@linux.intel.com>
Date: Wed, 25 Sep 2019 16:12:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925130111.GY1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915: Complete sw/hw split
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjUtMDktMjAxOSBvbSAxNTowMSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBGcmks
IFNlcCAyMCwgMjAxOSBhdCAwMTo0MjoxN1BNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gTm93IHRoYXQgd2Ugc2VwYXJhdGVkIGV2ZXJ5dGhpbmcgaW50byB1YXBpIGFuZCBodywg
aXQncwo+PiB0aW1lIHRvIG1ha2UgdGhlIHNwbGl0IGRlZmluaXRpdmUuIFJlbW92ZSB0aGUgdW5p
b24gYW5kCj4+IG1ha2UgYSBjb3B5IG9mIHRoZSBodyBzdGF0ZSBvbiBtb2Rlc2V0IGFuZCBmYXN0
c2V0Lgo+Pgo+PiBDb2xvciBibG9icyBhcmUgY29waWVkIGluIGNydGMgYXRvbWljX2NoZWNrKCks
IHJpZ2h0Cj4+IGJlZm9yZSBjb2xvciBtYW5hZ2VtZW50IGlzIGNoZWNrZWQuCj4gRG9uJ3QgbGlr
ZS4gSU1PIHRoZXJlIHNob3VsZCBiZSBvbmUgYW5kIG9ubHkgb25lIHBsYWNlIHdoZXJlIGNvcHkg
b3Zlcgo+IHRoZSB1YXBpIHN0YXRlIGludG8gdGhlIGh3IHN0YXRlLiBPdGhlcndpc2UgaXQncyBh
IG1lc3MgYmVjYXVzZSB5b3UKPiBjb25zdGFudGx5IGhhdmUgdG8gcmVtaW5kIHlvdXJzZWxmIHdo
aWNoIGJpdHMgb2Ygc3RhdGUgYWxyZWFkeSBnb3QKPiBjb3BpZWQgYW5kIHdoaWNoIGRpZG4ndC4K
ClllYWggaXQncyBhIHRhZCBhbm5veWluZywgY2FuIGFsd2F5cyBqdXN0IGRvIGl0IGluIHRoaXMg
bG9vcC4gV2UgZWl0aGVyIGNvcHkgZnVsbCBzdGF0ZSBvbiBtb2Rlc2V0IG9yIGp1c3QgdGhlIGJs
b2JzLi4KCldpbGwgc2VuZCBhIG5ldyB2ZXJzaW9uLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
