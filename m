Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A4CDF0E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 12:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004136E520;
	Mon,  7 Oct 2019 10:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EFF36E519;
 Mon,  7 Oct 2019 10:18:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68260A0019;
 Mon,  7 Oct 2019 10:18:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 07 Oct 2019 10:18:36 -0000
Message-ID: <20191007101836.14086.62068@emeril.freedesktop.org>
References: <20191007093839.25660-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191007093839.25660-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Note_the_addition_of_timeslicing_to_the_pretend_schedul?=
 =?utf-8?q?er?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE5vdGUgdGhlIGFkZGl0aW9u
IG9mIHRpbWVzbGljaW5nIHRvIHRoZSBwcmV0ZW5kIHNjaGVkdWxlcgpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc2NzUvClN0YXRlIDogZmFpbHVyZQoK
PT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzAyMSAtPiBQ
YXRjaHdvcmtfMTQ2ODUKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDY4NSBhYnNvbHV0ZWx5IG5lZWQg
dG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVk
IGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xNDY4NSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93
IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY4NS9pbmRleC5odG1sCgpQ
b3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVu
a25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTQ2ODU6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMj
IyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmktaWNsLXUy
OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdCiAgIFsxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAyMS9maS1pY2wtdTIvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Njg1L2ZpLWljbC11Mi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0t
LS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDY4NSB0
aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElz
c3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0g
ZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdIChbZmRvIzEw
NzcxM10gLyBbZmRvIzEwOTEwMF0pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAyMS9maS1pY2wtdTMvaWd0QGdlbV9jdHhfY3JlYXRlQGJh
c2ljLWZpbGVzLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDY4NS9maS1pY2wtdTMvaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2lj
LWZpbGVzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBkcC1lZGlkLXJlYWQ6CiAgICAtIGZp
LWtibC03NTAwdTogICAgICAgW1BBU1NdWzVdIC0+IFtXQVJOXVs2XSAoW2ZkbyMxMDk0ODNdKQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcw
MjEvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGRwLWVkaWQtcmVhZC5odG1sCiAgIFs2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2
ODUvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGRwLWVkaWQtcmVhZC5odG1sCgogICog
aWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQ6CiAgICAtIGZpLWtibC03NTAwdTogICAg
ICAgW1BBU1NdWzddIC0+IFtGQUlMXVs4XSAoW2ZkbyMxMDk0ODNdKQogICBbN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMjEvZmkta2JsLTc1MDB1
L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkLmh0bWwKICAgWzhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY4NS9maS1rYmwtNzUw
MHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRtbAoKICAqIGlndEBrbXNfY2hh
bWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW1BBU1NdWzld
IC0+IFtGQUlMXVsxMF0gKFtmZG8jMTExMDQ1XSAvIFtmZG8jMTExMDk2XSkKICAgWzldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDIxL2ZpLWtibC03
NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzEwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2ODUvZmkta2Js
LTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKIyMjIyBQb3Nz
aWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzOgogICAg
LSB7ZmktdGdsLXV9OiAgICAgICAgIFtJTkNPTVBMRVRFXVsxMV0gKFtmZG8jMTExNzM1XSkgLT4g
W1BBU1NdWzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDIxL2ZpLXRnbC11L2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5o
dG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0Njg1L2ZpLXRnbC11L2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1s
CgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaHN3LXBl
cHB5OiAgICAgICBbRE1FU0ctV0FSTl1bMTNdIChbZmRvIzEwMjYxNF0pIC0+IFtQQVNTXVsxNF0K
ICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzAyMS9maS1oc3ctcGVwcHkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1s
CiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0Njg1L2ZpLWhzdy1wZXBweS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2lj
Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFu
cyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRo
ZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI2
MTRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2MTQK
ICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNzcxMwogIFtmZG8jMTA5MTAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA5MTAwCiAgW2ZkbyMxMDk0ODNdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0ODMKICBbZmRvIzExMTA0NV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA0NQogIFtmZG8jMTExMDk2
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDk2CiAg
W2ZkbyMxMTE3MzVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTE3MzUKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MiAtPiA0NCkKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDgpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIw
MHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktYXBsLWd1YyBmaS1pY2wteSBmaS1ieXQt
Y2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
Q0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzAyMSAtPiBQYXRjaHdv
cmtfMTQ2ODUKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcwMjE6IGZjMWMxZTNm
MWNmYTliYWQ5NzNiNzU0N2I4YzEyM2IzYWM4MGM2NzggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIxNTogODgwYzhkM2M5ODMxMzQ5YTI2OWFjNjgy
MmM4ZDQ0ZTgwODA3MDg5ZiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBw
L2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDY4NTogOTdkNTA4MmZiZDQ2YjAyZmZmNWYw
M2YwZGViMGZhMTAyN2YyZjQwOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjk3ZDUwODJmYmQ0NiBkcm0vaTkxNTogTm90
ZSB0aGUgYWRkaXRpb24gb2YgdGltZXNsaWNpbmcgdG8gdGhlIHByZXRlbmQgc2NoZWR1bGVyCgo9
PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2ODUvaW5kZXguaHRtbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
