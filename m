Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F2B219EF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 16:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1420189624;
	Fri, 17 May 2019 14:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59FE789624;
 Fri, 17 May 2019 14:45:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 528C3A011F;
 Fri, 17 May 2019 14:45:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Fri, 17 May 2019 14:45:48 -0000
Message-ID: <20190517144548.9057.44548@emeril.freedesktop.org>
References: <20190517140617.31187-1-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190517140617.31187-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Tolerate_file_owned_GEM_contexts_on_hot_unbind?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFRvbGVyYXRlIGZpbGUgb3du
ZWQgR0VNIGNvbnRleHRzIG9uIGhvdCB1bmJpbmQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwNzgyLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkg
PT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYwOTUgLT4gUGF0Y2h3b3JrXzEz
MDMxCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
ClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3VuZC4K
CiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzAzMS8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUg
dGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMDMxIHRoYXQgY29tZSBmcm9tIGtub3du
IGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICog
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaHN3LXBlcHB5OiAg
ICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdIChbZmRvIzEwMjYxNF0pCiAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjA5NS9maS1o
c3ctcGVwcHkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwMzEv
ZmktaHN3LXBlcHB5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAoKICAK
ICBbZmRvIzEwMjYxNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMjYxNAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDQ1KQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLWJ3ci0yMTYwIAogIE1pc3Np
bmcgICAgKDgpOiBmaS1rYmwtc29yYWthIGZpLWlsay1tNTQwIGZpLWJ5dC1zcXVhd2tzIGZpLWJz
dy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ic3cta2Vma2EgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNh
bXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9EUk1fNjA5
NSAtPiBQYXRjaHdvcmtfMTMwMzEKCiAgQ0lfRFJNXzYwOTU6IDliY2M1MDczMzZmMzRjYmY1OThm
M2U3ODEwNzVkZWNlYzY0OGYxNzIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgKICBJR1RfNDk5NjogNmZlNWQyNTRlYzFiOWI0N2Q2MTQwOGUxYjQ5YTczMzk4NzZi
ZjFlNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10
b29scwogIFBhdGNod29ya18xMzAzMTogMDMwYzVkODExZmY0N2M3ZjYzYzM5YWNlZWIxZjZmZTY0
ZWFkNjhiZSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09
IExpbnV4IGNvbW1pdHMgPT0KCjAzMGM1ZDgxMWZmNCBkcm0vaTkxNTogVG9sZXJhdGUgZmlsZSBv
d25lZCBHRU0gY29udGV4dHMgb24gaG90IHVuYmluZAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0
YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMDMxLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
