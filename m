Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3D3E9274
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074176EC55;
	Tue, 29 Oct 2019 21:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F321A6EC55
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:59:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 14:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="198498917"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 14:59:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-6-matthew.auld@intel.com>
 <b5e6ac2b-2b3a-d6f8-5df7-7e8f3c870874@intel.com>
 <157238589643.2489.9037740977390135253@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <647832af-9fb5-6436-46f1-78cfb04b165a@intel.com>
Date: Tue, 29 Oct 2019 14:59:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157238589643.2489.9037740977390135253@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: don't allocate the ring in
 stolen if we lack aperture
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

CgpPbiAxMC8yOS8xOSAyOjUxIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTI5IDIxOjQ2OjQ2KQo+Pgo+Pgo+PiBPbiAxMC8y
OS8xOSAyOjU4IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+PiBTaW5jZSB3ZSBoYXZlIG5vIHdh
eSBhY2Nlc3MgaXQgZnJvbSB0aGUgQ1BVLiBGb3Igc3VjaCBjYXNlcyBqdXN0Cj4+PiBmYWxsYmFj
ayB0byBpbnRlcm5hbCBvYmplY3RzLgo+Pj4KPj4KPj4gU2luY2UgdGhlIHByb2JsZW0gaXMgbm90
IGxpbWl0ZWQgdG8gcmluZ3MgYnV0IGl0IGFwcGxpZXMgdG8gYWxsIHN0b2xlbgo+PiBvYmplY3Rz
LCB3b3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8ganVzdCBza2lwIHRoZSBzdG9sZW4gaW5pdGlhbGl6
YXRpb24gb3IKPj4gcmV0dXJuIGFuIGVycm9yIGZyb20gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9z
dG9sZW4oKT8KPiAKPiBOb3QgYWxsIHN0b2xlbiBvYmplY3RzIGFyZSBhY2Nlc3NlZCBvbiB0aGUg
Q1BVLCB0aGUgcHJvYmxlbSBleHByZXNzZWQKPiBoZXJlIGlzIG5vdCB1bml2ZXJzYWwuCj4gLUNo
cmlzCj4gCgpvaywgcGxlYXNlIGlnbm9yZSBteSBjb21tZW50IHRoZW4uCgpEYW5pZWxlCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
