Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D6BD7C15
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9308489191;
	Tue, 15 Oct 2019 16:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B769891D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:40:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 09:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279240732"
Received: from unknown (HELO ldmartin-desk1.intel.com) ([10.24.11.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Oct 2019 09:40:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 09:40:24 -0700
Message-Id: <20191015164029.18431-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 v2 0/5] Small fixes before fixing MST
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

aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Nzg4My8KCnYyOgogIC0g
cmVtb3ZlICJkcm0vaTkxNTogY2xlYW51cCB1bnVzZWQgcmV0dXJucyBvbiBEUC1NU1QiOiB3ZSBz
aG91bGQKICAgIGFjdHVhbGx5IGNhcmUgbW9yZSBhYm91dCB0aGUgZXJyb3IgaGFuZGxpbmcgaGVy
ZSAtIGxlZnQgZm9yIGxhdGVyCiAgLSBoYW5kbGUgb3RoZXIgY29tbWVudHMgb24gdGhlIHNlcmll
cwoKTHVjYXMgRGUgTWFyY2hpICg1KToKICBkcm0vaTkxNTogc2ltcGxpZnkgc2V0dGluZyBvZiBk
ZGlfaW9fcG93ZXJfZG9tYWluCiAgZHJtL2k5MTU6IGZpeCBwb3J0IGNoZWNrcyBmb3IgTVNUIHN1
cHBvcnQgb24gZ2VuID49IDExCiAgZHJtL2k5MTU6IHJlbW92ZSBleHRyYSBuZXcgbGluZSBvbiBw
aXBlX2NvbmZpZyBtaXNtYXRjaAogIGRybS9pOTE1OiBhZGQgcGlwZSBpZC9uYW1lIHRvIHBpcGUg
bWlzbWF0Y2ggbG9ncwogIGRybS9pOTE1OiBwcmV0dGlmeSBNU1QgZGVidWcgbWVzc2FnZQoKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgNDMgKystLS0tLS0t
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDU2
ICsrKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgICAgICB8ICA5ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgIHwgMjIgKysrKystLS0KIDQgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygr
KSwgNzggZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
