Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C70E22229B3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1DD76EC9F;
	Thu, 16 Jul 2020 17:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F706EC9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:47 +0000 (UTC)
IronPort-SDR: lD5zfzqsrc8BejOQQ0WPYKrVEylaP4Dg3mk3MwWzalSsgD3pdm2leGl3rQUMG/lZBYg8GCPa9k
 /7SAwRCaAndw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149435058"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149435058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:47 -0700
IronPort-SDR: J3/GhpqKbT3K1rahuHsruwNHb88aS1Li5hwamt0wKityNpDPQRA3E8U+v6mqqewjBwu3adLxRJ
 dDmlgUqDmBJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="269308627"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Jul 2020 10:21:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:05 +0300
Message-Id: <20200716172106.2656-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/14] drm/i915: Sort ICL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIElDTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDE2ICsrKysrKysr
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmgKaW5kZXggMzNhNzJlNmVhZGQ4Li40NWRhMWI0NWMwMWUgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aApAQCAtNTY0LDE4ICs1NjQsMTggQEAKIC8qIElDTCAqLwogI2RlZmluZSBJTlRFTF9JQ0xfUE9S
VF9GX0lEUyhpbmZvKSBcCiAJSU5URUxfVkdBX0RFVklDRSgweDhBNTAsIGluZm8pLCBcCi0JSU5U
RUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTks
IGluZm8pLAlcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcCiAJSU5URUxfVkdB
X0RFVklDRSgweDhBNTIsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDhBNTMsIGluZm8p
LCBcCisJSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklD
RSgweDhBNTYsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDhBNTcsIGluZm8pLCBcCisJ
SU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcCisJSU5URUxfVkdBX0RFVklDRSgweDhB
NTksIGluZm8pLAlcCiAJSU5URUxfVkdBX0RFVklDRSgweDhBNUEsIGluZm8pLCBcCiAJSU5URUxf
VkdBX0RFVklDRSgweDhBNUIsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTcsIGlu
Zm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTYsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RF
VklDRSgweDhBNzEsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBc
CiAJSU5URUxfVkdBX0RFVklDRSgweDhBNzAsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgw
eDhBNTMsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGluZm8pCisJSU5URUxf
VkdBX0RFVklDRSgweDhBNzEsIGluZm8pCiAKICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhpbmZv
KSBcCiAJSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbyksIFwKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
