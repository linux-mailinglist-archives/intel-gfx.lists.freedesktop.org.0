Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 377B62C8ED0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33D06E835;
	Mon, 30 Nov 2020 20:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21476E82E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:09 +0000 (UTC)
IronPort-SDR: +wXXV6sFF8Tt263oevcbx4VZ27abi8Y98JtfwM8UnE/OwE6Hin/WIfy++ZxxJ0lw6S/33TjVul
 PHZIDynTjehA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892926"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:09 -0800
IronPort-SDR: HgS3qfYTrMXDlryF8UkOki2LpgchebWkl8vPd1OGm2xxdeQsbCSTvQE5X+rRjhsT2aMMcDBNUW
 fDQ7dCbz2KOQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472314"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:07 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:27 +0530
Message-Id: <20201130204738.2443-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 04/15] drm/i915/display: Fixes quantization range
 for YCbCr output
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

VGhpcyBwYXRjaCBmaXhlcyB0aGUgcXVhbnRpemF0aW9uIHJhbmdlIGZvciBZQ2JDciBvdXRwdXQg
b24KTHNwY29uIGJhc2VkIGRldmljZXMuCgp2MjogUmUtcGhyYXNlZCB0aGUgZGVzY3JpcHRpb24g
YW5kIGFkZGVkIFZpbGxlJ3MgUmIuCgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2xzcGNvbi5jIHwgMTcgKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5jCmluZGV4IGY5ODg5MWYwNThkYS4uN2NiNjVlMGYyNDFlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKQEAgLTUyMywxMiAr
NTIzLDE3IEBAIHZvaWQgbHNwY29uX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCWVsc2UKIAkJZnJhbWUuYXZpLmNvbG9yc3BhY2UgPSBIRE1JX0NPTE9SU1BB
Q0VfUkdCOwogCi0JZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFudF9yYW5nZSgmZnJhbWUuYXZp
LAotCQkJCQkgICBjb25uX3N0YXRlLT5jb25uZWN0b3IsCi0JCQkJCSAgIGFkanVzdGVkX21vZGUs
Ci0JCQkJCSAgIGNydGNfc3RhdGUtPmxpbWl0ZWRfY29sb3JfcmFuZ2UgPwotCQkJCQkgICBIRE1J
X1FVQU5USVpBVElPTl9SQU5HRV9MSU1JVEVEIDoKLQkJCQkJICAgSERNSV9RVUFOVElaQVRJT05f
UkFOR0VfRlVMTCk7CisJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VU
UFVUX0ZPUk1BVF9SR0IpIHsKKwkJZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFudF9yYW5nZSgm
ZnJhbWUuYXZpLAorCQkJCQkJICAgY29ubl9zdGF0ZS0+Y29ubmVjdG9yLAorCQkJCQkJICAgYWRq
dXN0ZWRfbW9kZSwKKwkJCQkJCSAgIGNydGNfc3RhdGUtPmxpbWl0ZWRfY29sb3JfcmFuZ2UgPwor
CQkJCQkJICAgSERNSV9RVUFOVElaQVRJT05fUkFOR0VfTElNSVRFRCA6CisJCQkJCQkgICBIRE1J
X1FVQU5USVpBVElPTl9SQU5HRV9GVUxMKTsKKwl9IGVsc2UgeworCQlmcmFtZS5hdmkucXVhbnRp
emF0aW9uX3JhbmdlID0gSERNSV9RVUFOVElaQVRJT05fUkFOR0VfREVGQVVMVDsKKwkJZnJhbWUu
YXZpLnljY19xdWFudGl6YXRpb25fcmFuZ2UgPSBIRE1JX1lDQ19RVUFOVElaQVRJT05fUkFOR0Vf
TElNSVRFRDsKKwl9CiAKIAlyZXQgPSBoZG1pX2luZm9mcmFtZV9wYWNrKCZmcmFtZSwgYnVmLCBz
aXplb2YoYnVmKSk7CiAJaWYgKHJldCA8IDApIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
