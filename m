Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BCA90FD2
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5898A6E9D4;
	Sat, 17 Aug 2019 09:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14DC6E4AB
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950782"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:52 -0700
Message-Id: <20190817093902.2171-31-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 30/40] drm/i915/tgl: Report valid VDBoxes
 with SFC capability
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkluIEdlbjEx
LCBvbmx5IGV2ZW4gbnVtYmVyZWQgImxvZ2ljYWwiIFZEQm94ZXMgYXJlIGhvb2tlZCB1cCB0byBh
IFNGQwooU2NhbGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4gVGhpcyBpcyBub3QgdGhlIGNh
c2UgaW4gVGlnZXJsYWtlLAp3aGVyZSBlYWNoIFZEQm94IGNhbiBhY2Nlc3MgYSBTRkMuCgpXZSB3
aWxsIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIGRlY2lkZSB3aGVuIHRoZSBTRkMgdW5pdHMgbmVl
ZCB0byBiZSByZXNldAphbmQgYWxzbyBwYXNzIGl0IHRvIHRoZSBHdUMuCgpCc3BlYzogNDgwNzcK
U2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpDYzogVmluYXkgQmVsZ2F1bWthciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAzICsrLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IGEzMDE3ZDE2YjdmMy4uZDBlZDQ0ZDMzNDg0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTEwMjIsOCAr
MTAyMiw5IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAkJLyoKIAkJICogSW4gR2VuMTEsIG9ubHkgZXZlbiBudW1i
ZXJlZCBsb2dpY2FsIFZEQk9YZXMgYXJlCiAJCSAqIGhvb2tlZCB1cCB0byBhbiBTRkMgKFNjYWxl
ciAmIEZvcm1hdCBDb252ZXJ0ZXIpIHVuaXQuCisJCSAqIEluIFRHTCBlYWNoIFZEQk9YIGhhcyBh
Y2Nlc3MgdG8gYW4gU0ZDLgogCQkgKi8KLQkJaWYgKGxvZ2ljYWxfdmRib3grKyAlIDIgPT0gMCkK
KwkJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgbG9naWNhbF92ZGJveCsrICUgMiA9PSAw
KQogCQkJUlVOVElNRV9JTkZPKGRldl9wcml2KS0+dmRib3hfc2ZjX2FjY2VzcyB8PSBCSVQoaSk7
CiAJfQogCURSTV9ERUJVR19EUklWRVIoInZkYm94IGVuYWJsZTogJTA0eCwgaW5zdGFuY2VzOiAl
MDRseFxuIiwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
