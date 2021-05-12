Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6379A37C4E0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 17:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18BF6E220;
	Wed, 12 May 2021 15:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6446EB98;
 Wed, 12 May 2021 12:51:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C7E7361454;
 Wed, 12 May 2021 12:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620823907;
 bh=VpLsYBUyxDPAUDeiKOZVygRyVEGODhV1GMIGsuEHRw8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d4ErpNmWuXPXwpYmM0WD3X3ndNvX6sdaPHNGfQox7AganJxqVD8ocW4BEWnv4nmKn
 XJTJvPp6CoXKohvw2txq7Ia6t/6Duy85XYaH/SZss+4lvjGHh1A4W8cBE2HCEdW1ee
 28A2w8PErov9IzB9E6gHlP5wEmnyox03kNDKNZPVItCOsZbxIwMWlQHfwQQJ2Xe+7F
 NTY9V12DhSzXMyj49d1frFU3PmSdOTt1aqVQpo2jziGcr9mQw+9kYpS64xhA9Hnmto
 jmeXAwbSkKb2RT1erWYvNYfiRiE3lArGVMEqCqnhfDdLkvviVtfgCdVp1XDan0twvu
 t9JgY28eMeI7A==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lgoL3-0018nT-IX; Wed, 12 May 2021 14:51:45 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Wed, 12 May 2021 14:50:36 +0200
