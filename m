Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A74C811
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97936E3DB;
	Thu, 20 Jun 2019 07:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CDE6E3DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:16:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 00:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="182980476"
Received: from mtegowsk-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.175])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 00:16:10 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 10:15:44 +0300
Message-Id: <20190620071546.19852-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: CTS fixes
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

SGksCgpBIGNvdXBsZSBvZiBjaGFuZ2VzIHRoYXQgZml4IENUUyB0ZXN0cyBvbiBDRkwrICYgSUNM
LiBJdCB3b3VsZCBiZSBnb29kCnRvIGhhdmUgdGhvc2UgaW4gc3RhYmxlIHJlbGVhc2UgYnV0IEkg
ZG9uJ3Qga25vdyB3aGF0IHRhZyB0byBwdXQuCgpDaGVlcnMsCgpMaW9uZWwgTGFuZHdlcmxpbiAo
Mik6CiAgZHJtL2k5MTU6IHdoaXRlbGlzdCBQU18oREVQVEh8SU5WT0NBVElPTilfQ09VTlQKICBk
cm0vaTkxNS9pY2w6IHdoaXRlbGlzdCBQU18oREVQVEh8SU5WT0NBVElPTilfQ09VTlQKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMTIgKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKLS0KMi4yMS4wLjM5Mi5nZjhmNjc4
NzE1OWUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
