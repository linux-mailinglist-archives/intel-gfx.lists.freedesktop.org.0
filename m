Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455666774
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54B56E2D4;
	Fri, 12 Jul 2019 07:07:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980A06E2D4
 for <Intel-GFX@lists.freedesktop.org>; Fri, 12 Jul 2019 07:07:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="160310741"
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by orsmga008.jf.intel.com with ESMTP; 12 Jul 2019 00:07:45 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 12 Jul 2019 00:07:42 -0700
Message-Id: <20190712070745.35239-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH v2 0/3] Improve whitelist selftest for read-only
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
ZWxmLXRlc3QuCgp2MjogUmVzb2x2ZWQgYWJpZ3VpdHkgb3ZlciBtZWFuaW5nIG9mICdyc3ZkJyBp
biByZWFkLW9ubHkgbW9kZSBieQpyZW1vdmluZyBpdC4gUmViYXNlZCB0byBuZXdlciB0cmVlLgoK
Sm9obiBIYXJyaXNvbiAoMyk6CiAgZHJtL2k5MTU6IEFkZCB0ZXN0IGZvciBpbnZhbGlkIGZsYWcg
Yml0cyBpbiB3aGl0ZWxpc3QgZW50cmllcwogIGRybS9pOTE1OiBJbXBsZW1lbnQgcmVhZC1vbmx5
IHN1cHBvcnQgaW4gd2hpdGVsaXN0IHNlbGZ0ZXN0CiAgZHJtL2k5MTU6IEFkZCBlbmdpbmUgbmFt
ZSB0byB3b3JrYXJvdW5kIGRlYnVnIHByaW50CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyAgIHwgNDQgKysrKysrKy0tLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kc190eXBlcy5oIHwgIDEgKwogLi4uL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF93b3JrYXJvdW5kcy5jICAgIHwgODAgKysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgMTIgKystCiA0IGZpbGVzIGNo
YW5nZWQsIDkxIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMC41Lmdh
ZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
