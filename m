Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A58C20B1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 14:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 717FA6E3F0;
	Mon, 30 Sep 2019 12:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9D56E3F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 12:39:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18666790-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 13:39:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 13:39:29 +0100
Message-Id: <20190930123929.12758-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] RFT drm/i915/tgl: Re-enable rps
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

LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdl
ZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGVhNTNkZmUyZmJh
MC4uY2QxZmJkNzFkYzMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTgwNyw3ICs4MDcs
NiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2VybGFr
ZV8xMl9pbmZvID0gewogCS5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEsCiAJLmVuZ2luZV9t
YXNrID0KIAkJQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8
IEJJVChWQ1MyKSwKLQkuaGFzX3JwcyA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVn
Z2luZyAqLwogfTsKIAogI3VuZGVmIEdFTgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
