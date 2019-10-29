Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F09E855D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B3A6E1B1;
	Tue, 29 Oct 2019 10:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB066E1A5;
 Tue, 29 Oct 2019 10:18:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:18:28 -0700
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="203524279"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:18:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:17:50 +0100
Message-Id: <20191029101751.5848-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH i-g-t v2 0/1] tests/i915_module_load: Use
 new name of fault injection module parameter
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmFtZSBvZiB0aGUgaTkxNSBtb2R1bGUgcGFyYW1ldGVyIHByb3ZpZGluZyBmYXVsdCBpbmplY3Rp
b24gZnVuY3Rpb24gaXMKY2hhbmdpbmcgZm9yIGNvbnNpc3RlbmN5IHdpdGggYSBuZXcgY29udmVu
dGlvbiBvZiBuYW1pbmcgaTkxNSBkcml2ZXIKaW50ZXJuYWwgZnVuY3Rpb25zIGNhbGxlZCBmcm9t
IHRoZSBkcml2ZXIgUENJIC5wcm9iZSBlbnRyeSBwb2ludC4gIEFkanVzdAp0aGUgdGVzdCB0byB1
c2UgdGhlIG5ldyBuYW1lLgoKdjI6ICogYWRkIFItYiAodGhhbmtzIENocmlzKSwKICAgICogYWRk
IGNvdmVyIGxldHRlciB0byBjb3JyZWN0bHkgc3VwcG9ydCBqb2ludCB0ZXN0aW5nIHdpdGggYQog
ICAgICBjb3JyZXNwb25kaW5nIGtlcm5lbCBkcml2ZXIgc2lkZSBwYXRjaC4KCkphbnVzeiBLcnp5
c3p0b2ZpayAoMSk6CiAgdGVzdHMvaTkxNV9tb2R1bGVfbG9hZDogVXNlIG5ldyBuYW1lIG9mIGZh
dWx0IGluamVjdGlvbiBtb2R1bGUKICAgIHBhcmFtZXRlcgoKIHRlc3RzL2k5MTUvaTkxNV9tb2R1
bGVfbG9hZC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
