Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C39117759
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 21:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8196E532;
	Mon,  9 Dec 2019 20:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04C746E544;
 Mon,  9 Dec 2019 20:24:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFB7DA0114;
 Mon,  9 Dec 2019 20:24:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 09 Dec 2019 20:24:11 -0000
Message-ID: <157592305182.14784.2342356724916637956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209143921.9240-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20191209143921.9240-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/display=3A_cleanup_intel=5Fbw=5Fstate_on_i915_module_remov?=
 =?utf-8?q?al?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZGlzcGxheTogY2xlYW51cCBp
bnRlbF9id19zdGF0ZSBvbiBpOTE1IG1vZHVsZSByZW1vdmFsClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDYzNC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NTIxIC0+IFBhdGNo
d29ya18xNTY1NQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3du
IGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE1NjU1IGFic29sdXRlbHkgbmVlZCB0byBi
ZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE1NjU1LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2Ug
ZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjU1L2luZGV4Lmh0bWwKClBvc3Np
YmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93
biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTY1
NToKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoK
ICAqIGlndEBnZW1fc3luY0BiYXNpYy1zdG9yZS1lYWNoOgogICAgLSBmaS1pdmItMzc3MDogICAg
ICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NTIxL2ZpLWl2Yi0zNzcwL2lndEBnZW1fc3luY0Bi
YXNpYy1zdG9yZS1lYWNoLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY1NS9maS1pdmItMzc3MC9pZ3RAZ2VtX3N5bmNAYmFz
aWMtc3RvcmUtZWFjaC5odG1sCgogIAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9sbG93
aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1
c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgogICogaWd0QHJ1
bm5lckBhYm9ydGVkOgogICAgLSB7ZmktdGdsLWd1Y306ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1b
M10KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTY1NS9maS10Z2wtZ3VjL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApOZXcgdGVz
dHMKLS0tLS0tLS0tCgogIE5ldyB0ZXN0cyBoYXZlIGJlZW4gaW50cm9kdWNlZCBiZXR3ZWVuIENJ
X0RSTV83NTIxIGFuZCBQYXRjaHdvcmtfMTU2NTU6CgojIyMgTmV3IElHVCB0ZXN0cyAoMjIpICMj
IwoKICAqIGlndEBhbWRncHUvYW1kX2Jhc2ljQGNzLWNvbXB1dGU6CiAgICAtIFN0YXR1c2VzIDog
MSBwYXNzKHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAwLjAzXSBzCgogICog
aWd0QGFtZGdwdS9hbWRfYmFzaWNAY3MtZ2Z4OgogICAgLSBTdGF0dXNlcyA6IDEgcGFzcyhzKSA0
MCBza2lwKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMCwgMC4wM10gcwoKICAqIGlndEBhbWRncHUv
YW1kX2Jhc2ljQGNzLW11bHRpLWZlbmNlOgogICAgLSBTdGF0dXNlcyA6IDEgcGFzcyhzKSA0MCBz
a2lwKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMCwgMC4wMF0gcwoKICAqIGlndEBhbWRncHUvYW1k
X2Jhc2ljQGNzLXNkbWE6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4wLCAwLjAyXSBzCgogICogaWd0QGFtZGdwdS9hbWRfYmFzaWNAbWVt
b3J5LWFsbG9jOgogICAgLSBTdGF0dXNlcyA6IDEgcGFzcyhzKSA0MCBza2lwKHMpCiAgICAtIEV4
ZWMgdGltZTogWzAuMCwgMC4wMF0gcwoKICAqIGlndEBhbWRncHUvYW1kX2Jhc2ljQHF1ZXJ5LWlu
Zm86CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0aW1l
OiBbMC4wXSBzCgogICogaWd0QGFtZGdwdS9hbWRfYmFzaWNAc2VtYXBob3JlOgogICAgLSBTdGF0
dXNlcyA6IDEgcGFzcyhzKSA0MCBza2lwKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMCwgMC4wMF0g
cwoKICAqIGlndEBhbWRncHUvYW1kX2Jhc2ljQHVzZXJwdHI6CiAgICAtIFN0YXR1c2VzIDogMSBw
YXNzKHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAwLjAwXSBzCgogICogaWd0
QGFtZGdwdS9hbWRfY3Nfbm9wQGZvcmstY29tcHV0ZTA6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNz
KHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAyMS41MF0gcwoKICAqIGlndEBh
bWRncHUvYW1kX2NzX25vcEBmb3JrLWdmeDA6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQw
IHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAyMS41MV0gcwoKICAqIGlndEBhbWRncHUv
YW1kX2NzX25vcEBub3AtY29tcHV0ZTA6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNr
aXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAyMS40OF0gcwoKICAqIGlndEBhbWRncHUvYW1k
X2NzX25vcEBub3AtZ2Z4MDoKICAgIC0gU3RhdHVzZXMgOiAxIHBhc3MocykgNDAgc2tpcChzKQog
ICAgLSBFeGVjIHRpbWU6IFswLjAsIDIxLjQ4XSBzCgogICogaWd0QGFtZGdwdS9hbWRfY3Nfbm9w
QHN5bmMtY29tcHV0ZTA6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4wLCAyMS40OF0gcwoKICAqIGlndEBhbWRncHUvYW1kX2NzX25vcEBz
eW5jLWZvcmstY29tcHV0ZTA6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykK
ICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAyMS41MV0gcwoKICAqIGlndEBhbWRncHUvYW1kX2NzX25v
cEBzeW5jLWZvcmstZ2Z4MDoKICAgIC0gU3RhdHVzZXMgOiAxIHBhc3MocykgNDAgc2tpcChzKQog
ICAgLSBFeGVjIHRpbWU6IFswLjAsIDIxLjUxXSBzCgogICogaWd0QGFtZGdwdS9hbWRfY3Nfbm9w
QHN5bmMtZ2Z4MDoKICAgIC0gU3RhdHVzZXMgOiAxIHBhc3MocykgNDAgc2tpcChzKQogICAgLSBF
eGVjIHRpbWU6IFswLjAsIDIxLjQ4XSBzCgogICogaWd0QGFtZGdwdS9hbWRfcHJpbWVAYW1kLXRv
LWk5MTU6CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0
aW1lOiBbMC4wLCAyLjQ1XSBzCgogICogaWd0QGFtZGdwdS9hbWRfcHJpbWVAaTkxNS10by1hbWQ6
CiAgICAtIFN0YXR1c2VzIDogMSBwYXNzKHMpIDQwIHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBb
MC4wLCA1LjQ4XSBzCgogICogaWd0QGdlbV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQ6CiAg
ICAtIFN0YXR1c2VzIDogNDIgcGFzcyhzKSAyIHNraXAocykKICAgIC0gRXhlYyB0aW1lOiBbMC4w
LCAwLjA4XSBzCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkOgogICAgLSBTdGF0dXNl
cyA6IDIgZG1lc2ctd2FybihzKSAzOSBwYXNzKHMpCiAgICAtIEV4ZWMgdGltZTogWzEuMTgsIDYu
MTVdIHMKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheToKICAgIC0g
U3RhdHVzZXMgOiA0MSBwYXNzKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuODcsIDYuNjVdIHMKCiAg
KiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb246CiAgICAt
IFN0YXR1c2VzIDogMiBkbWVzZy13YXJuKHMpIDM5IHBhc3MocykKICAgIC0gRXhlYyB0aW1lOiBb
NC42NywgMTYyLjM0XSBzCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFy
ZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTU2NTUgdGhhdCBjb21lIGZyb20ga25v
d24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAg
KiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMDoKICAgIC0gZmktdGdsLXk6ICAgICAgICAg
ICBbUEFTU11bNF0gLT4gW0lOQ09NUExFVEVdWzVdIChbaTkxNSM0NzJdKQogICBbNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MjEvZmktdGdsLXkv
aWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczAuaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjU1L2ZpLXRnbC15L2lndEBn
ZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEBy
ZWxvYWQgKE5FVyk6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzZdIChb
aTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pIC0+IFtETUVTRy1XQVJOXVs3XSAoW2k5
MTUjNjJdIC8gW2k5MTUjOTJdKQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc1MjEvZmkta2JsLXgxMjc1L2lndEBpOTE1X21vZHVsZV9sb2Fk
QHJlbG9hZC5odG1sCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU2NTUvZmkta2JsLXgxMjc1L2lndEBpOTE1X21vZHVsZV9sb2FkQHJl
bG9hZC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAt
IGZpLWJ5dC1qMTkwMDogICAgICAgW1BBU1NdWzhdIC0+IFtETUVTRy1GQUlMXVs5XSAoW2k5MTUj
NzIyXSkKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NTIxL2ZpLWJ5dC1qMTkwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0
cy5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU2NTUvZmktYnl0LWoxOTAwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2Nv
bnRleHRzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0OgogICAgLSBm
aS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVsxMF0gLT4gW0ZBSUxdWzExXSAoW2ZkbyMxMTEwOTZd
IC8gW2k5MTUjMzIzXSkKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzUyMS9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1o
cGQtZmFzdC5odG1sCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1NjU1L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1p
LWhwZC1mYXN0Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1f
ZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXM6CiAgICAtIGZpLWljbC1ndWM6ICAgICAgICAg
W0lOQ09NUExFVEVdWzEyXSAoW2k5MTUjMTQwXSAvIFtpOTE1IzE4NF0pIC0+IFtQQVNTXVsxM10K
ICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzUyMS9maS1pY2wtZ3VjL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXMuaHRt
bAogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTY1NS9maS1pY2wtZ3VjL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmlj
ZXMuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1pdmItMzc3
MDogICAgICAgIFtETUVTRy1GQUlMXVsxNF0gLT4gW1BBU1NdWzE1XQogICBbMTRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NTIxL2ZpLWl2Yi0zNzcw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NTUvZmktaXZiLTM3NzAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICAgLSBmaS1ieXQtajE5MDA6ICAgICAgIFtE
TUVTRy1GQUlMXVsxNl0gKFtpOTE1IzcyNV0pIC0+IFtQQVNTXVsxN10KICAgWzE2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzUyMS9maS1ieXQtajE5
MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMTddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY1NS9maS1ieXQtajE5MDAv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgog
ICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlczoKICAgIC0gZmkta2JsLXgx
Mjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMThdIChbZmRvIzEwNzEzOV0gLyBbaTkxNSM2Ml0gLyBb
aTkxNSM5Ml0pIC0+IFtETUVTRy1XQVJOXVsxOV0gKFtmZG8jMTA3MTM5XSAvIFtpOTE1IzYyXSAv
IFtpOTE1IzkyXSAvIFtpOTE1Izk1XSkKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzUyMS9maS1rYmwteDEyNzUvaWd0QGdlbV9leGVjX3N1
c3BlbmRAYmFzaWMtczQtZGV2aWNlcy5odG1sCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjU1L2ZpLWtibC14MTI3NS9pZ3RAZ2Vt
X2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2JsdDoKICAgIC0gZmktaHN3LTQ3NzA6ICAgICAgICBbRE1FU0ctRkFJTF1bMjBdIC0+
IFtETUVTRy1GQUlMXVsyMV0gKFtpOTE1IzcyNV0pCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MjEvZmktaHN3LTQ3NzAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY1NS9maS1oc3ctNDc3MC9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWJ1c3kt
ZmxpcC1iZWZvcmUtY3Vyc29yLWxlZ2FjeToKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1F
U0ctV0FSTl1bMjJdIChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pIC0+IFtETUVT
Ry1XQVJOXVsyM10gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSkgKzQgc2ltaWxhciBpc3N1ZXMKICAg
WzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzUy
MS9maS1rYmwteDEyNzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC1iZWZv
cmUtY3Vyc29yLWxlZ2FjeS5odG1sCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjU1L2ZpLWtibC14MTI3NS9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwKCiAgKiBp
Z3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1iZWZvcmUtY3Vyc29yLXZhcnlpbmctc2l6
ZToKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMjRdIChbaTkxNSM2Ml0g
LyBbaTkxNSM5Ml0pIC0+IFtETUVTRy1XQVJOXVsyNV0gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSAv
IFtpOTE1Izk1XSkKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzUyMS9maS1rYmwteDEyNzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2lj
LWZsaXAtYmVmb3JlLWN1cnNvci12YXJ5aW5nLXNpemUuaHRtbAogICBbMjVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY1NS9maS1rYmwteDEy
NzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYmVmb3JlLWN1cnNvci12YXJ5aW5n
LXNpemUuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlz
IG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMg
b2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRv
IzEwNzEzOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NzEzOQogIFtmZG8jMTExMDk2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExMDk2CiAgW2k5MTUjMTQwXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvMTQwCiAgW2k5MTUjMTg0XTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTg0CiAgW2k5MTUjMzIzXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzIzCiAgW2k5MTUjNDcyXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDcyCiAgW2k5
MTUjNDc2XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
NDc2CiAgW2k5MTUjNjJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy82MgogIFtpOTE1IzcyMl06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaW50ZWwvaXNzdWVzLzcyMgogIFtpOTE1IzcyNV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzcyNQogIFtpOTE1IzkyXTogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTIKICBbaTkxNSM5NV06IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzk1CgoKUGFydGljaXBhdGlu
ZyBob3N0cyAoNTAgLT4gNDcpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRp
dGlvbmFsICgxKTogZmkta2JsLWd1YyAKICBNaXNzaW5nICAgICg0KTogZmktY3RnLXA4NjAwIGZp
LWJ5dC1jbGFwcGVyIGZpLWlsay1tNTQwIGZpLWJzdy1jeWFuIAoKCkJ1aWxkIGNoYW5nZXMKLS0t
LS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJN
Xzc1MjEgLT4gUGF0Y2h3b3JrXzE1NjU1CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RS
TV83NTIxOiA5MjAzZjY3OTg1ZWJmMjcyMTFhYTFlYWJiNzcwOTMzMDIyNDhjOWZjIEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUzNDE6IDVmZTY4M2Nk
ZWJkZTJkNzdkMTZmZmM0MmM5ZmRmMjlhOWY5NWJiODIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTU2NTU6IDNmZDBi
MWM4YTM0NGIzZGNkODZkZjYwMTIzNGFlMjQyYWFmNGY5YjAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgozZmQwYjFjOGEz
NDQgZHJtL2k5MTUvZGlzcGxheTogY2xlYW51cCBpbnRlbF9id19zdGF0ZSBvbiBpOTE1IG1vZHVs
ZSByZW1vdmFsCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NTUvaW5kZXguaHRtbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
