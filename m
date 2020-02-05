Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C5A15383B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 19:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98F36E9DA;
	Wed,  5 Feb 2020 18:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1937D6E9DA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 18:35:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 10:35:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="235680359"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 05 Feb 2020 10:35:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2020 20:35:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 20:35:41 +0200
Message-Id: <20200205183546.9291-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Hotplug cleanups
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bWFpbmRlciBvZiB0aGUgZWFybGllciBob3RwbHVnIGNsZWFudXBzLiBUaGlzIHRpbWUgd2l0aG91
dApleHBvc2luZyBmdW5jdGlvbnMgYmV0d2VlbiBkZGkgYW5kIGRwIGNvZGUsIGFuZCBpbnN0ZWFk
IHdlCmp1c3QgZHVwbGljYXRlIGEgZmV3IG9mIHRoZW0uCgpWaWxsZSBTeXJqw6Rsw6QgKDUpOgog
IGRybS9pOTE1L2hwZDogUmVwbGFjZSB0aGUgbG9vcC13aXRoaW4tbG9vcCB3aXRoIHR3byBpbmRl
cGVuZGVudCBsb29wcwogIGRybS9pOTE1OiBNYXJrIGFsbCBIUEQgY2FwYWJsZWQgY29ubmVjdG9y
cyBhcyBzdWNoCiAgZHJtL2k5MTU6IFR1cm4gaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZCgp
IGluIGEgdmZ1bmMKICBkcm0vaTkxNTogU3Rhc2ggaHBkIHN0YXR1cyBiaXRzIHVuZGVyIGRldl9w
cml2CiAgZHJtL2k5MTU6IFVzZSBzdGFzaGVkIGF3YXkgaHBkIGlzciBiaXRzIGluCiAgICBpbnRl
bF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKCkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NydC5jICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgIHwgIDQxICsrKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgICAgICAgfCAxODkgKystLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyAgfCAgNTIgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuaCAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgICAgICAgICAgICAgICB8IDE5OCArKysrKysrKysrLS0tLS0tLS0KIDExIGZpbGVz
IGNoYW5nZWQsIDIwNyBpbnNlcnRpb25zKCspLCAyODkgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
