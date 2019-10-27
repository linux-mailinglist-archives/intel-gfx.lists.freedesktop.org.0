Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6222FE64F8
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 20:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74AE6E2CF;
	Sun, 27 Oct 2019 19:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673946E2CF
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 19:01:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Oct 2019 12:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,237,1569308400"; d="scan'208";a="193066492"
Received: from rnyamang-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.252.2.244])
 by orsmga008.jf.intel.com with ESMTP; 27 Oct 2019 12:01:34 -0700
Date: Sun, 27 Oct 2019 21:01:33 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191027190133.GC12997@intel.intel>
References: <20191026200917.1780-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026200917.1780-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Flip interpretation of ips
 fmin/fmax to max rps
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

SGkgQ2hyaXMsCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
cHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCj4gaW5kZXggMzBmNTZj
Nzg2NDY4Li4wMzJhMGM2Mzg5ZjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcnBzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMu
Ywo+IEBAIC0xODAsOCArMTgwLDggQEAgc3RhdGljIHZvaWQgZ2VuNV9ycHNfaW5pdChzdHJ1Y3Qg
aW50ZWxfcnBzICpycHMpCj4gIAlEUk1fREVCVUdfRFJJVkVSKCJmbWF4OiAlZCwgZm1pbjogJWQs
IGZzdGFydDogJWRcbiIsCj4gIAkJCSBmbWF4LCBmbWluLCBmc3RhcnQpOwo+ICAKPiAtCXJwcy0+
bWluX2ZyZXEgPSAtZnN0YXJ0OwoKYW5kIHdlIGRvbid0IG5lZWQgZnN0YXJ0IGFueW1vcmUuLi4g
Y2FuIHdlIHJlbW92ZSBpdD8KClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGlu
dGVsLmNvbT4KCkFuZGkKCj4gLQlycHMtPm1heF9mcmVxID0gLWZtaW47Cj4gKwlycHMtPm1pbl9m
cmVxID0gZm1heDsKPiArCXJwcy0+bWF4X2ZyZXEgPSBmbWluOwo+ICAKPiAgCXJwcy0+aWRsZV9m
cmVxID0gcnBzLT5taW5fZnJlcTsKPiAgCXJwcy0+Y3VyX2ZyZXEgPSBycHMtPmlkbGVfZnJlcTsK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
