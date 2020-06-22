Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C99A1204067
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 21:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC4B6E843;
	Mon, 22 Jun 2020 19:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D646E8DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 19:30:12 +0000 (UTC)
IronPort-SDR: jrUs+vv2lj/DngNMhtpWwH5EFjrKX9goj8ShkZoVHDDw3apjbt828xyAPcO4abLCSMGvm3AglY
 PXfOEQBi73Cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="132287916"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="132287916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 12:30:11 -0700
IronPort-SDR: FOJpWcQ3loiRkq7QPRN6C8agFG3w34yKca1EWG/X1b3TUR/B8sIXYiDLxalEoiQ8aaRyTr9YTe
 3Y9SY1fuGjbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="292948871"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 12:30:09 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 01:30:27 +0530
Message-Id: <20200622200038.14034-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 00/11] Enable HDR on MCA LSPCON based Gen9 devices
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
ZWxsLgoKdjU6IENyZWF0ZWQgc2VwYXJhdGUgaGVscGVyIGZ1bmN0aW9uIGZvciBsc3Bjb25faW5m
b2ZyYW1lc19lbmFibGVkIGFzIHBlcgpWaWxsZSdzIHN1Z2dlc3Rpb24uCgpOb3RlOiBQYXRjaCAx
MSBvZiB0aGUgc2VyaWVzIGlzIGZvciByZWZlcmVuY2UgdG8gdXNlcnNwYWNlLCBub3QgdG8gYmUK
bWVyZ2VkIHRvIGRyaXZlci4KClVtYSBTaGFua2FyICgxMCk6CiAgZHJtL2k5MTUvZGlzcGxheTog
QWRkIEhEUiBDYXBhYmlsaXR5IGRldGVjdGlvbiBmb3IgTFNQQ09OCiAgZHJtL2k5MTUvZGlzcGxh
eTogRW5hYmxlIEhEUiBvbiBnZW45IGRldmljZXMgd2l0aCBNQ0EgTHNwY29uCiAgZHJtL2k5MTUv
ZGlzcGxheTogQXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgY2FwYWJsZSBHZW45IGRldmljZXMKICBk
cm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgQlQyMDIwIGZvciBIRFIgb24gTFNQQ09OIGRldmljZXMK
ICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgSERSIGZvciBQYXJhZGUgYmFzZWQgbHNwY29uCiAg
ZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IGluZm9mcmFtZXMgcmVhZGJhY2sgZm9yIExTUENP
TgogIGRybS9pOTE1L2Rpc3BsYXk6IEltcGxlbWVudCBEUk0gaW5mb2ZyYW1lIHJlYWQgZm9yIExT
UENPTgogIGRybS9pOTE1L2xzcGNvbjogQ3JlYXRlIHNlcGFyYXRlIGluZm9mcmFtZV9lbmFibGVk
IGhlbHBlcgogIGRybS9pOTE1L2xzcGNvbjogRG8gbm90IHNlbmQgRFJNIGluZm9mcmFtZXMgdG8g
bm9uLUhETUkgc2lua3MKICBkcm0vaTkxNS9kaXNwbGF5OiBbTk9UIEZPUiBNRVJHRV0gUmVkdWNl
IGJsYW5raW5nIHRvIHN1cHBvcnQKICAgIDRrNjBAMTBicHAgZm9yIExTUENPTgoKVmlsbGUgU3ly
asOkbMOkICgxKToKICBkcm0vaTkxNS9sc3Bjb246IERvIG5vdCBzZW5kIGluZm9mcmFtZXMgdG8g
bm9uLUhETUkgc2lua3MKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
ICAgICAgfCAgMzAgKystLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAg
ICAgICB8ICAyNCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
ICAgICB8ICAyMCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29u
LmMgICB8IDE3MCArKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHNwY29uLmggICB8ICAxMSArLQogNiBmaWxlcyBjaGFuZ2VkLCAyMzAgaW5zZXJ0
aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