Message-Id: <2edfac4e4081d531f039cbebd9545789ebdcca6c.1620823573.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620823573.git.mchehab+huawei@kernel.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 May 2021 15:34:25 +0000
Subject: [Intel-gfx] [PATCH v2 32/40] docs: gpu: Use ASCII subset instead of
 UTF-8 alternate symbols
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Mali DP Maintainers <malidp@foss.arm.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9NYXJrZG93bi0+
UmVTVCBjb252ZXJzaW9uCmFuZCBzb21lIGF1dG9tYXRpYyBydWxlcyB3aGljaCBleGlzdHMgb24g
Y2VydGFpbiB0ZXh0IGVkaXRvcnMgbGlrZQpMaWJyZU9mZmljZSB0dXJuZWQgQVNDSUkgY2hhcmFj
dGVycyBpbnRvIHNvbWUgVVRGLTggYWx0ZXJuYXRpdmVzIHRoYXQKYXJlIGJldHRlciBkaXNwbGF5
ZWQgb24gaHRtbCBhbmQgUERGLgoKV2hpbGUgaXQgaXMgT0sgdG8gdXNlIFVURi04IGNoYXJhY3Rl
cnMgaW4gTGludXgsIGl0IGlzIGJldHRlciB0bwp1c2UgdGhlIEFTQ0lJIHN1YnNldCBpbnN0ZWFk
IG9mIHVzaW5nIGFuIFVURi04IGVxdWl2YWxlbnQgY2hhcmFjdGVyCmFzIGl0IG1ha2VzIGxpZmUg
ZWFzaWVyIGZvciB0b29scyBsaWtlIGdyZXAsIGFuZCBhcmUgZWFzaWVyIHRvIGVkaXQKd2l0aCB0
aGUgc29tZSBjb21tb25seSB1c2VkIHRleHQvc291cmNlIGNvZGUgZWRpdG9ycy4KCkFsc28sIFNw
aGlueCBhbHJlYWR5IGRvIHN1Y2ggY29udmVyc2lvbiBhdXRvbWF0aWNhbGx5IG91dHNpZGUgbGl0
ZXJhbCBibG9ja3M6CiAgIGh0dHBzOi8vZG9jdXRpbHMuc291cmNlZm9yZ2UuaW8vZG9jcy91c2Vy
L3NtYXJ0cXVvdGVzLmh0bWwKClNvLCByZXBsYWNlIHRoZSBvY2N1cmVuY2VzIG9mIHRoZSBmb2xs
b3dpbmcgVVRGLTggY2hhcmFjdGVyczoKCgktIFUrMjAxOSAoJ+KAmScpOiBSSUdIVCBTSU5HTEUg
UVVPVEFUSU9OIE1BUksKCkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgpBY2tlZC1ieTogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4K
LS0tCiBEb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCAgICAgICB8IDIgKy0KIERvY3VtZW50YXRp
b24vZ3B1L2tvbWVkYS1rbXMucnN0IHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkx
NS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAppbmRleCA0ODZjNzIwZjM4OTAuLjJj
YmY1NDQ2MGI0OCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKKysrIGIv
RG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKQEAgLTM2MSw3ICszNjEsNyBAQCBMb2NraW5nIEd1
aWRlbGluZXMKIAkgIHJlYWwgYmFkLgogCiAjLiBEbyBub3QgbmVzdCBkaWZmZXJlbnQgbHJ1L21l
bW9yeSBtYW5hZ2VyIGxvY2tzIHdpdGhpbiBlYWNoIG90aGVyLgotICAgVGFrZSB0aGVtIGluIHR1
cm4gdG8gdXBkYXRlIG1lbW9yeSBhbGxvY2F0aW9ucywgcmVseWluZyBvbiB0aGUgb2JqZWN04oCZ
cworICAgVGFrZSB0aGVtIGluIHR1cm4gdG8gdXBkYXRlIG1lbW9yeSBhbGxvY2F0aW9ucywgcmVs
eWluZyBvbiB0aGUgb2JqZWN0J3MKICAgIGRtYV9yZXN2IHd3X211dGV4IHRvIHNlcmlhbGl6ZSBh
Z2FpbnN0IG90aGVyIG9wZXJhdGlvbnMuCiAKICMuIFRoZSBzdWdnZXN0aW9uIGZvciBscnUvbWVt
b3J5IG1hbmFnZXJzIGxvY2tzIGlzIHRoYXQgdGhleSBhcmUgc21hbGwKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZ3B1L2tvbWVkYS1rbXMucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUva29tZWRh
LWttcy5yc3QKaW5kZXggZWI2OTNjODU3ZTJkLi5jMjA2NzY3OGU5MmMgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZ3B1L2tvbWVkYS1rbXMucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2tv
bWVkYS1rbXMucnN0CkBAIC0zMjQsNyArMzI0LDcgQEAgdGhlIGNvbnRyb2wtYWJpbGl0ZXMgb2Yg
ZGV2aWNlLgogCiBXZSBoYXZlICZrb21lZGFfZGV2LCAma29tZWRhX3BpcGVsaW5lLCAma29tZWRh
X2NvbXBvbmVudC4gTm93IGZpbGwgZGV2aWNlcyB3aXRoCiBwaXBlbGluZXMuIFNpbmNlIGtvbWVk
YSBpcyBub3QgZm9yIEQ3MSBvbmx5IGJ1dCBhbHNvIGludGVuZGVkIGZvciBsYXRlciBwcm9kdWN0
cywKLW9mIGNvdXJzZSB3ZeKAmWQgYmV0dGVyIHNoYXJlIGFzIG11Y2ggYXMgcG9zc2libGUgYmV0
d2VlbiBkaWZmZXJlbnQgcHJvZHVjdHMuIFRvCitvZiBjb3Vyc2Ugd2UnZCBiZXR0ZXIgc2hhcmUg
YXMgbXVjaCBhcyBwb3NzaWJsZSBiZXR3ZWVuIGRpZmZlcmVudCBwcm9kdWN0cy4gVG8KIGFjaGll
dmUgdGhpcywgc3BsaXQgdGhlIGtvbWVkYSBkZXZpY2UgaW50byB0d28gbGF5ZXJzOiBDT1JFIGFu
ZCBDSElQLgogCiAtICAgQ09SRTogZm9yIGNvbW1vbiBmZWF0dXJlcyBhbmQgY2FwYWJpbGl0aWVz
IGhhbmRsaW5nLgotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
