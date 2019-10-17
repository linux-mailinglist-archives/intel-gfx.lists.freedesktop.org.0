Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FE1DAF48
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 16:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320736E49B;
	Thu, 17 Oct 2019 14:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84C36E49B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 14:11:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 07:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="208292606"
Received: from alinamex-mobl3.ger.corp.intel.com (HELO [10.252.56.163])
 ([10.252.56.163])
 by orsmga002.jf.intel.com with ESMTP; 17 Oct 2019 07:11:41 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
 <20191017133749.GU1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0cdfa845-6b64-05b2-788e-73dfb8b00aab@linux.intel.com>
Date: Thu, 17 Oct 2019 16:11:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017133749.GU1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915: Rework watermark readout to
 use plane api
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

T3AgMTctMTAtMjAxOSBvbSAxNTozNyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IE9jdCAxNywgMjAxOSBhdCAwMzoyMDo1MlBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gSW5zdGVhZCBvZiB1bmNvbmRpdGlvbmFsbHkgdmVyaWZ5aW5nIHRoZSBjdXJzb3IgcGxh
bmUsIGhhbmRsZSBpdCBpbiB0aGUKPj4gc2FtZSB3YXkgYXMgYW55IG90aGVyIHBsYW5lLCBhbmQg
dXNlIG91ciBleGlzdGluZyBhcGkgdG8gdmVyaWZ5Lgo+Pgo+PiBXaGlsZSBhdCBpdCwgZW5zdXJl
IHRoYXQgb24gZ2VuOSsgd2UgdmVyaWZ5IGFjdGl2ZV9wbGFuZXMgbWFzayBhcyB3ZWxsLgo+PiBU
aGlzIHNob3VsZCBnaXZlIHRoZSBjb3JyZWN0IHJlc3VsdHMgZm9yIHBsYW5hciBZVVYgcGxhbmVz
IHRvbywgYXMgd2UKPj4gdXBkYXRlIGFjdGl2ZV9wbGFuZXMgZm9yIHRoZW0uCj4gV2h5IGlzIHRo
YXQgaGlkZGVuIGluIHRoZSB3YXRlcm1hcmsgdmVyaWZpY2F0aW9uIGNvZGU/IFdlIGFscmVhZHkg
aGF2ZQo+IGludGVsX3ZlcmlmeV9wbGFuZXMoKSB3aGljaCBzZWVtcyBsaWtlIGEgYmV0dGVyIGZp
dC4KV2Fzbid0IGF3YXJlIG9mIGl0LCBtb3N0bHkuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
