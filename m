Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1504E244F44
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 22:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0FF6EC26;
	Fri, 14 Aug 2020 20:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B62E6EC29
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 20:44:26 +0000 (UTC)
IronPort-SDR: lvs4ovJpxHq56Gb/W6QmqYqGcTaR7210WX14o5WC40szRuh6ftn1IasInij4x7ZwXlMzQnl5hf
 e0s70lGqRoqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="218815228"
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="218815228"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 13:44:22 -0700
IronPort-SDR: 291iCB18DZGdhbheWF50c3ZNx9Jddc0qGAo8Mt/9Dv4ohZUrFMQS7gxMZPWwIzRMXxwTI595lS
 b0U8zuYsdjdQ==
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="495836210"
Received: from rabecker-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.23.113])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 13:44:22 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 13:46:44 -0700
Message-Id: <20200814204644.15351-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new firmwares v3
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBjMzMxYWE5YzQ5Y2U1MDdkNGU1YTlh
NGYyZjE5MTE1ZGI4ZTE1NTM2OgoKICBhbWRncHU6IHVwZGF0ZSB2ZWdhMjAgZmlybXdhcmUgZm9y
IDIwLjMwICgyMDIwLTA4LTA3IDA4OjE2OjIxIC0wNDAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUg
R2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9k
cm0tZmlybXdhcmUgaTkxNS1maXJtd2FyZS11cGRhdGVzLTA4LTIwMjAKCmZvciB5b3UgdG8gZmV0
Y2ggY2hhbmdlcyB1cCB0byAxYjgxMzczYjUyYTg2ZGFkY2ZlNzBkNDM4NWU2MmJjNmFmYzM5NjNh
OgoKICBpOTE1OiBBZGQgRE1DIGZpcm13YXJlIDIuMDIgZm9yIFJLTCAoMjAyMC0wOC0xMyAxMTow
NDowOCAtMDcwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMyk6CiAgICAgIGk5
MTU6IEFkZCBIdUMgZmlyd21hcmUgdjcuNS4wIGZvciBUR0wKICAgICAgaTkxNTogQWRkIERNQyBm
aXJtd2FyZSAyLjA4IGZvciBUR0wKICAgICAgaTkxNTogQWRkIERNQyBmaXJtd2FyZSAyLjAyIGZv
ciBSS0wKCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAgfCAgIDkgKysrKysrKysrCiBpOTE1L3Jr
bF9kbWNfdmVyMl8wMi5iaW4gfCBCaW4gMCAtPiAxODIwNCBieXRlcwogaTkxNS90Z2xfZG1jX3Zl
cjJfMDguYmluIHwgQmluIDAgLT4gMTg5MzIgYnl0ZXMKIGk5MTUvdGdsX2h1Y183LjUuMC5iaW4g
ICB8IEJpbiAwIC0+IDU4MDczNiBieXRlcwogNCBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L3JrbF9kbWNfdmVyMl8wMi5iaW4KIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4KIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
OTE1L3RnbF9odWNfNy41LjAuYmluCgpkaWZmIC0tZ2l0IGEvV0hFTkNFIGIvV0hFTkNFCmluZGV4
IGJlOGMzOTAuLjU0YzM3MTQgMTAwNjQ0Ci0tLSBhL1dIRU5DRQorKysgYi9XSEVOQ0UKQEAgLTQx
MjQsNiArNDEyNCw5IEBAIFZlcnNpb246IERNQyBBUEkvQVBCIHZlciAyIHJlbGVhc2UgNCBmb3Ig
VGlnZXJsYWtlCiBGaWxlOiBpOTE1L3RnbF9kbWNfdmVyMl8wNi5iaW4KIFZlcnNpb246IERNQyBB
UEkvQVBCIHZlciAyIHJlbGVhc2UgNiBmb3IgVGlnZXJsYWtlCiAKK0ZpbGU6IGk5MTUvdGdsX2Rt
Y192ZXIyXzA4LmJpbgorVmVyc2lvbjogRE1DIEFQSS9BUEIgdmVyIDIgcmVsZWFzZSA4IGZvciBU
aWdlcmxha2UKKwogRmlsZTogaTkxNS9pY2xfaHVjXzkuMC4wLmJpbgogVmVyc2lvbjogSHVjIEFQ
SS9BUEIgdmVyIDkgcmVsZWFzZSAwIGZvciBJY2VsYWtlCiAKQEAgLTQxNDIsNiArNDE0NSwxMiBA
QCBWZXJzaW9uOiBIdWMgQVBJL0FQQiB2ZXIgNyByZWxlYXNlIDAgZm9yIFRpZ2VybGFrZQogRmls
ZTogaTkxNS90Z2xfaHVjXzcuMC4xMi5iaW4KIFZlcnNpb246IEh1YyBBUEkvQVBCIHZlciA3IHJl
bGVhc2UgMCBmb3IgVGlnZXJsYWtlCiAKK0ZpbGU6IGk5MTUvdGdsX2h1Y183LjUuMC5iaW4KK1Zl
cnNpb246IEh1YyBBUEkvQVBCIHZlciA3IHJlbGVhc2UgNSBmb3IgVGlnZXJsYWtlCisKK0ZpbGU6
IGk5MTUvcmtsX2RtY192ZXIyXzAyLmJpbgorVmVyc2lvbjogRE1DIEFQSS9BUEIgdmVyIDIgcmVs
ZWFzZSAyIGZvciBSb2NrZXRsYWtlCisKIExpY2Vuc2U6IFJlZGlzdHJpYnV0YWJsZS4gU2VlIExJ
Q0VOU0UuaTkxNSBmb3IgZGV0YWlscwogCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpkaWZmIC0tZ2l0IGEv
aTkxNS9ya2xfZG1jX3ZlcjJfMDIuYmluIGIvaTkxNS9ya2xfZG1jX3ZlcjJfMDIuYmluCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmU1NTNmYmMKQmluYXJ5IGZpbGVzIC9kZXYv
bnVsbCBhbmQgYi9pOTE1L3JrbF9kbWNfdmVyMl8wMi5iaW4gZGlmZmVyCmRpZmYgLS1naXQgYS9p
OTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4gYi9pOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4KbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uOWRiMzc5YwpCaW5hcnkgZmlsZXMgL2Rldi9u
dWxsIGFuZCBiL2k5MTUvdGdsX2RtY192ZXIyXzA4LmJpbiBkaWZmZXIKZGlmZiAtLWdpdCBhL2k5
MTUvdGdsX2h1Y183LjUuMC5iaW4gYi9pOTE1L3RnbF9odWNfNy41LjAuYmluCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmJlZDEwZjMKQmluYXJ5IGZpbGVzIC9kZXYvbnVsbCBh
bmQgYi9pOTE1L3RnbF9odWNfNy41LjAuYmluIGRpZmZlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
