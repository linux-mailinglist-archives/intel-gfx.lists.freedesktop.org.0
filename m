Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE0723EA1D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548E46E99B;
	Fri,  7 Aug 2020 09:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80786E993;
 Fri,  7 Aug 2020 09:21:50 +0000 (UTC)
IronPort-SDR: 6i+Qi8OOJUq9OUg1BGu6Ft3uvTlcmluJEP8jwrK6Gxb/YAKdMdQ1Y2jpFQDf+UfjtQ7nux2TAa
 cvnz4oTCpu5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106859"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106859"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:47 -0700
IronPort-SDR: CsocQ8NlYZRToEOghWEQVxhJ/M9DdKJNIP8S74rBlgHBmjt3gWvrblUJE4EN3mS2o7JMs0VAE3
 ulWAePMy+c1w==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492096"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:50 +0200
Message-Id: <20200807092002.32350-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 04/16] tests/core_hotunplug: Assert
 successful device filter application
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV0dXJuIHZhbHVlIG9mIGlndF9kZXZpY2VfZmlsdGVyX2FkZCgpIHJlcHJlc2VudGluZyBhIG51
bWJlciBvZgpzdWNjZXNzZnVsbHkgaW5zdGFsbGVkIGRldmljZSBmaWx0ZXJzIGlzIG5vdyBpZ25v
cmVkLiAgRmFpbCBpZiBub3QgMS4KCnYyOiBSZWJhc2Ugb24gY3VycmVudCB1cHN0cmVhbSBtYXN0
ZXIuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zp
a0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFs
LndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCmluZGV4
IDU1N2Y5ZTNmYS4uNmNlYjMyNWFkIDEwMDY0NAotLS0gYS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5j
CisrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTE3OCw3ICsxNzgsNyBAQCBzdGF0aWMg
dm9pZCBzZXRfZmlsdGVyX2Zyb21fZGV2aWNlKGludCBmZCkKIAlpZ3RfYXNzZXJ0KHJlYWxwYXRo
KHBhdGgsIGRzdCkpOwogCiAJaWd0X2RldmljZV9maWx0ZXJfZnJlZV9hbGwoKTsKLQlpZ3RfZGV2
aWNlX2ZpbHRlcl9hZGQoZmlsdGVyKTsKKwlpZ3RfYXNzZXJ0X2VxKGlndF9kZXZpY2VfZmlsdGVy
X2FkZChmaWx0ZXIpLCAxKTsKIH0KIAogLyogU3VidGVzdHMgKi8KLS0gCjIuMjEuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
