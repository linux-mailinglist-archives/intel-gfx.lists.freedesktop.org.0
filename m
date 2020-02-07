Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057131558E7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC4A6FCAA;
	Fri,  7 Feb 2020 13:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172BA6FCA8;
 Fri,  7 Feb 2020 13:59:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="236361999"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2020 05:59:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2020 15:59:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  7 Feb 2020 15:59:45 +0200
Message-Id: <20200207135950.6655-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/6] drm: Include the encoder itself in
 possible_clones
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkb2NzIHNheSBwb3NzaWJsZV9jbG9uZXMgc2hvdWxkIGFsd2F5cyBpbmNsdWRlIHRoZSBlbmNv
ZGVyIGl0c2VsZi4KU2luY2UgbW9zdCBkcml2ZXJzIGRvbid0IHdhbnQgdG8gZGVhbCB3aXRoIHRo
ZSBjb21wbGV4aXRpZXMgb2YgY2xvbmluZwpsZXQncyBhbGxvdyB0aGVtIHRvIHNldCBwb3NzaWJs
ZV9jbG9uZXM9MCBhbmQgaW5zdGVhZCB3ZSdsbCBmaXggdGhhdAp1cCBpbiB0aGUgY29yZS4KCldl
IGNhbid0IHB1dCB0aGlzIHNwZWNpYWwgY2FzZSBpbnRvIGRybV9lbmNvZGVyX2luaXQoKSBiZWNh
dXNlIGRyaXZlcnMKd2lsbCBoYXZlIHRvIGZpbGwgdXAgcG9zc2libGVfY2xvbmVzIGFmdGVyIGFk
ZGluZyBhbGwgdGhlIHJlbGV2YW50CmVuY29kZXJzLiBPdGhlcndpc2UgdGhleSB3b3VsZG4ndCBr
bm93IHRoZSBwcm9wZXIgZW5jb2RlciBpbmRleGVzIHRvCnVzZS4gU28gd2UnbGwganVzdCBkbyBp
dCBqdXN0IGJlZm9yZSByZWdpc3RlcmluZyB0aGUgZW5jb2RlcnMuCgpUT0RPOiBTaG91bGQgd2Ug
ZG8gc29tZXRoaW5nIHNpbWlsYXIgZm9yIHBvc3NpYmxlX2NydGNzPT0wPwoKQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
QGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZW5jb2Rlci5jIHwgMTUg
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZW5jb2Rlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9lbmNvZGVyLmMKaW5kZXggZTU1NTI4MWY0M2Q0Li5mNzYxZDkzMDYwMjggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZW5jb2Rlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZW5jb2Rlci5jCkBAIC02NiwxMSArNjYsMjYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJv
cF9lbnVtX2xpc3QgZHJtX2VuY29kZXJfZW51bV9saXN0W10gPSB7CiAJeyBEUk1fTU9ERV9FTkNP
REVSX0RQSSwgIkRQSSIgfSwKIH07CiAKKy8qCisgKiBGb3Igc29tZSByZWFzb24gd2Ugd2FudCB0
aGUgZW5jb2RlciBpdHNlbGYgaW5jbHVkZWQgaW4KKyAqIHBvc3NpYmxlX2Nsb25lcy4gTWFrZSBs
aWZlIGVhc3kgZm9yIGRyaXZlcnMgYnkgYWxsb3dpbmcgdGhlbQorICogdG8gbGVhdmUgcG9zc2li
bGVfY2xvbmVzIHVuc2V0IGlmIG5vIGNsb25pbmcgaXMgcG9zc2libGUuCisgKi8KK3N0YXRpYyB2
b2lkIGZpeHVwX3Bvc3NpYmxlX2Nsb25lcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQoreworCXN0
cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsKKworCWRybV9mb3JfZWFjaF9lbmNvZGVyKGVuY29k
ZXIsIGRldikKKwkJZW5jb2Rlci0+cG9zc2libGVfY2xvbmVzIHw9IGRybV9lbmNvZGVyX21hc2so
ZW5jb2Rlcik7Cit9CisKIGludCBkcm1fZW5jb2Rlcl9yZWdpc3Rlcl9hbGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXI7CiAJaW50IHJldCA9
IDA7CiAKKwlmaXh1cF9wb3NzaWJsZV9jbG9uZXMoZGV2KTsKKwogCWRybV9mb3JfZWFjaF9lbmNv
ZGVyKGVuY29kZXIsIGRldikgewogCQlpZiAoZW5jb2Rlci0+ZnVuY3MtPmxhdGVfcmVnaXN0ZXIp
CiAJCQlyZXQgPSBlbmNvZGVyLT5mdW5jcy0+bGF0ZV9yZWdpc3RlcihlbmNvZGVyKTsKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
