Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E5EF7B1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 10:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9FCB6E938;
	Tue,  5 Nov 2019 09:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9BA6E938
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 09:02:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 01:02:34 -0800
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="192038022"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.31.180])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 01:02:31 -0800
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191104173720.2696-3-daniel.vetter@ffwll.ch>
References: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
 <20191104173720.2696-3-daniel.vetter@ffwll.ch>
Message-ID: <157294454858.9970.12268694142857953676@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 05 Nov 2019 11:02:28 +0200
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: use might_lock_nested in
 get_pages annotation
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA0IDE5OjM3OjIwKQo+IFNvIHN0cmljdGx5
IHNwZWFraW5nIHRoZSBleGlzdGluZyBhbm5vdGF0aW9uIGlzIGFsc28gb2ssIGJlY2F1c2Ugd2UK
PiBoYXZlIGEgY2hhaW4gb2YKPiAKPiBvYmotPm1tLmxvY2sjSTkxNV9NTV9HRVRfUEFHRVMgLT4g
ZnNfcmVjbGFpbSAtPiBvYmotPm1tLmxvY2sKPiAKPiAodGhlIHNocmlua2VyIGNhbm5vdCBnZXQg
YXQgYW4gb2JqZWN0IHdoaWxlIHdlJ3JlIGluIGdldF9wYWdlcywgaGVuY2UKPiB0aGlzIGlzIHNh
ZmUpLiBCdXQgaXQncyBjb25mdXNpbmcsIHNvIHRyeSB0byB0YWtlIHRoZSByaWdodCBzdWJjbGFz
cwo+IG9mIHRoZSBsb2NrLgo+IAo+IFRoaXMgZG9lcyBhIGJpdCByZWR1Y2Ugb3VyIGxvY2tkZXAg
YmFzZWQgY2hlY2tpbmcsIGJ1dCB0aGVuIGl0J3MgYWxzbwo+IGxlc3MgZnJhZ2lsZSwgaW4gY2Fz
ZSB3ZSBldmVyIGNoYW5nZSB0aGUgbmVzdGluZyBhcm91bmQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IFBldGVyIFppamxz
dHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhh
dC5jb20+Cj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gQ2M6IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmcKClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
