Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 225994DB94
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108D66E7EF;
	Thu, 20 Jun 2019 20:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A0116E7DB;
 Thu, 20 Jun 2019 20:48:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 228E5A010C;
 Thu, 20 Jun 2019 20:48:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Jun 2019 20:48:30 -0000
Message-ID: <20190620204830.12825.11252@emeril.freedesktop.org>
References: <20190620183705.31006-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620183705.31006-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Defer_address_space_cleanup_to_an_RCU_worker_=28rev?=
 =?utf-8?q?2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBEZWZlciBhZGRyZXNz
IHNwYWNlIGNsZWFudXAgdG8gYW4gUkNVIHdvcmtlciAocmV2MikKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMzU2LwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYzMTYgLT4gUGF0
Y2h3b3JrXzEzMzczCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTMzNzMgYWJzb2x1dGVseSBuZWVkIHRv
IGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBj
aGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTMzNzMsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0
aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVj
ZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNzMvCgpQb3NzaWJsZSBuZXcg
aXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdl
cyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMzNzM6CgojIyMg
SUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2NvbnRleHRzOgogICAgLSBmaS1iZHctZ3Z0ZHZtOiAgICAgIFtQ
QVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzE2L2ZpLWJkdy1ndnRkdm0vaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9jb250ZXh0cy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNzMvZmktYmR3LWd2dGR2bS9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2NvbnRleHRzLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHM6CiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAg
W0RNRVNHLUZBSUxdWzNdIChbZmRvIzExMDIzNV0pIC0+IFtJTkNPTVBMRVRFXVs0XQogICBbM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTYvZmkt
c2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2NvbnRleHRzLmh0bWwKICAgWzRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM3My9m
aS1za2wtZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHMuaHRtbAoKICAKS25v
d24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQ
YXRjaHdvcmtfMTMzNzMgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2NvbnRleHRzOgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ct
RkFJTF1bNl0gKFtmZG8jMTEwMjM1XSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzE2L2ZpLWtibC14MTI3NS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2NvbnRleHRzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM3My9maS1rYmwteDEyNzUvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9jb250ZXh0cy5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFz
dDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChbZmRv
IzEwOTQ4NV0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjMxNi9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFz
dC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzNzMvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZh
c3QuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWM6CiAgICAtIGZp
LWljbC11MjogICAgICAgICAgW1BBU1NdWzldIC0+IFtGQUlMXVsxMF0gKFtmZG8jMTAzMTY3XSkK
ICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MzE2L2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAg
WzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzNzMvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAoK
ICAqIGlndEBrbXNfcHNyQHNwcml0ZV9wbGFuZV9vbm9mZjoKICAgIC0gZmktaWNsLXUzOiAgICAg
ICAgICBbUEFTU11bMTFdIC0+IFtETUVTRy1XQVJOXVsxMl0gKFtmZG8jMTA3NzI0XSkgKzEgc2lt
aWxhciBpc3N1ZQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MzE2L2ZpLWljbC11My9pZ3RAa21zX3BzckBzcHJpdGVfcGxhbmVfb25vZmYu
aHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzM3My9maS1pY2wtdTMvaWd0QGttc19wc3JAc3ByaXRlX3BsYW5lX29ub2ZmLmh0
bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X21vZHVsZV9sb2Fk
QHJlbG9hZDoKICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBbSU5DT01QTEVURV1bMTNdIChbZmRv
IzEwNzcxOF0pIC0+IFtQQVNTXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxNi9maS1ibGItZTY4NTAvaWd0QGk5MTVfbW9kdWxl
X2xvYWRAcmVsb2FkLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNzMvZmktYmxiLWU2ODUwL2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6CiAgICAt
IGZpLWljbC1kc2k6ICAgICAgICAgW0lOQ09NUExFVEVdWzE1XSAoW2ZkbyMxMDc3MTNdIC8gW2Zk
byMxMDg4NDBdKSAtPiBbUEFTU11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTYvZmktaWNsLWRzaS9pZ3RAaTkxNV9wbV9ycG1A
bW9kdWxlLXJlbG9hZC5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzczL2ZpLWljbC1kc2kvaWd0QGk5MTVfcG1fcnBtQG1v
ZHVsZS1yZWxvYWQuaHRtbAoKICAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MThd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgKICBb
ZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNzcyNAogIFtmZG8jMTA4ODQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA4ODQwCiAgW2ZkbyMxMDk0ODVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0ODUKICBbZmRvIzExMDIzNV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDIzNQoKClBhcnRpY2lwYXRpbmcg
aG9zdHMgKDUzIC0+IDQ0KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2lu
ZyAgICAoOSk6IGZpLWtibC1zb3Jha2EgZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJzdy1u
MzA1MCBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1ieXQtY2xhcHBlciBm
aS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJ
X0RSTV82MzE2IC0+IFBhdGNod29ya18xMzM3MwoKICBDSV9EUk1fNjMxNjogOGMxY2Y1YmQyNzMw
N2U2Y2IwY2RjMDJhMWFjOWQyOWJjZGNiNTA1NiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eAogIElHVF81MDY0OiAyMjg1MGMxOTA2NTUwZmI5N2I0MDVjMDE5Mjc1
ZGNmYjM0YmU4Y2Y3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50
ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMzczOiBlMWQxOWRlMGQzYTdlMTUyMTQ3NGUzNGRh
NDMyNWQzOTBhYWEwM2IxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKZTFkMTlkZTBkM2E3IGRybS9pOTE1L2d0dDogRGVm
ZXIgYWRkcmVzcyBzcGFjZSBjbGVhbnVwIHRvIGFuIFJDVSB3b3JrZXIKCj09IExvZ3MgPT0KCkZv
ciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzM3My8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
