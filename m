Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FA8308C5E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698846EB41;
	Fri, 29 Jan 2021 18:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310C86EB41
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:29:54 +0000 (UTC)
IronPort-SDR: +t6rPymeoyrMztFh9wJLZqawzo4euOxMDMMfcf4EHttDCPaHSSbgCtTBm2v/P6TTEN7LxtaU8Z
 I4OAIHgpYQQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131267"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131267"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:53 -0800
IronPort-SDR: VzSXsRrAPFNAD2UXfPoS4GC/2A81Ly3S6Xu8Z6FU2Wx3shsPBGar1hf6KX0FKBrMlw2LunioQo
 rO17kjCyObdw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952889"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:52 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:37 -0800
Message-Id: <20210129182945.217078-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] Final set of patches for ADLS enabling
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

VGhlc2UgYXJlIHRoZSBmaW5hbCBzZXQgb2YgcGF0Y2hlcyByZXF1aXJlZCBmb3IgZW5hYmxpbmcg
QURMLVMuIFRoZQpwYXRjaGVzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gcGxhdGZvcm0gYW5kIGFsbCBk
aXNwbGF5IG91dHB1dHMgYXJlCndvcmtpbmcuCgp2MjogQWRkcmVzcyBtaW5vciBuaXRwaWNrcyBw
cm92aWRlZCBieSBtZHJvcGVyLgoKUGF0Y2ggImRybS9pOTE1L2FkbF9zOiBNQ0hCQVIgbWVtb3J5
IGluZm8gcmVnaXN0ZXJzIGFyZSBtb3ZlZCIKY2FuIGJlIGlnbm9yZWQgYXMgSm9zZSdzIHN1Ym1p
c3Npb24gCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODYwOTIvCmFs
bG93cyB1cyB0byBmZXRjaCBkcmFtIGluZm8gZnJvbSBwY29kZS4KCkN1cnJlbnRseSBpbiBoaXMg
c2VyaWVzLCBJIGRpZG4ndCBzZWUgcmVtb3ZhbCBvZgpza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5m
bygpLiBTbyBqdXN0IHRvIGdldCBjbGVhciByZXN1bHRzIGZyb20gQ0ksIEkKaGF2ZSBpbmNsdWRl
ZCB0aGUgTUNIQkFSIHBhdGNoIGluIHNlcmllcy4KCnYzOgotIERyb3AgTUNIQkFSIHBhdGNoIGFu
ZCByZWJhc2Ugb24gbGF0ZXN0IGRybS10aXAgdGhhdCBhZGRzIHN1cHBvcnQgZm9yCiAgcmVhZGlu
ZyBEUkFNIGluZm8gdGhyb3VnaCBQQ09ERS4KLSBSZXZlcnQgdG8gU1RFUF9BMCBmb3IgRGlzcGxh
eSBXQSBhcyB0aGVyZSBpcyBubyBTVEVQX0ExIGZvciBBRExTLgoKQWRpdHlhIFN3YXJ1cCAoMik6
CiAgZHJtL2k5MTUvYWRsX3M6IEFkZCBkaXNwbGF5IFdBcyBmb3IgQURMLVMKICBkcm0vaTkxNS9h
ZGxfczogQWRkIEdUIGFuZCBDVFggV0FzIGZvciBBREwtUwoKQW51c2hhIFNyaXZhdHNhICgxKToK
ICBkcm0vaTkxNS9hZGxfczogTG9hZCBETUMKCkpvc8OpIFJvYmVydG8gZGUgU291emEgKDEpOgog
IGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTgoKTHVjYXMg
RGUgTWFyY2hpICgxKToKICBkcm0vaTkxNS9hZGxfczogQWRkIHBvd2VyIHdlbGxzCgpNYXR0IFJv
cGVyICgyKToKICBkcm0vaTkxNS9hZGxfczogVXBkYXRlIFBIWV9NSVNDIHByb2dyYW1taW5nCiAg
ZHJtL2k5MTUvYWRsX3M6IFJlLXVzZSBUR0wgR3VDL0h1QyBmaXJtd2FyZQoKVGVqYXMgVXBhZGh5
YXkgKDEpOgogIGRybS9pOTE1L2FkbF9zOiBVcGRhdGUgbWVtb3J5IGJhbmR3aWR0aCBwYXJhbWV0
ZXJzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAgICAgIHwgMTEg
KysrKystCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgICAgfCAx
MiArKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jICAgICAg
fCAxMCArKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAg
ICB8ICA5ICsrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
ICAgfCAgNiArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
ICAgfCAzNCArKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jICAgICAgfCAgNCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgICAgICB8ICAzICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
ICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYyAgICAgIHwgIDggKysrLS0KIDEwIGZpbGVzIGNoYW5nZWQsIDcwIGluc2VydGlvbnMo
KyksIDI5IGRlbGV0aW9ucygtKQoKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
