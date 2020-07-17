Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 785CB2245A1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D6B6E09F;
	Fri, 17 Jul 2020 21:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FC936E09F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:13:49 +0000 (UTC)
IronPort-SDR: 4se4tzEPD5IF0ni/3HlfZwimfZ0SCENh3WoLcRwti2RNEDHQ9U+Dg4IybvFgqSAFkDGJf/AiVh
 ATLI/tGGVE7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="211225290"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="211225290"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:13:48 -0700
IronPort-SDR: tDQVzpCcggPeVXW50DuuIqS35MSlkwPBgGEUmZhab+E2CSY05/JZVfiPipiFQgggz19vEOpeha
 l6qFNrYJOiFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="325532370"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jul 2020 14:13:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:25 +0300
Message-Id: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/20] drm/i915: Finish (de)gamma readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBnYW1tYSByZWFkb3V0IHN0dWZmIHdhcyBsZWZ0IGhhbGYgZmluaXNoZWQuIE5vIGRlZ2FtbWEK
cmVhZG91dCwgYW5kIG5vIHJlYWRvdXQgd2hhdHNvZXZlciBvbiBpdmIvYmR3L3NrbC9ieHQuCkxl
dCdzIGZpbmlzaCBpdC4gQSBiaXQgbW9yZSBpbnZvbHZlZC91Z2x5IHRoYW4gSSdkIHByZWZlcgpi
dXQgdGhlcmUgYXJlIGNlcnRhaW5seSBzb21lIGNvbXBsaWNhdGlvbnMgd2l0aCB0aGUgd2F5CnNv
bWUgb2YgdGhlIGh3IHdvcmtzLgoKVGhlcmUgYXJlIGEgZmV3IGZpeGVzL2NsZWFudXBzIGF0IHRo
ZSBzdGFydCwgYW5kIHdoaWxlIHdlJ3JlCmluIHRoZXJlIGxldCdzIGFsc28gdGhyb3cgaW4gdGhl
IDEwYml0IGdhbW1hIG1vZGUgZm9yIGdlbjIvMy4KClZpbGxlIFN5cmrDpGzDpCAoMjApOgogIGRy
bS9pOTE1OiBGaXggc3RhdGUgY2hlY2tlciBody5hY3RpdmUvaHcuZW5hYmxlIHJlYWRvdXQKICBk
cm0vaTkxNTogTW92ZSBNU1QgbWFzdGVyIHRyYW5zY29kZXIgZHVtcCBlYXJsaWVyCiAgZHJtL2k5
MTU6IEluY2x1ZGUgdGhlIExVVCBzaXplcyBpbiB0aGUgc3RhdGUgZHVtcAogIGRybS9pOTE1OiBz
L2dsa19yZWFkX2x1dF8xMC9iZHdfcmVhZF9sdXRfMTAvCiAgZHJtL2k5MTU6IFJlc2V0IGdsayBk
ZWdhbW1hIGluZGV4IGFmdGVyIHByb2dyYW1taW5nL3JlYWRvdXQKICBkcm0vaTkxNTogU2h1ZmZs
ZSBjaHZfY2dtX2dhbW1hX3BhY2soKSBhcm91bmQgYSBiaXQKICBkcm0vaTkxNTogUmVsb2NhdGUg
Q0hWIENHTSBnYW1tYSBtYXNrcwogIGRybS9pOTE1OiBBZGQgZ2xrKyBkZWdhbW1hIHJlYWRvdXQK
ICBkcm0vaTkxNTogUmVhZCBvdXQgQ0hWIENHTSBkZWdhbW1hCiAgZHJtL2k5MTU6IEFkZCBnYW1t
YS9kZWdhbW1hIHJlYWRvdXQgZm9yIGJkdysKICBkcm0vaTkxNTogRG8gZGVnYW1tYStnYW1tYSBy
ZWFkb3V0IGluIGJkdysgc3BsaXQgZ2FtbWEgbW9kZQogIGRybS9pOTE1OiBQb2xpc2ggYmR3X3Jl
YWRfbHV0XzEwKCkgYSBiaXQKICBkcm0vaTkxNTogQWRkIGdhbW1hL2RlZ2FtbSByZWFkb3V0IGZv
ciBpdmIvaHN3CiAgZHJtL2k5MTU6IFJlcGxhY2Ugc29tZSBnYW1tYV9tb2RlIGlmcyB3aXRoIHN3
aXRjaGVzCiAgZHJtL2k5MTU6IE1ha2UgaWxrX2xvYWRfbHV0cygpIGRlYWwgd2l0aCBkZWdhbW1h
CiAgZHJtL2k5MTU6IE1ha2UgaWxrX3JlYWRfbHV0cygpIGNhcGFibGUgb2YgZGVnYW1tYSByZWFk
b3V0CiAgZHJtL2k5MTU6IE1ha2UgLnJlYWRfbHV0cygpIG1hbmRhdG9yeQogIGRybS9pOTE1OiBF
eHRyYWN0IGlsa19jcnRjX2hhc19nYW1tYSgpICYgY28uCiAgZHJtL2k5MTU6IENvbXBsZXRlIHRo
ZSBnYW1tYS9kZWdhbW1hIHN0YXRlIGNoZWNraW5nCiAgZHJtL2k5MTU6IEFkZCAxMGJpdCBnYW1t
YSBtb2RlIGZvciBnZW4yLzMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMgICB8IDEwMTUgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmggICB8ICAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgICA1MCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCAgICAgICAgICAgICAgfCAgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgICAgICAgICAgICAgIHwgICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgfCAgIDQ3ICstCiA2IGZpbGVzIGNoYW5nZWQsIDk3NSBpbnNlcnRp
b25zKCspLCAxNjQgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
