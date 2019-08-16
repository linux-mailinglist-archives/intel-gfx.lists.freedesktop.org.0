Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209C08FF32
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 11:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF1D6E29A;
	Fri, 16 Aug 2019 09:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F036E29A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 09:40:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 02:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="178712071"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 16 Aug 2019 02:40:27 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7G9eQdj024208; Fri, 16 Aug 2019 10:40:26 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-6-daniele.ceraolospurio@intel.com>
Date: Fri, 16 Aug 2019 11:40:26 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6lztocexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190816012343.36433-6-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Introduce i915_reg_types.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNiBBdWcgMjAxOSAwMzoyMzo0MiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gV2l0aCB0aGUg
aW50cm9kdWN0aW9uIG9mIGRpc3BsYXkgdW5jb3JlLCB3ZSB3YW50IHRvIGNhdGVnb3JpemUgcmVn
aXN0ZXJzCj4gYmV0d2VlbiBkaXNwbGF5IGFuZCBub24tZGlzcGxheS4gVG8gaGVscCB1cyBnZXR0
aW5nIGl0IHJpZ2h0LCBpdCB3aWxsCj4gYmUgdXNlZnVsIHRvIG1vdmUgdGhlIGRpc3BsYXkgcmVn
aXN0ZXJzIHRvIGEgbmV3IGZpbGUgdGhhdCBjYW4gYmUgdXNlZAo+IHdpdGhvdXQgaW5jbHVkaW5n
IGk5MTVfcmVnLmguIFRvIGFsbG93IHRoYXQsIG1vdmUgYWxsIHRoZSBiYXNpYyByZWdpc3Rlcgo+
IHR5cGUgZGVmaW5pdGlvbnMgYW5kIGhlbHBlcnMgdG8gaTkxNV9yZWdfdHlwZXMuaCBhbmQgaW5j
bHVkZSB0aGF0Cj4gaW5zdGVhZCBvZiBpOTE1X3JlZy5oIGZyb20gaGVhZGVyIGZpbGVzIGluIHRo
ZSBkcml2ZXIuIFdlJ2xsIHRoZW4KPiBiZSBhYmxlIHRvIHJlcGxhY2UgaTkxNV9yZWcuaCB3aXRo
IHRoZSBuZXcgZGlzcGxheS1vbmx5IGhlYWRlciBpbgo+IGRpc3BsYXkgZmlsZXMgYW5kIG1ha2Ug
c3VyZSB0aGUgcmVnaXN0ZXJzIGFyZSBjb3JyZWN0bHkKPiBjb21wYXJ0bWVudGFsaXplZC4KPgoK
bWF5YmUgdGhpcyBzcGxpdCBzaG91bGQgYW5vdGhlciB3YXk6CgoJaTkxNV9yZWcuaCA9IGJhc2lj
IHR5cGVkZWZzIGFuZCBtYWNyb3MKCWludGVsX3JlZy5oID0gcmVnaXN0ZXIgZGVmaW5pdGlvbnMK
YW5kCglpbnRlbF9kaXNwbGF5X3JlZy5oID0gZGlzcGxheSByZWxhdGVkIHJlZ3MgKHlvdXIgZ29h
bCkKCWludGVsX2d1Y19yZWcuaCA9IEd1QyByZWxhdGVkIHJlZ3MgKHdlIGFscmVhZHkgaGF2ZSB0
aGF0ISkKCnRoZW4gd2UgZm9sbG93IHRoZSBydWxlIHRvIHVzZSBpOTE1XyBwcmVmaXggZm9yIGRy
aXZlciBzcGVjaWZpYwpjb2RlIGFuZCBpbnRlbF8gcHJlZml4IGZvciBoYXJkd2FyZSBvcmlnaW5h
dGVkIGRlZmluaXRpb25zCgpNaWNoYWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
