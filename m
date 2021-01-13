Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5302F54C2
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEE06EC74;
	Wed, 13 Jan 2021 22:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD046E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:31 +0000 (UTC)
IronPort-SDR: 6lLTJl7RYYhHhkS0TAvpEtufAIM42EVklCr7s7zc6tTCR9yHp2vA7cQcfzT58wIui3WTk50Nit
 nKgDlPu5pl9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177498734"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="177498734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:31 -0800
IronPort-SDR: wgVZob/6obAZy2MEW+gIxPy6U46qpI9T/TmiAtSKpOzwm8QB5TGfKDlv/B3zvzhVRmsF2LYMrp
 ku58Kk5Gd6/g==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696552"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:30 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:21 -0800
Message-Id: <20210113220935.4151-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 04/18] drm/i915: Extract
 intel_mode_vblank_start()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHdhbnQgdG8gY2FsY3VsYXRlIHRoZSB2Ymxhbmtfc3RhcnQgZm9yIHZibGFuayBldmFzaW9uCmRp
ZmZlcmVudGx5IGZvciB2cnIuIFRvIG1ha2UgdGhhdCBuaWNlciBsZXRzIGZpcnN0IGV4dHJhY3QK
dGhlIGN1cnJlbnQgbm9uLXZyciBjYXNlIHRvIGEgaGVscGVyLgoKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMTQgKysrKysrKysrKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGNmMzU4OWZkMGRk
Yi4uY2VkNmFmN2NkYzg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMKQEAgLTYyLDYgKzYyLDE2IEBAIGludCBpbnRlbF91c2Vjc190b19zY2FubGluZXMo
Y29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUsCiAJCQkgICAgMTAw
MCAqIGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsKTsKIH0KIAorc3RhdGljIGludCBpbnRlbF9t
b2RlX3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKK3sK
KwlpbnQgdmJsYW5rX3N0YXJ0ID0gbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQ7CisKKwlpZiAobW9k
ZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKKwkJdmJsYW5rX3N0YXJ0ID0gRElW
X1JPVU5EX1VQKHZibGFua19zdGFydCwgMik7CisKKwlyZXR1cm4gdmJsYW5rX3N0YXJ0OworfQor
CiAvKioKICAqIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KCkgLSBzdGFydCB1cGRhdGUgb2YgYSBz
ZXQgb2YgZGlzcGxheSByZWdpc3RlcnMKICAqIEBuZXdfY3J0Y19zdGF0ZTogdGhlIG5ldyBjcnRj
IHN0YXRlCkBAIC05MCw5ICsxMDAsNyBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIAlpZiAobmV3X2Ny
dGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkKIAkJcmV0dXJuOwogCi0JdmJsYW5rX3N0YXJ0ID0g
YWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQ7Ci0JaWYgKGFkanVzdGVkX21vZGUtPmZs
YWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpCi0JCXZibGFua19zdGFydCA9IERJVl9ST1VO
RF9VUCh2Ymxhbmtfc3RhcnQsIDIpOworCXZibGFua19zdGFydCA9IGludGVsX21vZGVfdmJsYW5r
X3N0YXJ0KGFkanVzdGVkX21vZGUpOwogCiAJLyogRklYTUUgbmVlZHMgdG8gYmUgY2FsaWJyYXRl
ZCBzZW5zaWJseSAqLwogCW1pbiA9IHZibGFua19zdGFydCAtIGludGVsX3VzZWNzX3RvX3NjYW5s
aW5lcyhhZGp1c3RlZF9tb2RlLAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
