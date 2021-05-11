Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5CC37AB54
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435C56EA77;
	Tue, 11 May 2021 16:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691CE6EA79
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:05:38 +0000 (UTC)
IronPort-SDR: C/U8Hz/7F1K2rqN0TOWqpxNfVN7lLYTNOtzkDD3y0PZO7zFAJHfMMx6SP4uGT63ib9FMHVezpv
 wW8QkJOSq9nA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="186614569"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="186614569"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:05:35 -0700
IronPort-SDR: kS73G+mjRllIDKk94+D80XOge8We3SHqy8379sORG8N/AGPd3/ROW8ygxNhURhdfMyyigaOjxY
 T4cK1ofVQzLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="399371235"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 11 May 2021 09:05:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:05:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:26 +0300
Message-Id: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Check HDMI sink deep color
 capabilities during .mode_valid()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
anVzdCByZWFsaXplZCB3ZSdyZSBub3QgY2hla2NraW5nIHRoZSBIRE1JIHNpbmsncyBkZWVwIGNv
bG9yCmNhcGFiaWxpdGllcyBkdXJpbmcgLm1vZGVfdmFsaWQoKS4gVGhhdCBjYW4gbGVhZCB1cyB0
byBub3QgZmlsdGVyCm91dCBtb2RlcyB0aGF0IHdlIGNhbid0IGFjdHVhbGx5IHN1cHBvcnQuIExl
dCdzIHRyeSB0byByZW1lZHkgdGhhdC4KCkVudGlyZSBzZXJpZXMgYXZhaWxhYmxlIGhlcmU6Cmdp
dDovL2dpdGh1Yi5jb20vdnN5cmphbGEvbGludXguZ2l0IGhkbWlfZGNfY2hlY2tzCgpDYzogV2Vy
bmVyIFNlbWJhY2ggPHdzZUB0dXhlZG9jb21wdXRlcnMuY29tPgoKVmlsbGUgU3lyasOkbMOkICg2
KToKICBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZSgpCiAgZHJtL2k5
MTU6IE1vdmUgaGFzX2hkbWlfc2luayBjaGVjayBpbnRvIGludGVsX2hkbWlfYnBjX3Bvc3NpYmxl
KCkKICBkcm0vaTkxNTogTW92ZSBwbGF0Zm9ybSBjaGVja3MgaW50byBpbnRlbF9oZG1pX2JwY19w
b3NzaWJsZSgpCiAgZHJtL2k5MTU6IENoZWNrIHNpbmsgZGVlcCBjb2xvciBjYXBhYmlsaXRpcyBk
dXJpbmcgSERNSSAubW9kZV92YWxpZCgpCiAgZHJtL2k5MTU6IE1vdmUgdGhlIFRNRFMgY2xvY2sg
ZGl2aXNpb24gaW50bwogICAgaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKCkKICBkcm0vaTkx
NTogRHJvcCByZWR1bmRhbnQgaGFzX2hkbWlfc2luayBjaGVjawoKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMTA0ICsrKysrKysrKysrKy0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlvbnMoLSkKCi0tIAoyLjI2
LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
