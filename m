Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63D4B44E7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 02:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A0B6EABA;
	Tue, 17 Sep 2019 00:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2579E6EABA;
 Tue, 17 Sep 2019 00:38:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EAABA0096;
 Tue, 17 Sep 2019 00:38:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bob Paauwe" <bob.j.paauwe@intel.com>
Date: Tue, 17 Sep 2019 00:38:31 -0000
Message-ID: <20190917003831.576.94919@emeril.freedesktop.org>
References: <20190916173955.9908-1-bob.j.paauwe@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190916173955.9908-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Adding_YUV444_packed_format_support_for_skl+?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZGluZyBZVVY0NDQgcGFj
a2VkIGZvcm1hdCBzdXBwb3J0IGZvciBza2wrClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82Njc3MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82OTAyX2Z1bGwgLT4gUGF0Y2h3b3Jr
XzE0NDIwX2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93
biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDQyMF9mdWxsIGFic29sdXRlbHkgbmVl
ZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0
ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVj
ZWQgaW4gUGF0Y2h3b3JrXzE0NDIwX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0
byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3
aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3Vl
cwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhh
dCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0NDIwX2Z1bGw6CgojIyMg
SUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RA
a21zX3BsYW5lQHBpeGVsLWZvcm1hdC1waXBlLWItcGxhbmVzOgogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0gKzEzIHNpbWlsYXIgaXNzdWVzCiAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFy
ZC1za2w4L2lndEBrbXNfcGxhbmVAcGl4ZWwtZm9ybWF0LXBpcGUtYi1wbGFuZXMuaHRtbAogICBb
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDIwL3NoYXJkLXNrbDQvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5lcy5o
dG1sCiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XSArMTMg
c2ltaWxhciBpc3N1ZXMKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLWtibDMvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQt
cGlwZS1iLXBsYW5lcy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQta2JsMS9pZ3RAa21zX3BsYW5lQHBpeGVs
LWZvcm1hdC1waXBlLWItcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlw
ZS1hLXNjYWxlci13aXRoLWNsaXBwaW5nLWNsYW1waW5nOgogICAgLSBzaGFyZC1nbGs6ICAgICAg
ICAgIFtQQVNTXVs1XSAtPiBbRkFJTF1bNl0gKzEzIHNpbWlsYXIgaXNzdWVzCiAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1n
bGs5L2lndEBrbXNfcGxhbmVfc2NhbGluZ0BwaXBlLWEtc2NhbGVyLXdpdGgtY2xpcHBpbmctY2xh
bXBpbmcuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWdsazkvaWd0QGttc19wbGFuZV9zY2FsaW5nQHBpcGUt
YS1zY2FsZXItd2l0aC1jbGlwcGluZy1jbGFtcGluZy5odG1sCgogICogaWd0QGttc19wbGFuZV9z
Y2FsaW5nQHBpcGUtYi1zY2FsZXItd2l0aC1waXhlbC1mb3JtYXQ6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW1BBU1NdWzddIC0+IFtGQUlMXVs4XSArMTMgc2ltaWxhciBpc3N1ZXMKICAgWzdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3No
YXJkLWFwbDUvaWd0QGttc19wbGFuZV9zY2FsaW5nQHBpcGUtYi1zY2FsZXItd2l0aC1waXhlbC1m
b3JtYXQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWFwbDMvaWd0QGttc19wbGFuZV9zY2FsaW5nQHBpcGUt
Yi1zY2FsZXItd2l0aC1waXhlbC1mb3JtYXQuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0t
LS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ0MjBfZnVs
bCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMj
IElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBmaWZvLWJzZDoKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bOV0gLT4gW1NLSVBdWzEwXSAoW2ZkbyMxMTEz
MjVdKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY5MDIvc2hhcmQtaWNsYjYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGZpZm8tYnNkLmh0bWwK
ICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ0MjAvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGZpZm8tYnNkLmh0bWwK
CiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGJpZy1jb3B5LW9kZDoKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbUEFTU11bMTFdIC0+IFtJTkNPTVBMRVRFXVsxMl0gKFtmZG8jMTAzNTQwXSkKICAgWzEx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9z
aGFyZC1oc3cxL2lndEBnZW1fbW1hcF9ndHRAYmlnLWNvcHktb2RkLmh0bWwKICAgWzEyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hh
cmQtaHN3MS9pZ3RAZ2VtX21tYXBfZ3R0QGJpZy1jb3B5LW9kZC5odG1sCgogICogaWd0QGk5MTVf
cG1fcnBtQHN5c3RlbS1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsx
M10gLT4gW0lOQ09NUExFVEVdWzE0XSAoW2ZkbyMxMDQxMDhdIC8gW2ZkbyMxMDc4MDddKQogICBb
MTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAy
L3NoYXJkLXNrbDQvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLmh0bWwKICAgWzE0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAv
c2hhcmQtc2tsOS9pZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQuaHRtbAoKICAqIGlndEBr
bXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjg4ODgtYmx0LXVudGlsZWQ6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzE1XSAtPiBbRkFJTF1bMTZdIChbZmRvIzEwMzE4NF0gLyBb
ZmRvIzEwMzIzMl0gLyBbZmRvIzEwODQ3Ml0pCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtc2tsMS9pZ3RAa21zX2RyYXdf
Y3JjQGRyYXctbWV0aG9kLXhyZ2I4ODg4LWJsdC11bnRpbGVkLmh0bWwKICAgWzE2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQt
c2tsMTAvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiODg4OC1ibHQtdW50aWxlZC5o
dG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxhbms6CiAgICAtIHNoYXJk
LWdsazogICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRkFJTF1bMThdIChbZmRvIzEwNTM2M10pCiAg
IFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
MDIvc2hhcmQtZ2xrMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCiAg
IFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDIwL3NoYXJkLWdsazYvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRt
bAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChbZmRv
IzEwNTM2M10pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY5MDIvc2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZi
bGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtc2tsNy9pZ3RAa21zX2ZsaXBA
ZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVsyMV0gLT4gW0lOQ09NUExFVEVdWzIyXSAoW2ZkbyMxMDM2NjVdKQogICBbMjFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3NoYXJk
LWtibDQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCiAgIFsy
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDIwL3NoYXJkLWtibDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5o
dG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4t
c2hyZmItcGxmbGlwLWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjNdIC0+
IFtGQUlMXVsyNF0gKFtmZG8jMTAzMTY3XSkgKzcgc2ltaWxhciBpc3N1ZXMKICAgWzIzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1p
Y2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zaHJm
Yi1wbGZsaXAtYmx0Lmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogICog
aWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxwaGEtbWluOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDgx
NDVdKQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTAyL3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29u
c3RhbnQtYWxwaGEtbWluLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcGxh
bmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhdIChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQw
M10pCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY5MDIvc2hhcmQtc2tsNy9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3Zl
cmFnZS03ZWZjLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtc2tsOC9pZ3RAa21zX3BsYW5lX2FscGhhX2Js
ZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0
ZV9tbWFwX2d0dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjldIC0+IFtTS0lQ
XVszMF0gKFtmZG8jMTA5NDQxXSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nw
cml0ZV9tbWFwX2d0dC5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJf
c3ByaXRlX21tYXBfZ3R0Lmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGlu
dWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzMxXSAtPiBb
RE1FU0ctV0FSTl1bMzJdIChbZmRvIzEwODU2Nl0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFszMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hh
cmQtYXBsMy9pZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRt
bAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQyMC9zaGFyZC1hcGw2L2lndEBrbXNfdmJsYW5rQHBpcGUtYi10cy1jb250aW51YXRp
b24tc3VzcGVuZC5odG1sCgogICogaWd0QHBlcmZAcG9sbGluZzoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbUEFTU11bMzNdIC0+IFtGQUlMXVszNF0gKFtmZG8jMTEwNzI4XSkKICAgWzMzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFy
ZC1za2w2L2lndEBwZXJmQHBvbGxpbmcuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyMC9zaGFyZC1za2wxL2lndEBwZXJm
QHBvbGxpbmcuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGhhbmctYnNkMjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bMzVdIC0+IFtTS0lQXVszNl0gKFtmZG8jMTA5Mjc2XSkgKzEy
IHNpbWlsYXIgaXNzdWVzCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtaWNsYjIvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2Qy
Lmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0MjAvc2hhcmQtaWNsYjUvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyLmh0bWwK
CiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBy
Y3MwLXMzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszN10gKFtmZG8j
MTA0MTA4XSkgLT4gW1BBU1NdWzM4XQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLXNrbDgvaWd0QGdlbV9jdHhfaXNvbGF0
aW9uQHJjczAtczMuaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDQyMC9zaGFyZC1za2wyL2lndEBnZW1fY3R4X2lzb2xhdGlv
bkByY3MwLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2U6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzM5XSAoW2ZkbyMxMTA4NTRdKSAtPiBbUEFTU11bNDBd
CiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5MDIvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKICAgWzQw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0
MjAvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RA
Z2VtX2V4ZWNfc2NoZWR1bGVAaW4tb3JkZXItYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtTS0lQXVs0MV0gKFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzQyXSArMiBzaW1pbGFyIGlzc3Vl
cwogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82OTAyL3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbi1vcmRlci1ic2QuaHRt
bAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQyMC9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW4tb3JkZXItYnNk
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMjoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDNdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVs0
NF0gKzE3IHNpbWlsYXIgaXNzdWVzCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtaWNsYjMvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQGluZGVwZW5kZW50LWJzZDIuaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyMC9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sCgogICogaWd0QGdlbV9waXBlX2NvbnRy
b2xfc3RvcmVfbG9vcEBmcmVzaC1idWZmZXI6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0lO
Q09NUExFVEVdWzQ1XSAoW2ZkbyMxMDM5MjddKSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtYXBs
NC9pZ3RAZ2VtX3BpcGVfY29udHJvbF9zdG9yZV9sb29wQGZyZXNoLWJ1ZmZlci5odG1sCiAgIFs0
Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDIwL3NoYXJkLWFwbDQvaWd0QGdlbV9waXBlX2NvbnRyb2xfc3RvcmVfbG9vcEBmcmVzaC1idWZm
ZXIuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBleHRlbmRlZC1tb2Rlc2V0LWhhbmctbmV3ZmItd2l0
aC1yZXNldC1yZW5kZXItYjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1b
NDddIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVs0OF0KICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1pY2xiNy9pZ3RAa21z
X2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW5ld2ZiLXdpdGgtcmVzZXQtcmVuZGVyLWIuaHRt
bAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDQyMC9zaGFyZC1pY2xiNy9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5n
LW5ld2ZiLXdpdGgtcmVzZXQtcmVuZGVyLWIuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZz
LXBhbm5pbmctdnMtaGFuZzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbSU5DT01QTEVURV1b
NDldIChbZmRvIzEwMzU0MF0pIC0+IFtQQVNTXVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1oc3cxL2lndEBrbXNf
ZmxpcEBmbGlwLXZzLXBhbm5pbmctdnMtaGFuZy5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWhzdzEvaWd0
QGttc19mbGlwQGZsaXAtdnMtcGFubmluZy12cy1oYW5nLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBA
ZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W0lOQ09NUExFVEVdWzUxXSAoW2ZkbyMxMDk1MDddKSAtPiBbUEFTU11bNTJdCiAgIFs1MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQt
c2tsMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBb
NTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDQyMC9zaGFyZC1za2w1L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJs
ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4t
Y3VyLWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs1
M10gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzU0XQogICBbNTNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLWljbGIyL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0
ZS5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtGQUlMXVs1NV0gKFtmZG8jMTA4MTQ1XSkgLT4gW1BBU1NdWzU2XSArMSBz
aW1pbGFyIGlzc3VlCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtc2tsMi9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyMC9zaGFyZC1za2wxMC9pZ3RAa21z
X3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGln
dEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteToKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbRkFJTF1bNTddIChbZmRvIzEwMzE2Nl0pIC0+IFtQQVNTXVs1OF0KICAgWzU3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkwMi9zaGFyZC1p
Y2xiNy9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXkuaHRtbAogICBbNThdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyMC9z
aGFyZC1pY2xiNS9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXkuaHRtbAoKICAq
IGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtTS0lQXVs1OV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzYwXQogICBbNTldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLWlj
bGIzL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1Lmh0bWwKICAgWzYwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQt
aWNsYjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfbW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNf
c2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRkFJTF1bNjFdIChbZmRv
Izk5OTEyXSkgLT4gW1BBU1NdWzYyXQogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLWFwbDUvaWd0QGttc19zZXRtb2RlQGJh
c2ljLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtYXBsMS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAog
ICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtGQUlMXVs2M10gKFtmZG8jOTk5MTJdKSAtPiBbUEFT
U11bNjRdCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5MDIvc2hhcmQtaHN3Ni9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbNjRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQy
MC9zaGFyZC1oc3c2L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogICogaWd0QGttc192Ymxh
bmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAg
ICAgIFtETUVTRy1XQVJOXVs2NV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzY2XSArNCBzaW1p
bGFyIGlzc3VlcwogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82OTAyL3NoYXJkLWFwbDMvaWd0QGttc192YmxhbmtAcGlwZS1hLXRzLWNvbnRp
bnVhdGlvbi1zdXNwZW5kLmh0bWwKICAgWzY2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MjAvc2hhcmQtYXBsMS9pZ3RAa21zX3ZibGFua0Bw
aXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAoKICAqIGlndEBwZXJmQHNob3J0LXJl
YWRzOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs2N10gKFtmZG8jMTAzMTgzXSkg
LT4gW1BBU1NdWzY4XQogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82OTAyL3NoYXJkLWdsazYvaWd0QHBlcmZAc2hvcnQtcmVhZHMuaHRtbAog
ICBbNjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQyMC9zaGFyZC1nbGsxL2lndEBwZXJmQHNob3J0LXJlYWRzLmh0bWwKCiAgCiMjIyMgV2Fy
bmluZ3MgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzY5XSAoW2ZkbyMxMTEzMjldKSAtPiBbU0tJUF1b
NzBdIChbZmRvIzEwOTI3Nl0pCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY5MDIvc2hhcmQtaWNsYjQvaWd0QGdlbV9jdHhfaXNvbGF0aW9u
QHZjczEtbm9ucHJpdi5odG1sCiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDIwL3NoYXJkLWljbGIzL2lndEBnZW1fY3R4X2lzb2xh
dGlvbkB2Y3MxLW5vbnByaXYuaHRtbAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXNl
dHRpbmdzLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzcxXSAoW2ZkbyMx
MDkyNzZdKSAtPiBbRkFJTF1bNzJdIChbZmRvIzExMTMzMF0pICsxIHNpbWlsYXIgaXNzdWUKICAg
WzcxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkw
Mi9zaGFyZC1pY2xiOC9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1zZXR0aW5ncy1ic2QyLmh0
bWwKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ0MjAvc2hhcmQtaWNsYjQvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mtc2V0dGlu
Z3MtYnNkMi5odG1sCgogIAogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzE4M106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE4MwogIFtmZG8j
MTAzMTg0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
MTg0CiAgW2ZkbyMxMDMyMzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMyMzIKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEw
NDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEw
OAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzgwN106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzgwNwogIFtmZG8jMTA4MTQ1XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg0
NzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg0NzIK
ICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwODU2NgogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtmZG8jMTEwNDAz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAg
W2ZkbyMxMTA3MjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTA3MjgKICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMDg1NAogIFtmZG8jMTExMzI1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI1CiAgW2ZkbyMxMTEzMjldOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjkKICBbZmRvIzExMTMzMF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMzMAogIFtm
ZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05
OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDkgLT4gOSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNo
YW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51
eDogQ0lfRFJNXzY5MDIgLT4gUGF0Y2h3b3JrXzE0NDIwCgogIENJLTIwMTkwNTI5OiAyMDE5MDUy
OQogIENJX0RSTV82OTAyOiBlNGYyMGYyNzk1ZWNjZWI1NDkxOGE1NzA2N2NiNTYzOGQ1Y2QyMzYw
IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxODU6
IGYwMjEyM2JmYTZlYzZiYWY4Y2E2NzQ1OWNmNGQ4YjRlYTU4OGNhMDggQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ0
MjA6IDM3YTI0YTQ1YWMwYTgzYzQzZTcxYTI5MzExZTlhMjNmMWM2ZWY1YjkgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2Ex
MTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDIwLwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
