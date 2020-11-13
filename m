Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8AB2B27CB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:05:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF516E871;
	Fri, 13 Nov 2020 22:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 011AD6E871
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:05:08 +0000 (UTC)
IronPort-SDR: cSLoKq+sI0fSs8W2+F5F2Mm70XT0ZrkuDbW6L+rqQiIcyox6zb/An/ykb50rUizNipGXr29zYo
 iGSaLpqvqiMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="255248310"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="255248310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:05:08 -0800
IronPort-SDR: h7TP2XxkNqyw6sfdHWbKsko/3wG9znHr87jId6EdZstqXJ+k/OCSfTqWQBCGSJo5Yr6p2Du0yG
 yusAs9yT2Mdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="329011782"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 13 Nov 2020 14:05:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:05:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:58 +0200
Message-Id: <20201113220358.24794-24-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/23] drm/i915: Enable bigjoiner
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkVu
b3VnaCBwbHVtYmluZyBzaG91bGQgYmUgaW4gcGxhY2UgdG8gdGhyb3cgdGhlIGJpZ2pvaW5lciBz
d2l0Y2guCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggODU3ZjM5Nzc5NjU0Li4zODk2ZDA4YzQxNzcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTI2MCw5ICsyNjAs
NiBAQCBib29sIGludGVsX2RwX2Nhbl9iaWdqb2luZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZpbnRlbF9kaWdfcG9ydC0+YmFz
ZTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXIt
PmJhc2UuZGV2KTsKIAotCS8qIEZJWE1FIHJlbW92ZSBvbmNlIGV2ZXJ5dGhpbmcgaXMgaW4gcGxh
Y2UgKi8KLQlyZXR1cm4gZmFsc2U7Ci0KIAlyZXR1cm4gSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MiB8fAogCQkoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSAmJgogCQkgZW5jb2Rlci0+cG9ydCAh
PSBQT1JUX0EpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
