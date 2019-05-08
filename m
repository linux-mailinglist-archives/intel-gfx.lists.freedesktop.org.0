Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CAD17FD4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 20:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F36897E0;
	Wed,  8 May 2019 18:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 237C4897E0;
 Wed,  8 May 2019 18:34:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EA5AA0073;
 Wed,  8 May 2019 18:34:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Wed, 08 May 2019 18:34:39 -0000
Message-ID: <20190508183439.23002.5082@emeril.freedesktop.org>
References: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_HDR_Metadata_Parsing_and_handling_in_DRM_layer_=28rev9?=
 =?utf-8?q?=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIEhEUiBNZXRhZGF0YSBQYXJzaW5nIGFu
ZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIgKHJldjkpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8yNTA5MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmIxNDI0OWFlM2IxYSBkcm06IEFk
ZCBIRFIgc291cmNlIG1ldGFkYXRhIHByb3BlcnR5Ci06NzA6IENIRUNLOlBBUkVOVEhFU0lTX0FM
SUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM3MDogRklM
RTogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jOjczMzoKKwkJcmV0ID0gZHJtX2F0
b21pY19yZXBsYWNlX3Byb3BlcnR5X2Jsb2JfZnJvbV9pZChkZXYsCisJCQkJJnN0YXRlLT5oZHJf
b3V0cHV0X21ldGFkYXRhLAoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywg
MTUzIGxpbmVzIGNoZWNrZWQKZDI3OGY0NTYxMzE4IGRybTogQWRkIHJlZmVyZW5jZSBjb3VudGlu
ZyBvbiBIRFIgbWV0YWRhdGEgYmxvYgo3ZDUzYzIzNzQ1MmEgZHJtOiBQYXJzZSBIRFIgbWV0YWRh
dGEgaW5mbyBmcm9tIEVESUQKNDIxZmIzYzFlZTQ3IGRybTogRW5hYmxlIEhEUiBpbmZvZnJhbWUg
c3VwcG9ydAphNGNhYzUyMjRkMTQgZHJtL2k5MTU6IEF0dGFjaCBIRFIgbWV0YWRhdGEgcHJvcGVy
dHkgdG8gY29ubmVjdG9yCmU1OWUyMjI1YzYwOCBkcm0vaTkxNTogV3JpdGUgSERSIGluZm9mcmFt
ZSBhbmQgc2VuZCB0byBwYW5lbAphM2JkMzE0ODc0MmIgZHJtOiBBZGQgSExHIEVPVEYKMjA2ODA0
MGRjZDNjIGRybS9pOTE1OiBFbmFibGUgaW5mb2ZyYW1lcyBvbiBHTEsrIGZvciBIRFIKLTo1NDog
V0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNTQ6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6ODE5MDoKKyNkZWZpbmUgR0xLX1RWSURFT19E
SVBfRFJNX0RBVEEodHJhbnMsIGkpCV9NTUlPX1RSQU5TMih0cmFucywgX0dMS19WSURFT19ESVBf
RFJNX0RBVEFfQSArIChpKSAqIDQpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hl
Y2tzLCA4MSBsaW5lcyBjaGVja2VkCjJjMGNkNTYzZWY2NCBkcm0vaTkxNTpFbmFibGVkIE1vZGVz
ZXQgd2hlbiBIRFIgSW5mb2ZyYW1lIGNoYW5nZXMKLTo4NjogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJ
R05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzg2OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmM6ODMzOgorCWlmICghaXNfZW90Zl9z
dXBwb3J0ZWQoaGRyX21ldGFkYXRhLT5oZG1pX21ldGFkYXRhX3R5cGUxLmVvdGYsCisJICAgIGNv
bm5lY3Rvci0+aGRyX3NpbmtfbWV0YWRhdGEuaGRtaV90eXBlMS5lb3RmKSkgewoKdG90YWw6IDAg
ZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgNjAgbGluZXMgY2hlY2tlZAphMmM5ZTRjYTg4
MGQgZHJtL2k5MTU6IFNldCBJbmZvZnJhbWUgZm9yIG5vbiBtb2Rlc2V0IGNhc2UgZm9yIEhEUgow
YzhlYzAyNWEwZmYgZHJtL2k5MTU6IEFkZGVkIERSTSBJbmZvZnJhbWUgaGFuZGxpbmcgZm9yIEJZ
VC9DSFQKNDBjY2FlZGNkMjA4IHZpZGVvL2hkbWk6IEFkZCBVbnBhY2sgZnVuY3Rpb24gZm9yIERS
TSBpbmZvZnJhbWUKOGJkNzQ1NmJjYzdmIGRybS9pOTE1OiBBZGQgc3RhdGUgcmVhZG91dCBmb3Ig
RFJNIGluZm9mcmFtZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
