Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2FB243EB1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 20:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4AF76EA83;
	Thu, 13 Aug 2020 18:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D7A6EA83
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 18:12:26 +0000 (UTC)
IronPort-SDR: VZ1LSsvx/7Mj/PDkqZVBlHBPfFhnviMN6cV6YrkQC9kJjqtt2bREmYXFdauOC8rdaAEO8QinXm
 dpTI8Z6J5Lrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="134357610"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="134357610"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 11:12:25 -0700
IronPort-SDR: gyOaVhPMUVpuKDvSadaneDx2xIWQgzrjVAUlSRxYBr9ozVid6SgSxqomK4vAarC4R+VNu4nMKh
 3CWBeqvB5r+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="399254878"
Received: from orsmsx604-2.jf.intel.com (HELO ORSMSX604.amr.corp.intel.com)
 ([10.22.229.84])
 by fmsmga001.fm.intel.com with ESMTP; 13 Aug 2020 11:12:24 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 11:12:24 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 11:12:24 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.64]) with mapi id 14.03.0439.000;
 Thu, 13 Aug 2020 11:12:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for new DMC and HuC firmwares for TGL and RKL
Thread-Index: AQHWcZ1KCglUKwUMyEOqKXOls73pRg==
Date: Thu, 13 Aug 2020 18:12:24 +0000
Message-ID: <1bc8eebf2767058bcf134b2e27f477d34dfc18a0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.138.161]
Content-ID: <69C6F2F6D42D164CA5562E6CF1DF884A@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new DMC and HuC firmwares for TGL and RKL
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBjMzMxYWE5YzQ5Y2U1MDdkNGU1YTlh
NGYyZjE5MTE1ZGI4ZTE1NTM2Og0KDQogIGFtZGdwdTogdXBkYXRlIHZlZ2EyMCBmaXJtd2FyZSBm
b3IgMjAuMzAgKDIwMjAtMDgtMDcgMDg6MTY6MjEgLTA0MDApDQoNCmFyZSBhdmFpbGFibGUgaW4g
dGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcv
ZHJtL2RybS1maXJtd2FyZS8gaTkxNS1maXJtd2FyZS11cGRhdGVzLTA4LTIwMjANCg0KZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDFiODEzNzNiNTJhODZkYWRjZmU3MGQ0Mzg1ZTYyYmM2
YWZjMzk2M2E6DQoNCiAgaTkxNTogQWRkIERNQyBmaXJtd2FyZSAyLjAyIGZvciBSS0wgKDIwMjAt
MDgtMTMgMTE6MDQ6MDggLTA3MDApDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCkpvc8OpIFJvYmVydG8gZGUgU291emEg
KDMpOg0KICAgICAgaTkxNTogQWRkIEh1QyBmaXJ3bWFyZSB2Ny41LjAgZm9yIFRHTA0KICAgICAg
aTkxNTogQWRkIERNQyBmaXJtd2FyZSAyLjA4IGZvciBUR0wNCiAgICAgIGk5MTU6IEFkZCBETUMg
ZmlybXdhcmUgMi4wMiBmb3IgUktMDQoNCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAgfCAgIDkg
KysrKysrKysrDQogaTkxNS9ya2xfZG1jX3ZlcjJfMDIuYmluIHwgQmluIDAgLT4gMTgyMDQgYnl0
ZXMNCiBpOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4gfCBCaW4gMCAtPiAxODkzMiBieXRlcw0KIGk5
MTUvdGdsX2h1Y183LjUuMC5iaW4gICB8IEJpbiAwIC0+IDU4MDczNiBieXRlcw0KIDQgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvcmtsX2Rt
Y192ZXIyXzAyLmJpbg0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L3RnbF9kbWNfdmVyMl8wOC5i
aW4NCiBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS90Z2xfaHVjXzcuNS4wLmJpbg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
