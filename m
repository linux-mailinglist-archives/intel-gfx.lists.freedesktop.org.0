Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D8A114311
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989366E137;
	Thu,  5 Dec 2019 14:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45E3A6E12C;
 Thu,  5 Dec 2019 14:53:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D001A00E9;
 Thu,  5 Dec 2019 14:53:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Thu, 05 Dec 2019 14:53:59 -0000
Message-ID: <157555763924.19944.11741409987588458361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191205123513.22603-1-animesh.manna@intel.com>
In-Reply-To: <20191205123513.22603-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/dsb=3A_Fix_in_mmio_offset_calculation_of_DSB_instance?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZHNiOiBGaXggaW4gbW1pbyBv
ZmZzZXQgY2FsY3VsYXRpb24gb2YgRFNCIGluc3RhbmNlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDQ5MC8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1t
YXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDg5IC0+IFBhdGNod29y
a18xNTYwMwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMgZm91
bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU2MDMvaW5kZXguaHRtbAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0t
LQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTU2MDMgdGhhdCBj
b21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMg
aGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktc2ts
LWxtZW06ICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdIChbaTkxNSM1OTJdKQog
ICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0
ODkvZmktc2tsLWxtZW0vaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjAz
L2ZpLXNrbC1sbWVtL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKCiAgKiBpZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaXZiLTM3NzA6ICAgICAgICBbUEFTU11b
M10gLT4gW0RNRVNHLUZBSUxdWzRdIChbaTkxNSM1NjNdKQogICBbM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0ODkvZmktaXZiLTM3NzAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjAzL2ZpLWl2Yi0zNzcwL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250
ZXh0czoKICAgIC0gZmktYnl0LW4yODIwOiAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVd
WzZdIChbaTkxNSM0NV0pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzQ4OS9maS1ieXQtbjI4MjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
ZW1fY29udGV4dHMuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NjAzL2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2dlbV9jb250ZXh0cy5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bi
YXNpYzoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChb
aTkxNSM0OV0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQ4OS9maS1pY2wtdTMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNp
Yy5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU2MDMvZmktaWNsLXUzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFz
aWMuaHRtbAoKICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLXBpcGUt
YToKICAgIC0gZmktaWNsLWRzaTogICAgICAgICBbUEFTU11bOV0gLT4gW0RNRVNHLVdBUk5dWzEw
XSAoW2k5MTUjMTA5XSkKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDg5L2ZpLWljbC1kc2kvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25i
bG9ja2luZy1jcmMtcGlwZS1hLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2MDMvZmktaWNsLWRzaS9pZ3RAa21zX3BpcGVf
Y3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1waXBlLWEuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBm
aXhlcyAjIyMjCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6CiAgICAtIGZpLXNr
bC02NzcwaHE6ICAgICAgW0RNRVNHLVdBUk5dWzExXSAoW2k5MTUjNTkyXSkgLT4gW1BBU1NdWzEy
XQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83NDg5L2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAog
ICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTYwMy9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwK
CiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMt
c3RhdGU6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzEzXSAoW2k5MTUj
NjJdIC8gW2k5MTUjOTJdKSAtPiBbRE1FU0ctV0FSTl1bMTRdIChbaTkxNSM2Ml0gLyBbaTkxNSM5
Ml0gLyBbaTkxNSM5NV0pICs2IHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0ODkvZmkta2JsLXgxMjc1L2lndEBp
OTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGUuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwMy9maS1rYmwteDEyNzUv
aWd0QGk5MTVfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZS5odG1sCgogICogaWd0QGttc19jaGFt
ZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbRkFJTF1bMTVd
IChbZmRvIzExMTA5Nl0gLyBbaTkxNSMzMjNdKSAtPiBbRkFJTF1bMTZdIChbZmRvIzExMTQwN10p
CiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0ODkvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAog
ICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTYwMy9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1s
CgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29yLWxlZ2Fj
eToKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMTddIChbaTkxNSM2Ml0g
LyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pIC0+IFtETUVTRy1XQVJOXVsxOF0gKFtpOTE1IzYyXSAv
IFtpOTE1IzkyXSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ4OS9maS1rYmwteDEyNzUvaWd0QGttc19j
dXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29yLWxlZ2FjeS5odG1sCiAgIFsxOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjAz
L2ZpLWtibC14MTI3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1hZnRlci1jdXJz
b3ItbGVnYWN5Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4g
VGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3Rh
dHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAg
W2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTEwOTYKICBbZmRvIzExMTQwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTQwNwogIFtmZG8jMTExNTkzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTkzCiAgW2k5MTUjMTA5XTogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTA5CiAgW2k5MTUjMzIzXTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzIzCiAgW2k5MTUj
NDVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80NQog
IFtpOTE1IzQ5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvNDkKICBbaTkxNSM1NjNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsL2lzc3Vlcy81NjMKICBbaTkxNSM1OTJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy81OTIKICBbaTkxNSM2Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzYyCiAgW2k5MTUjOTJdOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85MgogIFtpOTE1Izk1XTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTUKCgpQYXJ0aWNpcGF0
aW5nIGhvc3RzICg1MyAtPiA0NykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFk
ZGl0aW9uYWwgKDEpOiBmaS1oc3ctNDc3MHIgCiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQw
IGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmkt
Ynl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoK
ICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzc0ODkgLT4gUGF0
Y2h3b3JrXzE1NjAzCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83NDg5OiA5Njli
NGRhZmYwYmU5ZWQ1ZGNlZmRhNjU2NjIxYmFkNWY5YTA2OTA2IEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUzMzI6IDU5YmU5MGIzYzc2MTEzZDAzYTFi
YjA5NWM0ZDQ1ODVlNTEwNThmNGEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTU2MDM6IDliMjQxMzcwNzNlNGFmOGM2
NTdhM2Q5NTJmMTUwNjE5ZjdjMGYyM2UgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9n
ZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo5YjI0MTM3MDczZTQgZHJtL2k5MTUv
ZHNiOiBGaXggaW4gbW1pbyBvZmZzZXQgY2FsY3VsYXRpb24gb2YgRFNCIGluc3RhbmNlCgo9PSBM
b2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2MDMvaW5kZXguaHRtbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
