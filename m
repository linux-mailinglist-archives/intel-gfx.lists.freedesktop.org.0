Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BE8211F90
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0786E079;
	Thu,  2 Jul 2020 09:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9CD6E079
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 09:15:31 +0000 (UTC)
IronPort-SDR: BQcNR5F4d3ceecvtj94zS2TNo9vpiGaII9Kw8pWxT0XpHKLavghwxUL+MJ3wl3zo5qZzNUqQAz
 5dwgK3P+Lb2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="208356653"
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="208356653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 02:15:30 -0700
IronPort-SDR: 94sEitqNMPMksemK68u/4dmqHVPEsF4dnyrx1k8SHsjWggkXFoIUl/rNj6ZPPEGfKxI4oNY3BT
 4IrA7p08ieng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="481937994"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.72.190])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jul 2020 02:15:28 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 12:15:26 +0300
Message-Id: <20200702091526.10096-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Clamp min_cdclk to max_cdclk_freq
 to unblock 8K
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

V2Ugc3RpbGwgbmVlZCAiQnVtcCB1cCBDRENMSyIgd29ya2Fyb3VuZCBvdGhlcndpc2UgZ2V0dGlu
Zwp1bmRlcnJ1bnMgLSBob3dldmVyIGN1cnJlbnRseSBpdCBibG9ja3MgOEsgYXMgQ0RDTEsgPSBQ
aXhlbCByYXRlLAppbiA4SyBjYXNlIHdvdWxkIHJlcXVpcmUgQ0RDTEsgdG8gYmUgYXJvdW5kIDEg
R2h6IHdoaWNoIGlzIG5vdApwb3NzaWJsZS4KCnYyOiAtIENvbnZlcnQgdG8gZXhwcmVzc2lvbiht
YXgobWluX2NkY2xrLCBtaW4ocGl4ZWxfcmF0ZSwgbWF4X2NkY2xrKSkKICAgICAgKFZpbGxlIFN5
cmrDpGzDpCkKICAgIC0gVXNlIHR5cGUgc3BlY2lmaWMgbWluX3QsIG1heF90KFZpbGxlIFN5cmrD
pGzDpCkKClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYyB8IDExICsrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwppbmRleCA0NWY3ZjMzZDExNDQuLjhmOTMyMGUxZTI0OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMjA4MCw4ICsyMDgwLDE1IEBAIGludCBp
bnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCSAqIEV4cGxpY2l0bHkgc3RhdGluZyBoZXJlIHRoYXQgdGhpcyBzZWVt
cyB0byBiZSBjdXJyZW50bHkKIAkgKiByYXRoZXIgYSBIYWNrLCB0aGFuIGZpbmFsIHNvbHV0aW9u
LgogCSAqLwotCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQotCQltaW5fY2RjbGsgPSBtYXgo
bWluX2NkY2xrLCAoaW50KWNydGNfc3RhdGUtPnBpeGVsX3JhdGUpOworCWlmIChJU19USUdFUkxB
S0UoZGV2X3ByaXYpKSB7CisJCS8qCisJCSAqIENsYW1wIHRvIG1heF9jZGNsa19mcmVxIGluIGNh
c2UgcGl4ZWwgcmF0ZSBpcyBoaWdoZXIsCisJCSAqIGluIG9yZGVyIG5vdCB0byBicmVhayBhbiA4
SywgYnV0IHN0aWxsIGxlYXZlIFcvQSBhdCBwbGFjZS4KKwkJICovCisJCW1pbl9jZGNsayA9IG1h
eF90KGludCwgbWluX2NkY2xrLAorCQkJCSAgbWluX3QoaW50LCBjcnRjX3N0YXRlLT5waXhlbF9y
YXRlLAorCQkJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpKTsKKwl9CiAKIAlpZiAobWluX2Nk
Y2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7CiAJCWRybV9kYmdfa21zKCZkZXZfcHJp
di0+ZHJtLAotLSAKMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
