Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A215DB52
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 04:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79C86E0C1;
	Wed,  3 Jul 2019 02:06:07 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66AD6E0B1
 for <Intel-GFX@lists.freedesktop.org>; Wed,  3 Jul 2019 02:06:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 19:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,445,1557212400"; d="scan'208";a="190876672"
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 19:06:04 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  2 Jul 2019 19:06:02 -0700
Message-Id: <20190703020604.20369-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/2] Improve whitelist selftest for read-only
 registers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCkZvbGxvdyB1
cCBwYXRjaCB0byBlYXJsaWVyIHdoaXRlbGlzdCB1cGRhdGVzLiBUaGlzIHNlcmllcyBhZGRzIHNv
bWUKZXh0cmEgc2FuaXR5IGNoZWNraW5nIHRvIHRoZSBkcml2ZXIgYW5kIGltcHJvdmVzIHRoZSBz
ZWxmLXRlc3QuCgpKb2huIEhhcnJpc29uICgyKToKICBkcm0vaTkxNTogQWRkIHRlc3QgZm9yIGlu
dmFsaWQgZmxhZyBiaXRzIGluIHdoaXRlbGlzdCBlbnRyaWVzCiAgZHJtL2k5MTU6IEltcGxlbWVu
dCByZWFkLW9ubHkgc3VwcG9ydCBpbiB3aGl0ZWxpc3Qgc2VsZnRlc3QKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICAgfCAyOSArKysrKysrKy0tCiAuLi4vZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgICAgfCA1NyArKysrKysrKysrKysr
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAx
MiArKystCiAzIGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygt
KQoKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
