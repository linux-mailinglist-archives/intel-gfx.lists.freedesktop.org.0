Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4BF43196
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 00:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908A489240;
	Wed, 12 Jun 2019 22:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A520189240
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 22:16:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 15:16:25 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jun 2019 15:16:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
 <20190612183748.7693-5-daniele.ceraolospurio@intel.com>
 <156037764521.10298.12343546015159675260@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <cf0812aa-b92b-6e7f-1423-561f6edf09da@intel.com>
Date: Wed, 12 Jun 2019 15:16:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156037764521.10298.12343546015159675260@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915: move and rename
 i915_runtime_pm
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

CgpPbiA2LzEyLzE5IDM6MTQgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMTIgMTk6Mzc6NDMpCj4+IEFzc2VydHMgYXNpZGUs
IGFsbCB0aGUgY29kZSB3b3JraW5nIG9uIHRoaXMgc3RydWN0dXJlIGlzIGluCj4+IGludGVsX3J1
bnRpbWVfcG0uYyBhbmQgdXNlcyB0aGUgaW50ZWxfIHByZWZpeCwgc28gbW92ZSB0aGUKPj4gc3Ry
dWN0dXJlIHRvIGludGVsX3J1bnRpbWVfcG0uaCBhbmQgYWRvcHQgdGhlIHNhbWUgcHJlZml4Lgo+
Pgo+PiBTaW5jZSBhbGwgdGhlIGFzc2VydHMgYXJlIG5vdyB3b3JraW5nIG9uIHRoZSBydW50aW1l
X3BtIHN0cnVjdHVyZSwKPj4gYnJpbmcgdGhlbSBhY3Jvc3MgYXMgd2VsbC4KPiAKPiBXYXNuJ3Qg
cGF0Y2ggMSBhbHNvIGEgcmVuYW1lPyBPciBhbSBJIGJlaW5nIHNlbmlsZT8KPiAtQ2hyaXMKPiAK
ClBhdGNoIG9uZSByZXBsYWNlZCBpOTE1IHdpdGggcnBtIGluIGEgYnVuY2ggb2YgcGxhY2VzIGlu
IHRoZSBydW50aW1lX3BtIApmaWxlLCBzbyBtb3JlIG9mIGEgc3RydWN0IHN3YXAgdGhhbiBhIHJl
bmFtZS4gVGhpcyBpcyB0aGUgcmVuYW1pbmcgcGF0Y2ggOykKCkRhbmllbGUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
