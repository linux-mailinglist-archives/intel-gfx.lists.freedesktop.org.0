Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF5019EA5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58F889D2E;
	Fri, 10 May 2019 14:02:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E6989D2E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:02:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 07:02:20 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 10 May 2019 07:02:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
 <20190510132240.11029-6-tvrtko.ursulin@linux.intel.com>
 <155749662693.10894.10446305844941163507@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f2db7277-7873-ba67-811e-122a783518ed@linux.intel.com>
Date: Fri, 10 May 2019 15:02:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749662693.10894.10446305844941163507@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 5/6] drm/i915: Expose per-engine client
 busyness
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMTkgMTQ6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTEwIDE0OjIyOjM5KQo+PiArc3RhdGljIGNvbnN0IGNoYXIgKnVh
YmlfY2xhc3NfbmFtZXNbXSA9IHsKPj4gKyAgICAgICBbSTkxNV9FTkdJTkVfQ0xBU1NfUkVOREVS
XSA9ICIwIiwKPj4gKyAgICAgICBbSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWV0gPSAiMSIsCj4+ICsg
ICAgICAgW0k5MTVfRU5HSU5FX0NMQVNTX1ZJREVPXSA9ICIyIiwKPj4gKyAgICAgICBbQ09QWV9F
TkdJTkVfQ0xBU1NdID0gIjMiLAo+IAo+IEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPX0VOSEFOQ0U/
CgpZZWFoLi4gcHJvYmFibHkgYW4gaW50ZXJydXB0aW9uIGluIHRoZSBtaWRkbGUgb2YgY29udmVy
dGluZyB0aGlzIGFycmF5LiA6KQoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
