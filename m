Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B49E0C03
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 20:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EE36E8D3;
	Tue, 22 Oct 2019 18:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09D536E8D3;
 Tue, 22 Oct 2019 18:53:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0428AA0137;
 Tue, 22 Oct 2019 18:53:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@mblankhorst.nl>
Date: Tue, 22 Oct 2019 18:53:20 -0000
Message-ID: <20191022185320.9304.23483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B01/14=5D_drm/i915=3A_Rework_watermark_rea?=
 =?utf-8?q?dout_to_use_plane_api_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE0
XSBkcm0vaTkxNTogUmV3b3JrIHdhdGVybWFyayByZWFkb3V0IHRvIHVzZSBwbGFuZSBhcGkgKHJl
djMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODE1
NC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IFJl
d29yayB3YXRlcm1hcmsgcmVhZG91dCB0byB1c2UgcGxhbmUgYXBpCkFwcGx5aW5nOiBkcm0vaTkx
NTogSW50cm9kdWNlIGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGVfYWZ0ZXJfY2hlY2soKSwg
djIuCkFwcGx5aW5nOiBkcm0vaTkxNTogSGFuZGxlIGEgZmV3IG1vcmUgY2FzZXMgZm9yIGNydGMg
aHcvdWFwaSBzcGxpdCwgdjIuCkFwcGx5aW5nOiBkcm0vaTkxNTogQWRkIGFsaWFzZXMgZm9yIHVh
cGkgYW5kIGh3IHRvIGNydGNfc3RhdGUKQXBwbHlpbmc6IGRybS9pOTE1OiBQZXJmb3JtIG1hbnVh
bCBjb252ZXJzaW9ucyBmb3IgY3J0YyB1YXBpL2h3IHNwbGl0LCB2Mi4KQXBwbHlpbmc6IGRybS9p
OTE1OiBQZXJmb3JtIGF1dG9tYXRlZCBjb252ZXJzaW9ucyBmb3IgY3J0YyB1YXBpL2h3IHNwbGl0
LCBiYXNlIC0+IGh3LgpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVl
Li4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpNCWRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCk0JZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCk0J
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKTQlkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJn
ZS4uLgpBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpBdXRvLW1l
cmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQXV0by1tZXJnaW5nIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkF1dG8tbWVyZ2luZyBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCkF1dG8tbWVyZ2luZyBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQXV0by1tZXJnaW5nIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkNPTkZMSUNUIChjb250ZW50KTog
TWVyZ2UgY29uZmxpY3QgaW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKZXJyb3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4KaGludDogVXNlICdnaXQg
YW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZh
aWxlZCBhdCAwMDA2IGRybS9pOTE1OiBQZXJmb3JtIGF1dG9tYXRlZCBjb252ZXJzaW9ucyBmb3Ig
Y3J0YyB1YXBpL2h3IHNwbGl0LCBiYXNlIC0+IGh3LgpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRo
aXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tp
cCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhl
IG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
