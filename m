Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C85DAE2FEB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FBF6E27F;
	Thu, 24 Oct 2019 11:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1BB86E270;
 Thu, 24 Oct 2019 11:04:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBCCFA432F;
 Thu, 24 Oct 2019 11:04:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 24 Oct 2019 11:04:54 -0000
Message-ID: <20191024110454.27073.38260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191024071139.31917-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191024071139.31917-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Split_intel=5Fring=5Fsubmission_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFNwbGl0IGludGVsX3Jp
bmdfc3VibWlzc2lvbiAocmV2MykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY4NDkxLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcxNjkgLT4gUGF0Y2h3b3JrXzE0OTYzCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkK
LS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTQ5NjMgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFu
dWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ5NjMs
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NjMvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3Vlcwot
LS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBt
YXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0OTYzOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV92bWE6CiAgICAtIGZpLWJkdy01NTU3dTogICAgICAgW1BBU1NdWzFdIC0+IFtJ
TkNPTVBMRVRFXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcxNjkvZmktYmR3LTU1NTd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfdm1h
Lmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDk2My9maS1iZHctNTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV92bWEuaHRt
bAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBm
b3VuZCBpbiBQYXRjaHdvcmtfMTQ5NjMgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9j
cHVfcmVsb2NAYmFzaWM6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzNd
IChbZmRvIzEwNzcyNF0pIC0+IFtQQVNTXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjkvZmktaWNsLXUzL2lndEBnZW1fY3B1X3Jl
bG9jQGJhc2ljLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDk2My9maS1pY2wtdTMvaWd0QGdlbV9jcHVfcmVsb2NAYmFzaWMu
aHRtbAoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0gZmktYnh0LWRz
aTogICAgICAgICBbSU5DT01QTEVURV1bNV0gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1NdWzZdCiAg
IFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2
OS9maS1ieHQtZHNpL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCiAgIFs2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NjMv
ZmktYnh0LWRzaS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICAgLSB7Zmkt
dGdsLXUyfTogICAgICAgIFtJTkNPTVBMRVRFXVs3XSAoW2ZkbyMxMTE3MzVdKSAtPiBbUEFTU11b
OF0KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MTY5L2ZpLXRnbC11Mi9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
OTYzL2ZpLXRnbC11Mi9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAoKICAqIGln
dEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyOgogICAgLSBmaS1hcGwtZ3VjOiAgICAgICAg
IFtJTkNPTVBMRVRFXVs5XSAoW2ZkbyMxMDM5MjddIC8gW2ZkbyMxMTEzODFdKSAtPiBbUEFTU11b
MTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzE2OS9maS1hcGwtZ3VjL2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwK
ICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ5NjMvZmktYXBsLWd1Yy9pZ3RAZ2VtX2N0eF9zd2l0Y2hAbGVnYWN5LXJlbmRlci5odG1s
CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0lOQ09NUExFVEVdWzExXSAoW2ZkbyMxMDc3MTNd
IC8gW2ZkbyMxMTEzODFdKSAtPiBbUEFTU11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjkvZmktaWNsLXUzL2lndEBnZW1fY3R4
X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NjMvZmktaWNsLXUzL2lndEBnZW1fY3R4
X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2lj
OgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsxM10gKFtmZG8jMTA3NzEz
XSkgLT4gW1BBU1NdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MTY5L2ZpLWljbC11Mi9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2lj
Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ5NjMvZmktaWNsLXUyL2lndEBnZW1fZXhlY19jcmVhdGVAYmFzaWMuaHRtbAoK
ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrOgogICAgLSB7ZmktaWNsLXU0fTog
ICAgICAgIFtJTkNPTVBMRVRFXVsxNV0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA4NTY5XSkgLT4g
W1BBU1NdWzE2XQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MTY5L2ZpLWljbC11NC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0OTYzL2ZpLWljbC11NC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2Js
LTc1MDB1OiAgICAgICBbRkFJTF1bMTddIChbZmRvIzExMTQwN10pIC0+IFtQQVNTXVsxOF0KICAg
WzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2
OS9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCiAgIFsx
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
OTYzL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAg
CiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBp
Z25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJl
bmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDM5MjddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEw
NzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcx
MwogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMDg1NjldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDg1NjkKICBbZmRvIzExMTM4MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTM4MQogIFtmZG8jMTExNDA3XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDA3CiAgW2ZkbyMxMTE3
MzVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3MzUK
ICBbZmRvIzExMjA5Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMjA5NgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDQ0KQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoOCk6IGZpLWtibC1zb3Jha2EgZmktaWxr
LW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWljbC15IGZp
LWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0K
CiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83MTY5IC0+IFBh
dGNod29ya18xNDk2MwoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzE2OTogNTZi
NDRiZjVhNjE2OWQ3ZmQ2MDE0MmI4M2Q0Yjc3NmUxMjRjZjliYyBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MjM2OiA4MTUzYjk1YjUzYmRlZjI2ZDJj
M2UzMTgxOTdkMTc0ZTk4MmI0MjY1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0OTYzOiA5N2ViNjE2OTEwYjM4ZGFh
M2Q5NWMwZjNkYjgxNmFhMmQ1YzZlYTFhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKOTdlYjYxNjkxMGIzIGRybS9pOTE1
L2d0OiBTcGxpdCBpbnRlbF9yaW5nX3N1Ym1pc3Npb24KCj09IExvZ3MgPT0KCkZvciBtb3JlIGRl
dGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDk2My9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
