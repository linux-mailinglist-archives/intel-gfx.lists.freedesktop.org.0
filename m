Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C65D2F54BE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66966EC6E;
	Wed, 13 Jan 2021 22:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD2E6E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:30 +0000 (UTC)
IronPort-SDR: N3jLokojntNWPcAYj+7FfFbiwS69WYkTVrnCcPH+5Kf4lk/a6KaPRgYe7cfqxdJKKddX2a2R+O
 6SH3A/0M7ihw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177498730"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="177498730"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:30 -0800
IronPort-SDR: hCwzTVITXQokK3Hax6cX4mfATjgkvjDzYTDXXhL3rUBvEeTgITgsEmJlG8cWbTyVrdg8YwNfC/
 MjbTp9+Fxw1A==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696541"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:30 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:17 -0800
Message-Id: <20210113220935.4151-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/18] VRR/Adaptive Sync Enabling on DP/eDP
 for TGL+
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

VGhpcyBzZXJpZXMgYWRkcmVzcyByZXZpZXcgY29tbWVudHMgZnJvbSBWaWxsZQphbmQgaW5jb3Jw
b3JhdGVzIHNvbWUgc3VnZ2VzdGVkIGZpeGVzIHBsdXMgaGlzCnBhdGNoZXMuCgpBZGl0eWEgU3dh
cnVwICgxKToKICBkcm0vaTkxNS9kaXNwbGF5L2RwOiBBdHRhY2ggYW5kIHNldCBkcm0gY29ubmVj
dG9yIFZSUiBwcm9wZXJ0eQoKTWFuYXNpIE5hdmFyZSAoOCk6CiAgZHJtL2k5MTUvZGlzcGxheS92
cnI6IENyZWF0ZSBWUlIgZmlsZSBhbmQgYWRkIFZSUiBjYXBhYmlsaXR5IGNoZWNrCiAgZHJtL2k5
MTUvZGlzcGxheS9kcDogQ29tcHV0ZSBWUlIgc3RhdGUgaW4gYXRvbWljX2NoZWNrCiAgZHJtL2k5
MTUvZGlzcGxheS9kcDogRG8gbm90IGVuYWJsZSBQU1IgaWYgVlJSIGlzIGVuYWJsZWQKICBkcm0v
aTkxNS9kaXNwbGF5L3ZycjogQ29uZmlndXJlIGFuZCBlbmFibGUgVlJSIGluIG1vZGVzZXQgZW5h
YmxlCiAgZHJtL2k5MTUvZGlzcGxheS92cnI6IFNlbmQgVlJSIHB1c2ggdG8gZmxpcCB0aGUgZnJh
bWUKICBkcm0vaTkxNS9kaXNwbGF5L3ZycjogRGlzYWJsZSBWUlIgaW4gbW9kZXNldCBkaXNhYmxl
IHBhdGgKICBkcm0vaTkxNS9kaXNwbGF5L3ZycjogU2V0IElHTk9SRV9NU0FfUEFSIHN0YXRlIGlu
IERQIFNpbmsKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgSFcgc3RhdGUgcmVhZG91dCBmb3IgVlJS
CgpWaWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRybS9pOTE1OiBTdG9yZSBmcmFtZXN0YXJ0X2RlbGF5
IGluIGRldl9wcml2CiAgZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfbW9kZV92Ymxhbmtfc3RhcnQo
KQogIGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2NydGNfc2NhbmxpbmVzX3NpbmNlX2ZyYW1lX3Rp
bWVzdGFtcCgpCiAgZHJtL2k5MTUvZGlzcGxheTogVlJSICsgRFJSUyBjYW5ub3QgYmUgZW5hYmxl
ZCB0b2dldGhlcgogIGRybS9pOTE1OiBSZW5hbWUgVlJSX0NUTCByZWcgZmllbGRzCiAgZHJtL2k5
MTUvZGlzcGxheTogSGVscGVycyBmb3IgVlJSIHZibGFuayBtaW4gYW5kIG1heCBzdGFydAogIGRy
bS9pOTE1OiBBZGQgdnJyIHN0YXRlIGR1bXAKICBkcm0vaTkxNTogRml4IHZibGFuayB0aW1lc3Rh
bXBzIHdpdGggVlJSCiAgZHJtL2k5MTU6IEZpeCB2YmxhbmsgZXZhc2lvbiB3aXRoIHZycgoKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgMjQgKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA1OCArKystLQogLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDExICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICAxMiArCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8ICAgNyArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgfCAgMjEgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAgICB8IDIwOSArKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmggICAgICB8ICAzMyAr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgNCAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICAgfCAgNTMgKysr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxNCAr
LQogMTMgZmlsZXMgY2hhbmdlZCwgNDA4IGluc2VydGlvbnMoKyksIDQxIGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5oCgotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
