Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A25D2E9467
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE1A899BE;
	Mon,  4 Jan 2021 11:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374388982A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:59:10 +0000 (UTC)
IronPort-SDR: Il7Gj9kdK6O2ZOz4plYtHXYbYytGBPpa6xctz1KMbMvXPRNrH+WAf1REOqOZXvVCf2/8SWkP09
 M7dkmmfFrz2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="177097756"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="177097756"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:09 -0800
IronPort-SDR: iie2dofI8Kaw9Y0FVNMO/h/wYBy4rFHnkR7MaY0Mjwz1m8iVY6/RWoEDSl0jZnbkPNNt/JZWJi
 VB1BFG7XBLeQ==
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="378390069"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:08 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 13:58:40 +0200
Message-Id: <20210104115844.1068561-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 1/5] drm: Add function to convert rect in
 16.16 fixed format to regular format
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpNdWNo
IG1vcmUgY2xlYXIgdG8gcmVhZCBvbmUgZnVuY3Rpb24gY2FsbCB0aGFuIGZvdXIgbGluZXMgZG9p
bmcgdGhpcwpjb252ZXJzaW9uLgoKdjc6Ci0gZnVuY3Rpb24gcmVuYW1lZAotIGNhbGN1bGF0aW5n
IHdpZHRoIGFuZCBoZWlnaHQgYmVmb3JlIHRydW5jYXRlCi0gaW5saW5lZAoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2RybV9yZWN0LmggfCAxMyArKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL2RybV9yZWN0LmggYi9pbmNsdWRlL2RybS9kcm1fcmVjdC5oCmluZGV4IGU3ZjRkMjRj
ZGQwMC4uN2ViODRhZjRhODE4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcmVjdC5oCisr
KyBiL2luY2x1ZGUvZHJtL2RybV9yZWN0LmgKQEAgLTIwNiw2ICsyMDYsMTkgQEAgc3RhdGljIGlu
bGluZSBib29sIGRybV9yZWN0X2VxdWFscyhjb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKnIxLAogCQly
MS0+eTEgPT0gcjItPnkxICYmIHIxLT55MiA9PSByMi0+eTI7CiB9CiAKKy8qKgorICogZHJtX3Jl
Y3RfZnBfdG9faW50IC0gQ29udmVydCBhIHJlY3QgaW4gMTYuMTYgZml4ZWQgcG9pbnQgZm9ybSB0
byBpbnQgZm9ybS4KKyAqIEBkZXN0aW5hdGlvbjogcmVjdCB0byBiZSBzdG9yZWQgdGhlIGNvbnZl
cnRlZCB2YWx1ZQorICogQHNvdXJjZTogcmVjdCBpbiAxNi4xNiBmaXhlZCBwb2ludCBmb3JtCisg
Ki8KK3N0YXRpYyBpbmxpbmUgdm9pZCBkcm1fcmVjdF9mcF90b19pbnQoc3RydWN0IGRybV9yZWN0
ICpkZXN0aW5hdGlvbiwKKwkJCQkgICAgICBjb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKnNvdXJjZSkK
K3sKKwlkcm1fcmVjdF9pbml0KGRlc3RpbmF0aW9uLCBzb3VyY2UtPngxID4+IDE2LCBzb3VyY2Ut
PnkxID4+IDE2LAorCQkgICAgICBkcm1fcmVjdF93aWR0aChzb3VyY2UpID4+IDE2LAorCQkgICAg
ICBkcm1fcmVjdF9oZWlnaHQoc291cmNlKSA+PiAxNik7Cit9CisKIGJvb2wgZHJtX3JlY3RfaW50
ZXJzZWN0KHN0cnVjdCBkcm1fcmVjdCAqciwgY29uc3Qgc3RydWN0IGRybV9yZWN0ICpjbGlwKTsK
IGJvb2wgZHJtX3JlY3RfY2xpcF9zY2FsZWQoc3RydWN0IGRybV9yZWN0ICpzcmMsIHN0cnVjdCBk
cm1fcmVjdCAqZHN0LAogCQkJICBjb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmNsaXApOwotLSAKMi4y
NS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
