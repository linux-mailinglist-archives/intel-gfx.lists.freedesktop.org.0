Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0627B452
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 22:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAA989AFF;
	Tue, 30 Jul 2019 20:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FE089AFF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 20:24:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 13:24:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="371176131"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jul 2019 13:24:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hsYfd-00039K-9o; Wed, 31 Jul 2019 04:24:29 +0800
Date: Wed, 31 Jul 2019 04:24:02 +0800
From: kbuild test robot <lkp@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20190730202402.r4xpiievjirrwvj3@48261080c7f1>
References: <20190729234727.28286-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729234727.28286-2-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/uc: uc_wopcm_init_hw() can be
 static
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkZpeGVzOiA2YjZmYTE3NWVjNTcgKCJkcm0vaTkxNS91YzogbW92ZSB1QyBXT1BDTSBzZXR1cCBp
biB1Y19pbml0X2h3IikKU2lnbmVkLW9mZi1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRl
bC5jb20+Ci0tLQogaW50ZWxfdWMuYyB8ICAgIDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
CmluZGV4IDJmNzFmMzcwNGM0NjcxLi4zODNmMDQ4ZTQ5MDA5MiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5jCkBAIC00MDcsNyArNDA3LDcgQEAgd3JpdGVfYW5kX3ZlcmlmeShz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LAogfQogCiAvKiBJbml0aWFsaXplIGFuZCB2ZXJpZnkgdGhlIHVD
IHJlZ3MgcmVsYXRlZCB0byB1QyBwb3NpdGlvbmluZyBpbiBXT1BDTSAqLwotaW50IHVjX3dvcGNt
X2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKK3N0YXRpYyBpbnQgdWNfd29wY21faW5pdF9o
dyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSB1Y190b19n
dCh1Yyk7CiAJc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSA9ICZndC0+aTkxNS0+d29wY207Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
