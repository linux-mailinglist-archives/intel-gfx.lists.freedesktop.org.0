Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C24F32F10
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 13:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD5C89268;
	Mon,  3 Jun 2019 11:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CC18925F;
 Mon,  3 Jun 2019 11:55:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 1B9A128A4FF
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Mon,  3 Jun 2019 12:54:50 +0100
Message-Id: <b831ae7a9bd27a79d18c2b8fe9d2f09da427c64d.1559562608.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/4] tests/sw_sync: use __atomic_* instead
 of __sync_*
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
dyBfX2F0b21pY18qCnN0YW5kYXJkIG9uZXMgdG8gYmUgY29uc2lzdGVudCB3aXRoIG90aGVyIHRl
c3RzIGFuZCBpbXByb3ZlCnBvcnRhYmlsaXR5IGFjcm9zcyBDUFUgYXJjaGl0ZWN0dXJlcy4KClNp
Z25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3Jh
LmNvbT4KLS0tCiB0ZXN0cy9NYWtlZmlsZS5hbSB8IDEgKwogdGVzdHMvc3dfc3luYy5jICAgfCA2
ICsrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZpbGUuYW0gYi90ZXN0cy9NYWtlZmlsZS5hbQppbmRl
eCAxOGEwZjFmMjA1OTIuLjcxNTE0ZDRkMmU1YSAxMDA2NDQKLS0tIGEvdGVzdHMvTWFrZWZpbGUu
YW0KKysrIGIvdGVzdHMvTWFrZWZpbGUuYW0KQEAgLTEyMSw2ICsxMjEsNyBAQCBwcmltZV9zZWxm
X2ltcG9ydF9MREFERCA9ICQoTERBREQpIC1scHRocmVhZAogZ2VtX3VzZXJwdHJfYmxpdHNfQ0ZM
QUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NGTEFHUykKIGdlbV91c2VycHRyX2JsaXRzX0xE
QUREID0gJChMREFERCkgLWxwdGhyZWFkCiBwZXJmX3BtdV9MREFERCA9ICQoTERBREQpICQodG9w
X2J1aWxkZGlyKS9saWIvbGliaWd0X3BlcmYubGEKK3N3X3N5bmNfTERBREQgPSAkKExEQUREKSAt
bGF0b21pYwogCiBrbXNfZmxpcF9MREFERCA9ICQoTERBREQpIC1scHRocmVhZAogCmRpZmYgLS1n
aXQgYS90ZXN0cy9zd19zeW5jLmMgYi90ZXN0cy9zd19zeW5jLmMKaW5kZXggOTUwYjhiNjE0NzU5
Li4yZWUxZTFjNjBiMzIgMTAwNjQ0Ci0tLSBhL3Rlc3RzL3N3X3N5bmMuYworKysgYi90ZXN0cy9z
d19zeW5jLmMKQEAgLTUxNyw3ICs1MTcsNyBAQCBzdGF0aWMgdm9pZCB0ZXN0X3N5bmNfbXVsdGlf
Y29uc3VtZXIodm9pZCkKIAl7CiAJCXNlbV93YWl0KCZzZW0pOwogCi0JCV9fc3luY19mZXRjaF9h
bmRfYWRkKCZjb3VudGVyLCAxKTsKKwkJX19hdG9taWNfZmV0Y2hfYWRkKCZjb3VudGVyLCAxLCBf
X0FUT01JQ19TRVFfQ1NUKTsKIAkJc3dfc3luY190aW1lbGluZV9pbmModGltZWxpbmUsIDEpOwog
CX0KIApAQCAtNTU0LDcgKzU1NCw4IEBAIHN0YXRpYyB2b2lkICogdGVzdF9zeW5jX211bHRpX2Nv
bnN1bWVyX3Byb2R1Y2VyX3RocmVhZCh2b2lkICphcmcpCiAJCWlmIChzeW5jX2ZlbmNlX3dhaXQo
ZmVuY2UsIDEwMDApIDwgMCkKIAkJCXJldHVybiAodm9pZCAqKSAxOwogCi0JCWlmIChfX3N5bmNf
ZmV0Y2hfYW5kX2FkZChkYXRhLT5jb3VudGVyLCAxKSAhPSBuZXh0X3BvaW50KQorCQlpZiAoX19h
dG9taWNfZmV0Y2hfYWRkKGRhdGEtPmNvdW50ZXIsIDEsIF9fQVRPTUlDX1NFUV9DU1QpICE9CisJ
CSAgICBuZXh0X3BvaW50KQogCQkJcmV0dXJuICh2b2lkICopIDE7CiAKIAkJLyogS2ljayBvZmYg
dGhlIG5leHQgdGhyZWFkLiAqLwpAQCAtOTAwLDQgKzkwMSwzIEBAIGlndF9tYWluCiAJaWd0X3N1
YnRlc3QoInN5bmNfcmFuZG9tX21lcmdlIikKIAkJdGVzdF9zeW5jX3JhbmRvbV9tZXJnZSgpOwog
fQotCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
