Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9915A6E3B5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 11:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7C76E7F7;
	Fri, 19 Jul 2019 09:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B106E7F7;
 Fri, 19 Jul 2019 09:48:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 02:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; d="scan'208";a="173457873"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2019 02:48:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jul 2019 10:48:45 +0100
Message-Id: <20190719094845.6242-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] Revert "drm/i915: Update description of
 i915.enable_guc modparam"
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgcmV2
ZXJ0cyBjb21taXQgMDYyOWQ0ZGExZjE1OTc3ODA2Mzc2N2ZiMGFjMWM5NTEwMzRjNTQ3Ny4KCklm
IEd1QyBmaXJtd2FyZSBpcyBub3QgcHJlc2VudCBvbiB0aGUgZmlsZXN5c3RlbSBkcml2ZXIgY3Jh
c2hlcyB0aGUKbWFjaGluZSBvbiBib290LgoKRml4ZXM6IDA2MjlkNGRhMWYxNSAoImRybS9pOTE1
OiBVcGRhdGUgZGVzY3JpcHRpb24gb2YgaTkxNS5lbmFibGVfZ3VjIG1vZHBhcmFtIikKQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwppbmRleCBiNGY0ODFlMWU2YjYuLjI5NjQ1MmY5ZWZlNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCkBAIC0xNDYsNyArMTQ2LDcgQEAgaTkxNV9w
YXJhbV9uYW1lZF91bnNhZmUoZWRwX3Zzd2luZywgaW50LCAwNDAwLAogaTkxNV9wYXJhbV9uYW1l
ZF91bnNhZmUoZW5hYmxlX2d1YywgaW50LCAwNDAwLAogCSJFbmFibGUgR3VDIGxvYWQgZm9yIEd1
QyBzdWJtaXNzaW9uIGFuZC9vciBIdUMgbG9hZC4gIgogCSJSZXF1aXJlZCBmdW5jdGlvbmFsaXR5
IGNhbiBiZSBzZWxlY3RlZCB1c2luZyBiaXRtYXNrIHZhbHVlcy4gIgotCSIoLTE9YXV0byBbZGVm
YXVsdF0sIDA9ZGlzYWJsZSwgMT1HdUMgc3VibWlzc2lvbiwgMj1IdUMgbG9hZCkiKTsKKwkiKC0x
PWF1dG8sIDA9ZGlzYWJsZSBbZGVmYXVsdF0sIDE9R3VDIHN1Ym1pc3Npb24sIDI9SHVDIGxvYWQp
Iik7CiAKIGk5MTVfcGFyYW1fbmFtZWQoZ3VjX2xvZ19sZXZlbCwgaW50LCAwNDAwLAogCSJHdUMg
ZmlybXdhcmUgbG9nZ2luZyBsZXZlbC4gUmVxdWlyZXMgR3VDIHRvIGJlIGxvYWRlZC4gIgotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
