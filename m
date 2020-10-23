Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6F229709B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9953C6E0AA;
	Fri, 23 Oct 2020 13:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C416E0AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:34:25 +0000 (UTC)
IronPort-SDR: pXf4lGFBRN0plNvYrsrdVPDeM42kqcGWlm8vJTzhol+3urtrqp0/bwkMThrlXt1akyBpkwWokb
 iMeR/m+NsLeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="166891042"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="166891042"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:34:23 -0700
IronPort-SDR: 0SL/f6EfZfHMDVg7xlopJnsD0i2uOdX79Etqay+LQwks33ijsixbaPwUCiKplxyFiEandletaq
 D8yeBmwviPmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="354436843"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 23 Oct 2020 06:34:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:34:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:01 +0300
Message-Id: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/19] drm/i915: Futher cleanup around hpd
 pins and port identfiers
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
bWFpbmRlciBvZiB0aGUgbGF0ZXN0IGhwZCBjbGVhbnVwLiBBcGFydCBmcm9tIHJlYmFzaW5nIEkK
ZGlkbid0IGNoYW5nZSBtdWNoLCBleGNlcHQgSSBkaWQgdGhlIHMvVENfUE9SVF9UQzEvVENfUE9S
VF8xLwp0aGluZyBMdWNhcyBzdWdnZXN0ZWQuCgpWaWxsZSBTeXJqw6Rsw6QgKDE5KToKICBkcm0v
aTkxNTogcy9QT1JUX1RDL1RDX1BPUlRfLwogIGRybS9pOTE1OiBBZGQgUE9SVF9UQ24gYWxpYXNl
cyB0byBlbnVtIHBvcnQKICBkcm0vaTkxNTogR2l2ZSBEREkgZW5jb2RlcnMgZXZlbiBiZXR0ZXIg
bmFtZXMKICBkcm0vaTkxNTogSW50cm9kdWNlIEFVWF9DSF9VU0JDbgogIGRybS9pOTE1OiBQaW1w
IEFVWCBDSCBuYW1lcwogIGRybS9pOTE1OiBVc2UgQVVYX0NIX1VTQkNuIGZvciB0aGUgUktMIFZC
VCBBVVggQ0ggc2V0dXAKICBkcm0vaTkxNTogUGFyYW1ldHJpemUgQlhUX0RFX1BPUlRfSFBfRERJ
IHdpdGggaHBkX3BpbgogIGRybS9pOTE1OiBJbnRyb2R1Y2UgR0VOOF9ERV9QT1JUX0hPVFBMVUco
KQogIGRybS9pOTE1OiBzL3BvcnQvaHBkX3Bpbi8gZm9yIGljcCsgZGRpIGhwZCBiaXRzCiAgZHJt
L2k5MTU6IHMvdGNfcG9ydC9ocGRfcGluLyBpbiBHRU4xMV97VEMsVEJUfV9IT1RQTFVHKCkKICBk
cm0vaTkxNTogcy90Y19wb3J0L2hwZF9waW4vIGluIGljcCsgVEMgaG90cGx1ZyBiaXRzCiAgZHJt
L2k5MTU6IFJlbG9jYXRlIGludGVsX2hwZF97ZW5hYmxlZCxob3RwbHVnfV9pcnFzKCkKICBkcm0v
aTkxNTogU3BsaXQgZ2VuMTFfaHBkX2RldGVjdGlvbl9zZXR1cCgpIGludG8gdGMgdnMuIHRidCB2
YXJpYW50cwogIGRybS9pOTE1OiBEb24ndCBlbmFibGUgaHBkIGRldGVjdGlvbiBsb2dpYyBmcm9t
IGlycV9wb3N0aW5zdGFsbCgpCiAgZHJtL2k5MTU6IFJlbmFtZSAndG1wX21hc2snCiAgZHJtL2k5
MTU6IFJlbW92ZSB0aGUgcGVyLXBsYWZvcm0gSUlSIEhQRCBtYXNraW5nCiAgZHJtL2k5MTU6IEVu
YWJsZSBocGQgbG9naWMgb25seSBmb3IgcG9ydHMgdGhhdCBhcmUgcHJlc2VudAogIGRybS9pOTE1
OiBVc2UgR0VOM19JUlFfSU5JVCgpIHRvIGluaXQgc291dGggaW50ZXJydXB0cyBpbiBpY3ArCiAg
ZHJtL2k5MTU6IEdldCByaWQgb2YgaWJ4X2lycV9wcmVfcG9zdGluc3RhbGwoKQoKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgIHwgIDE4ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8ICAzMSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgMzAgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDMwICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICB8ICA2NiArKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvZGlzcGxheS5jICAgICAgICAgICB8ICAxNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgICAgICAgfCA1NDkgKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAxMTQgKystLQogOSBmaWxl
cyBjaGFuZ2VkLCA0OTMgaW5zZXJ0aW9ucygrKSwgMzYyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYu
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
