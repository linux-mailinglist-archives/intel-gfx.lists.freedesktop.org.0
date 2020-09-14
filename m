Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4AA269664
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FB389C60;
	Mon, 14 Sep 2020 20:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549A989C60
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:24:59 +0000 (UTC)
IronPort-SDR: +E5Xh6LMJqH8185U6X//LPvwmhNa0oV7sn8oPoVTJiaZh3C6GjzLL3leLNTxMVda17Nz6CEoSx
 aVEcg/4NZePg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223340776"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="223340776"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:24:58 -0700
IronPort-SDR: RgHMiKa6bl5znN2qqSbn0c9IdEaWv9UCHYPvkGtb2RtOrXZ4rFigEf4gVPROdGx3DFtorNomzx
 +2Ix5e/o4vKw==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="306307084"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:24:57 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 02:30:36 +0530
Message-Id: <20200914210047.11972-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 00/11] Enable HDR on MCA LSPCON based Gen9 devices
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
b2ZyYW1lc19lbmFibGVkIGFzIHBlcgpWaWxsZSdzIHN1Z2dlc3Rpb24uCgp2NjogUmViYXNlCgpO
b3RlOiBQYXRjaCAxMSBvZiB0aGUgc2VyaWVzIGlzIGZvciByZWZlcmVuY2UgdG8gdXNlcnNwYWNl
LCBub3QgdG8gYmUKbWVyZ2VkIHRvIGRyaXZlci4KClVtYSBTaGFua2FyICgxMCk6CiAgZHJtL2k5
MTUvZGlzcGxheTogQWRkIEhEUiBDYXBhYmlsaXR5IGRldGVjdGlvbiBmb3IgTFNQQ09OCiAgZHJt
L2k5MTUvZGlzcGxheTogRW5hYmxlIEhEUiBvbiBnZW45IGRldmljZXMgd2l0aCBNQ0EgTHNwY29u
CiAgZHJtL2k5MTUvZGlzcGxheTogQXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgY2FwYWJsZSBHZW45
IGRldmljZXMKICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgQlQyMDIwIGZvciBIRFIgb24gTFNQ
Q09OIGRldmljZXMKICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgSERSIGZvciBQYXJhZGUgYmFz
ZWQgbHNwY29uCiAgZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IGluZm9mcmFtZXMgcmVhZGJh
Y2sgZm9yIExTUENPTgogIGRybS9pOTE1L2Rpc3BsYXk6IEltcGxlbWVudCBEUk0gaW5mb2ZyYW1l
IHJlYWQgZm9yIExTUENPTgogIGRybS9pOTE1L2xzcGNvbjogQ3JlYXRlIHNlcGFyYXRlIGluZm9m
cmFtZV9lbmFibGVkIGhlbHBlcgogIGRybS9pOTE1L2xzcGNvbjogRG8gbm90IHNlbmQgRFJNIGlu
Zm9mcmFtZXMgdG8gbm9uLUhETUkgc2lua3MKICBkcm0vaTkxNS9kaXNwbGF5OiBbTk9UIEZPUiBN
RVJHRV0gUmVkdWNlIGJsYW5raW5nIHRvIHN1cHBvcnQKICAgIDRrNjBAMTBicHAgZm9yIExTUENP
TgoKVmlsbGUgU3lyasOkbMOkICgxKToKICBkcm0vaTkxNS9sc3Bjb246IERvIG5vdCBzZW5kIGlu
Zm9mcmFtZXMgdG8gbm9uLUhETUkgc2lua3MKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jICAgICAgfCAgMzAgKystLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyAgICAgICB8ICAyNCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jICAgICB8ICAyMCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHNwY29uLmMgICB8IDE3MCArKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmggICB8ICAxMSArLQogNiBmaWxlcyBjaGFuZ2Vk
LCAyMzAgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
