Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089E72D139
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 23:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18896E029;
	Tue, 28 May 2019 21:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7FFB6E027;
 Tue, 28 May 2019 21:53:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFA85A0019;
 Tue, 28 May 2019 21:53:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 May 2019 21:53:17 -0000
Message-ID: <20190528215317.27713.6825@emeril.freedesktop.org>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190528200655.11605-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Fix_off-by-one_in_looking_up_icl_sseu_slice?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBvZmYtYnktb25lIGlu
IGxvb2tpbmcgdXAgaWNsIHNzZXUgc2xpY2UKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzYxMjc2LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0K
CkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYxNTkgLT4gUGF0Y2h3b3JrXzEzMTE5
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3VuZC4KCiAg
RXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzExOS8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhl
IGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMTE5IHRoYXQgY29tZSBmcm9tIGtub3duIGlz
c3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9jb250ZXh0czoKICAgIC0gZmktc2tsLWd2dGR2bTogICAgICBb
UEFTU11bMV0gLT4gW0RNRVNHLUZBSUxdWzJdIChbZmRvIzExMDIzNV0pCiAgIFsxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE1OS9maS1za2wtZ3Z0
ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHMuaHRtbAogICBbMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTE5L2ZpLXNrbC1n
dnRkdm0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9jb250ZXh0cy5odG1sCgogIAogIHtuYW1lfTog
VGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVu
IGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VT
UywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTA4NjAyXTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NjAyCiAgW2ZkbyMxMTAyMzVdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAyMzUKCgpQYXJ0aWNp
cGF0aW5nIGhvc3RzICg0OCAtPiA0NikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgog
IEFkZGl0aW9uYWwgKDUpOiBmaS1pY2wtdTIgZmktaWNsLXUzIGZpLWljbC15IGZpLWljbC1ndWMg
ZmktaWNsLWRzaSAKICBNaXNzaW5nICAgICg3KTogZmkta2JsLXNvcmFrYSBmaS1pbGstbTU0MCBm
aS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktYnl0LWNsYXBwZXIgZmkt
YmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9E
Uk1fNjE1OSAtPiBQYXRjaHdvcmtfMTMxMTkKCiAgQ0lfRFJNXzYxNTk6IGYyODBkMzNhZTg5NTYy
NGEyNDdkNDQzMWVjZTA5YjUwODhlNmYwMjEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNTAyMTogMmQ2NGNiNjgwODA3NWIwZDA2OTZhODlkMmNlMjkw
MjIwZTZlZmY4ZSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xMzExOTogZDA1YjAzY2YxYjI5MjU4NDBiYzNhMTU1MzFi
N2JkNjA4OTZlMzc0OSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmQwNWIwM2NmMWIyOSBkcm0vaTkxNTogRml4IG9mZi1i
eS1vbmUgaW4gbG9va2luZyB1cCBpY2wgc3NldSBzbGljZQoKPT0gTG9ncyA9PQoKRm9yIG1vcmUg
ZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMTE5LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
