Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4650E0618
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8246E1D7;
	Tue, 22 Oct 2019 14:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B8A6E1D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:12:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:12:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="227726290"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.143])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 07:12:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:03:58 +0530
Message-Id: <20191022143404.30442-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 0/6] Enable HDR on MCA LSPCON based Gen9 devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuOSBoYXJkd2FyZSBzdXBwb3J0cyBIRE1JMi4wIHRocm91Z2ggTFNQQ09OIGNoaXBzLiBFeHRl
bmRpbmcgSERSCnN1cHBvcnQgZm9yIE1DQSBMU1BDT04gYmFzZWQgR0VOOSBkZXZpY2VzLgoKU09D
IHdpbGwgZHJpdmUgTFNQQ09OIGFzIERQIGFuZCBzZW5kIEhEUiBtZXRhZGF0YSBhcyBzdGFuZGFy
ZApEUCBTRFAgcGFja2V0cy4gTFNQQ09OIHdpbGwgYmUgc2V0IHRvIG9wZXJhdGUgaW4gUENPTiBt
b2RlLAp3aWxsIHJlY2VpdmUgdGhlIG1ldGFkYXRhIGFuZCBjcmVhdGUgRHluYW1pYyBSYW5nZSBh
bmQKTWFzdGVyaW5nIEluZm9mcmFtZSAoRFJNIHBhY2tldHMpIGFuZCBzZW5kIGl0IHRvIEhEUiBj
YXBhYmxlCkhETUkgc2luayBkZXZpY2VzLgoKdjI6IEZpeGVkIFZpbGxlJ3MgcmV2aWV3IGNvbW1l
bnRzLiBTdXBwcmVzc2VkIHNvbWUgd2FybmluZ3MuClBhdGNoIDYgb2YgdGhlIHNlcmllcyBpcyBt
YXJrZWQgIk5vdCBmb3IgTWVyZ2UiIGFuZCBpcyBqdXN0IGZvcgpyZWZlcmVuY2UgdG8gdXNlcnNw
YWNlIHBlb3BsZSB0byBpbmNvcnBvcmF0ZSBpbiBvcmRlciB0byBzdXBwb3J0CjEwYml0IGNvbnRl
bnQgd2l0aCA0S0A2MCByZXNvbHV0aW9ucy4KCk5vdGU6IEJhc2VkIG9uIHJldmlld3Mgb24gdjEg
YmVsb3cgY2hhbmdlcyBhcmUgZXhwZWN0ZWQgdG8gYmUgZG9uZQpiZWZvcmUgd2UgY2FuIG1lcmdl
IHRoaXMgc2VyaWVzIChhcyBwZXIgVmlsbGUncyBmZWVkYmFjayk6CgphKSBJbmZvZnJhbWUgcmVh
ZG91dCBzdXBwb3J0CmIpIFN0b3Agc2VuZGluZyBpbmZvZnJhbWVzIHRvIERWSSBzaW5rcwpjKSBO
ZWVkIHRvIGZpZ3VyZSBvdXQgaG93IHRvIGRpc2FibGUgdGhlIEFWSSBpbmZvZnJhbWUKICAgb25j
ZSBlbmFibGVkIChpZiBpdCBkb2Vzbid0IGdldCBhdXRvbWFnaWNhbGx5IGRpc2FibGVkCiAgIHdo
ZW4gZG8gYSBtb2Rlc2V0KSwgYmVjYXVzZSBvdGhlcndpc2Ugd2hlbiB3ZSBzd2l0Y2gKICAgZGlz
cGxheXMgZnJvbSBIRE1JIHRvIERWSSB3ZSB3aWxsIHN0aWxsIHNlbmQgdGhlIGluZm9mcmFtZQog
ICB0byB0aGUgRFZJIHNpbmsKZCkgRFAgc3RhdGUgcmVhZG91dCBzdXBwb3J0IGZvciBTRFAgcGFj
a2V0cy4KClVtYSBTaGFua2FyICg2KToKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgSERSIENhcGFi
aWxpdHkgZGV0ZWN0aW9uIGZvciBMU1BDT04KICBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgSERS
IG9uIGdlbjkgZGV2aWNlcyB3aXRoIE1DQSBMc3Bjb24KICBkcm0vaTkxNS9kaXNwbGF5OiBBdHRh
Y2ggSERSIHByb3BlcnR5IGZvciBjYXBhYmxlIEdlbjkgZGV2aWNlcwogIGRybS9pOTE1L2Rpc3Bs
YXk6IFNldCBIRFIgSW5mb2ZyYW1lIGZvciBIRFIgY2FwYWJsZSBMU1BDT04gZGV2aWNlcwogIGRy
bS9pOTE1L2Rpc3BsYXk6IEVuYWJsZSBCVDIwMjAgZm9yIEhEUiBvbiBMU1BDT04gZGV2aWNlcwog
IFtOT1QgRk9SIE1FUkdFXSBkcm0vaTkxNS9kaXNwbGF5OiBSZWR1Y2UgYmxhbmtpbmcgdG8gc3Vw
cG9ydAogICAgNGs2MEAxMGJwcCBmb3IgTFNQQ09OCgogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9t
aWNfc3RhdGVfaGVscGVyLmMgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNf
dWFwaS5jICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgIHwgIDggKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyAgICAgICB8IDE5ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jICAgICB8IDEwICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xz
cGNvbi5jICAgfCA5MSArKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2xzcGNvbi5oICAgfCAgOCArKwogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rv
ci5oICAgICAgICAgICAgICAgICAgIHwgIDEgKwogOSBmaWxlcyBjaGFuZ2VkLCAxMjggaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
