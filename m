Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D98C1F76
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 12:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830A189D6C;
	Mon, 30 Sep 2019 10:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43F589D6C;
 Mon, 30 Sep 2019 10:44:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 03:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="184794070"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by orsmga008.jf.intel.com with ESMTP; 30 Sep 2019 03:44:33 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 30 Sep
 2019 11:44:32 +0100
Date: Mon, 30 Sep 2019 12:44:30 +0200
From: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190930104430.w45v5kxjcsusgu4i@mwiniars-main.ger.corp.intel.com>
References: <20190926182335.18235-1-chris@chris-wilson.co.uk>
 <20190927132834.30789-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927132834.30789-1-chris@chris-wilson.co.uk>
Organization: Intel Technology Poland sp. z o.o. - KRS 101882 - ul.
 Slowackiego 173, 80-298 Gdansk
User-Agent: NeoMutt/20180716
X-Originating-IP: [172.28.172.64]
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/gem_ctx_isolation: Check
 nonpriv values are kept across switch
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMDI6Mjg6MzRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFZlcmlmeSB0aGF0IHRoZSB2YWx1ZXMgd2Ugc3RvcmUgaW4gb3VyIG5vbnByaXYgY29u
dGV4dCBpbWFnZSByZWdpc3RlcnMKPiBhcmUgcmVzdG9yZWQgYWZ0ZXIgYSBzd2l0Y2guCj4gCj4g
djI6IFVzZSBleHBsaWNpdCBvcmRlcmluZyB0byBlbnN1cmUgd2UgZm9yY2UgdGhlIGNvbnRleHQg
c3dpdGNoIGJhY2sgYW5kCj4gZm9ydGggaW4gYmV0d2VlbiB0aGUgcmVnaXN0ZXIgd3JpdGVzIGFu
ZCB0aGVpciByZWFkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNr
aUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5p
YXJza2lAaW50ZWwuY29tPgoKLU1pY2hhxYIKCj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX2N0eF9p
c29sYXRpb24uYyB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
