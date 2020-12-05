Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E131C2CF873
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45016E223;
	Sat,  5 Dec 2020 01:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B07B6E220
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:08:59 +0000 (UTC)
IronPort-SDR: dE/W0immGprcUuNMMrotGoEqR2KRaZQ5jbOneFYGHkQj7U60y4B8XcW2GX6bp4gJHoazWuo4sx
 2NP/Qw7OIy5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173570994"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173570994"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:58 -0800
IronPort-SDR: GAKvfBOyRr2YvnwdNDmaz5Im1+jocKBV7vFfcgHKDRQVzzEJqv8UIagloXOBcEJHvJhrH002K6
 AQRP6QcrRFIw==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062880"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:57 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:26 -0800
Message-Id: <20201205010844.361880-5-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/22] x86/gpu: add ADL_S stolen memory support
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
