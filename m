Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE12710CF3D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 21:27:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427616E030;
	Thu, 28 Nov 2019 20:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 087C76E030;
 Thu, 28 Nov 2019 20:27:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72228A0093;
 Thu, 28 Nov 2019 20:27:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 28 Nov 2019 20:27:24 -0000
Message-ID: <157497284443.21452.2520381403091491025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Use_the_correct_PCH_transcoder_for_LPT/WPT_in_intel=5Fs?=
 =?utf-8?b?YW5pdGl6ZV9mcmFtZV9zdGFydF9kZWxheSgp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSB0aGUgY29ycmVjdCBQ
Q0ggdHJhbnNjb2RlciBmb3IgTFBUL1dQVCBpbiBpbnRlbF9zYW5pdGl6ZV9mcmFtZV9zdGFydF9k
ZWxheSgpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83
MDE3NS8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV83NDM4IC0+IFBhdGNod29ya18xNTQ5Ngo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipT
VUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMgZm91bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0OTYvaW5kZXgu
aHRtbAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBm
b3VuZCBpbiBQYXRjaHdvcmtfMTU0OTYgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9tb2R1
bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheToKICAgIC0gZmktc2tsLWxtZW06ICAgICAgICBbUEFT
U11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdIChbZmRvIzExMjI2MV0pCiAgIFsxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS1za2wtbG1lbS9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheS5odG1sCiAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0OTYvZmktc2ts
LWxtZW0vaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLW5vLWRpc3BsYXkuaHRtbAoKICAqIGln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzOgogICAgLSBmaS1jZmwtODcwMGs6ICAg
ICAgIFtQQVNTXVszXSAtPiBbSU5DT01QTEVURV1bNF0gKFtmZG8jMTExNzAwXSkKICAgWzNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM4L2ZpLWNm
bC04NzAway9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFs0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0OTYv
ZmktY2ZsLTg3MDBrL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAg
IC0gZmktY2ZsLWd1YzogICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRv
IzEwNjA3MF0gLyBbZmRvIzExMTcwMF0pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ5Ni9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2hlYXJ0YmVhdDoKICAgIC0gZmkta2JsLXI6ICAgICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNH
LUZBSUxdWzhdIChbZmRvIzExMjQwNV0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS1rYmwtci9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X2hlYXJ0YmVhdC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0OTYvZmkta2JsLXIvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9ndF9oZWFydGJlYXQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICog
aWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAg
IFtJTkNPTVBMRVRFXVs5XSAoW2ZkbyMxMTE3MzVdKSAtPiBbUEFTU11bMTBdCiAgIFs5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS10Z2wt
dS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBbMTBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ5Ni9maS10Z2wtdS9p
Z3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAoKICAqIGlndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbjoKICAgIC0ge2ZpLWtibC03NTYwdX06ICAg
ICBbRE1FU0ctV0FSTl1bMTFdIChbZmRvIzExMjI2MF0pIC0+IFtQQVNTXVsxMl0KICAgWzExXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS1r
YmwtNzU2MHUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU0OTYvZmkta2JsLTc1NjB1L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13
aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQ6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW0ZBSUxdWzEzXSAoW2ZkbyMxMDg1MTFdKSAt
PiBbUEFTU11bMTRdCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0MzgvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJl
bG9hZC5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NDk2L2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1y
ZWxvYWQuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGttc19idXN5QGJhc2lj
LWZsaXAtcGlwZS1iOgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsxNV0g
KFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA1NzYzXSkgLT4gW0RNRVNHLVdB
Uk5dWzE2XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdKSArMyBzaW1pbGFyIGlzc3Vlcwog
ICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDM4L2ZpLWtibC14MTI3NS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1waXBlLWIuaHRtbAogICBb
MTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTQ5Ni9maS1rYmwteDEyNzUvaWd0QGttc19idXN5QGJhc2ljLWZsaXAtcGlwZS1iLmh0bWwKCiAg
KiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1kcG1zOgogICAgLSBmaS1pY2wtZHNpOiAgICAg
ICAgIFtJTkNPTVBMRVRFXVsxN10gKFtmZG8jMTA3NzEzXSkgLT4gW0RNRVNHLVdBUk5dWzE4XSAo
W2ZkbyMxMDc3MjRdKQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDM4L2ZpLWljbC1kc2kvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMt
ZHBtcy5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NDk2L2ZpLWljbC1kc2kvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMt
ZHBtcy5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBp
cGUtYToKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMTldIChbZmRvIzEw
MzU1OF0gLyBbZmRvIzEwNTYwMl0pIC0+IFtETUVTRy1XQVJOXVsyMF0gKFtmZG8jMTAzNTU4XSAv
IFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA1NzYzXSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzE5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOC9maS1r
YmwteDEyNzUvaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYS5o
dG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NDk2L2ZpLWtibC14MTI3NS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQt
cmVhZC1jcmMtcGlwZS1hLmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJl
c3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0
aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJF
KS4KCiAgW2ZkbyMxMDM1NThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDM1NTgKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNTYwMgogIFtmZG8jMTA1NzYzXTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NzYzCiAgW2ZkbyMxMDYwNzBdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYwNzAKICBbZmRvIzEw
NzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcx
MwogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMDg1MTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDg1MTEKICBbZmRvIzExMTcwMF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTcwMAogIFtmZG8jMTExNzM1XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzM1CiAgW2ZkbyMxMTIy
NjBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyNjAK
ICBbZmRvIzExMjI2MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMjI2MQogIFtmZG8jMTEyNDA1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTEyNDA1CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTEgLT4gNDUpCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmktdGdsLXkg
CiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ic3ctY3lhbiBm
aS1jdGctcDg2MDAgZmktZ2RnLTU1MSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVp
bGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAq
IExpbnV4OiBDSV9EUk1fNzQzOCAtPiBQYXRjaHdvcmtfMTU0OTYKCiAgQ0ktMjAxOTA1Mjk6IDIw
MTkwNTI5CiAgQ0lfRFJNXzc0Mzg6IDhhMjY2MTU5MmU3OWU0OGJjYmE5YzI0NTY1YjJiMTZlZGFm
YmNiYWEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1Rf
NTMxMzogOTJjYWFkYjRlNTUxYmEwNWFhNmU2ZTU2N2VmNjlkYTk2Y2E3ZTMyOCBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29y
a18xNTQ5NjogZDMxZTNhMDhlMWYyZGJmMDIwN2IxZjI2ZmU1NDEzODAxODExMWQyMiBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMg
PT0KCmQzMWUzYTA4ZTFmMiBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0IFBDSCB0cmFuc2NvZGVy
IGZvciBMUFQvV1BUIGluIGludGVsX3Nhbml0aXplX2ZyYW1lX3N0YXJ0X2RlbGF5KCkKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ5Ni9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
