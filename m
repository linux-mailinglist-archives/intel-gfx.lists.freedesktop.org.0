Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9F1C4978
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 10:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD36D6E8FE;
	Wed,  2 Oct 2019 08:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81D1F6E8F8;
 Wed,  2 Oct 2019 08:29:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AFABA0093;
 Wed,  2 Oct 2019 08:29:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Oct 2019 08:29:07 -0000
Message-ID: <20191002082907.9782.57056@emeril.freedesktop.org>
References: <20191001094526.30083-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191001094526.30083-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests=3A_Exercise_potential_false_lite-restore_=28rev6?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSBwb3RlbnRpYWwgZmFsc2UgbGl0ZS1yZXN0b3JlIChyZXY2KQpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc0MzgvClN0YXRlIDogZmFpbHVyZQoKPT0g
U3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjk4NiAtPiBQYXRj
aHdvcmtfMTQ2MjIKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93
biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDYyMiBhYnNvbHV0ZWx5IG5lZWQgdG8g
YmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xNDYyMiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRo
ZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNl
IGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYyMi9pbmRleC5odG1sCgpQb3Nz
aWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25v
d24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ2
MjI6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMK
CiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmktd2hsLXU6ICAg
ICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk4Ni9maS13aGwtdS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MjIvZmktd2hsLXUvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAqIGlndEBydW5uZXJAYWJvcnRlZDoKICAg
IC0gZmktY2ZsLTgxMDl1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzNdCiAgIFszXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MjIvZmktY2Zs
LTgxMDl1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLXdobC11OiAgICAgICAgICAg
Tk9UUlVOIC0+IFtGQUlMXVs0XQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjIyL2ZpLXdobC11L2lndEBydW5uZXJAYWJvcnRlZC5o
dG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs1XQogICBbNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjIy
L2ZpLWNtbC11Mi9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0t
LS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ2MjIg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJ
c3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXdyaXRlLW5vLXByZWZh
dWx0OgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs2XSAtPiBbRE1FU0ctV0FSTl1b
N10gKFtmZG8jMTA3NzI0XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5ODYvZmktaWNsLXUzL2lndEBnZW1f
bW1hcF9ndHRAYmFzaWMtd3JpdGUtbm8tcHJlZmF1bHQuaHRtbAogICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjIyL2ZpLWljbC11My9p
Z3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXdyaXRlLW5vLXByZWZhdWx0Lmh0bWwKCiAgKiBpZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFT
U11bOF0gLT4gW0lOQ09NUExFVEVdWzldIChbZmRvIzEwNzcxM10pCiAgIFs4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk4Ni9maS1pY2wtdTIvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjIyL2ZpLWljbC11Mi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgICAtIGZpLWNmbC1ndWM6ICAgICAg
ICAgW1BBU1NdWzEwXSAtPiBbSU5DT01QTEVURV1bMTFdIChbZmRvIzExMDk3N10pCiAgIFsxMF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5ODYvZmkt
Y2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFsxMV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjIyL2Zp
LWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1j
bWwtdTI6ICAgICAgICAgIFtQQVNTXVsxMl0gLT4gW0lOQ09NUExFVEVdWzEzXSAoW2ZkbyMxMTA1
NjZdKQogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTg2L2ZpLWNtbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1s
CiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NjIyL2ZpLWNtbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1s
CiAgICAtIGZpLWNmbC04MTA5dTogICAgICAgW1BBU1NdWzE0XSAtPiBbSU5DT01QTEVURV1bMTVd
IChbZmRvIzExMDk3N10pCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5ODYvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MjIvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Ogog
ICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtQQVNTXVsxNl0gLT4gW0ZBSUxdWzE3XSAoW2ZkbyMx
MDk0ODNdKQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82OTg2L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0
bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ2MjIvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRt
bAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9leGVjX3N1c3BlbmRA
YmFzaWMtczM6CiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW0lOQ09NUExFVEVdWzE4XSAoW2Zk
byMxMDc3MThdKSAtPiBbUEFTU11bMTldCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5ODYvZmktYmxiLWU2ODUwL2lndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXMzLmh0bWwKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MjIvZmktYmxiLWU2ODUwL2lndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2xpbmVhcl9ibGl0c0BiYXNpYzoKICAg
IC0gZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjBdIChbZmRvIzEwNzcyNF0pIC0+
IFtQQVNTXVsyMV0KICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjk4Ni9maS1pY2wtdTMvaWd0QGdlbV9saW5lYXJfYmxpdHNAYmFzaWMuaHRt
bAogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDYyMi9maS1pY2wtdTMvaWd0QGdlbV9saW5lYXJfYmxpdHNAYmFzaWMuaHRtbAoKICAq
IGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZDoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBb
RE1FU0ctV0FSTl1bMjJdIChbZmRvIzEwNzcyNF0gLyBbZmRvIzExMTIxNF0pIC0+IFtQQVNTXVsy
M10KICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjk4Ni9maS1pY2wtdTMvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzIz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2
MjIvZmktaWNsLXUzL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCgogICogaWd0QGtt
c19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQ6CiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgW0ZB
SUxdWzI0XSAoW2ZkbyMxMTEwNDVdKSAtPiBbUEFTU11bMjVdICsxIHNpbWlsYXIgaXNzdWUKICAg
WzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk4
Ni9maS1pY2wtdTQvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRtbAogICBbMjVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYy
Mi9maS1pY2wtdTQvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRtbAoKICAqIGln
dEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAg
W0ZBSUxdWzI2XSAoW2ZkbyMxMTE0MDddKSAtPiBbUEFTU11bMjddCiAgIFsyNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5ODYvZmkta2JsLTc1MDB1
L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMjddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYyMi9maS1rYmwtNzUw
MHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogIAogIHtuYW1lfTogVGhp
cyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNv
bXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywg
V0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAyNTA1XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyNTA1CiAgW2ZkbyMxMDc3MTNdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcx
OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxOAog
IFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA3NzI0CiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzEwOTQ4M106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ4MwogIFtmZG8jMTEwNTY2XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNTY2CiAgW2ZkbyMxMTA5Nzdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5NzcKICBb
ZmRvIzExMTA0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMTA0NQogIFtmZG8jMTExMDQ5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTExMDQ5CiAgW2ZkbyMxMTEyMTRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyMTQKICBbZmRvIzExMTQwN106IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQwNwoKClBhcnRpY2lwYXRpbmcg
aG9zdHMgKDU0IC0+IDQ0KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2lu
ZyAgICAoMTApOiBmaS1rYmwtc29yYWthIGZpLWlsay1tNTQwIGZpLWNtbC1oIGZpLWhzdy00MjAw
dSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1za2wtbG1lbSBmaS1ieXQt
Y2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
Q0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNjk4NiAtPiBQYXRjaHdv
cmtfMTQ2MjIKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzY5ODY6IDkzMDA0NTk1
NTNlOGMxMDMyZjEwZWMxOTUzZTFhMzc1YTk5YWJhMTMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIwODogYzAxMzFiNGYxMzJhY2YyODdkOWQwNWIw
ZjUwNzgwMDNkMzE1OWUxYyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBw
L2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDYyMjogMzUyYTdkOTEzNjAwMmE2YTcyZTA2
ZWRlYzRlNTNiMGE2OGIxNDhkOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjM1MmE3ZDkxMzYwMCBkcm0vaTkxNS9zZWxm
dGVzdHM6IEV4ZXJjaXNlIHBvdGVudGlhbCBmYWxzZSBsaXRlLXJlc3RvcmUKCj09IExvZ3MgPT0K
CkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDYyMi9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
