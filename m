Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E10210FDB1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76436E497;
	Tue,  3 Dec 2019 12:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9356E497
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:32:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 04:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="262559235"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Dec 2019 04:32:25 -0800
Date: Tue, 3 Dec 2019 14:32:24 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191203123224.GB1254@intel.intel>
References: <20191203085312.3963-1-andi.shyti@intel.com>
 <157537088434.7230.17372944931773845755@skylake-alporthouse-com>
 <20191203115449.GA1254@intel.intel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203115449.GA1254@intel.intel>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests: add basic selftests
 for rc6
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gIH0KPiA+ID4gKwo+ID4gPiArc3RhdGljIGJvb2wgdGVzdF9yYzYoc3RydWN0IGludGVs
X3JjNiAqcmM2LCBib29sIGVuYWJsZWQpCj4gPiAKPiA+IEkga2VlcCBnZXR0aW5nIGNvbmZ1c2Vk
IGFzIHRvIHRoZSBtZWFuaW5nIG9mIHRoZSByZXN1bHQsIGZvcmdldHRpbmcgaXQKPiA+IGNoYW5n
ZXMgYmFzZWQgb24gYm9vbCBlbmFibGVkLgo+ID4gCj4gPiBNYXliZSB1MzIgbWVhc3VyZV9yYzYo
KSBhbmQgbGVhdmUgdGhlIHBhc3MvZmFpbCB0byB0aGUgY2FsbGVyPwoKdGhpbmtpbmcgYSBiaXQg
YmV0dGVyLi4uIHdoYXQgZXhhY3RseSB3b3VsZCBJIHJldHVybj8gd2hhdCB3b3VsZAptZWFzdXJl
X3JjNiBtZWFzdXJlPyBUaGUgInNsZWVwaW5nIiBmdW5jdGlvbiBpcyBub3QgcHJlY2lzZSBieQpk
ZWZpbml0aW9uIChhcyB5b3UgcG9pbnRlZCBvdXQgYXMgd2VsbCkgYW5kIGl0IHdvdWxkIGJlIG91
dCBmcm9tCnRoZSBzY29wZSBvZiB0aGlzIGZ1bmN0aW9uIHRvIHByb3ZpZGUgYW4gZXhhY3QgbWVh
c3VyZSBvZiB0aGUKaW50ZXJ2YWwgY291bnQuCgpUaGUgd2F5IEkgd291bGQgcmF0aGVyIGRvIGl0
IHdvdWxkIGJlOgoKdTMyIG1lYXN1cmVfcmM2KHUzMiB0aW1lX2luX21zKQp7CgkuLi4KfQoKYm9v
bCB0ZXN0X3JjNihib29sIGVuYWJsZSkKewoJLi4uCglyZXR1cm4gZW5hYmxlIF4gZG9lc19yYzZf
d29yaygyICogaW50ZXJ2YWwpOwp9Cgp3aGVyZSBtZWFzdXJlX3JjNiBwcm92aWRlcyB0aGUgY291
bnRlciBpbiBhIG1vcmUgcHJlY2lzZSB0aW1lCnJhbmdlIGFuZCBjYW4gYmUgYWxzbyB1c2VkIGZv
ciBvdGhlciB0ZXN0cywgbGlrZSBoeXN0ZXJlc2lzIG9yCmR1dHkgY3ljbGUgdGVzdHMgd2hlcmUg
SSBndWVzcyB0aW1lIG1lYXN1cmVtZW50IGlzIG1vcmUgY3JpdGljYWwuCgpCdXQgYXMgZm9yIG5v
dyBzdWNoIGZ1bmN0aW9uIHdvdWxkbid0IGJlIG9mIGFueSB1c2UuIEkgY291bGQKZXZlbnR1YWxs
eSBjYWxsICd0ZXN0X3JjNicgaW4gYSBtb3JlIGludHVpdGl2ZSB3YXksIGxpa2UKJ2lzX3JjNl9l
bmFibGVkKCknLgoKQW5kaQoKPiB5ZXMsIEkgd2FzIHRoaW5raW5nIHRoZSBzYW1lLCBpdCBtYWtl
cywgaW5kZWVkIG1vcmUgc2Vuc2UuCj4gCj4gVGhlIG9yaWdpbmFsIGlkZWEgd2FzIGp1c3QgdG8g
a25vdyB3aGV0aGVyIHJjNiB3b3JrcyBvciBub3QuCj4gCj4gVGhhbmtzLAo+IEFuZGkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
