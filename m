Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9958B106783
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 09:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E5589C80;
	Fri, 22 Nov 2019 08:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B02489C51;
 Fri, 22 Nov 2019 08:07:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CF1FA0138;
 Fri, 22 Nov 2019 08:07:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Nov 2019 08:07:39 -0000
Message-ID: <157441005952.23771.18430321321801412964@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191122070238.576748-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191122070238.576748-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Use_a_ctor_for_TYPESAFE=5FBY=5FRCU_i915=5Frequest_=28re?=
 =?utf-8?b?djIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSBhIGN0b3IgZm9yIFRZ
UEVTQUZFX0JZX1JDVSBpOTE1X3JlcXVlc3QgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTgyNC8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1t
YXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDAyIC0+IFBhdGNod29y
a18xNTM4OQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMgZm91
bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUzODkvaW5kZXguaHRtbAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0t
LQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUzODkgdGhhdCBj
b21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMg
aGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmpl
Y3Rpb246CiAgICAtIGZpLWJzdy1uaWNrOiAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRF
XVsyXSAoW2ZkbyMxMDU4NzZdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MDIvZmktYnN3LW5pY2svaWd0QGk5MTVfbW9kdWxlX2xvYWRA
cmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4OS9maS1ic3ctbmljay9pZ3RA
aTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKICAqIGln
dEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAg
W1BBU1NdWzNdIC0+IFtGQUlMXVs0XSAoW2ZkbyMxMTEwNDVdIC8gW2ZkbyMxMTEwOTZdKQogICBb
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDIv
Zmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg5
L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAgCiMj
IyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13
aXRoLWZhdWx0LWluamVjdGlvbjoKICAgIC0ge2ZpLWtibC03NTYwdX06ICAgICBbSU5DT01QTEVU
RV1bNV0gKFtmZG8jMTA5OTY0XSAvIFtmZG8jMTEyMjk4XSkgLT4gW1BBU1NdWzZdCiAgIFs1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMi9maS1r
YmwtNzU2MHUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
Lmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTM4OS9maS1rYmwtNzU2MHUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdp
dGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGJhc2ljOgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtGQUlMXVs3XSAoW2ZkbyMxMDMxNjdd
KSAtPiBbUEFTU11bOF0KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDAyL2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGJhc2ljLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTM4OS9maS1pY2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BiYXNpYy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRo
aXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtm
ZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTY3CiAgW2ZkbyMxMDU4NzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDU4NzYKICBbZmRvIzEwOTk2NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk2NAogIFtmZG8jMTExMDQ1XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDQ1CiAgW2ZkbyMxMTEwOTZdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwOTYKICBbZmRv
IzExMjI5OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MjI5OAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUwIC0+IDQ0KQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLWJzdy1uMzA1MCAKICBNaXNzaW5nICAg
ICg3KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFu
IGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdl
cwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBD
SV9EUk1fNzQwMiAtPiBQYXRjaHdvcmtfMTUzODkKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAg
Q0lfRFJNXzc0MDI6IGQ1ZjA4NDVjNGI5MmM1ODI2ZDYzYjc2Zjg5ODY2NDkyZTA5MzVjMWIgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTI5OTogNjVm
ZWQ2YTc5YWRlYTE0ZjdiZWY2ZDU1NTMwZGE0N2Q3NzMxZDM3MCBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTM4OTog
N2FlYTQzNjlkOGIyOTViNjI4MGQzMzI3ZTdjNjEyNDRmZTZiN2JiZSBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjdhZWE0
MzY5ZDhiMiBkcm0vaTkxNTogVXNlIGEgY3RvciBmb3IgVFlQRVNBRkVfQllfUkNVIGk5MTVfcmVx
dWVzdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg5L2luZGV4Lmh0bWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
