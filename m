Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDBA105E1D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 02:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0B16E108;
	Fri, 22 Nov 2019 01:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A756E108;
 Fri, 22 Nov 2019 01:20:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 17:20:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,228,1571727600"; d="scan'208";a="205257519"
Received: from cliu38-mobl3.sh.intel.com (HELO 4879514205f2.sh.intel.com)
 ([10.239.147.26])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 17:20:02 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 22 Nov 2019 01:19:34 +0000
Message-Id: <20191122011934.29606-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH i-g-t v3] i915/pm_rps: install SIGTERM handler
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
CgpWMzogQXMgc3VnZ2VzdGVkIGJ5IENocmlzLCBzL1NJR1VTUjEvU0lHVEVSTSwgc2luY2UgYm90
aCBzaWduYWxzCnRha2UgdGhlIHNhbWUgZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHVhbnNo
ZW5nIExpdSA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvaTkxNV9w
bV9ycHMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMgYi90ZXN0cy9p
OTE1L2k5MTVfcG1fcnBzLmMKaW5kZXggZWY2MjdjMGIuLjUxNjA1ZjI5IDEwMDY0NAotLS0gYS90
ZXN0cy9pOTE1L2k5MTVfcG1fcnBzLmMKKysrIGIvdGVzdHMvaTkxNS9pOTE1X3BtX3Jwcy5jCkBA
IC0yNTAsNyArMjUwLDcgQEAgc3RhdGljIHZvaWQgbG9hZF9oZWxwZXJfcnVuKGVudW0gbG9hZCBs
b2FkKQogCQlib29sIHByZXZfbG9hZDsKIAkJdWludDMyX3QgaGFuZGxlOwogCi0JCXNpZ25hbChT
SUdVU1IxLCBsb2FkX2hlbHBlcl9zaWduYWxfaGFuZGxlcik7CisJCXNpZ25hbChTSUdURVJNLCBs
b2FkX2hlbHBlcl9zaWduYWxfaGFuZGxlcik7CiAJCXNpZ25hbChTSUdVU1IyLCBsb2FkX2hlbHBl
cl9zaWduYWxfaGFuZGxlcik7CiAKIAkJaWd0X2RlYnVnKCJBcHBseWluZyAlcyBsb2FkLi4uXG4i
LCBsaC5sb2FkID8gImhpZ2giIDogImxvdyIpOwpAQCAtMzIwLDcgKzMyMCw3IEBAIHN0YXRpYyB2
b2lkIGxvYWRfaGVscGVyX3J1bihlbnVtIGxvYWQgbG9hZCkKIAogc3RhdGljIHZvaWQgbG9hZF9o
ZWxwZXJfc3RvcCh2b2lkKQogewotCWtpbGwobGguaWd0X3Byb2MucGlkLCBTSUdVU1IxKTsKKwlr
aWxsKGxoLmlndF9wcm9jLnBpZCwgU0lHVEVSTSk7CiAJaWd0X2Fzc2VydChpZ3Rfd2FpdF9oZWxw
ZXIoJmxoLmlndF9wcm9jKSA9PSAwKTsKIH0KIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
