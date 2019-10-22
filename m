Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6BFE0CFB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 22:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD466E8F5;
	Tue, 22 Oct 2019 20:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB17C6E8F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 20:04:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 13:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="191593791"
Received: from chauvina-mobl1.ger.corp.intel.com (HELO intel.intel)
 ([10.252.29.109])
 by orsmga008.jf.intel.com with ESMTP; 22 Oct 2019 13:04:43 -0700
Date: Tue, 22 Oct 2019 23:04:42 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191022200439.GA32570@intel.intel>
References: <20191022112111.9317-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022112111.9317-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Synchronize checking
 active status with retirement
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

SGkgQ2hyaXMsCgpPbiBUdWUsIE9jdCAyMiwgMjAxOSBhdCAxMjoyMToxMVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSWYgcmV0aXJlbWVudCBpcyBydW5uaW5nIG9uIGFub3RoZXIgdGhy
ZWFkLCB3ZSBtYXkgaW5zcGVjdCB0aGUgc3RhdHVzIG9mCj4gdGhlIGk5MTVfYWN0aXZlIGJlZm9y
ZSBpdHMgcmV0aXJlbWVudCBjYWxsYmFjayBpcyBjb21wbGV0ZS4gQXMgd2UgZXhwZWN0Cj4gaXQg
dG8gYmUgcnVubmluZyBzeW5jaHJvbm91c2x5LCB3ZSBjYW4gd2FpdCBmb3IgYW55IGNhbGxiYWNr
IHRvIGNvbXBsZXRlCj4gYnkgYWNxdWlyaW5nIHRoZSBpOTE1X2FjdGl2ZS5tdXRleC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAt
LS0KPiBNYXliZT8gSXQgcmVhbGx5IHNob3VsZG4ndCBtYWtlIGEgZGlmZmVyZW5jZSwgdGhlIGNh
c2Ugd2hlcmUgaXQgd291bGQKPiBzaG91bGQgbm90IGFwcGx5LCBzdXJlbHkuLi4KCkFja2VkLWJ5
OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KCkFuZGkKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
