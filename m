Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E76D4184
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABBD6EC3C;
	Fri, 11 Oct 2019 13:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D859E6EB3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:39:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:39:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="278123238"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 11 Oct 2019 06:39:43 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 72BDF840766; Fri, 11 Oct 2019 16:39:16 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 16:39:11 +0300
Message-Id: <20191011133911.18621-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Add extra hdc flush workaround
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8gZW5zdXJlIGNvbnN0YW50IGNhY2hlcyBhcmUgaW52YWxpZGF0ZWQKcHJvcGVy
bHkgd2l0aCBhMCwgd2UgbmVlZCBleHRyYSBoZGMgZmx1c2ggYWZ0ZXIgaW52YWxpZGF0aW9uLgoK
UmVmZXJlbmNlczogSFNERVMjMTYwNDU0NDg4OQpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDk2
N2U1YjJlNWU4MC4uOGRiODY3NzJkOGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwpAQCAtMzIzNiw2ICszMjM2LDI0IEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW1pdF9mbHVzaF9yZW5k
ZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAogCQkqY3MrKyA9IHByZXBhcnNlcl9k
aXNhYmxlKGZhbHNlKTsKIAkJaW50ZWxfcmluZ19hZHZhbmNlKHJlcXVlc3QsIGNzKTsKKworCQkv
KgorCQkgKiBXb3JrYXJvdW5kIGNvbnN0YW50IGNhY2hlIGludmFsaWRhdGlvbiBpc3N1ZQorCQkg
KiBmb3IgdGdsOmEwLCAjMTYwNDU0NDg4OQorCQkgKi8KKwkJZmxhZ3MgPSAwOworCQlmbGFncyB8
PSBQSVBFX0NPTlRST0xfQ1NfU1RBTEw7CisJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9IRENfUElQ
RUxJTkVfRkxVU0g7CisKKwkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUT1JFX0RBVEFfSU5ERVg7
CisJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9RV19XUklURTsKKworCQljcyA9IGludGVsX3Jpbmdf
YmVnaW4ocmVxdWVzdCwgNik7CisJCWlmIChJU19FUlIoY3MpKQorCQkJcmV0dXJuIFBUUl9FUlIo
Y3MpOworCisJCWNzID0gZ2VuOF9lbWl0X3BpcGVfY29udHJvbChjcywgZmxhZ3MsIExSQ19QUEhX
U1BfU0NSQVRDSF9BRERSKTsKKwkJaW50ZWxfcmluZ19hZHZhbmNlKHJlcXVlc3QsIGNzKTsKIAl9
CiAKIAlyZXR1cm4gMDsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
