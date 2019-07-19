Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3CA6E3B4
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 11:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02556E7F3;
	Fri, 19 Jul 2019 09:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB316E7F3;
 Fri, 19 Jul 2019 09:48:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 02:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; d="scan'208";a="173457866"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2019 02:48:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jul 2019 10:48:44 +0100
Message-Id: <20190719094845.6242-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/guc: Turn on GuC/HuC auto
 mode"
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
ZXJ0cyBjb21taXQgZjc3NGYwOTY0OTE5MmYzMjZmYTAzMDU2NGFmZDNmOGY1ZDgyYzFlNC4KCklm
IEd1QyBmaXJtd2FyZSBpcyBub3QgcHJlc2VudCBvbiB0aGUgZmlsZXN5c3RlbSBkcml2ZXIgY3Jh
c2hlcyB0aGUKbWFjaGluZSBvbiBib290LgoKRml4ZXM6IGY3NzRmMDk2NDkxOSAoImRybS9pOTE1
L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1dG8gbW9kZSIpCkNjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRl
bC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wYXJhbXMuaAppbmRleCA1NzM2YzU1Njk0ZmUuLmQyOWFkZTNiN2RlNiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCkBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJp
bnRlcjsKIAlwYXJhbShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKIAlwYXJhbShpbnQs
IGVuYWJsZV9pcHMsIDEpIFwKIAlwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCi0J
cGFyYW0oaW50LCBlbmFibGVfZ3VjLCAtMSkgXAorCXBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkg
XAogCXBhcmFtKGludCwgZ3VjX2xvZ19sZXZlbCwgLTEpIFwKIAlwYXJhbShjaGFyICosIGd1Y19m
aXJtd2FyZV9wYXRoLCBOVUxMKSBcCiAJcGFyYW0oY2hhciAqLCBodWNfZmlybXdhcmVfcGF0aCwg
TlVMTCkgXAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
