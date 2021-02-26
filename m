Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C8E3264BE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 16:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE676EE04;
	Fri, 26 Feb 2021 15:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2606EE04
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 15:32:14 +0000 (UTC)
IronPort-SDR: PY3/ujErdR6phRnjcW7fA7J04FHwBpIweiOkfOaZhpYZPzscPm6Y73MWuwH/dvegCovLV3VuQM
 rVtqEDtIwxmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="165123627"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="165123627"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 07:32:13 -0800
IronPort-SDR: +CID9dt/tXayLNbDWmdEEfySirgFXaNjagMui8aMxvSB/DQc42mP7jgKHapU1OxlmD97OVd8xt
 f1cudEfWUEPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="502357962"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 26 Feb 2021 07:32:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Feb 2021 17:32:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 17:31:59 +0200
Message-Id: <20210226153204.1270-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Zero out SAGV wm when we don't
 have enough DDB for it
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGhhbmRsZSB0aGUgU0FHViBXTTAgbW9yZSBsaWtlIHRoZSBvdGhlciB3bSBsZXZlbHMgYW5k
IGp1c3QKdG90YWxseSB6ZXJvIGl0IG91dCB3aGVuIHdlIGRvbid0IGhhdmUgdGhlIEREQiBzcGFj
ZSB0byBiYWNrIGl0CnVwLgoKQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAyZDBlM2U3ZjExYjguLmMz
NDFmYTk1Nzg4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zOTIxLDEyICszOTIxLDEw
IEBAIHN0YXRpYyBib29sIHRnbF9jcnRjX2Nhbl9lbmFibGVfc2Fndihjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJcmV0dXJuIHRydWU7CiAKIAlmb3JfZWFjaF9w
bGFuZV9pZF9vbl9jcnRjKGNydGMsIHBsYW5lX2lkKSB7Ci0JCWNvbnN0IHN0cnVjdCBza2xfZGRi
X2VudHJ5ICpwbGFuZV9hbGxvYyA9Ci0JCQkmY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYl95
W3BsYW5lX2lkXTsKIAkJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQogCQkJJmNydGNf
c3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07CiAKLQkJaWYgKHNrbF9kZGJf
ZW50cnlfc2l6ZShwbGFuZV9hbGxvYykgPCB3bS0+c2Fndl93bTAubWluX2RkYl9hbGxvYykKKwkJ
aWYgKHdtLT53bVswXS5wbGFuZV9lbiAmJiAhd20tPnNhZ3Zfd20wLnBsYW5lX2VuKQogCQkJcmV0
dXJuIGZhbHNlOwogCX0KIApAQCAtNDk1Nyw4ICs0OTU1LDggQEAgc2tsX2FsbG9jYXRlX3BsYW5l
X2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAl9CiAKIAkvKgotCSAqIEdv
IGJhY2sgYW5kIGRpc2FibGUgdGhlIHRyYW5zaXRpb24gd2F0ZXJtYXJrIGlmIGl0IHR1cm5zIG91
dCB3ZQotCSAqIGRvbid0IGhhdmUgZW5vdWdoIEREQiBibG9ja3MgZm9yIGl0LgorCSAqIEdvIGJh
Y2sgYW5kIGRpc2FibGUgdGhlIHRyYW5zaXRpb24gYW5kIFNBR1Ygd2F0ZXJtYXJrcworCSAqIGlm
IGl0IHR1cm5zIG91dCB3ZSBkb24ndCBoYXZlIGVub3VnaCBEREIgYmxvY2tzIGZvciB0aGVtLgog
CSAqLwogCWZvcl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpIHsKIAkJc3Ry
dWN0IHNrbF9wbGFuZV93bSAqd20gPQpAQCAtNDk2Niw2ICs0OTY0LDkgQEAgc2tsX2FsbG9jYXRl
X3BsYW5lX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCQlpZiAod20t
PnRyYW5zX3dtLnBsYW5lX3Jlc19iID49IHRvdGFsW3BsYW5lX2lkXSkKIAkJCW1lbXNldCgmd20t
PnRyYW5zX3dtLCAwLCBzaXplb2Yod20tPnRyYW5zX3dtKSk7CisKKwkJaWYgKHdtLT5zYWd2X3dt
MC5wbGFuZV9yZXNfYiA+PSB0b3RhbFtwbGFuZV9pZF0pCisJCQltZW1zZXQoJndtLT5zYWd2X3dt
MCwgMCwgc2l6ZW9mKHdtLT5zYWd2X3dtMCkpOwogCX0KIAogCXJldHVybiAwOwotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
