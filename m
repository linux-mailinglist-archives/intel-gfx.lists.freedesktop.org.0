Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60337E5FB2
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 23:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBACC6E148;
	Sat, 26 Oct 2019 21:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C4436E156;
 Sat, 26 Oct 2019 21:15:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2409FA0019;
 Sat, 26 Oct 2019 21:15:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 26 Oct 2019 21:15:30 -0000
Message-ID: <20191026211530.22473.94530@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191026202032.4371-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191026202032.4371-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Split_memory=5Fregion_initialisation_into_its_own_file_?=
 =?utf-8?b?KHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFNwbGl0IG1lbW9yeV9yZWdp
b24gaW5pdGlhbGlzYXRpb24gaW50byBpdHMgb3duIGZpbGUgKHJldjIpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODIwMC8KU3RhdGUgOiBzdWNjZXNz
Cgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MTkzIC0+
IFBhdGNod29ya18xNTAwNgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVz
c2lvbnMgZm91bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMDYvaW5kZXguaHRtbAoKS25vd24gaXNzdWVzCi0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUw
MDYgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMj
IyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtc29mdHBpbjoK
ICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdIChb
ZmRvIzEwNzcyNF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTkzL2ZpLWljbC11My9pZ3RAZ2VtX2V4ZWNf
cmVsb2NAYmFzaWMtc29mdHBpbi5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMDYvZmktaWNsLXUzL2lndEBnZW1fZXhlY19y
ZWxvY0BiYXNpYy1zb2Z0cGluLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdj
aGVjazoKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVd
WzRdIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwODU2OV0pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE5My9maS1pY2wtdTIvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDA2L2ZpLWljbC11Mi9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMK
CiAgKiBpZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtdGhyZWFkczoKICAgIC0ge2ZpLXRnbC11Mn06
ICAgICAgICBbSU5DT01QTEVURV1bNV0gKFtmZG8jMTExNzQ3XSkgLT4gW1BBU1NdWzZdCiAgIFs1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE5My9m
aS10Z2wtdTIvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXRocmVhZHMuaHRtbAogICBbNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDA2L2Zp
LXRnbC11Mi9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtdGhyZWFkcy5odG1sCgogICogaWd0QGdl
bV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXI6CiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW0lO
Q09NUExFVEVdWzddIChbZmRvIzExMDU2Nl0gLyBbZmRvIzExMTM4MV0pIC0+IFtQQVNTXVs4XQog
ICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcx
OTMvZmktY21sLXUyL2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKICAgWzhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAw
Ni9maS1jbWwtdTIvaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXIuaHRtbAoKICAqIGln
dEBnZW1fbW1hcF9ndHRAYmFzaWMtc21hbGwtYm8tdGlsZWR4OgogICAgLSBmaS1pY2wtdTM6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVs5XSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bMTBdICsxIHNp
bWlsYXIgaXNzdWUKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MTkzL2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXNtYWxsLWJv
LXRpbGVkeC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MDA2L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXNt
YWxsLWJvLXRpbGVkeC5odG1sCgogICogaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtczoK
ICAgIC0gZmktc2tsLTY3NzBocTogICAgICBbU0tJUF1bMTFdIChbZmRvIzEwOTI3MV0pIC0+IFtQ
QVNTXVsxMl0gKzI2IHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxOTMvZmktc2tsLTY3NzBocS9pZ3RAa21zX2Zs
aXBAYmFzaWMtZmxpcC12cy1kcG1zLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMDYvZmktc2tsLTY3NzBocS9pZ3RAa21z
X2ZsaXBAYmFzaWMtZmxpcC12cy1kcG1zLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGJhc2ljOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtGQUlMXVsxM10gKFtmZG8j
MTAzMTY3XSkgLT4gW1BBU1NdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTkzL2ZpLWljbC11My9pZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGJhc2ljLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMDYvZmktaWNsLXUzL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBw
cmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAg
IHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxV
UkUpLgoKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEwODU2OV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2OQogIFtmZG8j
MTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5
MjcxCiAgW2ZkbyMxMTA1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTA1NjYKICBbZmRvIzExMTM4MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTM4MQogIFtmZG8jMTExNzQ3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzQ3CiAgW2ZkbyMxMTE4MzFdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MzEKCgpQYXJ0aWNp
cGF0aW5nIGhvc3RzICg0OSAtPiA0MikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgog
IE1pc3NpbmcgICAgKDcpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3Mg
ZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxk
IGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBM
aW51eDogQ0lfRFJNXzcxOTMgLT4gUGF0Y2h3b3JrXzE1MDA2CgogIENJLTIwMTkwNTI5OiAyMDE5
MDUyOQogIENJX0RSTV83MTkzOiA4ZDUyN2I3NzJlYzMzMDgwMzczYTc4M2M5YTNjOTBlYmI1OGI5
ZTg4IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUy
NDM6IDY5ZDAwZDlkYWY5NjQ1Y2Q2Y2Q2NzUxZTc4YTQxMTE2NDZiZjEyODQgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtf
MTUwMDY6IDAwNjcxNTE5Mjc2Y2M1YjUzZmUzOGYyN2RmZTZiMjE2ZmVjZGFmMDIgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09
CgowMDY3MTUxOTI3NmMgZHJtL2k5MTU6IFNwbGl0IG1lbW9yeV9yZWdpb24gaW5pdGlhbGlzYXRp
b24gaW50byBpdHMgb3duIGZpbGUKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAwNi9p
bmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
