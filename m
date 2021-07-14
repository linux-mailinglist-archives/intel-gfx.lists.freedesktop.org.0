Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED123C8515
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 15:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B106E296;
	Wed, 14 Jul 2021 13:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D386E296
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 13:18:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210386678"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="210386678"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 06:18:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="466081488"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 14 Jul 2021 06:18:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Jul 2021 16:18:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jul 2021 16:18:33 +0300
Message-Id: <20210714131837.8978-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] iommu/vt-d: Disable igfx iommu superpage
 on bxt/skl/glk
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
Cc: iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
cmFuIGludG8gc29tZSBraW5kIG9mIGZhaWwgd2l0aCBWVC1kIHN1cGVycGFnZSBvbiBHZW1pbmxh
a2UgaWdmeCwKc28gd2l0aG91dCBhbnkgYmV0dGVyIGlkZWFzIGxldCdzIGp1c3QgZGlzYWJsZSBp
dC4KCkFkZGl0aW9uYWxseSBTa3lsYWtlL0Jyb3h0b24gaWdmeCBoYXZlIGtub3duIGlzc3VlcyB3
aXRoIFZULWQKc3VwZXJwYWdlIGFzIHdlbGwsIHNvIGxldCdzIGRpc2FibGUgaXQgdGhlcmUgYXMg
d2VsbC4gVGhpcyBzaG91bGQKbGV0IHVzIHJlLWVuYWJsZSBmcmFtZSBidWZmZXIgY29tcHJlc3Np
b24gKEZCQykgZm9yIHNvbWUgZXh0cmEKcG93ZXIgc2F2aW5ncyB3aGVuIHRoZSBkaXNwbGF5IGlz
IG9uLgoKdjI6IGRpc2FibGUgc3VwZXJwYWdlIG9ubHkgZm9yIHRoZSBpZ2Z4IGlvbW11CgpDYzog
RGF2aWQgV29vZGhvdXNlIDxkd213MkBpbmZyYWRlYWQub3JnPgpDYzogTHUgQmFvbHUgPGJhb2x1
Lmx1QGxpbnV4LmludGVsLmNvbT4KQ2M6IGlvbW11QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3Jn
CgpWaWxsZSBTeXJqw6Rsw6QgKDQpOgogIGlvbW11L3Z0LWQ6IERpc2FibGUgc3VwZXJwYWdlIGZv
ciBHZW1pbmlsYWtlIGlnZngKICBpb21tdS92dC1kOiBEaXNhYmxlIHN1cGVycGFnZSBmb3IgQnJv
eHRvbiBpZ2Z4CiAgaW9tbXUvdnQtZDogRGlzYWJsZSBzdXBlcnBhZ2UgZm9yIFNreWxha2UgaWdm
eAogIGRybS9pOTE1L2ZiYzogQWxsb3cgRkJDICsgVlQtZCBvbiBTS0wvQlhUCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDE2IC0tLS0tLQogZHJpdmVycy9pb21t
dS9pbnRlbC9pb21tdS5jICAgICAgICAgICAgICB8IDY4ICsrKysrKysrKysrKysrKysrKysrKysr
LQogMiBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCi0t
IAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
