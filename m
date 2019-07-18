Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16CF6CE4C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 14:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935AF6E3A2;
	Thu, 18 Jul 2019 12:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87D56E3A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 12:53:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 05:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,278,1559545200"; d="scan'208";a="179237767"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2019 05:53:48 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6ICrlLO001741; Thu, 18 Jul 2019 13:53:48 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190718080203.24704-1-chris@chris-wilson.co.uk>
Date: Thu, 18 Jul 2019 14:53:47 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z44jfx1xxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190718080203.24704-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Flush the CT worker after
 updating log controls
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxOCBKdWwgMjAxOSAxMDowMjowMyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6CgouLi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMKPiBpbmRleCA3N2ZkYTFlODVkM2IuLmU4MGMxZWIz
MDllZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
bG9nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMK
PiBAQCAtNjEzLDEyICs2MTMsMTEgQEAgdm9pZCBpbnRlbF9ndWNfbG9nX3JlbGF5X2ZsdXNoKHN0
cnVjdCAgCj4gaW50ZWxfZ3VjX2xvZyAqbG9nKQo+ICB2b2lkIGludGVsX2d1Y19sb2dfcmVsYXlf
Y2xvc2Uoc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKPiAgewo+ICAJc3RydWN0IGludGVsX2d1
YyAqZ3VjID0gbG9nX3RvX2d1Yyhsb2cpOwo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsKPiAJZ3VjX2xvZ19kaXNhYmxlX2ZsdXNoX2V2ZW50
cyhsb2cpOwo+IC0JaW50ZWxfc3luY2hyb25pemVfaXJxKGk5MTUpOwo+IC0JZmx1c2hfd29yaygm
bG9nLT5yZWxheS5mbHVzaF93b3JrKTsKPiArCWZsdXNoX3dvcmsoJmd1Yy0+Y3Qud29ya2VyKTsK
CldlIGRvbid0IG5lZWQgdG8gdG91Y2ggY3Qud29ya2VyIGhlcmUgYXMgaW4gYWJvdmUgY2FsbCB0
bwpndWNfbG9nX2Rpc2FibGVfZmx1c2hfZXZlbnRzKCkgd2Ugd2lsbCB0dXJuIG9mZiBoYW5kbGlu
ZyBvZgphbGwgbG9nIGV2ZW50cyAodGhleSB3aWxsIGJlIGRyb3BwZWQgaWYgcHJvY2Vzc2VkIGxh
dGVyIGJ5CnRoZSBjdC53b3JrZXIgaW4gaW50ZWxfZ3VjX3RvX2hvc3RfcHJvY2Vzc19yZWN2X21z
ZykKCkFkZGl0aW9uYWxseSB0b3VjaGluZyBjdC53b3JrZXIgaGVyZSB3aWxsIGJyZWFrIG91ciBu
aWNlCnNlcGFyYXRpb24gYmV0d2VlbiBndWMgY29tcG9uZW50cwoKTWljaGFsCgo+ICsJY2FuY2Vs
X3dvcmtfc3luYygmbG9nLT5yZWxheS5mbHVzaF93b3JrKTsKPiAJbXV0ZXhfbG9jaygmbG9nLT5y
ZWxheS5sb2NrKTsKPiAgCUdFTV9CVUdfT04oIWludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxlZChs
b2cpKTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
