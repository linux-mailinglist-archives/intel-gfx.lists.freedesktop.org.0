Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7CFED2D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 01:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF37989356;
	Mon, 29 Apr 2019 23:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7E289356
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 23:12:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 16:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="135483230"
Received: from aswarup-desk.jf.intel.com ([10.54.75.32])
 by orsmga007.jf.intel.com with ESMTP; 29 Apr 2019 16:12:37 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 16:08:11 -0700
Message-Id: <20190429230811.9983-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9] drm/i915/icl: Set GCP_COLOR_INDICATION only
 for 10/12 bit deep color
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgoKdjI6IEZp
eCBjb21taXQgbXNnIHRvIHJlZmxlY3Qgd2h5IGlzc3VlIG9jY3VycyhKYW5pKQpTZXQgR0NQX0NP
TE9SX0lORElDQVRJT04gb25seSB3aGVuIHdlIHNldCAxMC8xMiBiaXQgZGVlcCBjb2xvci4KCkNo
YW5naW5nIHNldHRpbmdzIGZyb20gMTAvMTIgYml0IGRlZXAgY29sb3IgdG8gOCBiaXQoJiB2aWNl
IHZlcnNhKQpkb2Vzbid0IHdvcmsgY29ycmVjdGx5IHVzaW5nIHhyYW5kciBtYXggYnBjIHByb3Bl
cnR5LiBXaGVuIHdlCmNvbm5lY3QgYSBtb25pdG9yIHdoaWNoIHN1cHBvcnRzIGRlZXAgY29sb3Is
IHRoZSBoaWdoZXN0IGRlZXAgY29sb3IKc2V0dGluZyBpcyBzZWxlY3RlZDsgd2hpY2ggc2V0cyBH
Q1BfQ09MT1JfSU5ESUNBVElPTi4gV2hlbiB3ZSBjaGFuZ2UKdGhlIHNldHRpbmcgdG8gOCBiaXQg
Y29sb3IsIHdlIHN0aWxsIHNldCBHQ1BfQ09MT1JfSU5ESUNBVElPTiB3aGljaApkb2Vzbid0IGFs
bG93IHRoZSBzd2l0Y2ggYmFjayB0byA4IGJpdCBjb2xvci4KCnYzLDQ6IEFkZCBjb21tZW50cyAm
IGRyb3AgY2hhbmdlcyBpbiBpbnRlbF9oZG1pX2NvbXB1dGVfY29uZmlnKFZpbGxlKQpTaW5jZSBI
U1crLCBHQ1BfQ09MT1JfSU5ESUNBVElPTiBpcyBub3QgcmVxdWlyZWQgZm9yIDhicGMuCgpEcm9w
IHRoZSBjaGFuZ2VzIGluIGludGVsX2hkbWlfY29tcHV0ZV9jb25maWcgYXMgZGVzaXJlZF9icHAK
aXMgbmVlZGVkIHRvIGNoYW5nZSB2YWx1ZXMgZm9yIHBpcGVfYnBwIGJhc2VkIG9uIGJ3X2NvbnN0
cmFpbmVkIGZsYWcuCgp2NTogRml4IG1pc3NpbmcgbG9naWNhbCAmJiBpbiBjb25kaXRpb24gZm9y
IHNldHRpbmcgR0NQX0NPTE9SX0lORElDQVRJT04uCgp2NjogRml4IGNvbW1lbnQgZm9ybWF0dGlu
ZyAoVmlsbGUpCgp2NzogQWRkIHJldmlld2VkIGJ5IFZpbGxlCgp2ODogU2V0IEdDUF9DT0xPUl9J
TkRJQ0FUSU9OIGJhc2VkIG9uIHNwZWM6CkZvciBHZW4gNy41IG9yIGxhdGVyIHBsYXRmb3Jtcywg
aW5kaWNhdGUgY29sb3IgZGVwdGggb25seSBmb3IgZGVlcApjb2xvciBtb2Rlcy4gQnNwZWM6IDgx
MzUsNzc1MSw1MDUyNAoKUHJlIERESSBwbGF0Zm9ybXMsIGluZGljYXRlIGNvbG9yIGRlcHRoIGlm
IGRlZXAgY29sb3IgaXMgc3VwcG9ydGVkCmJ5IHNpbmsuIEJzcGVjOiA3ODU0CgpFeGNlcHRpb246
IENIRVJSWVZJRVcgYmVoYXZlcyBsaWtlIFByZSBEREkgcGxhdGZvcm1zLgpCc3BlYzogMTU5NzUK
CkNoZWNrIHBpcGVfYnBwIGlzIGxlc3MgdGhhbiBicHAgKiAzIGluIGhkbWlfZGVlcF9jb2xvcl9w
b3NzaWJsZSwKdG8gbm90IHNldCAxMiBiaXQgZGVlcCBjb2xvciBmb3IgZXZlcnkgbW9kZXNldC4g
VGhpcyBmaXhlcyB0aGUgaXNzdWUKd2hlcmUgMTIgYml0IGNvbG9yIHdhcyBzZWxlY3RlZCBldmVu
IHdoZW4gdXNlciBzZWxlY3RlZCAxMCBiaXQuKFZpbGxlKQoKdjk6IE1haW50YWluIGEgY29uc2lz
dGVudCBiZWhhdmlvciBmb3IgYWxsIHBsYXRmb3JtcyBhbmQgc3VwcG9ydApHQ1BfQ09MT1JfSU5E
SUNBVElPTiBvbmx5IHdoZW4gd2UgYXJlIGluIGRlZXAgY29sb3IgbW9kZS4gUmVtb3ZlCmhkbWlf
c2lua19pc19kZWVwX2NvbG9yKCkgLSBubyBsb25nZXIgbmVlZGVkIGFzIGNoZWNraW5nIHBpcGVf
YnBwID4gMjQKdGFrZXMgY2FyZSBvZiB0aGUgZGVlcCBjb2xvciBtb2RlIHNjZW5hcmlvLgoKU2Vw
YXJhdGUgcGF0Y2ggZm9yIGZpeGluZyBzd2l0Y2ggZnJvbSAxMiBiaXQgdG8gMTAgYml0IGRlZXAg
Y29sb3IKbW9kZS4KCkNvLWRldmVsb3BlZC1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1
cEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5
bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1
cEBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2hkbWkuYyB8IDE3ICsrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9oZG1pLmMKaW5kZXggZTEwMDVkN2I3NWZkLi45OTFlYjM2MmVmNGYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9oZG1pLmMKQEAgLTg1NiwxOSArODU2LDYgQEAgc3RhdGljIHZvaWQgZzR4X3NldF9p
bmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgJmNydGNf
c3RhdGUtPmluZm9mcmFtZXMuaGRtaSk7CiB9CiAKLXN0YXRpYyBib29sIGhkbWlfc2lua19pc19k
ZWVwX2NvbG9yKGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQot
ewotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBjb25uX3N0YXRlLT5jb25uZWN0
b3I7Ci0KLQkvKgotCSAqIEhETUkgY2xvbmluZyBpcyBvbmx5IHN1cHBvcnRlZCBvbiBnNHggd2hp
Y2ggZG9lc24ndAotCSAqIHN1cHBvcnQgZGVlcCBjb2xvciBvciBHQ1AgaW5mb2ZyYW1lcyBhbnl3
YXkgc28gbm8KLQkgKiBuZWVkIHRvIHdvcnJ5IGFib3V0IG11bHRpcGxlIEhETUkgc2lua3MgaGVy
ZS4KLQkgKi8KLQotCXJldHVybiBjb25uZWN0b3ItPmRpc3BsYXlfaW5mby5icGMgPiA4OwotfQot
CiAvKgogICogRGV0ZXJtaW5lIGlmIGRlZmF1bHRfcGhhc2U9MSBjYW4gYmUgaW5kaWNhdGVkIGlu
IHRoZSBHQ1AgaW5mb2ZyYW1lLgogICoKQEAgLTk3Myw4ICs5NjAsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9oZG1pX2NvbXB1dGVfZ2NwX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAljcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSB8PQogCQlpbnRlbF9oZG1pX2lu
Zm9mcmFtZV9lbmFibGUoSERNSV9QQUNLRVRfVFlQRV9HRU5FUkFMX0NPTlRST0wpOwogCi0JLyog
SW5kaWNhdGUgY29sb3IgZGVwdGggd2hlbmV2ZXIgdGhlIHNpbmsgc3VwcG9ydHMgZGVlcCBjb2xv
ciAqLwotCWlmIChoZG1pX3NpbmtfaXNfZGVlcF9jb2xvcihjb25uX3N0YXRlKSkKKwkvKiBJbmRp
Y2F0ZSBjb2xvciBpbmRpY2F0aW9uIGZvciBkZWVwIGNvbG9yIG1vZGUgKi8KKwlpZiAoY3J0Y19z
dGF0ZS0+cGlwZV9icHAgPiAyNCkKIAkJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5nY3AgfD0gR0NQ
X0NPTE9SX0lORElDQVRJT047CiAKIAkvKiBFbmFibGUgZGVmYXVsdF9waGFzZSB3aGVuZXZlciB0
aGUgZGlzcGxheSBtb2RlIGlzIHN1aXRhYmx5IGFsaWduZWQgKi8KLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
