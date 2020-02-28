Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC0B17389D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559166E198;
	Fri, 28 Feb 2020 13:44:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA68B6E198
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:44:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 05:44:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232535193"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 28 Feb 2020 05:44:42 -0800
Received: from [172.28.174.25] (mwajdecz-mobl.ger.corp.intel.com
 [172.28.174.25])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 01SDielM026017; Fri, 28 Feb 2020 13:44:41 GMT
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Fosha, Robert M" <robert.m.fosha@intel.com>, "Ye, Tony"
 <tony.ye@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <157979471850.19995.901739010740499969@skylake-alporthouse-com>
 <op.0e0gqwtixaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab0ca807-0e3b-172a-dbd6-6777f5881be1@intel.com>
 <3d4f28e6-c87b-0278-ba3a-64d95d550efd@intel.com>
 <op.0ft9pzk8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab1774c0-69b7-5a9b-c538-f1bf68cfb68e@intel.com>
 <2132eb14-d887-2739-a183-cb06d5659f88@intel.com>
 <158288959705.8183.10803900434216996205@jlahtine-desk.ger.corp.intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <a30d703c-a9c6-7b19-f636-b8a8def73e8d@intel.com>
Date: Fri, 28 Feb 2020 14:44:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158288959705.8183.10803900434216996205@jlahtine-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

