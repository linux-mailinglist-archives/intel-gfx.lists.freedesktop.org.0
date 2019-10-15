Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DC2D7311
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 12:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6966E33E;
	Tue, 15 Oct 2019 10:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE226E33E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 10:22:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 03:22:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,299,1566889200"; d="scan'208";a="208155766"
Received: from bpuehrin-mobl.ger.corp.intel.com (HELO [10.252.6.153])
 ([10.252.6.153])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2019 03:22:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191015100155.10376-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <83cbb75c-07eb-47df-511a-1448955a1daf@intel.com>
Date: Tue, 15 Oct 2019 11:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191015100155.10376-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove leftover
 vma->obj->pages_pin_count on insert/remove
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

T24gMTUvMTAvMjAxOSAxMTowMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIG5vdyBkbyB0aGUg
cGFnZSBwaW4gY291bnQgdXBmcm9udCBpbiB2bWFfZ2V0X3BhZ2VzL3ZtYV9wdXRfcGFnZXMsIHNv
Cj4gdGhhdCB3ZSBkbyB0aGUgYWxsb2NhdGlvbnMgYmVmb3JlIHdlIGVudGVyIHRoZSB2bS0+bXV0
ZXguIFRoZW4gb3VyIHZtYQo+IHBhZ2UgcmVmZXJlbmNlcyBhcmUgdHJhY2tpbmcgaW4gdm1hLT5w
YWdlc19jb3VudCBhbmQgdGhlIGV4dHJhCj4gb2JqLT5wYWdlc19waW5fY291bnQgYmVpbmcgcGVy
Zm9ybWVkIGluIGk5MTVfdm1hX2luc2VydC9pOTE1X3ZtYV9yZW1vdmUKPiBpcyByZWR1bmRhbnQs
IGFuZCB3b3JzZSB0aHJvd3Mgb2ZmIHRoZSBzaHJpbmtlcidzIGxvZ2ljIG9uIHdoZW4gaXQgY2Fu
Cj4gZnJlZSBhbiBvYmplY3QgYnkgdW5iaW5kaW5nIGl0Lgo+IApDb3VsZCB5b3UgYWxzbyBhZGQg
UmVwb3J0ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gCjxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgoKPiBSZXBvcnRlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
