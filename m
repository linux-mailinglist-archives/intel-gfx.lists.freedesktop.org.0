Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D54F3733
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 19:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948D36E4E3;
	Thu,  7 Nov 2019 18:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21FD96E4E3;
 Thu,  7 Nov 2019 18:28:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BD17A00E9;
 Thu,  7 Nov 2019 18:28:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2019 18:28:00 -0000
Message-ID: <157315128008.21752.14415969664785153641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107142417.11107-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191107142417.11107-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/5=5D_drm=3A_Add_=5F=5Fdrm=5Fatomic=5Fhelp?=
 =?utf-8?b?ZXJfY3J0Y19zdGF0ZV9yZXNldCgpICYgY28u?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtOiBBZGQgX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3N0YXRlX3Jlc2V0KCkgJiBjby4KVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5MTI5LwpTdGF0
ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lf
RFJNXzcyODggLT4gUGF0Y2h3b3JrXzE1MTc1Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoK
ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUxNzUgYWJz
b2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5r
IHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2Vz
CiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTUxNzUsIHBsZWFzZSBub3RpZnkgeW91ciBidWcg
dGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3
aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxNzUv
aW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzE1MTc1OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSBy
ZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1
bHQtaW5qZWN0aW9uOgogICAgLSBmaS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1F
U0ctV0FSTl1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83Mjg4L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQt
d2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTc1L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9t
b2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKICAKS25vd24gaXNz
dWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTUxNzUgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMj
IwoKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9leGVjX2NyZWF0ZUBiYXNp
YzoKICAgIC0ge2ZpLXRnbC11fTogICAgICAgICBbSU5DT01QTEVURV1bM10gKFtmZG8jMTExNzM2
XSkgLT4gW1BBU1NdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzI4OC9maS10Z2wtdS9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljLmh0
bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTE3NS9maS10Z2wtdS9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljLmh0bWwKCiAgKiBp
Z3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAg
IFtGQUlMXVs1XSAoW2ZkbyMxMTE0MDddKSAtPiBbUEFTU11bNl0KICAgWzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mjg4L2ZpLWtibC03NTAwdS9p
Z3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTE3NS9maS1rYmwtNzUwMHUv
aWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogICogaWd0QGttc19waXBlX2Ny
Y19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYToKICAgIC0gZmktc2tsLTY3MDBrMjogICAg
ICBbSU5DT01QTEVURV1bN10gKFtmZG8jMTA0MTA4XSkgLT4gW1BBU1NdWzhdCiAgIFs3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI4OC9maS1za2wt
NjcwMGsyL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEuaHRt
bAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MTc1L2ZpLXNrbC02NzAwazIvaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJl
YWQtY3JjLXBpcGUtYS5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNz
ZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhl
IHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSku
CgogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBbZmRvIzExMTczNl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczNgoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDUxIC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAo
Nik6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBm
aS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0t
CgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzI4OCAtPiBQ
YXRjaHdvcmtfMTUxNzUKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcyODg6IDQx
ZWIyN2YzOWU2MGQ4MjJlZGM3NWU2YWFlYjQxNmI3MmJjMWRjZjIgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTI2NjogNjBhNjc2NTM2MTNjODdhNjll
YmVjZjEyY2YwMGFhMzYyYWM4NzU5NyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hv
cmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTE3NTogZmM5Y2Q0YzE2ZjgzYTRk
ZmFkODFjNjUwY2EyYmU5YTgzY2FmMTE1YyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmZjOWNkNGMxNmY4MyBkcm0vaTkx
NTogSW50cm9kdWNlIGludGVsX3BsYW5lX3N0YXRlX3Jlc2V0KCkKZjc3ZjFkMGZlY2E3IGRybS9p
OTE1OiBJbnRyb2R1Y2UgaW50ZWxfY3J0Y19zdGF0ZV9yZXNldCgpCjFhZjhjNTZmMjgwZSBkcm0v
aTkxNTogSW50cm9kdWNlIGludGVsX2NydGNfe2FsbG9jLCBmcmVlfSgpCjllOTk2ODM0ZWNhNiBk
cm0vaTkxNTogcy9pbnRlbF9jcnRjL2NydGMvIGluIGludGVsX2NydGNfaW5pdCgpCmIwMGVmZGI0
ZjQxMiBkcm06IEFkZCBfX2RybV9hdG9taWNfaGVscGVyX2NydGNfc3RhdGVfcmVzZXQoKSAmIGNv
LgoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTc1L2luZGV4Lmh0bWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
