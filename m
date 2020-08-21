Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E42F24D8D5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3026E982;
	Fri, 21 Aug 2020 15:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3576E85D;
 Fri, 21 Aug 2020 15:38:45 +0000 (UTC)
IronPort-SDR: Dz8bAmkopF1m7I1J/57NYcXNq3gsIEZiZppHtm0dNYqb/RdzjGCZJypay6kheOBzRHAd5ZRYIn
 USBO5VABn/Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381903"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:45 -0700
IronPort-SDR: XxBSo2/UtUXpV+qzp1T8RCMa+ftluBrqOm68akE5Gdko55UhM23Jt0ay2UqM3CicRbcY5zQFRd
 FEZ6s5OT1fhg==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086685"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:43 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:37:59 +0200
Message-Id: <20200821153807.18613-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 12/20] tests/core_hotunplug: Fail
 subtests on device close errors
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgaGVhbHRoIGNoZWNrcyBhcmUgbm93IHJ1biBmcm9tIGZvbGxvdy11cCBmaXh0dXJlIHNl
Y3Rpb25zLCBpdCBpcwpzYWZlIHRvIGZhaWwgc3VidGVzdHMgd2l0aG91dCB0aGUgbmVlZCB0byBh
Ym9ydCB0aGUgdGVzdCBleGVjdXRpb24uICBEbwp0aGF0IG9uIGRldmljZSBjbG9zZSBlcnJvcnMg
aW5zdGVhZCBvZiBqdXN0IGVtaXR0aW5nIHdhcm5pbmdzLgoKdjI6IFJlYmFzZSBvbmx5Lgp2Mzog
UmVmcmVzaC4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmtyenlz
enRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIHwg
MyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0
cy9jb3JlX2hvdHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwppbmRleCAxNDU1OTM2
ODMuLmUwNDhmM2ExNSAxMDA2NDQKLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYworKysgYi90
ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCkBAIC0xNTMsNiArMTUzLDcgQEAgc3RhdGljIHZvaWQgZGV2
aWNlX3VucGx1ZyhzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBjb25zdCBjaGFyICpwcmVmaXgpCiAJ
aWd0X3Jlc2V0X3RpbWVvdXQoKTsKIAogCXByaXYtPmZkLnN5c2ZzX2RldiA9IGNsb3NlX3N5c2Zz
KHByaXYtPmZkLnN5c2ZzX2Rldik7CisJaWd0X2Fzc2VydF9lcShwcml2LT5mZC5zeXNmc19kZXYs
IC0xKTsKIH0KIAogLyogUmUtZGlzY292ZXIgdGhlIGRldmljZSBieSByZXNjYW5uaW5nIGl0cyBi
dXMgKi8KQEAgLTI3MCw2ICsyNzEsNyBAQCBzdGF0aWMgdm9pZCBob3R1bmJpbmRfbGF0ZWNsb3Nl
KHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiAKIAlpZ3RfZGVidWcoImxhdGUgY2xvc2luZyB0aGUg
dW5ib3VuZCBkZXZpY2UgaW5zdGFuY2VcbiIpOwogCXByaXYtPmZkLmRybSA9IGNsb3NlX2Rldmlj
ZShwcml2LT5mZC5kcm0pOworCWlndF9hc3NlcnRfZXEocHJpdi0+ZmQuZHJtLCAtMSk7CiB9CiAK
IHN0YXRpYyB2b2lkIGhvdHVucGx1Z19sYXRlY2xvc2Uoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikK
QEAgLTI4Miw2ICsyODQsNyBAQCBzdGF0aWMgdm9pZCBob3R1bnBsdWdfbGF0ZWNsb3NlKHN0cnVj
dCBob3R1bnBsdWcgKnByaXYpCiAKIAlpZ3RfZGVidWcoImxhdGUgY2xvc2luZyB0aGUgcmVtb3Zl
ZCBkZXZpY2UgaW5zdGFuY2VcbiIpOwogCXByaXYtPmZkLmRybSA9IGNsb3NlX2RldmljZShwcml2
LT5mZC5kcm0pOworCWlndF9hc3NlcnRfZXEocHJpdi0+ZmQuZHJtLCAtMSk7CiB9CiAKIC8qIE1h
aW4gKi8KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
