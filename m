Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7CC1E7B9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 06:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2BC8945B;
	Wed, 15 May 2019 04:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from condef-02.nifty.com (condef-02.nifty.com [202.248.20.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E30FA8945B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 04:41:34 +0000 (UTC)
Received: from conuserg-08.nifty.com ([10.126.8.71])by condef-02.nifty.com
 with ESMTP id x4F4d20P017522
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 13:39:02 +0900
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x4F4c7cJ027504;
 Wed, 15 May 2019 13:38:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x4F4c7cJ027504
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 13:37:53 +0900
Message-Id: <20190515043753.9853-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1557895089;
 bh=iE+vnhBUmohMYwyQNvfDgRKTtO/iv446MrZ818sQrfg=;
 h=From:To:Cc:Subject:Date:From;
 b=R0deHWNCr8I/DXB/MhqjIvColCojk6Y7goEygOJC5ejAgxWyLBiiPJOm//+HtBCl1
 TjVp4QFaqbx0jr0j8pdIpfN10N1/XiIo4+rQOcgPEZlhuB6ScN0FWtKWmCGfODSMoB
 gZUg7rz2k0/wDpxuUF9Ucwj0+uo1jc7NunXGXLr55iAaYqVIbnbLbG8wuGXq2pEIe8
 6Bn1EJIrazZmarw8BcPdSQhJD0EYinFIQZ1S8rH+g3nSImYLnspcC7I+8HlvDXsQHW
 oLolUTueapGrO3nEa+E/Ha1/M4EjRrGgDSeN4u8Yxpmec/vqseQ60PMsbvukstYryd
 Y8m+89dOpKZUg==
Subject: [Intel-gfx] [PATCH] drm/i915: drop unneeded -Wall addition
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dave Airlie <airlied@redhat.com>, Sam Ravnborg <sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHRvcCBsZXZlbCBNYWtlZmlsZSBhZGRzIC1XYWxsIGdsb2JhbGx5OgoKICBLQlVJTERfQ0ZM
QUdTICAgOj0gLVdhbGwgLVd1bmRlZiAtV2Vycm9yPXN0cmljdC1wcm90b3R5cGVzIC1Xbm8tdHJp
Z3JhcGhzIFwKCkkgc2VlIHR3byAiLVdhbGwiIGFkZGVkIGZvciBjb21waWxpbmcgdW5kZXIgZHJp
dmVycy9ncHUvZHJtL2k5MTUvLgoKU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1h
ZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KLS0tCgpCVFcsIEkgaGF2ZSBhIHF1ZXN0aW9uIGlu
IHRoZSBjb21tZW50OgoKICJOb3RlIHRoZSBkYW5nZXIgaW4gdXNpbmcgLVdhbGwgLVdleHRyYSBp
cyB0aGF0IHdoZW4gQ0kgdXBkYXRlcyBnY2Mgd2UKICB3aWxsIG1vc3QgbGlrZWx5IGdldCBhIHN1
ZGRlbiBidWlsZCBicmVha2FnZS4uLiBIb3BlZnVsbHkgd2Ugd2lsbCBmaXgKICBuZXcgd2Fybmlu
Z3MgYmVmb3JlIENJIHVwZGF0ZXMhIgoKRW5hYmxpbmcgd2hhdGV2ZXIgd2FybmluZyBvcHRpb25z
IGRvZXMgbm90IGNhdXNlIGJ1aWxkIGJyZWFrYWdlLgotV2Vycm9yIGRvZXMuCgpTbywgSSB0aGlu
ayB0aGUgY29ycmVjdCBzdGF0ZW1lbnQgaXM6CgogIk5vdGUgdGhlIGRhbmdlciBpbiB1c2luZyAt
V2Vycm9yIGlzIHRoYXQgd2hlbiBDSSB1cGRhdGVzIGdjYyB3ZSAuLi4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXl5eXl5eXgoKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKaW5kZXggZmJjYjA5MDRmNGE4Li40YTRmNjBjN2VkZmMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCkBAIC0xMiw3ICsxMiw3IEBACiAjIE5vdGUgdGhlIGRhbmdlciBpbiB1c2luZyAt
V2FsbCAtV2V4dHJhIGlzIHRoYXQgd2hlbiBDSSB1cGRhdGVzIGdjYyB3ZQogIyB3aWxsIG1vc3Qg
bGlrZWx5IGdldCBhIHN1ZGRlbiBidWlsZCBicmVha2FnZS4uLiBIb3BlZnVsbHkgd2Ugd2lsbCBm
aXgKICMgbmV3IHdhcm5pbmdzIGJlZm9yZSBDSSB1cGRhdGVzIQotc3ViZGlyLWNjZmxhZ3MteSA6
PSAtV2FsbCAtV2V4dHJhCitzdWJkaXItY2NmbGFncy15IDo9IC1XZXh0cmEKIHN1YmRpci1jY2Zs
YWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdW51c2VkLXBhcmFtZXRlcikKIHN1
YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdHlwZS1saW1pdHMp
CiBzdWJkaXItY2NmbGFncy15ICs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIG1pc3Npbmct
ZmllbGQtaW5pdGlhbGl6ZXJzKQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
