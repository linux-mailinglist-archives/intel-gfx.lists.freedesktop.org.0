Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53044380397
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 08:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C099F6EE07;
	Fri, 14 May 2021 06:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9706EE07;
 Fri, 14 May 2021 06:19:34 +0000 (UTC)
IronPort-SDR: oPBcY3KOpiecg0G61yWl3omlHu7beTCN4UFX4zq0AxXGrbCrX6EzXeJvFsiTaPwNAkir2wYXYc
 WwJvXSXKSrwQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="197035299"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="197035299"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 23:19:33 -0700
IronPort-SDR: YypcnkMKyBP88pR73LsNUxYz5Ig2WWeH/jNVGB8AEVDkbjIMJTdwqT89Wwdm9YBf7Kh7SVyPsb
 uDe18Yi6hH3Q==
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="626692477"
Received: from abacha1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.34.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 23:19:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 14 May 2021 09:19:27 +0300
Message-ID: <87a6oxu9ao.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: , dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhdmUgJiBEYW5pZWwgLQoKU29ycnksIGxhdGUgZHVlIHRvIHB1YmxpYyBob2xpZGF5cy4K
CmRybS1pbnRlbC1maXhlcy0yMDIxLTA1LTE0Ogpkcm0vaTkxNSBmaXhlcyBmb3IgdjUuMTMtcmMy
OgotIEZpeCBhY3RpdmUgY2FsbGJhY2sgYWxpZ25tZW50IGFubm90YXRpb25zIGFuZCBzdWJzZXF1
ZW50IGNyYXNoZXMKLSBSZXRyYWN0IGxpbmsgdHJhaW5pbmcgc3RyYXRlZ3kgdG8gc2xvdyBhbmQg
d2lkZSwgYWdhaW4KLSBBdm9pZCBkaXZpc2lvbiBieSB6ZXJvIG9uIGdlbjIKLSBVc2UgY29ycmVj
dCB3aWR0aCByZWFkcyBmb3IgQzBEUkIzL0MxRFJCMyByZWdpc3RlcnMKLSBGaXggZG91YmxlIGZy
ZWUgaW4gcGRwIGFsbG9jYXRpb24gZmFpbHVyZSBwYXRoCi0gRml4IEhETUkgMi4xIFBDT04gZG93
bnN0cmVhbSBjYXBzIGNoZWNrCgpCUiwKSmFuaS4KClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5j
ZSBjb21taXQgNmVmYjk0M2I4NjE2ZWM1M2E1ZTQ0NDE5M2RjY2YxYWY5YWQ2MjdiNToKCiAgTGlu
dXggNS4xMy1yYzEgKDIwMjEtMDUtMDkgMTQ6MTc6NDQgLTA3MDApCgphcmUgYXZhaWxhYmxlIGlu
IHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
ZHJtL2RybS1pbnRlbCB0YWdzL2RybS1pbnRlbC1maXhlcy0yMDIxLTA1LTE0Cgpmb3IgeW91IHRv
IGZldGNoIGNoYW5nZXMgdXAgdG8gZTQ1Mjc0MjBlZDA4N2Y5OWM2YWEyYWMyMmM2ZDM0NThjN2Rj
MWE5NDoKCiAgZHJtL2k5MTU6IFVzZSBjb3JyZWN0IGRvd25zdHJlYW0gY2FwcyBmb3IgY2hlY2sg
U3JjLUN0bCBtb2RlIGZvciBQQ09OICgyMDIxLTA1LTEyIDIwOjUzOjA4ICswMzAwKQoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpkcm0vaTkxNSBmaXhlcyBmb3IgdjUuMTMtcmMyOgotIEZpeCBhY3RpdmUgY2FsbGJhY2sgYWxp
Z25tZW50IGFubm90YXRpb25zIGFuZCBzdWJzZXF1ZW50IGNyYXNoZXMKLSBSZXRyYWN0IGxpbmsg
dHJhaW5pbmcgc3RyYXRlZ3kgdG8gc2xvdyBhbmQgd2lkZSwgYWdhaW4KLSBBdm9pZCBkaXZpc2lv
biBieSB6ZXJvIG9uIGdlbjIKLSBVc2UgY29ycmVjdCB3aWR0aCByZWFkcyBmb3IgQzBEUkIzL0Mx
RFJCMyByZWdpc3RlcnMKLSBGaXggZG91YmxlIGZyZWUgaW4gcGRwIGFsbG9jYXRpb24gZmFpbHVy
ZSBwYXRoCi0gRml4IEhETUkgMi4xIFBDT04gZG93bnN0cmVhbSBjYXBzIGNoZWNrCgotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CkFua2l0IE5hdXRpeWFsICgxKToKICAgICAgZHJtL2k5MTU6IFVzZSBjb3JyZWN0IGRvd25zdHJl
YW0gY2FwcyBmb3IgY2hlY2sgU3JjLUN0bCBtb2RlIGZvciBQQ09OCgpLYWktSGVuZyBGZW5nICgx
KToKICAgICAgZHJtL2k5MTUvZHA6IFVzZSBzbG93IGFuZCB3aWRlIGxpbmsgdHJhaW5pbmcgZm9y
IGV2ZXJ5dGhpbmcKCkx2IFl1bmxvbmcgKDEpOgogICAgICBkcm0vaTkxNS9ndDogRml4IGEgZG91
YmxlIGZyZWUgaW4gZ2VuOF9wcmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwCgpTdMOpcGhhbmUgTWFy
Y2hlc2luICgxKToKICAgICAgZHJtL2k5MTU6IEZpeCBjcmFzaCBpbiBhdXRvX3JldGlyZQoKVHZy
dGtvIFVyc3VsaW4gKDEpOgogICAgICBkcm0vaTkxNS9vdmVybGF5OiBGaXggYWN0aXZlIHJldGly
ZSBjYWxsYmFjayBhbGlnbm1lbnQKClZpbGxlIFN5cmrDpGzDpCAoMik6CiAgICAgIGRybS9pOTE1
OiBBdm9pZCBkaXYtYnktemVybyBvbiBnZW4yCiAgICAgIGRybS9pOTE1OiBSZWFkIEMwRFJCMy9D
MURSQjMgYXMgMTYgYml0cyBhZ2FpbgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyAgICAgIHwgNjEgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgfCAgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZ2VuOF9wcGd0dC5jICAgICAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9nZ3R0X2ZlbmNpbmcuYyB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5jICAgICAgICAgICB8ICAzICstCiA2IGZpbGVzIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
