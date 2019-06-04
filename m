Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC593454E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 13:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8527889249;
	Tue,  4 Jun 2019 11:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1505289249
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 11:20:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 04:20:45 -0700
X-ExtLoop1: 1
Received: from abdiel-macbookpro.fi.intel.com (HELO [10.237.66.137])
 ([10.237.66.137])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2019 04:20:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190604103723.23041-1-abdiel.janulgue@linux.intel.com>
 <155964605629.4471.10695354545186587700@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <38528be2-a78c-9204-b425-e4f4eb746f90@linux.intel.com>
Date: Tue, 4 Jun 2019 14:20:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <155964605629.4471.10695354545186587700@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Split out GTT fault handler to
 make it generic
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwNi8wNC8yMDE5IDAyOjAwIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cgo+PiArCj4+ICsg
ICAgICAgLyogQWNjZXNzIHRvIHNub29wYWJsZSBwYWdlcyB0aHJvdWdoIHRoZSBHVFQgaXMgaW5j
b2hlcmVudC4gKi8KPj4gKyAgICAgICBpZiAob2JqLT5jYWNoZV9sZXZlbCAhPSBJOTE1X0NBQ0hF
X05PTkUgJiYgIUhBU19MTEMoZGV2X3ByaXYpKSB7Cj4gCj4gQW5kIHRoYXQgaXMgdmVyeSwgdmVy
eSBzcGVjaWZpYyB0byBvbmUgcGF0aC4KPiAKT29wcywgeWVwIHRoYXQgc2hvdWxkIGJlIGd0dC1m
YXVsdCBzcGVjaWZpYwoKCj4gRnJvbSB0aGUgc2FtcGxpbmcgaGVyZSwgdGhpcyBpcyBub3QgZ2Vu
ZXJpYyBwcmVhbWJsZS4KPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