CgpPbiAyOC4wMi4yMDIwIDEyOjMzLCBKb29uYXMgTGFodGluZW4gd3JvdGU6Cj4+Pj4+Pj4gLS0t
LS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0KPj4+Pj4+PiDCoMKgIEh1QyBzdGF0ZcKgwqDCoMKg
wqDCoCB8IG9wdGlvbiBCCj4+Pj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0KPj4+
Pj4+PiBubyBIdUMgaGFyZHdhcmXCoMKgIHwgLUVOT0RFVgo+Pj4+Pj4+IEd1QyBmdyBkaXNhYmxl
ZMKgwqAgfCAtRU9QTk9UU1VQUCAtPiB1c2VyIGRlY2lzaW9uLCB3aHkgZXJyb3I/Cj4+Pj4+Pj4g
SHVDIGZ3IGRpc2FibGVkwqDCoCB8IC1FT1BOT1RTVVBQIC0+IHVzZXIgZGVjaXNpb24sIHdoeSBl
cnJvcj8KPj4+Pj4+PiBIdUMgZncgbWlzc2luZ8KgwqDCoCB8IC1FTk9FWEVDCj4+Pj4+Pj4gSHVD
IGZ3IGVycm9ywqDCoMKgwqDCoCB8IC1FTk9FWEVDCj4+Pj4+Pj4gSHVDIGZ3IGZhaWzCoMKgwqDC
oMKgwqAgfMKgwqDCoCAwwqDCoMKgwqDCoMKgwqAgLT4gdW5saWtlbHksIGJ1dCBzdGlsbCBmdy9o
dyBlcnJvcgo+Pj4+Pj4+IEh1QyBhdXRoZW50aWNhdGVkIHzCoMKgwqAgMQo+Pj4+Pj4+IC0tLS0t
LS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tCj4+Pj4+Pj4KPj4+Pj4+PiBPbiBvdGhlciBoYW5kLCBv
cHRpb24gQSB0cmVhdHMgYWxsIGVycm9yIGNvbmRpdGlvbnMgYXMgZXJyb3JzLCBsZWF2aW5nCj4+
Pj4+Pj4gc3RhdHVzIGNvZGVzIG9ubHkgZm9yIG5vcm1hbCBvcGVyYXRpb25zOiBkaXNhYmxlZCgw
KS9hdXRoZW50aWNhdGVkKDEpOgo+Pj4+Pj4+Cj4+Pj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLS0KPj4+Pj4+PiDCoMKgIEh1QyBzdGF0ZcKgwqDCoMKgwqDCoCB8IG9wdGlvbiBBCj4+
Pj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0KPj4+Pj4+PiBubyBIdUMgaGFyZHdh
cmXCoMKgIHwgLUVOT0RFVsKgIC0+IHlvdSBzaG91bGRuJ3QgYXNrCj4+Pj4+Pj4gR3VDIGZ3IGRp
c2FibGVkwqDCoCB8wqDCoMKgwqAgMMKgwqDCoCAtPiB1c2VyIGRlY2lzaW9uLCBub3QgYW4gZXJy
b3IKPj4+Pj4+PiBIdUMgZncgZGlzYWJsZWTCoMKgIHzCoMKgwqDCoCAwwqDCoMKgIC0+IHVzZXIg
ZGVjaXNpb24sIG5vdCBhbiBlcnJvcgo+Pj4+Pj4+IEh1QyBmdyBtaXNzaW5nwqDCoMKgIHwgLUVO
T1BLR8KgIC0+IGZ3IG5vdCBpbnN0YWxsZWQgY29ycmVjdGx5Cj4+Pj4+Pj4gSHVDIGZ3IGVycm9y
wqDCoMKgwqDCoCB8IC1FTk9FWEVDIC0+IGJhZC93cm9uZyBmdwo+Pj4+Pj4+IEh1QyBmdyBmYWls
wqDCoMKgwqDCoMKgIHwgLUVBQ0NFU8KgIC0+IGZ3L2h3IGVycm9yCj4+Pj4+Pj4gSHVDIGF1dGhl
bnRpY2F0ZWQgfMKgwqDCoMKgIDEKPj4+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0t
LQo+IAo+IExldCdzIGdvIHdpdGggT3B0aW9uIEIgaGVyZS4KClRvbnkgd2FzIG9rIHdpdGggb3B0
aW9uIEEuLi4KCj4gCj4gSXQgY29ycmVjdGx5IHJlcG9ydHMgYW55dGhpbmcgYXMgZXJyb3IgaWYg
aXQgcHJlY2VkZXMKPiB0aGUgYWN0dWFsIGFjdGlvbiBvZiBhdXRoZW50aWNhdGlvbiBhbmQgcHJl
dmVudHMgaXQgZnJvbQo+IGhhcHBlbmluZy4KCk9wdGlvbiBBIGRvIHRoZSBzYW1lLCBpbmNsdWRp
bmcgY29ycmVjdGx5IHJlcG9ydGluZyBjb3JydXB0ZWQvd3JvbmcKZmlybXdhcmUgYXMgZXJyb3Ig
KGFzIHRoaXMgaXMgdGhlIG1vc3QgbGlrZWx5IHJlYXNvbiB0aGF0IHByZXZlbnRzCnN1Y2Nlc3Nm
dWwgSHVDIGF1dGhlbnRpY2F0aW9uIG9uIGdpdmVuIHBsYXRmb3JtKS4KClRoZSBtYWluIGRpZmZl
cmVuY2UgaGVyZSBpcyB1c2VyIGRlY2lzaW9uIHRvIGRpc2FibGUgSHVDLCB0aGF0IGlzIG5vdwp0
cmVhdGVkIGFzIHRoZSBvbmx5IG9uZSBub24tZXJyb3IgcmVhc29uIHRoYXQgSHVDIGlzIG5vdCBh
dmFpbGFibGUgZm9yIHVzZS4KCj4gCj4gU28gdGhlIHJlc3VsdCBvbmUgZ2V0cyBpcyAwLzEgaXMg
Zm9yIHRoZSBhdXRoZW50aWNhdGlvbgo+IHN0YXR1cyB3aGljaCBpcyB0aGUgb3JpZ2luYWwgaW50
ZW50IGhlcmUuIAoKSSdtIG5vdCBzdXJlIHRoYXQgZnJvbSB1c2VyIFBPViBvcmlnaW5hbCBpbnRl
bnQgd2FzIHRvIGV4cGxpY2l0bHkgY2hlY2sKSHVDIGF1dGhlbnRpY2F0aW9uIHN0YXR1cyBidXQg
cmF0aGVyIGlmIEh1QyBpcyBhdmFpbGFibGUgZm9yIHVzZS4KCk91ciByZWR1bmRhbnQgWzFdIGNo
ZWNrIG9mIGZ3IGF1dGhlbnRpY2F0aW9uIHN0YXR1cyBkdXJpbmcgdGhpcyBpb2N0bCBpcwpqdXN0
IGludGVybmFsIGRldGFpbCwgbm90IG5lY2Vzc2FyeSBzb21ldGhpbmcgdXNlciB3YXMgaW50ZXJl
c3RlZCBmcm9tCnRoaXMgYWN0aW9uLgoKTWljaGFsCgpbMV0gYXMgd2UgYXJlIGFscmVhZHkgY2hl
Y2tpbmcgdGhpcyByZWdpc3RlciBkdXJpbmcgSHVDIGZ3IGxvYWQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
