Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CD21B729
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3980689CDD;
	Mon, 13 May 2019 13:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18E489CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:39:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:39:08 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 May 2019 06:39:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2019 16:39:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 16:39:02 +0300
Message-Id: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: C8 fix
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCB0b2dnbGluZyBiZXR3ZWVuIG5vIEM4IHBsYW5lcyB2cy4gYXQgbGVhc3Qgb25lIEM4IHBsYW5l
LgoKVGVzdC13aXRoOiAyMDE5MDUxMDE3MTkwMC4yOTU5My0xLXZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tCgpWaWxsZSBTeXJqw6Rsw6QgKDIpOgogIGRybS9pOTE1OiBVcGRhdGUgcGlwZSBn
YW1tYSBlbmFibGUgYml0cyB3aGVuIEM4IHBsYW5lcyBhcmUgZ2V0dGluZwogICAgZW5hYmxlZC9k
aXNhYmxlZAogIGRybS9pOTE1OiBBZGQgZGVidWdzIGZvciB0aGUgQzggdnMuIGxlZ2FjeSBMVVQg
Y2FzZQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgICB8ICA0ICsrKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsrKysrKysrKysrKysrKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
