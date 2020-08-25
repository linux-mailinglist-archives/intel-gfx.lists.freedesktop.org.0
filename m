Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF467251F2B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 20:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D596E972;
	Tue, 25 Aug 2020 18:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95EA46E963
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 18:41:21 +0000 (UTC)
IronPort-SDR: /VgDjLEhlS+PCpo3ynCnXwAOjJKT/WUKLkUnRsB1uA8Mgh0/88CpIDGy/YBRVGgqsIaj5LTWiv
 mZDm69/zplkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="156169381"
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="156169381"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 11:41:08 -0700
IronPort-SDR: 4n2LSPtTEXAEf3yK6z3gTS+4fcrJwjSTHSTzKGZKaW/yQE3b6DF8BD0hvbtsb3ozei1/Ckg8K0
 fsPDoN8J5gSw==
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="443729889"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 11:41:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Aug 2020 11:43:43 -0700
Message-Id: <20200825184343.63253-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825184343.63253-1-jose.souza@intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/ehl: Update voltage swing table
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

VXBkYXRlIHdpdGggbGF0ZXN0IHR1bm5pbmcgaW4gdGhlIHRhYmxlLgoKQlNwZWM6IDIxMjU3CkNj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDY5OTUxMTg3MjI5MC4uYzdlNjRlMjBh
NzcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTU3Miwx
NCArNTcyLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgZWhsX2Nv
bWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7CiAJCQkJCQkvKiBOVCBtViBUcmFucyBt
ViBkYiAgICAqLwogCXsgMHhBLCAweDMzLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDM1MCAgIDM1
MCAgICAgIDAuMCAgICovCiAJeyAweEEsIDB4NDcsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogMzUw
ICAgNTAwICAgICAgMy4xICAgKi8KLQl7IDB4QywgMHg2NCwgMHgzMCwgMHgwMCwgMHgwRiB9LAkv
KiAzNTAgICA3MDAgICAgICA2LjAgICAqLwotCXsgMHg2LCAweDdGLCAweDJDLCAweDAwLCAweDEz
IH0sCS8qIDM1MCAgIDkwMCAgICAgIDguMiAgICovCisJeyAweEMsIDB4NjQsIDB4MzQsIDB4MDAs
IDB4MEIgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzMCwg
MHgwMCwgMHgwRiB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLwogCXsgMHhBLCAweDQ2LCAw
eDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovCi0JeyAweEMsIDB4
NjQsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAwICAgNzAwICAgICAgMi45ICAgKi8KLQl7IDB4
NiwgMHg3RiwgMHgzMCwgMHgwMCwgMHgwRiB9LAkvKiA1MDAgICA5MDAgICAgICA1LjEgICAqLwor
CXsgMHhDLCAweDY0LCAweDM4LCAweDAwLCAweDA3IH0sCS8qIDUwMCAgIDcwMCAgICAgIDIuOSAg
ICovCisJeyAweDYsIDB4N0YsIDB4MzIsIDB4MDAsIDB4MEQgfSwJLyogNTAwICAgOTAwICAgICAg
NS4xICAgKi8KIAl7IDB4QywgMHg2MSwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA2NTAgICA3MDAg
ICAgICAwLjYgICAqLwotCXsgMHg2LCAweDdGLCAweDM3LCAweDAwLCAweDA4IH0sCS8qIDYwMCAg
IDkwMCAgICAgIDMuNSAgICovCi0JeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyog
OTAwICAgOTAwICAgICAgMC4wICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzNywgMHgwMCwgMHgwNyB9
LAkvKiA2MDAgICA5MDAgICAgICAzLjUgICAqLworCXsgMHg2LCAweDdGLCAweDM4LCAweDAwLCAw
eDAwIH0sCS8qIDkwMCAgIDkwMCAgICAgIDAuMCAgICovCiB9OwogCiBzdHJ1Y3QgaWNsX21nX3Bo
eV9kZGlfYnVmX3RyYW5zIHsKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
