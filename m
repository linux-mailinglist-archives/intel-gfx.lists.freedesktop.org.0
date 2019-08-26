Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB4F9D9AA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 00:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0D56E32C;
	Mon, 26 Aug 2019 22:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC926E32C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 22:55:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 15:55:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,435,1559545200"; d="scan'208";a="174357060"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2019 15:55:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 15:55:38 -0700
Message-Id: <20190826225540.11987-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] New cdclk values for gen11+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGJzcGVjIHdhcyByZWNlbnRseSB1cGRhdGVkIHdpdGggbmV3IGNkY2xrIHZhbHVlcyAzMjRt
aHogYW5kCjMyNi40bWh6LiAgVGhlc2UgY2xvY2sgdmFsdWVzIGFyZSB0aGUgZmlyc3Qgb25lcyBv
biBnZW4xMSsgdGhhdCB1c2UgYQpDRDJYIGNsb2NrIGRpdmlkZXIgb2YgLzIgcmF0aGVyIHRoYW4g
LzEgc28gd2UgbmVlZCBhIGxpdHRsZSBiaXQgb2YgZXh0cmEKbG9naWMgdG8gcHJvZ3JhbSB0aGUg
ZGl2aWRlciBwcm9wZXJseSBiZWZvcmUgYWN0dWFsbHkgZW5hYmxpbmcgdGhlbS4KCk5vdGUgdGhh
dCB0aGUgYnNwZWMgZG9lcyBoYXZlIGEgbm90ZSBuZXh0IHRvIHRoZSAvMSBkaXZpZGVyIGJpdHMg
c2F5aW5nCiJVc2UgdGhpcyBzZXR0aW5nIGZvciBhbGwgQ0QgZnJlcXVlbmNpZXMiIG9uIGdlbjEx
LiAgSSBzdXNwZWN0IHRoYXQgdGhpcwpub3RlIGlzIGxlZnQgb3ZlciBmcm9tIGJlZm9yZSB0aGVz
ZSBuZXcgZnJlcXVlbmNpZXMgd2VyZSBhZGRlZCwgYnV0IEknbQpzdGlsbCBjb25maXJtaW5nIHRo
YXQgd2l0aCB0aGUgaGFyZHdhcmUgdGVhbS4gIFRoZSBub3RlIGRvZXMgbm90IGFwcGVhcgpvbiB0
aGUgVEdMIGJzcGVjLgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpN
YXR0IFJvcGVyICgyKToKICBkcm0vaTkxNTogQWxsb3cgLzIgQ0QyWCBkaXZpZGVyIG9uIGdlbjEx
KwogIGRybS9pOTE1OiBBZGQgMzI0bWh6IGFuZCAzMjYuNG1oeiBjZGNsa3MgZm9yIGdlbjExKwoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDk4ICsrKysrKysr
Ky0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAg
ICB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25z
KC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
