Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1669A9C4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F286EBF2;
	Fri, 23 Aug 2019 08:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241506EBF2;
 Fri, 23 Aug 2019 08:12:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 02:54:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="262802382"
Received: from kmolchan-mobl1.ccr.corp.intel.com (HELO [10.252.3.177])
 ([10.252.3.177])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2019 02:54:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190821200328.22668-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <23c7ce66-c95d-b449-d498-2a20507e1e36@intel.com>
Date: Thu, 22 Aug 2019 10:54:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190821200328.22668-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] prime_busy: Prebind the batch buffer
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEvMDgvMjAxOSAyMTowMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFRoZSB0ZXN0IGFzc3Vt
ZXMgdGhhdCB0aGUgZG1hYnVmIGZvciB0aGUgYmF0Y2ggYnVmZmVyIGhhcyBubyBleGNsdXNpdmUK
PiBmZW5jZS4gVGhpcyBpcyBvbmx5IHRydWUgZm9yIHRoZSBiYXRjaCBhcyBpdCBleGVjdXRlcyBv
biB0aGUgR1BVOyBwcmlvcgo+IHRvIHRoYXQgd2UgbWF5IGJlIGluIHRoZSBwcm9jZXNzIG9mIG1v
dmluZyBpdCBpbnRvIG1lbW9yeSBhbmQgdGhlCj4gcHBHVFQgd2hpY2ggY2F1c2UgdGhlIGJhdGNo
IHRvIGNhcnJ5IGFuIGV4Y2x1c2l2ZSBmZW5jZS4gS2VlcCB0aGUgdGVzdAo+IHNpbXBsZSBhbmQg
cHJlYmluZCB0aGUgYmF0Y2ggYnVmZmVyIHNvIHRoYXQgd2hlbiB3ZSBwb2xsIHRoZSBkbWFidWYg
ZmQsCj4gd2Ugb25seSBleHBlY3QgaXQgdG8gYmUgdGhlIHNwaW5uaW5nIGJhdGNoLgo+IAo+IEFs
dGVybmF0aXZlbHkgd2UgY291bGQgd2FpdCB1bnRpbCB3ZSBzdGFydCB3cml0aW5nIHZhbHVlcyBp
bnRvIHNjcmF0Y2gKPiAoaS5lLiBpZ3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVkKCkpLiBU
aGlzIHNlZW1lZCBzaW1wbGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+CkFja2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
