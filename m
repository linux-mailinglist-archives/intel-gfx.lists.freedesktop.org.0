Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C828F7340
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E78E6E8B9;
	Mon, 11 Nov 2019 11:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C486E8B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:41:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:41:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="206718490"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2019 03:41:00 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 16:40:20 +0530
Message-Id: <20191111111029.9126-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v2 0/9] Add support for mipi dsi cmd mode
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
Cc: jani.nikula@intel.com, --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZWQgdGhlIGNvbW1lbnRzIG9uIHZlcnNpb24xIFJGQywgYmFzaWNhbGx5IGZpeGluZyB0aGUK
Y2hhbGxlbmdlIG9uIGdldHRpbmcgYWNjZXNzIHRvIG1pcGkgZHNpIGF0dHJpYnV0ZXMgbGlrZQpp
cyBjb21tYW5kIG1vZGUgZW5hYmxlZCwgYW5kIHdoYXQgc2hvdWxkIGJlIHRoZSBwb3J0IGZvcgpy
ZWFkaW5nIFRFIGFuZCBkb2luZyBhIGZyYW1lIHVwZGF0ZS4KVGhhbmtzIHRvIEphbmkgYW5kIFZp
bGxlIGZvciB0aGVpciBpbnB1dHMgb24gdGhpcy4KClZhbmRpdGEgS3Vsa2FybmkgKDkpOgogIGRy
bS9pOTE1L2RzaTogRGVmaW5lIGNvbW1hbmQgbW9kZSByZWdpc3RlcnMKICBkcm0vaTkxNS9kc2k6
IENvbmZpZ3VyZSB0cmFuc2NvZGVyIG9wZXJhdGlvbiBmb3IgY29tbWFuZCBtb2RlLgogIGRybS9p
OTE1L2RzaTogQWRkIHZibGFuayBjYWxjdWxhdGlvbiBmb3IgY29tbWFuZCBtb2RlCiAgZHJtL2k5
MTUvZHNpOiBBZGQgY21kIG1vZGUgZmxhZ3MgaW4gZGlzcGxheSBtb2RlIHByaXZhdGUgZmxhZ3MK
ICBkcm0vaTkxNS9kc2k6IEFkZCBjaGVjayBmb3IgcGVyaW9kaWMgY29tbWFuZCBtb2RlCiAgZHJt
L2k5MTUvZHNpOiBVc2UgcHJpdmF0ZSBmbGFncyB0byBpbmRpY2F0ZSBURSBpbiBjbWQgbW9kZQog
IGRybS9pOTE1L2RzaTogQ29uZmlndXJlIFRFIGludGVycnVwdCBmb3IgY21kIG1vZGUKICBkcm0v
aTkxNS9kc2k6IEFkZCBURSBoYW5kbGVyIGZvciBkc2kgY21kIG1vZGUuCiAgZHJtL2k5MTUvZHNp
OiBJbml0aWF0ZSBmYW1lIHJlcXVlc3QgaW4gY21kIG1vZGUKCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAxMzQgKysrKysrKysrKysrKysrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMTAgKysKIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgNiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oICAgICAgfCAgIDMgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgIHwgMTIwICsrKysrKysrKysrKysr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICA3OCAr
KysrKysrKy0tCiA2IGZpbGVzIGNoYW5nZWQsIDMyOCBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlv
bnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
