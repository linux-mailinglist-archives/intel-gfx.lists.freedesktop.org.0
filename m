Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B5FCE956
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7399F89D5C;
	Mon,  7 Oct 2019 16:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F7689D5C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 16:35:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 09:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344781341"
Received: from pkumarva-server.ra.intel.com ([10.23.184.130])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2019 09:35:23 -0700
From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 12:52:08 -0400
Message-Id: <20191007165209.31797-1-prathap.kumar.valsan@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/1] Add sysfs interface to control
 class-of-service
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
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIEdFTjExIE1PQ1MgYXJlIHBhcnQgb2YgY29udGV4dCByZWdpc3RlciBzdGF0ZS4gVGhpcyBt
ZWFucyB1cGRhdGluZwpDTE9TIGFsc28gbmVlZHMgdG8gdXBkYXRlIHRoZSBjb250ZXh0IHN0YXRl
IG9mIGFjdGl2ZSBjb250ZXh0cy4KCnYzOiBSZWJhc2UKdjI6IFVwZGF0ZWQgdGhlIGludGVyZmFj
ZSB0byB1c2UgdHdvIHN5c2ZzIGZpbGVzKEpvb25hcykKICAgIC0gR2VuMTIgUENvZGUgaW50ZXJm
YWNlIGlzIG5vdCByZWFkeSB5ZXQgdG8gcmVhZCB0aGUgd2F5IG1hc2suCiAgICAgIFNvIHJlbW92
ZWQgVEdMIHN1cHBvcnQgYW5kIGFkZGVkIHN1cHBvcnQgZm9yIEdlbjExLgogICAgLSBVcGRhdGlu
ZyBNT0NTIGluIEdlbiAxMSBhbHNvIHJlcXVpcmUgY2hhbmdpbmcgdGhlIGNvbnRleHQgaW1hZ2Ug
b2YKICAgICAgZXhpc3RpbmcgY29udGV4dHMuCiAgICAgIFJlZmVycmVkIHRvIGdlbjhfY29uZmln
dXJlX2FsbF9jb250ZXh0cygpIGFzIHN1Z2dlc3RlZCBieSBDaHJpcy4KClByYXRoYXAgS3VtYXIg
VmFsc2FuICgxKToKICBkcm0vaTkxNS9laGw6IEFkZCBzeXNmcyBpbnRlcmZhY2UgdG8gY29udHJv
bCBjbGFzcy1vZi1zZXJ2aWNlCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
ICAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCB8ICAg
MSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgICAgfCAyMTYgKysrKysr
KysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgg
ICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8ICAg
OCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgfCAgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAgIHwgMTAwICsrKysrKysrKysrCiA3
IGZpbGVzIGNoYW5nZWQsIDMzNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIu
MjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
