Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5D9A6BAC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 16:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55E189009;
	Tue,  3 Sep 2019 14:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 613B289453;
 Tue,  3 Sep 2019 14:39:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57BEEA00EF;
 Tue,  3 Sep 2019 14:39:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 03 Sep 2019 14:39:34 -0000
Message-ID: <20190903143934.6073.49540@emeril.freedesktop.org>
References: <20190903133731.2094-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190903133731.2094-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_linux/kernel=2Eh=3A_add_yesno=28?=
 =?utf-8?b?KSwgb25vZmYoKSwgZW5hYmxlZGRpc2FibGVkKCksIHBsdXJhbCgpIGhlbHBl?=
 =?utf-8?q?rs?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
bGludXgva2VybmVsLmg6IGFkZCB5ZXNubygpLCBvbm9mZigpLCBlbmFibGVkZGlzYWJsZWQoKSwg
cGx1cmFsKCkgaGVscGVycwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjYxNzAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6
IGxpbnV4L2tlcm5lbC5oOiBhZGQgeWVzbm8oKSwgb25vZmYoKSwgZW5hYmxlZGRpc2FibGVkKCks
IHBsdXJhbCgpIGhlbHBlcnMKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2Ug
dHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaApGYWxsaW5nIGJhY2sg
dG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaApDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZs
aWN0IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAplcnJvcjogRmFpbGVkIHRv
IG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1w
YXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDEgbGludXgv
a2VybmVsLmg6IGFkZCB5ZXNubygpLCBvbm9mZigpLCBlbmFibGVkZGlzYWJsZWQoKSwgcGx1cmFs
KCkgaGVscGVycwpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQg
YW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdp
dCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQg
c3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
