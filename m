Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C58C362F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 15:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035136E7AC;
	Tue,  1 Oct 2019 13:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1636E7AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 13:46:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 06:46:58 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="342977331"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 06:46:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Tue,  1 Oct 2019 15:45:32 +0200
Message-Id: <20191001134534.14747-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Conclude load -> probe naming convention
 switch
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

VGVzdC13aXRoOiA8MjAxOTEwMDExMzI3MjguMTQ2MDItMS1qYW51c3oua3J6eXN6dG9maWtAbGlu
dXguaW50ZWwuY29tPgoKVGhlIHB1cnBvc2UgaXM6CiogdG8gZml4IGluY29tcGF0aWJsZSBuYW1l
cyBvZiBuZXcgZnVuY3Rpb25zIGludHJvZHVjZWQgbWVhbndoaWxlLAoqIHRvIGNvbXBsZXRlIHBv
c3Rwb25lZCByZW5hbWUgb2YgbW9kdWxlIHBhcmFtZXRlci4KCldpbGwgYmUgdGVzdGVkIHdpdGgg
anVzdCBzdWJtaXR0ZWQgSUdUIGNvdW50ZXJwYXJ0IHVzaW5nIGEgdHJ5Ym90CnN1Ym1pc3Npb24g
YmVjYXVzZSBJIGZvcmdvdCB0byBhZGQgYSBjb3ZlciBsZXR0ZXIgcmVxdWlyZWQgZm9yCnN1Y2Nl
c3NmdWwgam9pbnQgdGVzdGluZyB3aGVuIEkgd2FzIHN1Ym1pdHRpbmcgdG8gaWd0LWRldiBsaXN0
LCBzb3JyeS4KClRoYW5rcywKSmFudXN6CgoKSmFudXN6IEtyenlzenRvZmlrICgyKToKICBkcm0v
aTkxNTogRml4IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoKSBuYW1lIHRvIHJlYWQgKl9wcm9iZV8q
CiAgZHJtL2k5MTU6IFJlbmFtZSAiaW5qZWN0X2xvYWRfZmFpbHVyZSIgbW9kdWxlIHBhcmFtZXRl
cgoKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAgfCAgNCArKy0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAgICAgICAgfCAgNiArKyst
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8IDIwICsr
KysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAg
ICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAg
ICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAgICAg
ICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jICAgICAgICAg
ICAgIHwgMTQgKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5o
ICAgICAgICAgICAgIHwgMTIgKysrKystLS0tLS0KIDkgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0
aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
