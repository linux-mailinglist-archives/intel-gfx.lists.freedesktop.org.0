Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E255E3B1C99
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB8489BD5;
	Wed, 23 Jun 2021 14:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E9189F63
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 14:34:20 +0000 (UTC)
IronPort-SDR: jsO3oOJ/eKVtnnohx4NwOT0TyeI+YMEB9TSlQEHEmUx4kK9UuMLMExwOk54LYseRoW8ix1lArO
 w2wFS3h+wJ1Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194580207"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="194580207"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:34:18 -0700
IronPort-SDR: eBXknryK/P5drSzQppnF5VDTjLHMQYbz7z7nlFTfe47t/i5URDUspbBufxtBOdGFVdsr0hGqE2
 WbD/ec2rVaLA==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="453056519"
Received: from dconnon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.14.111])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:34:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 15:34:11 +0100
Message-Id: <20210623143411.293630-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: fix static warning
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

d2FybmluZzogc3ltYm9sICdpOTE1X2dlbV90dG1fb2JqX29wcycgd2FzIG5vdCBkZWNsYXJlZC4g
U2hvdWxkIGl0IGJlIHN0YXRpYz8KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9t
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKaW5kZXggYzVkZWI4Yjcy
MjdjLi5jZjU1NDBjMTUzN2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmMKQEAgLTczMCw3ICs3MzAsNyBAQCBzdGF0aWMgdTY0IGk5MTVfdHRtX21tYXBfb2Zmc2V0KHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIGRybV92bWFfbm9kZV9vZmZz
ZXRfYWRkcigmb2JqLT5iYXNlLnZtYV9ub2RlKTsKIH0KIAotY29uc3Qgc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX3R0bV9vYmpfb3BzID0geworc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV90dG1fb2JqX29wcyA9IHsKIAku
bmFtZSA9ICJpOTE1X2dlbV9vYmplY3RfdHRtIiwKIAkuZmxhZ3MgPSBJOTE1X0dFTV9PQkpFQ1Rf
SEFTX0lPTUVNLAogCi0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
