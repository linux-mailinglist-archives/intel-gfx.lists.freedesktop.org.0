Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD718F510
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 21:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE8C6EA68;
	Thu, 15 Aug 2019 19:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5156EA68
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 19:46:41 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5F514AD44;
 Thu, 15 Aug 2019 19:46:40 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: alsa-devel@alsa-project.org
Date: Thu, 15 Aug 2019 21:46:34 +0200
Message-Id: <20190815194634.12281-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
Subject: [Intel-gfx] [PATCH] Revert "ALSA: hda: Add codec on bus address
 table lately"
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

VGhpcyByZXZlcnRzIGNvbW1pdCBlZTVmODVkOTI5MGYgKCJBTFNBOiBoZGE6IEFkZCBjb2RlYyBv
biBidXMgYWRkcmVzcwp0YWJsZSBsYXRlbHkiKS4gIFRoZSBjb21taXQgY2F1c2VkIHNldmVyYWwg
cmVncmVzc2lvbiBzaW5jZSBJJ3ZlCm92ZXJsb29rZWQgdGhhdCB0aGUgZnVuY3Rpb24gZG9lc24n
dCBtYW5hZ2Ugb25seSB0aGUgY2FkZHJfdGJsIGJ1dAphbHNvIHRoZSBjb2RlYyBsaW5rZWQgbGlz
dCB0aGF0IGlzIHJlZmVycmVkIGluZGlyZWN0bHkgaW4gdGhlIG90aGVyCmRyaXZlcnMuCgpSZXZl
cnQgZm9yIG5vdyB0byBtYWtlIGV2ZXJ5dGhpbmcgYmFjayB0byB3b3JrLgoKRml4ZXM6IGVlNWY4
NWQ5MjkwZiAoIkFMU0E6IGhkYTogQWRkIGNvZGVjIG9uIGJ1cyBhZGRyZXNzIHRhYmxlIGxhdGVs
eSIpClJlcG9ydGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
U2lnbmVkLW9mZi1ieTogVGFrYXNoaSBJd2FpIDx0aXdhaUBzdXNlLmRlPgotLS0KIHNvdW5kL2hk
YS9oZGFjX2RldmljZS5jIHwgMjEgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9o
ZGEvaGRhY19kZXZpY2UuYyBiL3NvdW5kL2hkYS9oZGFjX2RldmljZS5jCmluZGV4IGJmODNkNzA2
MmVmNi4uOWYzZTM3NTExNDA4IDEwMDY0NAotLS0gYS9zb3VuZC9oZGEvaGRhY19kZXZpY2UuYwor
KysgYi9zb3VuZC9oZGEvaGRhY19kZXZpY2UuYwpAQCAtNjEsNiArNjEsMTAgQEAgaW50IHNuZF9o
ZGFjX2RldmljZV9pbml0KHN0cnVjdCBoZGFjX2RldmljZSAqY29kZWMsIHN0cnVjdCBoZGFjX2J1
cyAqYnVzLAogCXBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCZjb2RlYy0+ZGV2KTsKIAlhdG9taWNf
c2V0KCZjb2RlYy0+aW5fcG0sIDApOwogCisJZXJyID0gc25kX2hkYWNfYnVzX2FkZF9kZXZpY2Uo
YnVzLCBjb2RlYyk7CisJaWYgKGVyciA8IDApCisJCWdvdG8gZXJyb3I7CisKIAkvKiBmaWxsIHBh
cmFtZXRlcnMgKi8KIAljb2RlYy0+dmVuZG9yX2lkID0gc25kX2hkYWNfcmVhZF9wYXJtKGNvZGVj
LCBBQ19OT0RFX1JPT1QsCiAJCQkJCSAgICAgIEFDX1BBUl9WRU5ET1JfSUQpOwpAQCAtMTM5LDIy
ICsxNDMsMTUgQEAgaW50IHNuZF9oZGFjX2RldmljZV9yZWdpc3RlcihzdHJ1Y3QgaGRhY19kZXZp
Y2UgKmNvZGVjKQogCWVyciA9IGRldmljZV9hZGQoJmNvZGVjLT5kZXYpOwogCWlmIChlcnIgPCAw
KQogCQlyZXR1cm4gZXJyOwotCWVyciA9IHNuZF9oZGFjX2J1c19hZGRfZGV2aWNlKGNvZGVjLT5i
dXMsIGNvZGVjKTsKLQlpZiAoZXJyIDwgMCkKLQkJZ290byBlcnJvcjsKIAltdXRleF9sb2NrKCZj
b2RlYy0+d2lkZ2V0X2xvY2spOwogCWVyciA9IGhkYV93aWRnZXRfc3lzZnNfaW5pdChjb2RlYyk7
CiAJbXV0ZXhfdW5sb2NrKCZjb2RlYy0+d2lkZ2V0X2xvY2spOwotCWlmIChlcnIgPCAwKQotCQln
b3RvIGVycm9yX3JlbW92ZTsKKwlpZiAoZXJyIDwgMCkgeworCQlkZXZpY2VfZGVsKCZjb2RlYy0+
ZGV2KTsKKwkJcmV0dXJuIGVycjsKKwl9CiAKIAlyZXR1cm4gMDsKLQotIGVycm9yX3JlbW92ZToK
LQlzbmRfaGRhY19idXNfcmVtb3ZlX2RldmljZShjb2RlYy0+YnVzLCBjb2RlYyk7Ci0gZXJyb3I6
Ci0JZGV2aWNlX2RlbCgmY29kZWMtPmRldik7Ci0JcmV0dXJuIGVycjsKIH0KIEVYUE9SVF9TWU1C
T0xfR1BMKHNuZF9oZGFjX2RldmljZV9yZWdpc3Rlcik7CiAKQEAgLTE2OCw4ICsxNjUsOCBAQCB2
b2lkIHNuZF9oZGFjX2RldmljZV91bnJlZ2lzdGVyKHN0cnVjdCBoZGFjX2RldmljZSAqY29kZWMp
CiAJCW11dGV4X2xvY2soJmNvZGVjLT53aWRnZXRfbG9jayk7CiAJCWhkYV93aWRnZXRfc3lzZnNf
ZXhpdChjb2RlYyk7CiAJCW11dGV4X3VubG9jaygmY29kZWMtPndpZGdldF9sb2NrKTsKLQkJc25k
X2hkYWNfYnVzX3JlbW92ZV9kZXZpY2UoY29kZWMtPmJ1cywgY29kZWMpOwogCQlkZXZpY2VfZGVs
KCZjb2RlYy0+ZGV2KTsKKwkJc25kX2hkYWNfYnVzX3JlbW92ZV9kZXZpY2UoY29kZWMtPmJ1cywg
Y29kZWMpOwogCX0KIH0KIEVYUE9SVF9TWU1CT0xfR1BMKHNuZF9oZGFjX2RldmljZV91bnJlZ2lz
dGVyKTsKLS0gCjIuMTYuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
