Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E82302400
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE35389B42;
	Mon, 25 Jan 2021 11:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5E389F24
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:00:26 +0000 (UTC)
IronPort-SDR: 0GQH1Ii9HHLgbNZPkxSoHXCBlhqe2A1bxk1lULMkEMVJ+OFJibZHCpEBrexoLH3WpXZcbGnP7X
 LvSgPbDzMPIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="176195132"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="176195132"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:00:26 -0800
IronPort-SDR: G/gyS/+tylZA4LcmfggiI31aoJ2kWu3gFh7hVs6fwuMe478bJPZnohYcROS+K+XrFcsvbc5GrC
 dR3i+meBb1TA==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472024434"
Received: from iduggana-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.81.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:00:26 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 02:59:31 -0800
Message-Id: <20210125105931.268977-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210125105931.268977-1-aditya.swarup@intel.com>
References: <20210125105931.268977-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] x86/gpu: Add Alderlake-S stolen memory
 support
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

RnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgoKQWxkZXJsYWtlLVMg
aXMgYSBHZW4gMTIgYmFzZWQgaHlicmlkIHByb2Nlc3NvciBhcmNoaXRldHVyZS4gQXMgaXQKYmVs
b25ncyB0byBHZW4gMTIgZmFtaWx5LCBpdCB1c2VzIHRoZSBzYW1lIEdUVCBzdG9sZW4gbWVtb3J5
IHNldHRpbmdzCmxpa2UgaXRzIHByZWRlY2Vzc29ycyAtIElDTChHZW4gMTEpIGFuZCBUR0woR2Vu
IDEyKS4gVGhpcyBwYXRjaCBpbmhlcml0cwp0aGUgZ2VuMTEgYW5kIGdlbiA5IHF1aXJrcyBmb3Ig
ZGV0ZXJtaW5pbmcgYmFzZSBhbmQgc2l6ZSBvZiBzdG9sZW4KbWVtb3J5LgoKTm90ZSB0aGF0IHRo
aXMgcGF0Y2ggZGVwZW5kcyBvbiBjb21taXQgMDg4M2Q2M2IxOWJiCigiZHJtL2k5MTUvYWRsX3M6
IEFkZCBBREwtUyBwbGF0Zm9ybSBpbmZvIGFuZCBQQ0kgaWRzIikKCkJzcGVjOiA1MjA1NQpCc3Bl
YzogNDk1ODkKQnNwZWM6IDQ5NjM2CgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IHg4NkBrZXJuZWwub3JnCkNjOiBJbmdvIE1v
bG5hciA8bWluZ29AcmVkaGF0LmNvbT4sCkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRy
b25peC5kZT4sCkNjOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQHN1c2UuZGU+ClNpZ25lZC1vZmYtYnk6
IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRp
dHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBhcmNoL3g4Ni9rZXJuZWwv
ZWFybHktcXVpcmtzLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYyBiL2FyY2gveDg2L2tlcm5l
bC9lYXJseS1xdWlya3MuYwppbmRleCBhNGI1YWYwM2RjYzEuLjZlZGQxZTJlZThhZiAxMDA2NDQK
LS0tIGEvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jCisrKyBiL2FyY2gveDg2L2tlcm5l
bC9lYXJseS1xdWlya3MuYwpAQCAtNTUxLDYgKzU1MSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCBpbnRlbF9lYXJseV9pZHNbXSBfX2luaXRjb25zdCA9IHsKIAlJTlRFTF9F
SExfSURTKCZnZW4xMV9lYXJseV9vcHMpLAogCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5
X29wcyksCiAJSU5URUxfUktMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKKwlJTlRFTF9BRExTX0lE
UygmZ2VuMTFfZWFybHlfb3BzKSwKIH07CiAKIHN0cnVjdCByZXNvdXJjZSBpbnRlbF9ncmFwaGlj
c19zdG9sZW5fcmVzIF9fcm9fYWZ0ZXJfaW5pdCA9IERFRklORV9SRVNfTUVNKDAsIDApOwotLSAK
Mi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
