Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3369910CA7C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854ED6E83A;
	Thu, 28 Nov 2019 14:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9B286E839;
 Thu, 28 Nov 2019 14:42:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3530A00E6;
 Thu, 28 Nov 2019 14:42:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>
Date: Thu, 28 Nov 2019 14:42:20 -0000
Message-ID: <157495214066.21454.17320982383051269097@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <874kyonvpd.fsf@intel.com>
In-Reply-To: <874kyonvpd.fsf@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Provide_ddc_symlink_in_hdmi_connector_sysfs_directory?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFByb3ZpZGUgZGRjIHN5bWxp
bmsgaW4gaGRtaSBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5ClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDE2MS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBT
dW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gaGRt
aSBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1
Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0
by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkNPTkZM
SUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMKZXJyb3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4K
aGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVk
IHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDAxIGRybS9pOTE1OiBQcm92aWRlIGRkYyBzeW1saW5r
IGluIGhkbWkgY29ubmVjdG9yIHN5c2ZzIGRpcmVjdG9yeQpXaGVuIHlvdSBoYXZlIHJlc29sdmVk
IHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8g
c2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUg
dGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9y
dCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
