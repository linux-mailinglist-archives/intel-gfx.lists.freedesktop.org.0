Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BC7C379B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DAC6E802;
	Tue,  1 Oct 2019 14:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86446E802
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:37:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:37:46 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="190609978"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:37:43 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Tue,  1 Oct 2019 16:37:36 +0200
Message-Id: <20191001143738.16573-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: Conclude load -> probe naming
 convention switch
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGVzdC13aXRoOiA8MjAxOTEwMDExNDI3MjQuMTY0NzItMi1qYW51c3oua3J6eXN6dG9maWtAbGlu
dXguaW50ZWwuY29tPgoKVGhlIHB1cnBvc2UgaXM6CiogdG8gZml4IGluY29tcGF0aWJsZSBuYW1l
cyBvZiBuZXcgZnVuY3Rpb25zIGludHJvZHVjZWQgbWVhbndoaWxlLAoqIHRvIGNvbXBsZXRlIHBv
c3Rwb25lZCByZW5hbWUgb2YgbW9kdWxlIHBhcmFtZXRlci4KCnYyOiAqIGRyb3AgdW5uZWNlc3Nh
cnkgc3RhdGVtZW50IGFib3V0IGN1c3RvbSB1c2VyIGFwcGxpY2F0aW9ucyBmcm9tCiAgICAgIGNv
bW1pdCBtZXNzYWdlIG9mIDIvMiwgdGhlcmUgYXJlIG5vIHN1Y2ggKENocmlzKSwKICAgICogYWRk
IFItYiAodGhhbmtzIENocmlzKSwKICAgICogdXNlIGNvcnJlY3QgbWVzc2FnZSBJRCBvZiAoYWxz
byByZXJvbGxlZCkgSUdUIGNvdW50ZXJwYXJ0IHRvIGJlCiAgICAgIHRlc3RlZCB3aXRoLgoKSmFu
dXN6IEtyenlzenRvZmlrICgyKToKICBkcm0vaTkxNTogRml4IGk5MTVfaW5qZWN0X2xvYWRfZXJy
b3IoKSBuYW1lIHRvIHJlYWQgKl9wcm9iZV8qCiAgZHJtL2k5MTU6IFJlbmFtZSAiaW5qZWN0X2xv
YWRfZmFpbHVyZSIgbW9kdWxlIHBhcmFtZXRlcgoKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9odWMuYyAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Yy5jICAgICAgICAgfCAgNiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMgICAgICB8IDIwICsrKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5oICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV91dGlscy5jICAgICAgICAgICAgIHwgMTQgKysrKysrLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oICAgICAgICAgICAgIHwgMTIgKysrKystLS0tLS0K
IDkgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCgotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
