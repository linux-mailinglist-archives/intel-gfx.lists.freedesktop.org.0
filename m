Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6855C4DF37
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832FC6E7F3;
	Fri, 21 Jun 2019 02:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63EE6E7F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:53:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:53:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="311866184"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2019 19:53:04 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.124]) by
 PGSMSX103.gar.corp.intel.com ([169.254.2.96]) with mapi id 14.03.0439.000;
 Fri, 21 Jun 2019 10:53:03 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Refine eDP aux backlight enable/disable
 sequence
Thread-Index: AQHVJ9nREk0ZZvPDJEeS9+EiDvQNHaalZsjg
Date: Fri, 21 Jun 2019 02:53:02 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D61B4B0@PGSMSX111.gar.corp.intel.com>
References: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
 <1561086128-19145-1-git-send-email-shawn.c.lee@intel.com>
In-Reply-To: <1561086128-19145-1-git-send-email-shawn.c.lee@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWI0OWIwM2MtYTZjOS00ZjIzLWE2YjYtOTY0ZTE0MzYwN2QwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRWo3QWZDSkJaWTVCNVhzMHc0aWt3cWZqZ2VyVkRvdDExdmt2a1pUaE8yeFhZenVsbFZoR0gzTis0ZmtxNlVlSCJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refine eDP aux backlight
 enable/disable sequence
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
Reply-To: "1561086128-19145-1-git-send-email-shawn.c.lee@intel.com"
 <1561086128-19145-1-git-send-email-shawn.c.lee@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Chiou,
 Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4KPk1vZGlmeSBhdXggYmFja2xpZ2h0IGVuYWJsZS9kaXNhYmxlIHNlcXVlbmNlIGp1
c3QgbGlrZSB3aGF0IHdlIGRpZCBmb3IgZ2VuZXJuYWwgZURQIHBhbmVsLgo+MS4gU2V0dXAgUFdN
IGZyZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwgYmVmb3JlIGVuYWJsZSBkaXNwbGF5IGJhY2tsaWdo
dC4KPjIuIFNldCBQV00gdG8gMCBhZnRlciBiYWNrbGlnaHQgZW5hYmxlIHdhcyBvZmYuCj4KPnYy
OiBDb2RlIHN0cnVjdHVyZSB3YXMgY2hhbmdlZC4gTW9kaWZ5IHRoaXMgcGF0Y2ggdG8gYWxpZ24g
dGhlIGxhdGVzdC4KPgo+Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj5DYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPkNjOiBK
b3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+Q2M6IENvb3BlciBD
aGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KPgo+U2lnbmVkLW9mZi1ieTogTGVlIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMyArKy0KPiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj5pbmRleCA2YjBiNzM0
NzlmYjguLmJiYzU3OTczNDIzOCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+QEAgLTIxNiwxMyArMjE2LDE0IEBA
IHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9lbmFibGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0Cj4gCQl9Cj4gCX0KPiAKPi0Jc2V0X2F1eF9iYWNrbGln
aHRfZW5hYmxlKGludGVsX2RwLCB0cnVlKTsKPiAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQo
Y29ubl9zdGF0ZSwgY29ubmVjdG9yLT5wYW5lbC5iYWNrbGlnaHQubGV2ZWwpOwo+KwlzZXRfYXV4
X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwo+IH0KPiAKPiBzdGF0aWMgdm9pZCBp
bnRlbF9kcF9hdXhfZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jf
c3RhdGUgKm9sZF9jb25uX3N0YXRlKSAgewo+IAlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoZW5j
X3RvX2ludGVsX2RwKG9sZF9jb25uX3N0YXRlLT5iZXN0X2VuY29kZXIpLCBmYWxzZSk7Cj4rCWlu
dGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KG9sZF9jb25uX3N0YXRlLCAwKTsKPiB9Cj4gCj4gc3Rh
dGljIGludCBpbnRlbF9kcF9hdXhfc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPi0tCj4yLjcuNAo+CgpQbGVhc2UgaWdub3JlIHRoaXMgc2VyaWVzIGNo
YW5nZS4gSSB3aWxsIHB1c2ggYSBuZXcgb25lIGluc3RlYWQgb2YgdGhpcyBzZXJpZXMuIApCZWNh
dXNlIG9mIHdlIGRvbid0IG5lZWQgdGhlIGNoYW5nZSBmcm9tIHBhdGNoICMyIHRoYXQgYXBwbGll
ZCB1bm5lY2Vzc2FyeSBkZWxheS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
