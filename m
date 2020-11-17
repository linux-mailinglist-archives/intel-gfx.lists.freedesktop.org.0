Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B972B6DBE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7042189F47;
	Tue, 17 Nov 2020 18:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86A389F31
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:46 +0000 (UTC)
IronPort-SDR: ZzE41cMzwTuNwgeJf4KzAp6DZ2u2lJ0CBhT6gwxImVXpFLqt8bLpZvc6GQCRlhK+0Cr6OY1y1E
 qk2aW8aaCOmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150833842"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="150833842"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:46 -0800
IronPort-SDR: a0WwJurz+yhD9K/o6wjrFfqg6YnZvB4XMnfCMa3YB0/oLLiYFdYpe3d6jS8G0aOTSgE4Ml7mVJ
 R9kUvskiGV0w==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996836"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:46 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:12 -0800
Message-Id: <20201117185029.22078-5-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/21] x86/gpu: add ADL_S stolen memory support
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
Cc: Jani Nikula <jani.nikula@intel.com>, x86@kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgoKQURMX1MgcmUtdXNl
cyB0aGUgc2FtZSBzdG9sZW4gbWVtb3J5IHJlZ2lzdGVycyBhcyBUR0wgYW5kIElDTC4KClRoaXMg
cGF0Y2ggaGFzIGEgZGVwZW5kZW5jeSBvbjoKKCJkcm0vaTkxNS9hZGxfczogQWRkIEFETC1TIHBs
YXRmb3JtIGluZm8gYW5kIFBDSSBpZHMiKQoKQnNwZWM6IDUyMDU1CkJzcGVjOiA0OTU4OQpCc3Bl
YzogNDk2MzYKCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgpDYzogeDg2QGtlcm5lbC5vcmcKQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0By
ZWRoYXQuY29tPiwKQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPiwKQ2M6
IEJvcmlzbGF2IFBldGtvdiA8YnBAc3VzZS5kZT4KU2lnbmVkLW9mZi1ieTogQ2F6IFlva295YW1h
IDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxh
ZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGFyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3Mu
YyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJr
cy5jCmluZGV4IGE0YjVhZjAzZGNjMS4uNmVkZDFlMmVlOGFmIDEwMDY0NAotLS0gYS9hcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKKysrIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJr
cy5jCkBAIC01NTEsNiArNTUxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lk
IGludGVsX2Vhcmx5X2lkc1tdIF9faW5pdGNvbnN0ID0gewogCUlOVEVMX0VITF9JRFMoJmdlbjEx
X2Vhcmx5X29wcyksCiAJSU5URUxfVEdMXzEyX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKIAlJTlRF
TF9SS0xfSURTKCZnZW4xMV9lYXJseV9vcHMpLAorCUlOVEVMX0FETFNfSURTKCZnZW4xMV9lYXJs
eV9vcHMpLAogfTsKIAogc3RydWN0IHJlc291cmNlIGludGVsX2dyYXBoaWNzX3N0b2xlbl9yZXMg
X19yb19hZnRlcl9pbml0ID0gREVGSU5FX1JFU19NRU0oMCwgMCk7Ci0tIAoyLjI3LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
