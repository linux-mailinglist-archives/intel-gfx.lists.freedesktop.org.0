Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698142C5CFD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CCE56EABE;
	Thu, 26 Nov 2020 20:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98FC6EABC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:29:55 +0000 (UTC)
IronPort-SDR: /JnTSaWOs4uKob65MQC+2kQFsi3hrx6kheyPlfJ95pxVpMTj1s6lYsowQ/PAlzOKnM9WcdNXrc
 XIdccffFYfzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171543141"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="171543141"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:55 -0800
IronPort-SDR: yWQkff8P2BvoK6zFpQG67pO/IScDH1QmmeGuEYY8tDEc+EYnaPl+1Y+bjWuDRItN/X3xQfbpKV
 5ycXNRgxsU/A==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479459527"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:54 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 02:33:07 +0530
Message-Id: <20201126210314.7882-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v12 08/15] drm/i915/display: Enable colorspace
 programming for LSPCON devices
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

RW5hYmxlIEhETUkgQ29sb3JzcGFjZSBmb3IgTFNQQ09OIGJhc2VkIGRldmljZXMuIFNlbmRpbmcg
Q29sb3JpbWV0cnkKZGF0YSBmb3IgSERSIHVzaW5nIEFWSSBpbmZvZnJhbWUuIExTUENPTiBmaXJt
d2FyZSBleHBlY3RzIHRoaXMgYW5kIHRob3VnaApTT0MgZHJpdmVzIERQLCBmb3IgSERNSSBwYW5l
bCBBVkkgaW5mb2ZyYW1lIGlzIHNlbnQgdG8gdGhlIExTUENPTiBkZXZpY2UKd2hpY2ggdHJhbnNm
ZXJzIHRoZSBzYW1lIHRvIEhETUkgc2luay4KCnYyOiBEcm9wcGVkIHN0YXRlIG1hbmFnZWQgaW4g
ZHJtIGNvcmUgYXMgcGVyIEphbmkgTmlrdWxhJ3Mgc3VnZ2VzdGlvbi4KCnYzOiBBbGlnbmVkIGNv
bG9yaW1ldHJ5IGhhbmRsaW5nIGZvciBsc3Bjb24gYXMgcGVyIGNvbXB1dGVfYXZpX2luZm9mcmFt
ZXMsCmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnY0OiBGaW5hbGx5IGZpeGVkIHRoaXMgd2l0aCBW
aWxsZSdzIGhlbHAsIHJlLXBocmFzZWQgdGhlIGNvbW1pdCBoZWFkZXIKYW5kIGRlc2NyaXB0aW9u
LgoKQ3JlZGl0cy10bzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIHwgMyArKysK
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCAwYTRjMDVkNjcxMDguLmNiNzY4YTFhZTRjOSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC01MjMs
NiArNTIzLDkgQEAgdm9pZCBsc3Bjb25fc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCiAJZWxzZQogCQlmcmFtZS5hdmkuY29sb3JzcGFjZSA9IEhETUlfQ09MT1JT
UEFDRV9SR0I7CiAKKwkvKiBTZXQgdGhlIENvbG9yc3BhY2UgYXMgcGVyIHRoZSBIRE1JIHNwZWMg
Ki8KKwlkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX2NvbG9yc3BhY2UoJmZyYW1lLmF2aSwgY29ubl9z
dGF0ZSk7CisKIAkvKiBub25zZW5zZSBjb21iaW5hdGlvbiAqLwogCWRybV9XQVJOX09OKGVuY29k
ZXItPmJhc2UuZGV2LCBjcnRjX3N0YXRlLT5saW1pdGVkX2NvbG9yX3JhbmdlICYmCiAJCSAgICBj
cnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCKTsKLS0g
CjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
