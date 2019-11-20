Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2035E10344A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 07:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E77A6E0D0;
	Wed, 20 Nov 2019 06:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995EC6E061;
 Wed, 20 Nov 2019 06:29:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 22:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,220,1571727600"; d="scan'208";a="237616376"
Received: from cliu38-mobl3.sh.intel.com (HELO 2a5a68fa589b.sh.intel.com)
 ([10.239.147.26])
 by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2019 22:29:23 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 20 Nov 2019 06:29:12 +0000
Message-Id: <20191120062912.10853-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/pm_rps: install SIGTERM handler
 for load_helper process
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
Cc: intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVmZXJlbmNlOgpodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTIxMjYKClRoZSBpc3N1ZSB3ZSBoaXQgaXMgdGhlIEdQVSBrZWVwcyB2ZXJ5IGhpZ2ggbG9hZCBh
ZnRlciBydW5uaW5nCnRoZSBzdWJ0ZXN0IG1pbi1tYXgtY29uZmlnLWxvYWRlZC4KClNvbWUgYmFj
a2dyb3VuZCBvZiB0aGUgaXNzdWU6CkN1cnJlbnRseSB0aGUgcnBzIGlzIG5vdCBmdWxseSBlbmFi
bGVkIHlldCBvbiBUR0wsIGFuZCBydW5uaW5nCnRoZSBzdWJ0ZXN0IG1pbi1tYXgtY29uZmlnLWxv
YWRlZCB3aWxsIGhpdCBiZWxvdyBhc3NlcnRpb246Cj09CihpOTE1X3BtX3JwczoxMjYxKSBDUklU
SUNBTDogVGVzdCBhc3NlcnRpb24gZmFpbHVyZSBmdW5jdGlvbiBsb2FkZWRfY2hlY2ssIGZpbGUg
Li4vdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jOjUwNToKKGk5MTVfcG1fcnBzOjEyNjEpIENSSVRJ
Q0FMOiBGYWlsZWQgYXNzZXJ0aW9uOiBmcmVxc1tNQVhdIDw9IGZyZXFzW0NVUl0KKGk5MTVfcG1f
cnBzOjEyNjEpIENSSVRJQ0FMOiBMYXN0IGVycm5vOiAyLCBObyBzdWNoIGZpbGUgb3IgZGlyZWN0
b3J5Cj09Cgp3aXRoIGlndCBzdHJlc3MgdGVzdCwgd2UgZmluZCB0aGUgR1Qga2VlcHMgYnVzeSBh
ZnRlciBydW5uaW5nCnRoaXMgc3VidGVzdCwgaXQgaXMgZHVlIHRvIHRoZSBpZ3Rfc3Bpbl9lbmQo
KSBpcyBub3QgY2FsbGVkCnJhbmRvbWx5LgoKVGhlIHJvb3QgY2F1c2UgYW5hbHlzaXMgaXM6Cldo
ZW4gdGhlIG1haW4gcHJvY2VzcyBpOTE1X3BtX3JwcyBmb3IgcnVubmluZyB0aGUgc3VidGVzdApt
aW4tbWF4LWNvbmZpZy1sb2FkZWQgaGl0cyB0aGUgYXNzZXJ0aW9uLCB0aGUgbWFpbiBwcm9jZXNz
IHdpbGwKdHJ5IHRvIHNlbmQgc2lnbmFsIFNJR1RFUk0gdG8gdGhlIGNoaWxkIHByb2Nlc3MgbG9h
ZGVyX2hlbHBlcgp3aGljaCBpcyBjcmVhdGVkIGJ5IG1haW4gcHJvY2VzcyBmb3Igc3RhcnRpbmcg
R1QgbG9hZCwgdGhlbiB0aGUKbWFpbiBwcm9jZXNzIGl0c2VsZiB3aWxsIGV4aXQuCgpUaGUgU0lH
VEVSTSBoYW5kbGVyIGZvciBsb2FkZXJfaGVscGVyIGlzIHRoZSBkZWZhdWx0IG9uZSwgd2hpY2gK
d2lsbCBjYXVzZSB0aGUgbG9hZGVyX2hlbHBlciBleGl0cyBkaXJlY3RseS4gVGhhdCBpcyB1bnNh
ZmUsIHdlCmFsd2F5cyBleHBlY3QgdGhlIGlndF9zcGluX2VuZCgpIGlzIGNhbGxlZCBiZWZvcmUg
bG9hZGVyX2hlbHBlcgpwcm9jZXNzIGV4aXRzLCB3aGljaCBpcyB1c2VkIHRvIHN0b3AgdGhlIGxv
YWQgb2YgR1QuCgpGdXJ0aGVybW9yZSwgaW4gbm9ybWFsIHNjZW5hcmlvLCBiZWZvcmUgbWFpbiBw
cm9jZXNzIGV4aXRzLAppdCB3aWxsIHNlbmQgU0lHVVNSMSB0byBjaGlsZCBwcm9jZXNzIGZvciBz
dG9wcGluZyBHVCBsb2FkaW5nCmluIHNhZmUgd2F5LgoKU28gaGVyZSB3ZSBpbnN0YWxsIHRoZSBw
cm9wZXIgaGFuZGxlciBmb3Igc2lnbmFsIFNJR1RFUk0gaW4gdGhlCnNpbWlsYXIgd2F5LiBXaXRo
b3V0IHRoaXMgcGF0Y2gsIHRoZSBHVCBtYXkga2VlcCBidXN5IGFmdGVyCnJ1bm5pbmcgdGhpcyBz
dWJ0ZXN0LiBFbmFibGluZyBycHMgc2hvdWxkIGJlIHRyYWNrZWQgb24gdGhlCm90aGVyIHNpZGUu
CgpTaWduZWQtb2ZmLWJ5OiBDaHVhbnNoZW5nIExpdSA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29t
PgotLS0KIHRlc3RzL2k5MTUvaTkxNV9wbV9ycHMuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jIGIvdGVz
dHMvaTkxNS9pOTE1X3BtX3Jwcy5jCmluZGV4IGVmNjI3YzBiLi44YzcxYzFhMSAxMDA2NDQKLS0t
IGEvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCisrKyBiL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycHMu
YwpAQCAtMjUyLDYgKzI1Miw3IEBAIHN0YXRpYyB2b2lkIGxvYWRfaGVscGVyX3J1bihlbnVtIGxv
YWQgbG9hZCkKIAogCQlzaWduYWwoU0lHVVNSMSwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIp
OwogCQlzaWduYWwoU0lHVVNSMiwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIpOworCQlzaWdu
YWwoU0lHVEVSTSwgbG9hZF9oZWxwZXJfc2lnbmFsX2hhbmRsZXIpOwogCiAJCWlndF9kZWJ1Zygi
QXBwbHlpbmcgJXMgbG9hZC4uLlxuIiwgbGgubG9hZCA/ICJoaWdoIiA6ICJsb3ciKTsKIAotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
