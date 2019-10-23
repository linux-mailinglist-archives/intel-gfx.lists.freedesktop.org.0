Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA42E1A53
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665A96EA7A;
	Wed, 23 Oct 2019 12:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB596EA7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:32:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 05:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="191816353"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga008.jf.intel.com with ESMTP; 23 Oct 2019 05:32:12 -0700
Date: Wed, 23 Oct 2019 15:32:16 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191023123216.GA4125@intel.intel>
References: <20191023093821.3350-1-andi.shyti@intel.com>
 <20191023095000.3782-1-andi.shyti@intel.com>
 <157183266196.15766.14782680783428472038@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157183266196.15766.14782680783428472038@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Extract GT render power
 state management
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

PiA+ICAgICAgICAgICogbWF4aW11bSBjbG9ja3MgZm9sbG93aW5nIGEgdmJsYW5rIG1pc3MgKHNl
ZSBkb19ycHNfYm9vc3QoKSkuCj4gPiAgICAgICAgICAqLwo+ID4gICAgICAgICBpZiAoIWludGVs
X3N0YXRlLT5ycHNfaW50ZXJhY3RpdmUpIHsKPiA+IC0gICAgICAgICAgICAgICBpbnRlbF9ycHNf
bWFya19pbnRlcmFjdGl2ZShkZXZfcHJpdiwgdHJ1ZSk7Cj4gPiArICAgICAgICAgICAgICAgaW50
ZWxfcnBzX21hcmtfaW50ZXJhY3RpdmUoJmRldl9wcml2LT5ndC5ycHMsIHRydWUpOwo+IAo+IEkg
d29uZGVyIGlmIHdlIGNhbiBkbyAmcGxhbmUtPnZtYS0+dm0tPmd0LT5ycHMKCmFncmVlLCBsb29r
cyB1Z2x5LCBJIGNvdWxkIGZpeCBpdCBieSBleHRyYWN0aW5nIHJwcy4gU2hhbGwgSSBkbwppdCBu
b3cgaW4gYSB2MyBvciBhZnRlciB0aGUgcGF0Y2ggZ2V0cyBtZXJnZWQ/IEFzIHlvdSBjYW4gZ3Vl
cwpJJ2QgcHJlZmVyIGRvaW5nIGFmdGVyIHRoZSBwYXRjaCBpcyBtZXJnZWQgOikKCkFuZGkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
