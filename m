Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D09790012
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB50B89183;
	Fri, 16 Aug 2019 10:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3890689183
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:32:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 03:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194968753"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2019 03:32:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <156594840654.11610.7701104753301488078@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-5-daniele.ceraolospurio@intel.com>
 <875zmxfo6r.fsf@intel.com>
 <156594840654.11610.7701104753301488078@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 13:32:23 +0300
Message-ID: <87zhk9e6yw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Dynamically allocate s0ix
 struct for VLV
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

T24gRnJpLCAxNiBBdWcgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDgtMTYgMTA6MzU6MDgpCj4+
IE9uIFRodSwgMTUgQXVnIDIwMTksIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+PiA+IEBAIC0xNjIyLDcgKzE1NjAsNyBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4+ID4gICAgICAgdTMyIHN1c3BlbmRfY291bnQ7Cj4+
ID4gICAgICAgYm9vbCBwb3dlcl9kb21haW5zX3N1c3BlbmRlZDsKPj4gPiAgICAgICBzdHJ1Y3Qg
aTkxNV9zdXNwZW5kX3NhdmVkX3JlZ2lzdGVycyByZWdmaWxlOwo+PiA+IC0gICAgIHN0cnVjdCB2
bHZfczBpeF9zdGF0ZSB2bHZfczBpeF9zdGF0ZTsKPj4gPiArICAgICB2b2lkICpzMGl4X3N0YXRl
Owo+PiAKPj4gSSdkIGtlZXAgdGhlIHZsdl8gcHJlZml4IGluIHRoZSBtZW1iZXIgbmFtZS4KPgo+
IEFuZCBmb3J3YXJkIGRlY2wgdG8gYXZvaWQgYSBuYWtlZCB2b2lkICoKCk9oIHllcyBhYnNvbHV0
ZWx5LCBJIGhhZCB0aGF0IGluIG15IHZlcnNpb24gb2YgdGhlIHBhdGNoLCBhbmQgZGlkbid0CmV2
ZW4gc3BvdCBpdCBoZXJlIQoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
