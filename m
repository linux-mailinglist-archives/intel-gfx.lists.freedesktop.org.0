Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94717222E5C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 00:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4F76ECC8;
	Thu, 16 Jul 2020 22:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639806ECC8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 22:05:57 +0000 (UTC)
IronPort-SDR: 3okpdr1WRN4RfGeTVMCBJy57P6NZk3yGQxAvytrVkdDO3HYta4fBRkOeow3YfVBp5R1/P4sXpV
 zhaTkcBM255Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137621952"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137621952"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 15:05:56 -0700
IronPort-SDR: J/Ab4Gm6VfV15kyJmnuJVXdtk4ldMUEKqy74HIz3chpv4icfKe/6+yInTjbLYo3yN2woHpflck
 k7LI8wiIKDZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="282596079"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2020 15:05:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 15:05:46 -0700
Message-Id: <20200716220551.2730644-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/5] Remaining RKL patches
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

VGhlIGZpcnN0IGNvdXBsZSBwYXRjaGVzIGhlcmUgYWxyZWFkeSBoYXZlIHItYidzIGZyb20gSm9z
ZSwgYnV0IHNpbmNlCml0J3MgYmVlbiBhIHdoaWxlIHNpbmNlIHRoZXkgd2VyZSBsYXN0IHNlbnQg
dG8gdGhlIGxpc3Qgd2Ugc2hvdWxkIGdldAphbm90aGVyIENJIHBhc3MgYmVmb3JlIG1lcmdpbmcg
dGhlbS4KCkNoYW5nZXMgc2luY2Ugdjc6CiAtIFVuZG8gdGhlIHJlbnVtYmVyaW5nIG9mIFBMTCBJ
RHMgaW4gdGhlIERQTEw0IHBhdGNoOyB0aGUgc2hhcmVkIERQTEwKICAgY29kZSBoYXMgZGVlcC1y
b290ZWQgYXNzdW1wdGlvbnMgdGhhdCB0aGUgUExMIHRhYmxlIGhhcyBubyBob2xlcyBhbmQKICAg
dGhhdCBpZD09aWR4OyByZW51bWJlcmluZyB3b3JrcyBmaW5lIGZvciBSS0wsIGJ1dCBicmVha3Mg
b25lIG9mIHRob3NlCiAgIGFzc3VtcHRpb25zIGZvciBUR0wuICBJbnN0ZWFkIGludHJvZHVjZSBS
S0wtc3BlY2lmaWMgUktMX0RQTExfQ0ZHQ1IKICAgbWFjcm9zIHRvIGxvb2sgdXAgdGhlIHByb3Bl
ciByZWdpc3RlciB3aXRoIHRoZSBleGlzdGluZyBQTEwgSURzLgogLSBJbmNvcnBvcmF0ZSBKb3Nl
J3MgcmV2aWV3IGZlZWRiYWNrIG9uIHRoZSBIVEkgcGF0Y2ggYW5kIGNvbWJvIFBIWSBXQQogICBw
YXRjaC4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
Ck1hdHQgUm9wZXIgKDUpOgogIGRybS9pOTE1L3JrbDogSGFuZGxlIG5ldyBEUENMS0FfQ0ZHQ1Iw
IGxheW91dAogIGRybS9pOTE1L3JrbDogQWRkIGluaXRpYWwgd29ya2Fyb3VuZHMKICBkcm0vaTkx
NS9ya2w6IEFkZCBEUExMNCBzdXBwb3J0CiAgZHJtL2k5MTUvcmtsOiBIYW5kbGUgSFRJCiAgZHJt
L2k5MTUvcmtsOiBBZGQgV2FfMTQwMTEyMjQ4MzUgZm9yIFBIWSBCIGluaXRpYWxpemF0aW9uCgog
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jICAgIHwgNTAgKysrKysr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDM3
ICsrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
fCAyMyArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
IHwgNTIgKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMgICB8ICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jICAgfCA4OSArKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgOCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgICAgIHwgMzEgKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaCAgICAgIHwgIDEgKwogMTAgZmlsZXMgY2hhbmdlZCwgMjQ5IGluc2VydGlv
bnMoKyksIDQ4IGRlbGV0aW9ucygtKQoKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
