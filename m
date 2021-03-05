Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4321F32EEF8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478726EBF6;
	Fri,  5 Mar 2021 15:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22FA6EBD0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:36:27 +0000 (UTC)
IronPort-SDR: 6KsMTt0S8udd+27w0WUBF8GoyWnLYOkbM3c/704sAnpvj1uJ80T/qYcKFacvnz0qVKCEXeUYQq
 pBr77aDwSPVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="249055569"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="249055569"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:36:26 -0800
IronPort-SDR: pMSpQFssteXIb2x+1Lp4cen/ZD/rXX9d210c0U/vrmLUbKGWOXeR4fq5Iga4qgzjdByIJdXVsm
 blIR1B/0L/0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="401714660"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 05 Mar 2021 07:36:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:36:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 17:36:07 +0200
Message-Id: <20210305153610.12177-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Check SAGV wm min_ddb_alloc
 rather than plane_res_b
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZv
ciBub24tdHJhbnNpdGlvbiB3YXRlcm1hcmtzIHdlIGFyZSBzdXBwb3NlZCB0byBjaGVjayBtaW5f
ZGRiX2FsbG9jCnJhdGhlciB0aGFuIHBsYW5lX3Jlc19iIHdoZW4gZGV0ZXJtaW5pbmcgaWYgd2Ug
aGF2ZSBlbm91Z2ggRERCIHNwYWNlCmZvciBpdC4gQSBiaXQgdG9vIG11Y2ggY29weSBwYXN0YSBt
YWRlIG1lIGNoZWNrIHRoZSB3cm9uZyB0aGluZy4KCkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KRml4ZXM6IGRmNGE1MGEzNWUyYyAoImRybS9p
OTE1OiBaZXJvIG91dCBTQUdWIHdtIHdoZW4gd2UgZG9uJ3QgaGF2ZSBlbm91Z2ggRERCIGZvciBp
dCIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCmluZGV4IGI2ZTM0ZDE3MDFhMC4uMzY2MDFlMGE1MDczIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKQEAgLTQ5ODksNyArNDk4OSw3IEBAIHNrbF9hbGxvY2F0ZV9wbGFuZV9kZGIo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCWlmICh3bS0+dHJhbnNfd20ucGxh
bmVfcmVzX2IgPj0gdG90YWxbcGxhbmVfaWRdKQogCQkJbWVtc2V0KCZ3bS0+dHJhbnNfd20sIDAs
IHNpemVvZih3bS0+dHJhbnNfd20pKTsKIAotCQlpZiAod20tPnNhZ3Yud20wLnBsYW5lX3Jlc19i
ID49IHRvdGFsW3BsYW5lX2lkXSkKKwkJaWYgKHdtLT5zYWd2LndtMC5taW5fZGRiX2FsbG9jID4g
dG90YWxbcGxhbmVfaWRdKQogCQkJbWVtc2V0KCZ3bS0+c2Fndi53bTAsIDAsIHNpemVvZih3bS0+
c2Fndi53bTApKTsKIAogCQlpZiAod20tPnNhZ3YudHJhbnNfd20ucGxhbmVfcmVzX2IgPj0gdG90
YWxbcGxhbmVfaWRdKQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
