Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFFCB49A7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 10:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564576EB66;
	Tue, 17 Sep 2019 08:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E0276EB65;
 Tue, 17 Sep 2019 08:37:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48ABBA0119;
 Tue, 17 Sep 2019 08:37:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Sep 2019 08:37:44 -0000
Message-ID: <20190917083744.26305.21534@emeril.freedesktop.org>
References: <20190917080029.27632-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190917080029.27632-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Only_apply_a_rmw_mmio_update_if_the_value_changes?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE9ubHkgYXBwbHkgYSBybXcg
bW1pbyB1cGRhdGUgaWYgdGhlIHZhbHVlIGNoYW5nZXMKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2ODAwLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1h
cnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY5MDYgLT4gUGF0Y2h3b3Jr
XzE0NDI3Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3Vu
ZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDQyNy8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NDI3IHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgog
ICogaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXI6CiAgICAtIGZpLWljbC11MjogICAg
ICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMx
MTEzODFdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5MDYvZmktaWNsLXUyL2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0
bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQyNy9maS1pY2wtdTIvaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXIuaHRt
bAoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBmaS1pbGstNjUwOiAg
ICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctV0FSTl1bNF0gKFtmZG8jMTA2Mzg3XSkKICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTA2L2Zp
LWlsay02NTAvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAogICBbNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDI3L2ZpLWls
ay02NTAvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAoKICAqIGlndEBnZW1fbW1h
cF9ndHRAYmFzaWMtc2hvcnQ6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzVdIC0+
IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwNi9maS1p
Y2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zaG9ydC5odG1sCiAgIFs2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjcvZmktaWNsLXUz
L2lndEBnZW1fbW1hcF9ndHRAYmFzaWMtc2hvcnQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfaGFuZ2NoZWNrOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBb
SU5DT01QTEVURV1bOF0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA4NTY5XSkKICAgWzddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTA2L2ZpLWljbC11
My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFs4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjcvZmktaWNsLXUz
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKCiAgCiMjIyMgUG9zc2libGUg
Zml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0gZmkt
Ynh0LWRzaTogICAgICAgICBbSU5DT01QTEVURV1bOV0gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1Nd
WzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY5MDYvZmktYnh0LWRzaS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAog
ICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQyNy9maS1ieHQtZHNpL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCgog
ICogaWd0QGdlbV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQ6CiAgICAtIHtmaS10Z2wtdX06
ICAgICAgICAgW0ZBSUxdWzExXSAoW2ZkbyMxMTE1NjJdIC8gW2ZkbyMxMTE1OTddKSAtPiBbUEFT
U11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5MDYvZmktdGdsLXUvaWd0QGdlbV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQu
aHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDQyNy9maS10Z2wtdS9pZ3RAZ2VtX2V4ZWNfZmVuY2VAbmItYXdhaXQtZGVmYXVs
dC5odG1sCgogICogaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlOgogICAgLSBmaS1p
Y2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVsxM10gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1Nd
WzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTA2L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXJlYWQtd3JpdGUuaHRt
bAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQyNy9maS1pY2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlLmh0
bWwKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQ6CiAgICAtIGZpLWljbC11MzogICAg
ICAgICAgW0RNRVNHLVdBUk5dWzE1XSAoW2ZkbyMxMDc3MjRdIC8gW2ZkbyMxMTEyMTRdKSAtPiBb
UEFTU11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY5MDYvZmktaWNsLXUzL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1s
CiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NDI3L2ZpLWljbC11My9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAoKICAq
IGlndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWM6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1NL
SVBdWzE3XSAoW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSAtPiBbUEFTU11bMThdICsyIHNp
bWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5MDYvZmktc2tsLTY3NzBocS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1j
Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0MjcvZmktc2tsLTY3NzBocS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1jLmh0
bWwKCiAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1kcG1zOgogICAgLSBmaS1za2wtNjc3
MGhxOiAgICAgIFtTS0lQXVsxOV0gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzIwXSArMjMgc2lt
aWxhciBpc3N1ZXMKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjkwNi9maS1za2wtNjc3MGhxL2lndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZz
LWRwbXMuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDQyNy9maS1za2wtNjc3MGhxL2lndEBrbXNfZmxpcEBiYXNpYy1mbGlw
LXZzLWRwbXMuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBU
aGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0
dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBb
ZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwMzkyNwogIFtmZG8jMTA2Mzg3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA2Mzg3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA4NTY5XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY5CiAgW2Zk
byMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDkxMDAKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc4CiAgW2ZkbyMxMTEyMTRdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyMTQKICBbZmRvIzExMTM4MV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTM4MQogIFtmZG8j
MTExNTYyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NTYyCiAgW2ZkbyMxMTE1OTddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE1OTcKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1NSAtPiA0NikKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDkpOiBmaS1pbGstbTU0MCBmaS1o
c3ctNDIwMHUgZmktdGdsLXUyIGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWFwbC1ndWMg
ZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0t
LS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJN
XzY5MDYgLT4gUGF0Y2h3b3JrXzE0NDI3CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RS
TV82OTA2OiA3MmU0MDBjMmI4MjRhYjEwODkwNzYzMWZjZjg5NmQzZDIwMjBlN2Q1IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxODY6IDAwMDhiM2Ux
YjJjZjdhNzNiMWU5OTUwMzFjOWE3M2ZjOTdiMzVhYWQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ0Mjc6IDQ2YjAz
Y2NiMjVjYjY0ODE2NWI5M2ZlOTRlZmU5NTA2Y2MyYmRkYzMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo0NmIwM2NjYjI1
Y2IgZHJtL2k5MTU6IE9ubHkgYXBwbHkgYSBybXcgbW1pbyB1cGRhdGUgaWYgdGhlIHZhbHVlIGNo
YW5nZXMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyNy9pbmRleC5odG1sCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
