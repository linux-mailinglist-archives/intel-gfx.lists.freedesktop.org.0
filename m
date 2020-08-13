Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89345244181
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 00:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FE26EA9A;
	Thu, 13 Aug 2020 22:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C136EA9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 22:53:25 +0000 (UTC)
IronPort-SDR: a+q40tp36p4DMiDhDu3/xHEvr86VD104U/Tl8fU6Dx0Am3YD7hNEzUkk/9IQVNvkYA0IYJivqe
 P8o3KFZyRjXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="141956940"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="141956940"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 15:53:24 -0700
IronPort-SDR: 120MJR3lpEKFhYLDraqkjdtlTlzowRx3d+pOJ7czhb/MxdgoRQvxsuM4ImA1UxPHsA6wuFKluY
 Vq+7WUvujcoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="309214866"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by orsmga002.jf.intel.com with ESMTP; 13 Aug 2020 15:53:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 15:53:23 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 15:53:23 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.237]) with mapi id 14.03.0439.000;
 Thu, 13 Aug 2020 15:53:23 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for new DMC and HuC firmwares for TGL and RKL v2
Thread-Index: AQHWccSL7iWQvKxlNUGGbWQ3/gGBUQ==
Date: Thu, 13 Aug 2020 22:53:23 +0000
Message-ID: <18df2b920cd5444a0896c233ab52e3b34bb4497d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.59.170]
Content-ID: <25FC2033176DDF44801CA3F5B8A1F860@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new DMC and HuC firmwares for TGL and RKL v2
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
dGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2RybS9kcm0tZmlybXdhcmUgaTkxNS1maXJtd2FyZS11cGRhdGVzLTA4LTIwMjANCg0KZm9yIHlv
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
