Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1A2036BD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5647F6E42F;
	Mon, 22 Jun 2020 12:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA716E42F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:10 +0000 (UTC)
IronPort-SDR: 5CIEy3+dOBoiZ8VA2FLekw0oMLqmlZDsCg+pfoO/TCLXWqmG63kGP9Qhpi4PCzDfeD2TUub92J
 TxRjXfFZyh4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="208946816"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="208946816"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:09 -0700
IronPort-SDR: s93aYmy0uZ0I9AV6RAtCvhgaofWJ1v31fyv1A81b+ViEhvlS/t5+HQN55eMvib2v67FjGLqrrB
 NmLJFry/Ou6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832524"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:06 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:19 +0530
Message-Id: <20200622130029.28667-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 00/10] Enable HDR on MCA LSPCON based Gen9 devices
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuOSBoYXJkd2FyZSBzdXBwb3J0cyBIRE1JMi4wIHRocm91Z2ggTFNQQ09OIGNoaXBzLiBFeHRl
bmRpbmcgSERSCnN1cHBvcnQgZm9yIE1DQSBhbmQgUGFyYWRlIExTUENPTiBiYXNlZCBHRU45IGRl
dmljZXMuCgpTT0Mgd2lsbCBkcml2ZSBMU1BDT04gYXMgRFAgYW5kIHNlbmQgSERSIG1ldGFkYXRh
IGFzIHN0YW5kYXJkCkRQIFNEUCBwYWNrZXRzLiBMU1BDT04gd2lsbCBiZSBzZXQgdG8gb3BlcmF0
ZSBpbiBQQ09OIG1vZGUsCndpbGwgcmVjZWl2ZSB0aGUgbWV0YWRhdGEgYW5kIGNyZWF0ZSBEeW5h
bWljIFJhbmdlIGFuZApNYXN0ZXJpbmcgSW5mb2ZyYW1lIChEUk0gcGFja2V0cykgYW5kIHNlbmQg
aXQgdG8gSERSIGNhcGFibGUKSERNSSBzaW5rIGRldmljZXMuCgp2MjogRml4ZWQgVmlsbGUncyBy
ZXZpZXcgY29tbWVudHMuIFN1cHByZXNzZWQgc29tZSB3YXJuaW5ncy4KUGF0Y2ggOCBvZiB0aGUg
c2VyaWVzIGlzIG1hcmtlZCAiTm90IGZvciBNZXJnZSIgYW5kIGlzIGp1c3QgZm9yCnJlZmVyZW5j
ZSB0byB1c2Vyc3BhY2UgcGVvcGxlIHRvIGluY29ycG9yYXRlIGluIG9yZGVyIHRvIHN1cHBvcnQK
MTBiaXQgY29udGVudCB3aXRoIDRLQDYwIHJlc29sdXRpb25zLgoKdjM6IEFkZGVkIEluZm9mcmFt
ZSByZWFkb3V0IHN1cHBvcnQgZm9yIERSTSBpbmZvZnJhbWVzLgpBZGRyZXNzZWQgSmFuaSBOaWt1
bGEncyByZXZpZXcgY29tbWVudHMuCgp2NDogQWRkcmVzc2VkIFZpbGxlJ3MgcmV2aWV3IGNvbW1l
bnRzIGFuZCBhZGRlZCBwcm9wZXIgYml0bWFzayBmb3IKZW5hYmxlZCBpbmZvZnJhbWVzLiBTZXJp
ZXMgYWxzbyBpbmNvcnBvcmF0ZXMgVmlsbGUncyBwYXRjaCBmb3Igc3RvcHBpbmcKaW5mb2ZyYW1l
cyB0byBiZSBzZW50IHRvIERWSSBzaW5rcy4gRXh0ZW5kZWQgdGhlIHNhbWUgZm9yIERSTSBhcyB3
ZWxsLgoKTm90ZTogUGF0Y2ggMTAgb2YgdGhlIHNlcmllcyBpcyBmb3IgcmVmZXJlbmNlIHRvIHVz
ZXJzcGFjZSwgbm90IHRvIGJlCm1lcmdlZCB0byBkcml2ZXIuCgpVbWEgU2hhbmthciAoOSk6CiAg
ZHJtL2k5MTUvZGlzcGxheTogQWRkIEhEUiBDYXBhYmlsaXR5IGRldGVjdGlvbiBmb3IgTFNQQ09O
CiAgZHJtL2k5MTUvZGlzcGxheTogRW5hYmxlIEhEUiBvbiBnZW45IGRldmljZXMgd2l0aCBNQ0Eg
THNwY29uCiAgZHJtL2k5MTUvZGlzcGxheTogQXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgY2FwYWJs
ZSBHZW45IGRldmljZXMKICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgQlQyMDIwIGZvciBIRFIg
b24gTFNQQ09OIGRldmljZXMKICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgSERSIGZvciBQYXJh
ZGUgYmFzZWQgbHNwY29uCiAgZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IGluZm9mcmFtZXMg
cmVhZGJhY2sgZm9yIExTUENPTgogIGRybS9pOTE1L2Rpc3BsYXk6IEltcGxlbWVudCBEUk0gaW5m
b2ZyYW1lIHJlYWQgZm9yIExTUENPTgogIGRybS9pOTE1L2xzcGNvbjogRG8gbm90IHNlbmQgRFJN
IGluZm9mcmFtZXMgdG8gbm9uLUhETUkgc2lua3MKICBkcm0vaTkxNS9kaXNwbGF5OiBbTk9UIEZP
UiBNRVJHRV0gUmVkdWNlIGJsYW5raW5nIHRvIHN1cHBvcnQKICAgIDRrNjBAMTBicHAgZm9yIExT
UENPTgoKVmlsbGUgU3lyasOkbMOkICgxKToKICBkcm0vaTkxNS9sc3Bjb246IERvIG5vdCBzZW5k
IGluZm9mcmFtZXMgdG8gbm9uLUhETUkgc2lua3MKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jICAgICAgfCAgMjAgKystCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICAgICAgIHwgIDI0ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMgICAgIHwgIDIwICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sc3Bjb24uYyAgIHwgMTUyICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCAgIHwgICA5ICstCiA2IGZpbGVzIGNoYW5n
ZWQsIDIwMyBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
