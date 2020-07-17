Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2512245A8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832296E20C;
	Fri, 17 Jul 2020 21:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B406E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:08 +0000 (UTC)
IronPort-SDR: yMwyIASD0chkw/Aj0yZkkUoygIg6EP+x0qWHDtYiEDGuRAFNwSrTiuumq6OFudtpv5sxsZAxWy
 6oDmuoozriTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129758351"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129758351"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:08 -0700
IronPort-SDR: FBfIhTwhabn95Oh5cggwHJvcEFuhZNB2vIZoJZVI+Jw6ZvSQ6A+JVSbiWwJqO8cDdwEl5jQZA+
 ACvvDZhOcvbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="391501581"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 17 Jul 2020 14:14:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:32 +0300
Message-Id: <20200717211345.26851-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/20] drm/i915: Relocate CHV CGM gamma masks
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNH
TV9QSVBFX0dBTU1BX1JFRF9NQVNLICYgY28uIGFyZSBtaXNwbGFjZWQuIE1vdmUgdGhlbiBiZWxv
dyB0aGUKcmVsZXZhbnQgcmVnaXN0ZXIuIEFuZCB3aGlsZSBhdCBpdCBhZGQgdGhlIGRlZ2FtbWEg
Y291bnRlcnBhcnRzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IHwgOSArKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYjk2MDdhYzM2MjBkLi40MjhlZjA2
YjgwODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTA5OTksMTQgKzEwOTk5LDE3IEBA
IGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkY2Nwko
VkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MEMpCiAjZGVmaW5lIF9DR01fUElQRV9BX0NTQ19DT0VG
RjgJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY3OTEwKQogI2RlZmluZSBfQ0dNX1BJUEVfQV9ERUdB
TU1BCShWTFZfRElTUExBWV9CQVNFICsgMHg2NjAwMCkKKyNkZWZpbmUgICBDR01fUElQRV9ERUdB
TU1BX1JFRF9NQVNLCVJFR19HRU5NQVNLKDEzLCAwKQorI2RlZmluZSAgIENHTV9QSVBFX0RFR0FN
TUFfR1JFRU5fTUFTSwlSRUdfR0VOTUFTSygyOSwgMTYpCisjZGVmaW5lICAgQ0dNX1BJUEVfREVH
QU1NQV9CTFVFX01BU0sJUkVHX0dFTk1BU0soMTMsIDApCiAjZGVmaW5lIF9DR01fUElQRV9BX0dB
TU1BCShWTFZfRElTUExBWV9CQVNFICsgMHg2NzAwMCkKKyNkZWZpbmUgICBDR01fUElQRV9HQU1N
QV9SRURfTUFTSwlSRUdfR0VOTUFTSyg5LCAwKQorI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0dS
RUVOX01BU0sJUkVHX0dFTk1BU0soMjUsIDE2KQorI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0JM
VUVfTUFTSwlSRUdfR0VOTUFTSyg5LCAwKQogI2RlZmluZSBfQ0dNX1BJUEVfQV9NT0RFCShWTFZf
RElTUExBWV9CQVNFICsgMHg2N0EwMCkKICNkZWZpbmUgICBDR01fUElQRV9NT0RFX0dBTU1BCSgx
IDw8IDIpCiAjZGVmaW5lICAgQ0dNX1BJUEVfTU9ERV9DU0MJKDEgPDwgMSkKICNkZWZpbmUgICBD
R01fUElQRV9NT0RFX0RFR0FNTUEJKDEgPDwgMCkKLSNkZWZpbmUgICBDR01fUElQRV9HQU1NQV9S
RURfTUFTSyAgIFJFR19HRU5NQVNLKDksIDApCi0jZGVmaW5lICAgQ0dNX1BJUEVfR0FNTUFfR1JF
RU5fTUFTSyBSRUdfR0VOTUFTSygyNSwgMTYpCi0jZGVmaW5lICAgQ0dNX1BJUEVfR0FNTUFfQkxV
RV9NQVNLICBSRUdfR0VOTUFTSyg5LCAwKQogCiAjZGVmaW5lIF9DR01fUElQRV9CX0NTQ19DT0VG
RjAxCShWTFZfRElTUExBWV9CQVNFICsgMHg2OTkwMCkKICNkZWZpbmUgX0NHTV9QSVBFX0JfQ1ND
X0NPRUZGMjMJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY5OTA0KQotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
