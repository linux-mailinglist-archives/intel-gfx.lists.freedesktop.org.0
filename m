Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A07E510A07A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E679A6E3FB;
	Tue, 26 Nov 2019 14:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44C06E3FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 14:38:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:38:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202736425"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:38:03 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191125152710.2125824-1-chris@chris-wilson.co.uk>
References: <20191125152710.2125824-1-chris@chris-wilson.co.uk>
Message-ID: <157477908055.23972.1322493645551104788@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 26 Nov 2019 16:38:00 +0200
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Excise the per-batch
 whitelist from the context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjUgMTc6Mjc6MDkpCj4gT25lIGRvZXMgbm90
IGxpZ2h0bHkgYWRkIGEgbmV3IGhpZGRlbiBzdHJ1Y3RfbXV0ZXggZGVwZW5kZW5jeSBkZWVwIHdp
dGhpbgo+IHRoZSBleGVjYnVmIGJvd2VscyEgVGhlIGltbWVkaWF0ZSBzdXNwaWNpb24gaW4gc2Vl
aW5nIHRoZSB3aGl0ZWxpc3QKPiBjYWNoZWQgb24gdGhlIGNvbnRleHQsIGlzIHRoYXQgaXQgaXMg
aW50ZW5kZWQgdG8gYmUgcHJlc2VydmVkIGJldHdlZW4KPiBiYXRjaGVzLCBhcyB0aGUga2VybmVs
IGlzIHF1aXRlIGFkZXB0IGF0IGNhY2hpbmcgc21hbGwgYWxsb2NhdGlvbnMKPiBpdHNlbGYuIEJ1
dCBubywgaXQncyBzb2xlIHB1cnBvc2UgaXMgdG8gc2VyaWFsaXNlIGNvbW1hbmQgc3VibWlzc2lv
biBpbgo+IG9yZGVyIHRvIHNhdmUgYSBrbWFsbG9jIG9uIGEgc2xvdywgc2xvdyBwYXRoIQoKV2hl
biBtZW1vcnkgcHJlc3N1cmUgaW5jcmVhc2VzLCBpdCBjb3VsZCBiZSB0aGUgcHJlLWV4aXN0aW5n
IGNsaWVudHMKdGhhdCB0aGF0IGZhaWwgdG8gYWxsb2NhdGUgdGhlIGp1bXBsaXN0IGFuZCBzdGFy
dCBmYWlsaW5nIGluc3RlYWQgb2YKdGhlIG5ldyBvbmVzLi4uCgpCdXQgaWYgeW91IHRoaW5rIG1h
bnkgb3RoZXIgcGxhY2VzIHdpbGwgZmFsbCBhcGFydCBiZWZvcmUgdGhhdCBoYXBwZW5zLApmZWVs
IGZyZWUgdG8gbWFrZSBpdCBkeW5hbWljLgoKUmVnYXJkcywgSm9vbmFzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
