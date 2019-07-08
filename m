Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1CB62C7F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4AFB89FCA;
	Mon,  8 Jul 2019 23:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FC489FA9
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859606"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:10 -0700
Message-Id: <20190708231629.9296-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/25] x86/gpu: add TGL stolen memory support
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

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClJldXNlIEdl
bjExIHN0b2xlbiBtZW1vcnkgY2hhbmdlcyBzaW5jZSBUaWdlciBMYWtlIHVzZXMgdGhlIHNhbWUg
QlNNCnJlZ2lzdGVyIChhbmQgZm9ybWF0KS4KCkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJy
eUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgotLS0KIGFyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYyB8IDEgKwog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYva2Vy
bmVsL2Vhcmx5LXF1aXJrcy5jIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jCmluZGV4
IDZjNGYwMTU0MDgzMy4uNmY2YjFkMDRkYWRmIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9rZXJuZWwv
ZWFybHktcXVpcmtzLmMKKysrIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jCkBAIC01
NDksNiArNTQ5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIGludGVsX2Vh
cmx5X2lkc1tdIF9faW5pdGNvbnN0ID0gewogCUlOVEVMX0NOTF9JRFMoJmdlbjlfZWFybHlfb3Bz
KSwKIAlJTlRFTF9JQ0xfMTFfSURTKCZnZW4xMV9lYXJseV9vcHMpLAogCUlOVEVMX0VITF9JRFMo
JmdlbjExX2Vhcmx5X29wcyksCisJSU5URUxfVEdMXzEyX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwK
IH07CiAKIHN0cnVjdCByZXNvdXJjZSBpbnRlbF9ncmFwaGljc19zdG9sZW5fcmVzIF9fcm9fYWZ0
ZXJfaW5pdCA9IERFRklORV9SRVNfTUVNKDAsIDApOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
