Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6582E13D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 17:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748666E087;
	Wed, 29 May 2019 15:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 622B26E086;
 Wed, 29 May 2019 15:37:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AF4EA008C;
 Wed, 29 May 2019 15:37:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 May 2019 15:37:14 -0000
Message-ID: <20190529153714.29223.37904@emeril.freedesktop.org>
References: <20190529093407.31697-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190529093407.31697-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Avoid_overflowing_the_WC_stash?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBBdm9pZCBvdmVyZmxv
d2luZyB0aGUgV0Mgc3Rhc2gKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzYxMzAxLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBM
b2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYxNjMgLT4gUGF0Y2h3b3JrXzEzMTI1Cj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0t
LS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwg
VVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzEyNS8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMg
Zm91bmQgaW4gUGF0Y2h3b3JrXzEzMTI1IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMj
IyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGk5MTVfcG1f
cnBtQG1vZHVsZS1yZWxvYWQ6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1BBU1NdWzFdIC0+
IFtGQUlMXVsyXSAoW2ZkbyMxMDg1MTFdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNjMvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9y
cG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMjUvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9y
cG1AbW9kdWxlLXJlbG9hZC5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBp
Z3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzOgogICAgLSBmaS1pY2wtdTM6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVszXSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bNF0KICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTYzL2Zp
LWljbC11My9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKICAgWzRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEy
NS9maS1pY2wtdTMvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlcy5odG1sCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0ge2ZpLWljbC1kc2l9
OiAgICAgICBbRkFJTF1bNV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzZdCiAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE2My9maS1pY2wt
ZHNpL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAogICBbNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTI1L2ZpLWlj
bC1kc2kvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCgogIAojIyMjIFdh
cm5pbmdzICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3Nhbml0eWNoZWNrOgogICAg
LSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0g
KFtmZG8jMTA3NzI0XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MTYzL2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3Nhbml0
eWNoZWNrLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzEyNS9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9zYW5p
dHljaGVjay5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRo
aXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtm
ZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTY3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA4NTExXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTExCiAgW2ZkbyMxMDkxMDBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkxMDAKCgpQYXJ0
aWNpcGF0aW5nIGhvc3RzICg1MCAtPiA0NSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CgogIEFkZGl0aW9uYWwgKDEpOiBmaS1nZGctNTUxIAogIE1pc3NpbmcgICAgKDYpOiBmaS1pbGst
bTU0MCBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYnl0LWNsYXBw
ZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4
OiBDSV9EUk1fNjE2MyAtPiBQYXRjaHdvcmtfMTMxMjUKCiAgQ0lfRFJNXzYxNjM6IDFiMDA1Mzcw
YTE4ODExYzdlZTNmYzJhNDc3YTdiMWRkNzRjZmYxMWQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTAyNDogZjQxNDc1NmJlMmFjNTdlMTk0OTE5OTcz
ZGE3Yjg2NjQ0YmE2MTI0MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBw
L2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xMzEyNTogMDFlMjFmZWIwZmM0YzAwM2I4ODZi
ZmIzYjc1YjFkMzg5MzU0NjMwNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjAxZTIxZmViMGZjNCBkcm0vaTkxNS9ndHQ6
IEF2b2lkIG92ZXJmbG93aW5nIHRoZSBXQyBzdGFzaAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0
YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMTI1LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
