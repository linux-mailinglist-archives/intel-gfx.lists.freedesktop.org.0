Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C048FA1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 21:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801A689286;
	Mon, 17 Jun 2019 19:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B963E89286
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 19:35:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 12:35:00 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.252.2.103]) ([10.252.2.103])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2019 12:34:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
 <20190617071912.20256-18-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c3b21a14-360a-794f-93fd-bcc4b34928ae@intel.com>
Date: Mon, 17 Jun 2019 20:34:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190617071912.20256-18-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/22] drm/i915: Forgo last_fence active
 request tracking
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
Cc: mika.kuoppala@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTcvMDYvMjAxOSAwODoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIHdlcmUgdXNpbmcg
dGhlIGxhc3RfZmVuY2UgdG8gdHJhY2sgdGhlIGxhc3QgcmVxdWVzdCB0aGF0IHVzZWQgdGhpcwo+
IHZtYSB0aGF0IG1pZ2h0IGJlIGludGVycHJldGVkIGJ5IGEgZmVuY2UgcmVnaXN0ZXIgYW5kIGZv
cmNlZCBvdXJzZWx2ZXMKPiB0byB3YWl0IGZvciB0aGlzIHJlcXVlc3QgYmVmb3JlIG1vZGlmeWlu
ZyBhbnkgZmVuY2UgcmVnaXN0ZXIgdGhhdAo+IG92ZXJsYXBwZWQgb3VyIHZtYS4gRHVlIHRvIHJl
cXVpcmVtZW50IHRoYXQgd2UgbmVlZCB0byB0cmFjayBhbnkgWFlfQkxUCj4gY29tbWFuZCwgbGlu
ZWFyIG9yIHRpbGVkLCB0aGlzIGluIGVmZmVjdCBtZWFudCB0aGF0IHdlIGhhdmUgdG8gdHJhY2sg
dGhlCj4gdm1hIGZvciBpdHMgYWN0aXZlIGxpZmVzcGFuIGFueXdheSwgc28gd2UgY2FuIGZvcmdv
IHRoZSBleHBsaWNpdAo+IGxhc3RfZmVuY2UgdHJhY2tpbmcgYW5kIGp1c3QgdXNlIHRoZSB3aG9s
ZSB2bWEtPmFjdGl2ZS4KPiAKPiBBbm90aGVyIHNvbHV0aW9uIHdvdWxkIGJlIHRvIHBpcGVsaW5l
IHRoZSByZWdpc3RlciB1cGRhdGVzLCBhbmQgd291bGQKPiBoZWxwIHJlc29sdmUgc29tZSBsb25n
IHJ1bm5pbmcgc3RhbGxzIGZvciBnZW4zIChidXQgb25seSBnZW4gMiBhbmQgMyEpCj4gCj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmll
d2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
