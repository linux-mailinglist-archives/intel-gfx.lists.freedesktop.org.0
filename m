Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30F4DEDAD
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 15:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4826E0CF;
	Mon, 21 Oct 2019 13:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBC66E0CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 13:35:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 06:35:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="227324264"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2019 06:35:03 -0700
Date: Mon, 21 Oct 2019 09:52:12 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191021135212.GI3257@intel.com>
References: <20191018221450.26247-1-chris@chris-wilson.co.uk>
 <20191018221450.26247-2-chris@chris-wilson.co.uk>
 <20191018232412.GG3257@intel.com>
 <157144081841.13645.16302706306560552799@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157144081841.13645.16302706306560552799@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/selftests: Add coverage of
 mocs registers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBPY3QgMTksIDIwMTkgYXQgMTI6MjA6MThBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgS3VtYXIgVmFsc2FuLCBQcmF0aGFwICgyMDE5LTEwLTE5IDAwOjI0OjEz
KQo+ID4gT24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTE6MTQ6MzlQTSArMDEwMCwgQ2hyaXMgV2ls
c29uIHdyb3RlOgo+ID4gPiArc3RhdGljIGludCBjaGVja19sM2NjX3RhYmxlKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3QgdTMyICp2YWRkciwgaW50ICpvZmZzZXQpCj4gPiA+ICt7Cj4gPiA+
ICsgICAgIHUxNiB1bnVzZWRfdmFsdWUgPSB0YWJsZS0+dGFibGVbSTkxNV9NT0NTX1BURV0ubDNj
Y192YWx1ZTsKPiA+ID4gKyAgICAgdW5zaWduZWQgaW50IGk7Cj4gPiA+ICsgICAgIHUzMiBleHBl
Y3Q7Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKDEpIHsgLyogWFhYIHNraXAgTUNSIHJlYWQgYmFj
ayAqLwo+ID4gPiArICAgICAgICAgICAgICpvZmZzZXQgKz0gdGFibGUtPm5fZW50cmllcyAvIDI7
Cj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ICsgICAgIH0KPiA+IAo+ID4gSSB0
aGluayBsM2NjIHJlc2V0IHRlc3QgaXMgdmFsaWQgb25seSBmcm9tIEdlbjEyKy4gQmVmb3JlIHRo
YXQgc2luY2UgaXRzCj4gPiBsb2FkZWQgZnJvbSB0aGUgZ29sZGVuIGNvbnRleHQsIHRhYmxlIHN0
YXlzIHRoZSBzYW1lIGJldHdlZW4gcmVzZXQuCj4gCj4gVGhhdCBkb2Vzbid0IGFmZmVjdCB0aGUg
dmFsaWRpdHkgb2YgYWN0dWFsbHkgY2hlY2tpbmcgdGhhdCB0aGUgdmFsdWVzCj4gZG9uJ3QgY2hh
bmdlLiBUaGUgcHJvYmxlbSBhcyBJIHVuZGVyc3RhbmQgaXQgaXMgdGhhdCB0aGV5IGxpZSBpbnNp
ZGUgdGhlCj4gbWFnaWMgMHhiMDAgcmVnaW9uIHRoYXQgaXMgYnJvYWRjYXN0IGFjcm9zcyB0aGUg
c2xpY2VzIGFuZCBub3QKPiBhY2Nlc3NpYmxlIGZyb20gQ1MsIHNlZSBlbmdpbmVfd2FfbGlzdF92
ZXJpZnkoKSBhbmQgbWNyX3JhbmdlLiBTYWRseQo+IHVzaW5nIHRoZSBHUFUgaXMgdGhlIGNsZWFu
ZXN0IHdheSB0byBlbXVsYXRlIHVzZXJzcGFjZSBpbnRlcmFjdGlvbiB3aXRoCj4gdGhlICpHUFUq
Lgo+IC1DaHJpcwpIbW1tLi4gQnV0IGZyb20gaWd0IHRlc3Qgd2UgYXJlIHN1Ym1pdGluZyBhIHNl
Y3VyZSBCQiB0byByZWFkIHRoZSBMMwpNT0NTLiBOb3QgcXVpdGUgY2xlYXIgaG93IHRoYXQgd29y
a3MgdGhlbi4KClRoYW5rcywKUHJhdGhhcApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
