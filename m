Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B46D2E8F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 18:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E0A6EB85;
	Thu, 10 Oct 2019 16:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57A2C6EB7E;
 Thu, 10 Oct 2019 16:26:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53614A73C7;
 Thu, 10 Oct 2019 16:26:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Oct 2019 16:26:32 -0000
Message-ID: <20191010162632.23081.44068@emeril.freedesktop.org>
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191010134849.9078-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Honour_O=5FNONBLOCK_before_throttling_execbuf_submissio?=
 =?utf-8?q?ns?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEhvbm91ciBPX05PTkJMT0NL
IGJlZm9yZSB0aHJvdHRsaW5nIGV4ZWNidWYgc3VibWlzc2lvbnMKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3ODUwLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcwNTYgLT4gUGF0
Y2h3b3JrXzE0NzQ5Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9u
cyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9pbmRleC5odG1sCgpLbm93biBpc3N1ZXMKLS0tLS0t
LS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDc0OSB0
aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElz
c3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXM6
CiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAo
W2ZkbyMxMDc3MThdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNTYvZmktYmxiLWU2ODUwL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2lj
LXM0LWRldmljZXMuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVu
ZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXJlYWQt
d3JpdGU6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJO
XVs0XSAoW2ZkbyMxMDc3MjRdKQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvZmktaWNsLXUzL2lndEBnZW1fbW1hcF9ndHRAYmFzaWMt
cmVhZC13cml0ZS5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvZmktaWNsLXUzL2lndEBnZW1fbW1hcF9ndHRAYmFzaWMt
cmVhZC13cml0ZS5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2Vt
X2N0eF9zd2l0Y2hAbGVnYWN5LXJlbmRlcjoKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBbSU5D
T01QTEVURV1bNV0gKFtmZG8jMTAzOTI3XSAvIFtmZG8jMTExMzgxXSkgLT4gW1BBU1NdWzZdCiAg
IFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1
Ni9maS1ieHQtZHNpL2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKICAgWzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0
OS9maS1ieHQtZHNpL2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKCiAgKiBp
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb246CiAgICAtIHtm
aS1pY2wtZHNpfTogICAgICAgW0lOQ09NUExFVEVdWzddIChbZmRvIzEwNzcxM10pIC0+IFtQQVNT
XVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcwNTYvZmktaWNsLWRzaS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVs
dC1pbmplY3Rpb24uaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L2ZpLWljbC1kc2kvaWd0QGk5MTVfbW9kdWxlX2xvYWRA
cmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2V4ZWNsaXN0czoKICAgIC0ge2ZpLWljbC1ndWN9OiAgICAgICBbSU5DT01QTEVURV1bOV0g
KFtmZG8jMTA3NzEzXSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvZmktaWNsLWd1Yy9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L2ZpLWljbC1ndWMvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAqIGlndEBrbXNfYWRkZmJfYmFzaWNAdW51c2Vk
LW1vZGlmaWVyOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVsxMV0gKFtm
ZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L2ZpLWljbC11My9pZ3RAa21zX2FkZGZiX2Jh
c2ljQHVudXNlZC1tb2RpZmllci5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L2ZpLWljbC11My9pZ3RAa21zX2FkZGZi
X2Jhc2ljQHVudXNlZC1tb2RpZmllci5odG1sCgogICogaWd0QGttc19idXN5QGJhc2ljLWZsaXAt
YToKICAgIC0ge2ZpLXRnbC11Mn06ICAgICAgICBbRE1FU0ctV0FSTl1bMTNdIChbZmRvIzExMTYw
MF0pIC0+IFtQQVNTXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzA1Ni9maS10Z2wtdTIvaWd0QGttc19idXN5QGJhc2ljLWZsaXAt
YS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0NzQ5L2ZpLXRnbC11Mi9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwK
CiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZh
c3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzE1XSAoW2ZkbyMxMTE0MDddKSAt
PiBbRkFJTF1bMTZdIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pCiAgIFsxNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvZmkta2JsLTc1
MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMTZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9maS1rYmwt
NzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogIAogIHtuYW1lfTog
VGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVu
IGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VT
UywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDYxMDddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYxMDcKICBbZmRvIzEw
NzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcx
MwogIFtmZG8jMTA3NzE4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzE4CiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzExMTA0NV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA0NQogIFtmZG8jMTExMDk2XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDk2CiAgW2ZkbyMxMTEz
ODFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzODEK
ICBbZmRvIzExMTQwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMTQwNwogIFtmZG8jMTExNjAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExNjAwCiAgW2ZkbyMxMTE4NjddOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4NjcKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1
NCAtPiA0NykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDcp
OiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmkt
aWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0t
LS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzcw
NTYgLT4gUGF0Y2h3b3JrXzE0NzQ5CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83
MDU2OiA1ODllZDljMzA5ZmY0YzI2NTMyYmJjN2FjNmRjY2U5NTE0YmJkMWU5IEAgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMjA6IDFlMzhlMzJkNzIx
MjEwYTc4MDE5OGM4MjkzYTZiOGM4ZTg4MWRmNjggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ3NDk6IDFiZjVlNzgy
OTdiMmQ4MjllMTQ4N2Q1NjNiNDUxODEwMTdhNjY0NjIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgoxYmY1ZTc4Mjk3YjIg
ZHJtL2k5MTU6IEhvbm91ciBPX05PTkJMT0NLIGJlZm9yZSB0aHJvdHRsaW5nIGV4ZWNidWYgc3Vi
bWlzc2lvbnMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9pbmRleC5odG1sCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
