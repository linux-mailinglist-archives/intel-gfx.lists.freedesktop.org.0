Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DE02DC07B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 13:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAA26E1B2;
	Wed, 16 Dec 2020 12:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C08886E1A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 12:48:14 +0000 (UTC)
IronPort-SDR: lUwLbajuFn3k3C3L7Ec42NGwl7W2ntGqmTrsNPauENSINpKykcqeUUFaPMswbopwX30w4vfWH7
 +KMT4mOznMZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="193439868"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="193439868"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:48:14 -0800
IronPort-SDR: /ClX11RCo32y2NXfrVsbpde+IFzb9xP0YoTAXGpVwk4I23EMUrn24BEr1oUowWAxw4tC7GQ0kZ
 Dy2SDIvOdG2Q==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="369038373"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:48:13 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 14:47:43 +0200
Message-Id: <20201216124743.431148-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20201216124743.431148-1-gwan-gyeong.mun@intel.com>
References: <20201216124743.431148-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgUFNSIHN0YXRlIG9mIGVhY2ggdHJhbnNjb2RlciwgaXQg
YWRkcwppOTE1X3Bzcl9zdGF0dXMgdG8gc3ViLWRpcmVjdG9yeSBvZiBlYWNoIHRyYW5zY29kZXIu
Cgp2MjogQ2hhbmdlIHVzaW5nIG9mIFN5bWJvbGljIHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1
c2luZyBvZiBvY3RhbAogICAgcGVybWlzc2lvbnMgJzA0NDQnCnY1OiBBZGRyZXNzZWQgSkphbmkg
TmlrdWxhJ3MgcmV2aWV3IGNvbW1lbnRzCiAtIFJlbW92ZSBjaGVja2luZyBvZiBHZW4xMiBmb3Ig
aTkxNV9wc3Jfc3RhdHVzLgogLSBBZGQgY2hlY2sgb2YgSEFTX1BTUigpCiAtIFJlbW92ZSBtZWFu
aW5nbGVzcyBjaGVjayByb3V0aW5lLgoKU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PgpDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfCAxNiArKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCmluZGV4
IDA0MTA1MzE2N2Q3Zi4uZDJkZDYxYzRlZTBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKQEAgLTIyMjQsNiArMjIyNCwx
NiBAQCBzdGF0aWMgaW50IGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlfc2hvdyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiB9CiBERUZJTkVfU0hPV19BVFRSSUJVVEUoaTkxNV9oZGNw
X3NpbmtfY2FwYWJpbGl0eSk7CiAKK3N0YXRpYyBpbnQgaTkxNV9wc3Jfc3RhdHVzX3Nob3coc3Ry
dWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IgPSBtLT5wcml2YXRlOworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQorCQlp
bnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7CisKKwlyZXR1
cm4gaW50ZWxfcHNyX3N0YXR1cyhtLCBpbnRlbF9kcCk7Cit9CitERUZJTkVfU0hPV19BVFRSSUJV
VEUoaTkxNV9wc3Jfc3RhdHVzKTsKKwogI2RlZmluZSBMUFNQX0NBUEFCTEUoQ09ORCkgKENPTkQg
PyBzZXFfcHV0cyhtLCAiTFBTUDogY2FwYWJsZVxuIikgOiBcCiAJCQkJc2VxX3B1dHMobSwgIkxQ
U1A6IGluY2FwYWJsZVxuIikpCiAKQEAgLTIzOTksNiArMjQwOSwxMiBAQCBpbnQgaW50ZWxfY29u
bmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJCQkJ
ICAgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3Npbmtfc3RhdHVzX2ZvcHMpOwogCX0KIAorCWlmIChI
QVNfUFNSKGRldl9wcml2KSAmJgorCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERS
TV9NT0RFX0NPTk5FQ1RPUl9lRFApIHsKKwkJZGVidWdmc19jcmVhdGVfZmlsZSgiaTkxNV9wc3Jf
c3RhdHVzIiwgMDQ0NCwgcm9vdCwKKwkJCQkgICAgY29ubmVjdG9yLCAmaTkxNV9wc3Jfc3RhdHVz
X2ZvcHMpOworCX0KKwogCWlmIChjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RF
X0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCB8fAogCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBl
ID09IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSB8fAogCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rv
cl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQikgewotLSAKMi4yNS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
