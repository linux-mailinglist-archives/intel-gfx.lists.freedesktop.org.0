Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2942B10A535
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 21:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720B76E487;
	Tue, 26 Nov 2019 20:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0D4E6E192;
 Tue, 26 Nov 2019 20:15:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA185A0093;
 Tue, 26 Nov 2019 20:15:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 26 Nov 2019 20:15:06 -0000
Message-ID: <157479930682.11655.7835385151038850639@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Double_check_vma_placement_upon_gaining_the_vm_lock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERvdWJsZSBjaGVjayB2bWEg
cGxhY2VtZW50IHVwb24gZ2FpbmluZyB0aGUgdm0gbG9jawpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzAwNTcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3Vt
bWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzQyNiAtPiBQYXRjaHdv
cmtfMTU0NDAKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBj
aGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNTQ0MCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUK
ICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5n
ZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xNTQ0MCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0K
ICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZh
bHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ0MC9pbmRleC5odG1sCgpQb3NzaWJs
ZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24g
Y2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU0NDA6
CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2hlYXJ0YmVhdDoKICAgIC0gZmktc2tsLTY2MDB1
OiAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLUZBSUxdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9maS1za2wtNjYwMHUvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9oZWFydGJlYXQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQwL2ZpLXNrbC02NjAw
dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2hlYXJ0YmVhdC5odG1sCgogIAojIyMjIFN1cHBy
ZXNzZWQgIyMjIwoKICBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBt
YWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3Zl
cmFsbCByZXN1bHQuCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAg
ICAtIHtmaS1rYmwtNzU2MHV9OiAgICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVszXQogICBbM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQw
L2ZpLWtibC03NTYwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCgog
IApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5k
IGluIFBhdGNod29ya18xNTQ0MCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdU
IGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBpOTE1X3BtX3JwbUBt
b2R1bGUtcmVsb2FkOgogICAgLSBmaS1za2wtNjc3MGhxOiAgICAgIFtQQVNTXVs0XSAtPiBbRE1F
U0ctV0FSTl1bNV0gKFtmZG8jMTEyMjYxXSkKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfcG1f
cnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQwL2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfcG1f
cnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2Nv
bnRleHRzOgogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQQVNTXVs2XSAtPiBbSU5DT01QTEVU
RV1bN10gKFtmZG8jMTA2MDcwXSAvIFtmZG8jMTExNzAwXSkKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L2ZpLWNmbC1ndWMvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQwL2ZpLWNmbC1ndWMvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVs
aXVtQGRwLWNyYy1mYXN0OgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtQQVNTXVs4XSAtPiBb
RkFJTF1bOV0gKFtmZG8jMTA5NjM1IF0gLyBbZmRvIzExMDM4N10pCiAgIFs4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9maS1pY2wtdTIvaWd0
QGttc19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQwL2ZpLWljbC11Mi9pZ3RAa21z
X2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMK
CiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb246CiAg
ICAtIHtmaS1rYmwtNzU2MHV9OiAgICAgW0lOQ09NUExFVEVdWzEwXSAoW2ZkbyMxMDk5NjRdIC8g
W2ZkbyMxMTIyOThdKSAtPiBbUEFTU11bMTFdCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvZmkta2JsLTc1NjB1L2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCiAgIFsxMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDQwL2ZpLWti
bC03NTYwdS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24u
aHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFz
aWMtczA6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMx
MDM1NThdIC8gW2ZkbyMxMDU2MDJdKSAtPiBbRE1FU0ctV0FSTl1bMTNdIChbZmRvIzEwMzU1OF0g
LyBbZmRvIzEwNTYwMl0gLyBbZmRvIzEwNTc2M10pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvZmkt
a2JsLXgxMjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwKICAgWzEzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NDAvZmkt
a2JsLXgxMjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwKCiAgKiBpZ3RAZ2Vt
X2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzOgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAg
IFtETUVTRy1XQVJOXVsxNF0gKFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA1
NzYzXSAvIFtmZG8jMTA3MTM5XSkgLT4gW0RNRVNHLVdBUk5dWzE1XSAoW2ZkbyMxMDM1NThdIC8g
W2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDcxMzldKQogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L2ZpLWtibC14MTI3NS9pZ3RAZ2VtX2V4
ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NDAvZmkta2JsLXgxMjc1L2ln
dEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXMuaHRtbAoKICAqIGlndEBrbXNfY3Vy
c29yX2xlZ2FjeUBiYXNpYy1mbGlwLWFmdGVyLWN1cnNvci1sZWdhY3k6CiAgICAtIGZpLWtibC14
MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzE2XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJd
IC8gW2ZkbyMxMDU3NjNdKSAtPiBbRE1FU0ctV0FSTl1bMTddIChbZmRvIzEwMzU1OF0gLyBbZmRv
IzEwNTYwMl0pICs0IHNpbWlsYXIgaXNzdWVzCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvZmkta2JsLXgxMjc1L2lndEBrbXNfY3Vy
c29yX2xlZ2FjeUBiYXNpYy1mbGlwLWFmdGVyLWN1cnNvci1sZWdhY3kuaHRtbAogICBbMTddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ0MC9m
aS1rYmwteDEyNzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29y
LWxlZ2FjeS5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRo
aXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtm
ZG8jMTAzNTU4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzNTU4CiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNTc2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2MwogIFtmZG8jMTA2MDcwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2MDcwCiAgW2ZkbyMxMDcxMzldOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDcxMzkKICBbZmRv
IzEwOTYzNSBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDk2MzUgCiAgW2ZkbyMxMDk5NjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDk5NjQKICBbZmRvIzExMDM4N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDM4NwogIFtmZG8jMTExNzAwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzAwCiAgW2ZkbyMxMTIyNjFdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyNjEKICBbZmRv
IzExMjI5OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MjI5OAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ5IC0+IDQ0KQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLXdobC11IAogIE1pc3NpbmcgICAgKDYp
OiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnN3LWN5YW4gZmktY3RnLXA4NjAwIGZpLWJ5
dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAg
KiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83NDI2IC0+IFBhdGNo
d29ya18xNTQ0MAoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzQyNjogYjIwNGQ3
MmQzNDg1YTE0ODQ1NmUyMDc3NjgzOTc0NzM5YjY3NWIyMSBAIGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MzEwOiBkMWVhNjJiM2Y3NTlmMTBmZjY4NjA1
NjFiYTgyZTVjNDkwMjUxMWQzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9h
cHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1NDQwOiA0N2E2OWI4NTZkZDI0NGNmNzdh
ODZiNWIwNzViOWYxOTVjZWE3NzU0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKNDdhNjliODU2ZGQyIGRybS9pOTE1OiBE
b3VibGUgY2hlY2sgdm1hIHBsYWNlbWVudCB1cG9uIGdhaW5pbmcgdGhlIHZtIGxvY2sKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ0MC9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
