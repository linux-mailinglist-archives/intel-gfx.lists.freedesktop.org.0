Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A2D82607
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 22:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F6789FE8;
	Mon,  5 Aug 2019 20:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89DC89FE8
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 20:28:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 13:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="185427392"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga002.jf.intel.com with ESMTP; 05 Aug 2019 13:28:30 -0700
Date: Mon, 5 Aug 2019 16:44:36 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805204436.GB3842@intel.com>
References: <20190802204111.7344-1-prathap.kumar.valsan@intel.com>
 <156477784355.6598.13904246729423995531@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156477784355.6598.13904246729423995531@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Separate pinning of pages from
 i915_vma_insert()
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

T24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMDk6MzA6NDNQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUHJhdGhhcCBLdW1hciBWYWxzYW4gKDIwMTktMDgtMDIgMjE6NDE6MTEp
Cj4gPiBDdXJyZW50bHkgaTkxNV92bWFfaW5zZXJ0KCkgaXMgcmVzcG9uc2libGUgZm9yIGFsbG9j
YXRpbmcgZHJtIG1tIG5vZGUKPiA+IGFuZCBhbHNvIGFsbG9jYXRpbmcgb3IgZ2F0aGVyaW5nIHBo
eXNpY2FsIHBhZ2VzLiBNb3ZlIHRoZSBsYXR0ZXIgdG8gYQo+ID4gc2VwYXJhdGUgZnVuY3Rpb24g
Zm9yIGJldHRlciByZWFkYWJpbGl0eS4KPiAKPiBDbG9zZSBidXQgaWYgeW91IGxvb2sgYXQgdGhl
IG11dGV4IHBhdGNoZXMsIHlvdSdsbCBzZWUgd2h5IGl0IGhhcyB0byBiZQo+IGJlZm9yZS4KPiAt
Q2hyaXMKCkxvb2tlZCBhdCB0aGUgTXV0ZXggcGF0Y2hlcy4gV2l0aCBhc3luYyBnZXRfcGFnZXMg
YW5kIGFzeW5jIGJpbmQsIHBpbm5pbmcKYW5kIHNldCBwYWdlcyBhcmUgYWxyZWFkeSBzZXBhcmF0
ZWQgb3V0IGZyb20gaTkxNV92bWFfaW5zZXJ0KCkuIFNvIHRoaXMKcGF0Y2ggbWF5IG5vdCBiZSBu
ZWVkZWQuCgpUaGFua3MsClByYXRoYXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
