Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBEF35EACC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2C46E8C0;
	Wed, 14 Apr 2021 02:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B14FA6E8C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:32 +0000 (UTC)
IronPort-SDR: eysW0h09a8k+pgdvTOex61vbnzJE7t8w+lizoiRkp1u/v6yKj7je/qxpPkXLlJABU3zQM9UpJO
 u2SizEKA3urA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174652211"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174652211"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:32 -0700
IronPort-SDR: sqEIt+y/T0TgFjLG5+Q5fdzVG3hPWR5fwUUq5Y7bGLAzVlQVo4ziepyuDgYupyPqhTAuFVDzev
 Qa+epYgJg+wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="389237400"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 13 Apr 2021 19:23:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:08 +0300
Message-Id: <20210414022309.30898-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: No FBC+double wide pipe
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZC
QyBhbmQgZG91YmxlIHdpZGUgcGlwZSBhcmUgbXV0dWFsbHkgZXhjbHVzaXZlLiBEaXNhYmxlIEZC
QyB3aGVuCndlIGhhdmUgdG8gcmVzb3J0IHRvIGRvdWJsZSB3aWRlLgoKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jCmluZGV4IGE4NTY1YzU4ZDFmMS4uNDhjZGRmNzA0ODhmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTg0MSw2ICs4NDEsMTEgQEAgc3RhdGljIGlu
dCBpbnRlbF9jcnRjX2ZiY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IAkJcmV0dXJuIDA7CiAJfQogCisJaWYgKGNydGNfc3RhdGUtPmRvdWJsZV93aWRlKSB7CisJCWNy
dGNfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiZG91YmxlIHdpZGUgcGlwZSI7CisJCXJldHVybiAw
OworCX0KKwogCWlmICghaW50ZWxfZmJjX2h3X3RyYWNraW5nX2NvdmVyc19zY3JlZW4ocGxhbmVf
c3RhdGUpKSB7CiAJCWNydGNfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAicGxhbmUgdG9vIGxhcmdl
IjsKIAkJcmV0dXJuIDA7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
