Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465030F400
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 14:40:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6479D6E0B7;
	Thu,  4 Feb 2021 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 150166ED8A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 13:40:15 +0000 (UTC)
IronPort-SDR: pOozpH9Uc3pYVbpwSz/RTJqHbsRkburqtvTQixgN5H0J/GV5FKqZnDGvBVcLHay4LI9GUE5sfC
 K9u0HQ5CGa/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="180463000"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="180463000"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 05:40:14 -0800
IronPort-SDR: 3HlJ+OZoXBtN04tipCUzvY86lip/fH3fGvC2+D6ivrVQH7yJlJ9tr5qmlLCp3fgTdjs1F9sLqx
 7TntB/V4xOxA==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393170435"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 05:40:12 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 15:40:15 +0200
Message-Id: <20210204134015.419036-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204134015.419036-1-gwan-gyeong.mun@intel.com>
References: <20210204134015.419036-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 2/2] drm/i915/display: Support Multiple
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
PgpDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgMTYgKysrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwppbmRleCBi
MWJkYTFmNWVmMTYuLmQ2ZTRhOTIzN2JkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCkBAIC0yMjExLDYgKzIyMTEsMTYg
QEAgc3RhdGljIGludCBpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5X3Nob3coc3RydWN0IHNlcV9m
aWxlICptLCB2b2lkICpkYXRhKQogfQogREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfaGRjcF9z
aW5rX2NhcGFiaWxpdHkpOwogCitzdGF0aWMgaW50IGk5MTVfcHNyX3N0YXR1c19zaG93KHN0cnVj
dCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yID0gbS0+cHJpdmF0ZTsKKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0KKwkJaW50
ZWxfYXR0YWNoZWRfZHAodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOworCisJcmV0dXJu
IGludGVsX3Bzcl9zdGF0dXMobSwgaW50ZWxfZHApOworfQorREVGSU5FX1NIT1dfQVRUUklCVVRF
KGk5MTVfcHNyX3N0YXR1cyk7CisKICNkZWZpbmUgTFBTUF9DQVBBQkxFKENPTkQpIChDT05EID8g
c2VxX3B1dHMobSwgIkxQU1A6IGNhcGFibGVcbiIpIDogXAogCQkJCXNlcV9wdXRzKG0sICJMUFNQ
OiBpbmNhcGFibGVcbiIpKQogCkBAIC0yMzg2LDYgKzIzOTYsMTIgQEAgaW50IGludGVsX2Nvbm5l
Y3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQkJCSAg
ICBjb25uZWN0b3IsICZpOTE1X3Bzcl9zaW5rX3N0YXR1c19mb3BzKTsKIAl9CiAKKwlpZiAoSEFT
X1BTUihkZXZfcHJpdikgJiYKKwkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1f
TU9ERV9DT05ORUNUT1JfZURQKSB7CisJCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfcHNyX3N0
YXR1cyIsIDA0NDQsIHJvb3QsCisJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3N0YXR1c19m
b3BzKTsKKwl9CisKIAlpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9D
T05ORUNUT1JfRGlzcGxheVBvcnQgfHwKIAkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9
PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEgfHwKIAkgICAgY29ubmVjdG9yLT5jb25uZWN0b3Jf
dHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUIpIHsKLS0gCjIuMzAuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
