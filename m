Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B96C9D58F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 20:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044266E28F;
	Mon, 26 Aug 2019 18:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73246E28F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 18:13:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 11:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="179956414"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 26 Aug 2019 11:13:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190824002022.27636-1-daniele.ceraolospurio@intel.com>
 <156663686100.4019.14965894015444211333@skylake-alporthouse-com>
 <5d107937-9939-a3b0-945f-820f4db344ea@intel.com>
 <156684300251.15406.2123066162667016551@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0e1a89c7-b9fc-c6c5-c588-7469ef55e142@intel.com>
Date: Mon, 26 Aug 2019 11:12:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156684300251.15406.2123066162667016551@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use a separate context for gpu
 relocs
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

CgpPbiA4LzI2LzE5IDExOjEwIEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTI2IDE4OjU2OjUzKQo+Pgo+Pgo+PiBPbiA4LzI0
LzIwMTkgMTo1NCBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gTm90ZSB0aGF0IHRoaXMgcmVx
dWlyZXMgdXMgdG8gZml4IHRoZSB0YWdnaW5nIHNvIHRoYXQgd2UgZG9uJ3QgcGVyZm9ybSBhCj4+
PiBsaXRlLXJlc3RvcmUgZnJvbSB0aGUgcmVsb2MgaW5zdGFuY2UgdG8gdGhlIHVzZXIgaW5zdGFu
Y2UuCj4+Cj4+IFdoYXQncyB3cm9uZyB3aXRoIGxpdGUtcmVzdG9yaW5nIGluIHRoaXMgY2FzZT8g
SXQncyBub3Qgc29tZXRoaW5nIHdlCj4+IHN0b3Agbm93IEFGQUlDUy4KPiAKPiBJIGhhdmUgcGF0
Y2hlcyB0byBmaXggdGhlIHJlZ3Jlc3Npb24uIEJ1dCB0aGUgcXVlc3Rpb24gaXMgd2hldGhlciBv
ciBub3QKPiB0aGUgcHJlLXBhcnNlciBpcyBoYXBweSB0byBjcm9zcyB0aGUgbGl0ZS1yZXN0b3Jl
IGJvdW5kYXJ5LiBJZiBpdCBpcyBhCj4gbGlnaHQgbGl0ZS1yZXN0b3JlIGFuZCB0aGVyZSBpcyBu
byBjYWNoZSBpbnZhbGlkYXRpb24uLi4KPiAtQ2hyaXMKPiAKCk9uIHByZS1nZW4xMiB0aGUgcGFy
c2VyIGRvZXNuJ3QgY3Jvc3MgdGhlIEJCX1NUQVJULCBzbyB3ZSdyZSBzYWZlIGZyb20gCnRoYXQg
UE9WLgoKRGFuaWVsZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
