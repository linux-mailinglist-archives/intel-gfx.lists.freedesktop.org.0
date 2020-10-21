Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A29A3294D9D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F0D6EB2B;
	Wed, 21 Oct 2020 13:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1106EB24
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:38 +0000 (UTC)
IronPort-SDR: hjCnwseirwjSC+qZKWXuwuzj2UIdZqaKYoswSktOvZltCDRngDzFCH5gg5nxszjKvh7SeC+qs7
 8xk+J2KUeeiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317786"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317786"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:38 -0700
IronPort-SDR: NTvOsPvS4koBA5Ac+ZoIxSmRlUF94hHmFXvu8ZE9ys1E1eHGE44++Zsaj55oShYeKZt4JisXva
 O49lK0VOePrA==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372549"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:37 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:07 -0700
Message-Id: <20201021133213.328994-13-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/18] drm/i915/adl_s: Update PHY_MISC
 programming
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkFETC1TIGhhcyBp
bnN0YW5jZXMgb2YgdGhlIFBIWV9NSVNDIHJlZ2lzdGVyIG9uIHRoZSBmaXJzdCB0aHJlZSBQSFlz
LApidXQgb25seSBleHBlY3RzIHRoZSAiREUgdG8gSU8gQ29tcCBQd3IgRG93biIgYml0ICh0aGUg
b25seSBiaXQgd2UgdG91Y2gKb24gbm9uLUVITCBwbGF0Zm9ybXMpIHRvIGJlIHByb2dyYW1tZWQg
Zm9yIFBIWSBBLgoKQnNwZWM6IDUwMTA3CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3
YXJ1cEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9f
cGh5LmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb21ib19waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmMKaW5kZXggNTVkMmQyZDllZmJiLi41YTcxYWRiZDdhNGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYwpAQCAtMTg3LDEwICsx
ODcsMTYgQEAgc3RhdGljIGJvb2wgaGFzX3BoeV9taXNjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LCBlbnVtIHBoeSBwaHkpCiAJICogU29tZSBwbGF0Zm9ybXMgb25seSBleHBlY3QgUEhZ
X01JU0MgdG8gYmUgcHJvZ3JhbW1lZCBmb3IgUEhZLUEgYW5kCiAJICogUEhZLUIgYW5kIG1heSBu
b3QgZXZlbiBoYXZlIGluc3RhbmNlcyBvZiB0aGUgcmVnaXN0ZXIgZm9yIHRoZQogCSAqIG90aGVy
IGNvbWJvIFBIWSdzLgorCSAqCisJICogQURMLVMgdGVjaG5pY2FsbHkgaGFzIHRocmVlIGluc3Rh
bmNlcyBvZiBQSFlfTUlTQywgYnV0IG9ubHkgcmVxdWlyZXMKKwkgKiB0aGF0IHdlIHByb2dyYW0g
aXQgZm9yIFBIWSBBLgogCSAqLwotCWlmIChJU19KU0xfRUhMKGk5MTUpIHx8Ci0JICAgIElTX1JP
Q0tFVExBS0UoaTkxNSkgfHwKLQkgICAgSVNfREcxKGk5MTUpKQorCisJaWYgKElTX0FMREVSTEFL
RV9TKGk5MTUpKQorCQlyZXR1cm4gcGh5ID09IFBIWV9BOworCWVsc2UgaWYgKElTX0pTTF9FSEwo
aTkxNSkgfHwKKwkJIElTX1JPQ0tFVExBS0UoaTkxNSkgfHwKKwkJIElTX0RHMShpOTE1KSkKIAkJ
cmV0dXJuIHBoeSA8IFBIWV9DOwogCiAJcmV0dXJuIHRydWU7Ci0tIAoyLjI3LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
