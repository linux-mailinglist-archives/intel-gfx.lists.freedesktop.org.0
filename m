Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0293D7AF0
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB33C6E84C;
	Tue, 15 Oct 2019 16:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E95E6E84B;
 Tue, 15 Oct 2019 16:14:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38E29A0094;
 Tue, 15 Oct 2019 16:14:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 15 Oct 2019 16:14:03 -0000
Message-ID: <20191015161403.22843.86718@emeril.freedesktop.org>
References: <20191015132606.14349-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015132606.14349-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Flush_tasklet_submission_before_sleeping_on_i915=5Frequ?=
 =?utf-8?q?est=5Fwait?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZsdXNoIHRhc2tsZXQgc3Vi
bWlzc2lvbiBiZWZvcmUgc2xlZXBpbmcgb24gaTkxNV9yZXF1ZXN0X3dhaXQKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4MDI0LwpTdGF0ZSA6IGZhaWx1
cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcwOTYg
LT4gUGF0Y2h3b3JrXzE0ODExCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3Vz
IHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ4MTEgYWJzb2x1dGVseSBu
ZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBv
cnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9k
dWNlZCBpbiBQYXRjaHdvcmtfMTQ4MTEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBh
bGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxs
IHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MTEvaW5kZXguaHRt
bAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRo
ZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzE0ODExOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZp
LWNmbC04MTA5dTogICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1GQUlMXVsyXQogICBbMV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTYvZmktY2Zs
LTgxMDl1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgxMS9m
aS1jZmwtODEwOXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAK
S25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTQ4MTEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGJh
c2ljLXJlYWQtd3JpdGUtZGlzdGluY3Q6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1Nd
WzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlzc3VlCiAg
IFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5
Ni9maS1pY2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlLWRpc3RpbmN0Lmh0
bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDgxMS9maS1pY2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlLWRp
c3RpbmN0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAg
IC0gZmkta2JsLWd1YzogICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRv
IzExMjAwMl0pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzA5Ni9maS1rYmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRl
eHRzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDgxMS9maS1rYmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2Nv
bnRleHRzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWVkaWQtcmVhZDoKICAgIC0g
ZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChbZmRvIzEwOTQ4M10p
CiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzA5Ni9maS1pY2wtdTIvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
ODExL2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWVkaWQtcmVhZC5odG1sCgogIAoj
IyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAaTkxNV9nZXRwYXJhbXNfYmFzaWNAYmFz
aWMtZXUtdG90YWw6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzldIChb
ZmRvIzEwNzcyNF0pIC0+IFtQQVNTXVsxMF0KICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDk2L2ZpLWljbC11My9pZ3RAaTkxNV9nZXRwYXJh
bXNfYmFzaWNAYmFzaWMtZXUtdG90YWwuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgxMS9maS1pY2wtdTMvaWd0QGk5MTVf
Z2V0cGFyYW1zX2Jhc2ljQGJhc2ljLWV1LXRvdGFsLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2hhbmdjaGVjazoKICAgIC0ge2ZpLWljbC1ndWN9OiAgICAgICBbRE1FU0ctRkFJTF1b
MTFdIChbZmRvIzExMTE0NF0gLyBbZmRvIzExMTY3OF0pIC0+IFtQQVNTXVsxMl0KICAgWzExXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5Ni9maS1p
Y2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzEyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MTEvZmkt
aWNsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgogICogaWd0QGtt
c19idXN5QGJhc2ljLWZsaXAtYToKICAgIC0ge2ZpLXRnbC11Mn06ICAgICAgICBbRE1FU0ctV0FS
Tl1bMTNdIChbZmRvIzExMTYwMF0pIC0+IFtQQVNTXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5Ni9maS10Z2wtdTIvaWd0QGtt
c19idXN5QGJhc2ljLWZsaXAtYS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODExL2ZpLXRnbC11Mi9pZ3RAa21zX2J1c3lA
YmFzaWMtZmxpcC1hLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92Ymxh
bms6CiAgICAtIGZpLXNuYi0yNTIwbTogICAgICAgW0ZBSUxdWzE1XSAoW2ZkbyMxMDAzNjhdKSAt
PiBbUEFTU11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwOTYvZmktc25iLTI1MjBtL2lndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZz
LXdmX3ZibGFuay5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0ODExL2ZpLXNuYi0yNTIwbS9pZ3RAa21zX2ZsaXBAYmFzaWMt
ZmxpcC12cy13Zl92YmxhbmsuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGtt
c19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbRkFJ
TF1bMTddIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pIC0+IFtGQUlMXVsxOF0gKFtmZG8j
MTExNDA3XSkKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzA5Ni9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFz
dC5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0ODExL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1m
YXN0Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBt
ZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9m
IHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMx
MDAzNjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAz
NjgKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNzcyNAogIFtmZG8jMTA5NDgzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDgzCiAgW2ZkbyMxMTEwNDVdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwNDUKICBbZmRvIzExMTA5Nl06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA5NgogIFtmZG8jMTEx
MTQ0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTQ0
CiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE0MDcKICBbZmRvIzExMTYwMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTYwMAogIFtmZG8jMTExNjc4XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjc4CiAgW2ZkbyMxMTIwMDJdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwMDIKCgpQYXJ0aWNpcGF0
aW5nIGhvc3RzICg1MyAtPiA0NikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1p
c3NpbmcgICAgKDcpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmkt
YnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNo
YW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51
eDogQ0lfRFJNXzcwOTYgLT4gUGF0Y2h3b3JrXzE0ODExCgogIENJLTIwMTkwNTI5OiAyMDE5MDUy
OQogIENJX0RSTV83MDk2OiAyZWQwMDk5MWJlYzM2MmQxZTVmY2U4NGI2ZjA4NjNiYTQ0Yjc5ZWVl
IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMzE6
IGUyOTMwNTFmOGY5OWM3MmNiMDFkMjFlNGI3M2E1OTI4ZWEzNTFlYjMgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ4
MTE6IGMyMTZlN2JkZDg1NDU0YjE3NjlmZTZkOWQ3MjYwMGZlMmRmOWU5MmIgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgpj
MjE2ZTdiZGQ4NTQgZHJtL2k5MTU6IEZsdXNoIHRhc2tsZXQgc3VibWlzc2lvbiBiZWZvcmUgc2xl
ZXBpbmcgb24gaTkxNV9yZXF1ZXN0X3dhaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMg
c2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDgxMS9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
