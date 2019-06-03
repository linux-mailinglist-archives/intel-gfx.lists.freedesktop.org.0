Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D5F32F11
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 13:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EAE8926B;
	Mon,  3 Jun 2019 11:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC528925F;
 Mon,  3 Jun 2019 11:55:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id CEDFE260E09
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Mon,  3 Jun 2019 12:54:49 +0100
Message-Id: <af5b9b35eb142b53fb7cb4684b494bc6ccb047f1.1559562608.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/4] i915/gem_create: use __atomic_*
 instead of __sync_*
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVwbGFjZSBjYWxscyB0byB0aGUgb2xkZXIgX19zeW5jXyogZnVuY3Rpb25zIHdpdGggdGhlIG5l
dyBfX2F0b21pY18qCnN0YW5kYXJkIG9uZXMuICBUaGlzIGZpeGVzIGJ1aWxkcyBvbiBzb21lIGFy
Y2hpdGVjdHVyZXMsIGluIHBhcnRpY3VsYXIKTUlQUyB3aGljaCBkb2Vzbid0IGhhdmUgX19zeW5j
X2FkZF9hbmRfZmV0Y2hfOCBhbmQKX19zeW5jX3ZhbF9jb21wYXJlX2FuZF9zd2FwXzggZm9yIDY0
LWJpdCB2YXJpYWJsZSBoYW5kbGluZy4KClNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIg
PGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiB0ZXN0cy9NYWtlZmlsZS5hbSAg
ICAgICB8ICAyICstCiB0ZXN0cy9pOTE1L2dlbV9jcmVhdGUuYyB8IDEyICsrKysrKysrKystLQog
MiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3Rlc3RzL01ha2VmaWxlLmFtIGIvdGVzdHMvTWFrZWZpbGUuYW0KaW5kZXggNTA5N2Rl
YmY2MjljLi4xOGEwZjFmMjA1OTIgMTAwNjQ0Ci0tLSBhL3Rlc3RzL01ha2VmaWxlLmFtCisrKyBi
L3Rlc3RzL01ha2VmaWxlLmFtCkBAIC05MCw3ICs5MCw3IEBAIEFNX0xERkxBR1MgPSAtV2wsLS1h
cy1uZWVkZWQKIGRybV9pbXBvcnRfZXhwb3J0X0NGTEFHUyA9ICQoQU1fQ0ZMQUdTKSAkKFRIUkVB
RF9DRkxBR1MpCiBkcm1faW1wb3J0X2V4cG9ydF9MREFERCA9ICQoTERBREQpIC1scHRocmVhZAog
Z2VtX2NyZWF0ZV9DRkxBR1MgPSAkKEFNX0NGTEFHUykgJChUSFJFQURfQ0ZMQUdTKQotZ2VtX2Ny
ZWF0ZV9MREFERCA9ICQoTERBREQpIC1scHRocmVhZAorZ2VtX2NyZWF0ZV9MREFERCA9ICQoTERB
REQpIC1scHRocmVhZCAtbGF0b21pYwogZ2VtX2Nsb3NlX3JhY2VfQ0ZMQUdTID0gJChBTV9DRkxB
R1MpICQoVEhSRUFEX0NGTEFHUykKIGdlbV9jbG9zZV9yYWNlX0xEQUREID0gJChMREFERCkgLWxw
dGhyZWFkCiBnZW1fY3R4X3RocmFzaF9DRkxBR1MgPSAkKEFNX0NGTEFHUykgJChUSFJFQURfQ0ZM
QUdTKQpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMgYi90ZXN0cy9pOTE1L2dl
bV9jcmVhdGUuYwppbmRleCA0M2NiZjQ1ZjI4OWIuLmE0YWViOTRiM2Y5MyAxMDA2NDQKLS0tIGEv
dGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMKQEAg
LTE1Niw2ICsxNTYsMTQgQEAgc3RhdGljIHZvaWQgaW52YWxpZF9ub25hbGlnbmVkX3NpemUoaW50
IGZkKQogCWdlbV9jbG9zZShmZCwgY3JlYXRlLmhhbmRsZSk7CiB9CiAKK3N0YXRpYyB1aW50NjRf
dCBhdG9taWNfY29tcGFyZV9zd2FwX3U2NCh1aW50NjRfdCAqcHRyLCB1aW50NjRfdCBvbGR2YWws
CisJCQkJCXVpbnQ2NF90IG5ld3ZhbCkKK3sKKwlfX2F0b21pY19jb21wYXJlX2V4Y2hhbmdlX24o
cHRyLCAmb2xkdmFsLCBuZXd2YWwsIDAsCisJCQkJICAgIF9fQVRPTUlDX1NFUV9DU1QsIF9fQVRP
TUlDX1NFUV9DU1QpOworCXJldHVybiBvbGR2YWw7Cit9CisKIHN0YXRpYyB1aW50NjRfdCBnZXRf
bnBhZ2VzKHVpbnQ2NF90ICpnbG9iYWwsIHVpbnQ2NF90IG5wYWdlcykKIHsKIAl1aW50NjRfdCB0
cnksIG9sZCwgbWF4OwpAQCAtMTY1LDcgKzE3Myw3IEBAIHN0YXRpYyB1aW50NjRfdCBnZXRfbnBh
Z2VzKHVpbnQ2NF90ICpnbG9iYWwsIHVpbnQ2NF90IG5wYWdlcykKIAkJb2xkID0gbWF4OwogCQl0
cnkgPSAxICsgbnBhZ2VzICUgKG1heCAvIDIpOwogCQltYXggLT0gdHJ5OwotCX0gd2hpbGUgKCht
YXggPSBfX3N5bmNfdmFsX2NvbXBhcmVfYW5kX3N3YXAoZ2xvYmFsLCBvbGQsIG1heCkpICE9IG9s
ZCk7CisJfSB3aGlsZSAoKG1heCA9IGF0b21pY19jb21wYXJlX3N3YXBfdTY0KGdsb2JhbCwgb2xk
LCBtYXgpKSAhPSBvbGQpOwogCiAJcmV0dXJuIHRyeTsKIH0KQEAgLTIwMiw3ICsyMTAsNyBAQCBz
dGF0aWMgdm9pZCAqdGhyZWFkX2NsZWFyKHZvaWQgKmRhdGEpCiAJCX0KIAkJZ2VtX2Nsb3NlKGk5
MTUsIGNyZWF0ZS5oYW5kbGUpOwogCi0JCV9fc3luY19hZGRfYW5kX2ZldGNoKCZhcmctPm1heCwg
bnBhZ2VzKTsKKwkJX19hdG9taWNfYWRkX2ZldGNoKCZhcmctPm1heCwgbnBhZ2VzLCBfX0FUT01J
Q19TRVFfQ1NUKTsKIAl9CiAKIAlyZXR1cm4gTlVMTDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
