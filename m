Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5748322B85
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 14:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6A86E99D;
	Tue, 23 Feb 2021 13:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB626E835
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 13:34:57 +0000 (UTC)
IronPort-SDR: EgBp5xHT8W/6rizE5f2t6WtEUFzawr5jJA8IH5XAtroIxzByQRKgokCHCLToAB3Wv1FpHXPoWJ
 KpOssNqwy/TQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184098066"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="184098066"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 05:34:56 -0800
IronPort-SDR: 4DLAWZBQH2PfIdH5tDkUPJnaxbV2B1AHvlOSgJhTRLQLEcq3ImMccndaAhfoCe+0SqQ4OXjCJV
 jmZ5KLlpKt9w==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="403167685"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 05:34:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210217195803.cihhahgvybgj45lu@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1613580193.git.jani.nikula@intel.com>
 <bf2f1c9527e17310d69a818e09a7212df4ada347.1613580193.git.jani.nikula@intel.com>
 <20210217172300.6uuie7js4a4cpqvl@ldmartin-desk1>
 <20210217172805.xjtrptege3qpbunn@ldmartin-desk1> <87zh02a2ze.fsf@intel.com>
 <20210217195803.cihhahgvybgj45lu@ldmartin-desk1>
Date: Tue, 23 Feb 2021 15:34:51 +0200
Message-ID: <87wnuyewlg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/bios: limit default outputs
 to ports A through F
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNyBGZWIgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIFdlZCwgRmViIDE3LCAyMDIxIGF0IDA5OjQ5OjU3UE0gKzAyMDAs
IEphbmkgTmlrdWxhIHdyb3RlOgo+Pk9uIFdlZCwgMTcgRmViIDIwMjEsIEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToKPj4+IE9uIFdlZCwgRmViIDE3LCAy
MDIxIGF0IDA5OjIzOjAwQU0gLTA4MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4+Pk9uIFdl
ZCwgRmViIDE3LCAyMDIxIGF0IDA3OjAzOjM0UE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+
Pj4+PldpdGggdGhlIGRlZmF1bHRzIGxpbWl0ZWQgdG8gbm9uLVR5cGVDIHBvcnRzIGluIGNvbW1p
dCA4MjhjY2IzMWNmNDEKPj4+Pj4oImRybS9pOTE1L2ljbDogQWRkIFR5cGVDIHBvcnRzIG9ubHkg
aWYgVkJUIGlzIHByZXNlbnQiKSwgdGhpcyBzaG91bGQgYmUKPj4+Pj5hIG5vLW9wLCBidXQgY2xh
cmlmaWVzIHRoZSBjb2RlIGFuZCBwcmVwYXJlcyBmb3Igc3Vic2VxdWVudCBjaGFuZ2VzLgo+Pj4+
Pgo+Pj4+PkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4+
Pj5DYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+
Pj5TaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Pj4+
Pi0tLQo+Pj4+PmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMyAr
Ky0KPj4+Pj4xIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
Pj4+Cj4+Pj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPj4+Pj5p
bmRleCBlOWNiMTVhYTJmNWEuLmI5ZDk5MzI0ZDY2ZCAxMDA2NDQKPj4+Pj4tLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+Pj4+PisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4+Pj4+QEAgLTIwNTcsMTEgKzIwNTcsMTIg
QEAgc3RhdGljIHZvaWQKPj4+Pj5pbml0X3ZidF9taXNzaW5nX2RlZmF1bHRzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+Pj4+PnsKPj4+Pj4JZW51bSBwb3J0IHBvcnQ7Cj4+Pj4+Kwlp
bnQgcG9ydHMgPSBQT1JUX0EgfCBQT1JUX0IgfCBQT1JUX0MgfCBQT1JUX0QgfCBQT1JUX0UgfCBQ
T1JUX0Y7Cj4+Pj4KPj4+Pgo+Pj4+SSdkIG5vdCBzcHJlYWQgdGhlIGtub3dsZWRnZSBvZiB3aGF0
IHBvcnQgdXNlcyB0YyBwaHkgbGlrZSB0aGlzLgo+Pj4+SXQncyBwYWluZnVsIHRvIG1haW50YWlu
Lgo+Pgo+PlVtbSwgdGhpcyB3YXNuJ3QgbWVhbnQgdG8gaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRo
IHRjLCByZWFsbHkuIEdyYW50ZWQsCj4+dGhlIGNvbW1pdCBtZXNzYWdlIGlzIG1pc2xlYWRpbmcu
Cj4KPiBvaywgbWFrZXMgbW9yZSBzZW5zZSBub3cuIEkgZG9uJ3Qgd2FudCB1cyB0byBrZWVwIHVw
ZGF0aW5nIHRoaXMgZnVuY3Rpb24KPiB3aGVuIHRoZSBwb3J0cyBjaGFuZ2Ugb24gbmV3IHBsYXRm
b3Jtcy4KCkFncmVlZC4KCj4KPj4KPj4+Cj4+PiBhbHNvLCBub3Qgc3VyZSBob3cgdGhpcyBjbGFy
aWZpZXMgdGhpbmdzIGlmIFBPUlRfVEMxIGFsaWFzZXMgUE9SVF9ELAo+Pj4gc28gSSdkIGp1c3Qg
ZHJvcCB0aGlzIHBhdGNoCj4+Cj4+VGhlIHBvaW50IGlzIHRoYXQgSSdkIGxpa2UgdG8gcmVkdWNl
IHRoZSBudW1iZXIgb2YgcG9ydHMgc2V0IHVwIGJ5Cj4+ZGVmYXVsdCwgcGVyaGFwcyBldmVuIGZ1
cnRoZXIgdGhhbiB0aGlzLiBJdCdzIGEgYml0IHNpbGx5IHRvIGdlbmVyYXRlIDkKPj5kdW1teSBj
aGlsZCBkZXZpY2VzIG9uIGNlcnRhaW4gcGxhdGZvcm1zIHdoZW4gdGhlcmUncyBubyBWQlQuCj4K
PiBvay4gU28gd2hhdCB3b3VsZCBiZSB0aGUgZGV2aWNlcyB3aXRob3V0IHZidD8gSSByZW1lbWJl
ciByZWx5aW5nIG9uIHRoaXMKPiBmb3IgZS5nLiBkZzEgYmVmb3JlIHdlIGNvdWxkIHJlYWQgaXQu
CgpJZiBpdCB3ZXJlIGp1c3QgZm9yIGVuYWJsaW5nLCBJJ2Qgc3RhcnQgc29tZSBpZ3QgdG9vbCB0
byBnZW5lcmF0ZSBhCmJhc2ljIFZCVCB0byB1c2Ugd2l0aCBpOTE1LnZidF9maXJtd2FyZSBhbmQg
dGhlIGZpcm13YXJlIGxvYWRlci4gSXQncwp0aGUgZXhpc3RpbmcgcHJvZHVjdHMgdGhhdCBlbmRl
ZCB1cCBkZXBlbmRpbmcgb24gdGhlIGRlZmF1bHRzIHRoYXQgYXJlCnRoZSByZWFsIGlzc3VlIEkg
dGhpbmsuCgo+IFdoYXQgb3RoZXIgcGxhdGZvcm1zIHNob3VsZCB3ZSBjYXJlIGFib3V0PyBBbmQg
Zm9yIHRob3NlLCBzaG91bGQgd2UKPiByZWFsbHkgY2FyZSBhYm91dCBwb3J0cyBFIGFuZCBGIG9y
IGNvdWxkIHdlIHJlZHVjZSBpdCB0bywgc2F5IHRoZSBmaXJzdAo+IDQ/CgpJSVJDIHRoZXkgd2Vy
ZSBzb21lIEhhc3dlbGwgb3IgQnJvYWR3ZWxsIGVyYSBDaHJvbWVib29rcy4gVGhleSBwcm9iYWJs
eQpkb24ndCB1c2UgdmVyeSBtYW55IHBvcnRzLCBidXQgaW4gdGhlb3J5IGl0IGNvdWxkIGJlIEEt
RCxGIG9uIERESQpwbGF0Zm9ybXMgKEUgcmVxdWlyZXMgVkJUIGNoaWxkIGRldmljZSkuIE9uIGdl
biAxMSBpdCBjb3VsZCBiZSBBLUUsIHdpdGgKRiByZXF1aXJpbmcgVkJUIGNoaWxkIGRldmljZS4K
CkEtRiBjb3ZlcnMgYWxsIGNhc2VzLCBidXQgZG9lcyBub3QgdHJ5IHRvIGNyZWF0ZSBHLUkgb3Ig
YW55IGZ1cnRoZXIKZnV0dXJlIHBvcnRzLgoKCkJSLApKYW5pLgoKCj4KPiB0aGFua3MKPiBMdWNh
cyBEZSBNYXJjaGkKPgo+Pgo+Pgo+PkJSLAo+PkphbmkuCj4+Cj4+Pgo+Pj4gTHVjYXMgRGUgTWFy
Y2hpCj4+Pgo+Pj4+THVjYXMgRGUgTWFyY2hpCj4+Pj4KPj4+Pj4KPj4+Pj4JaWYgKCFIQVNfRERJ
KGk5MTUpICYmICFJU19DSEVSUllWSUVXKGk5MTUpKQo+Pj4+PgkJcmV0dXJuOwo+Pj4+Pgo+Pj4+
Pi0JZm9yX2VhY2hfcG9ydChwb3J0KSB7Cj4+Pj4+Kwlmb3JfZWFjaF9wb3J0X21hc2tlZChwb3J0
LCBwb3J0cykgewo+Pj4+PgkJc3RydWN0IGRkaV92YnRfcG9ydF9pbmZvICppbmZvID0KPj4+Pj4J
CQkmaTkxNS0+dmJ0LmRkaV9wb3J0X2luZm9bcG9ydF07Cj4+Pj4+CQllbnVtIHBoeSBwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShpOTE1LCBwb3J0KTsKPj4+Pj4tLQo+Pj4+PjIuMjAuMQo+Pj4+Pgo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cj4+Cj4+LS0gCj4+SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
