Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD28A4112
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Aug 2019 01:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B2C6E12E;
	Fri, 30 Aug 2019 23:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5ABD66E079;
 Fri, 30 Aug 2019 23:33:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D7EEA00FD;
 Fri, 30 Aug 2019 23:33:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 30 Aug 2019 23:33:37 -0000
Message-ID: <20190830233337.14751.97853@emeril.freedesktop.org>
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/21=5D_drm/i915/gtt=3A_Downgrade_Baytrail?=
 =?utf-8?q?_back_to_aliasing-ppgtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIx
XSBkcm0vaTkxNS9ndHQ6IERvd25ncmFkZSBCYXl0cmFpbCBiYWNrIHRvIGFsaWFzaW5nLXBwZ3R0
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjAzMy8K
U3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9t
IENJX0RSTV82ODA2X2Z1bGwgLT4gUGF0Y2h3b3JrXzE0MjMxX2Z1bGwKPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgog
ICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xNDIzMV9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5
LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MjMxX2Z1bGws
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzE0MjMxX2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3Np
YmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX2J1c3lAY2xvc2UtcmFjZToKICAgIC0g
c2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdCiAgIFsxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNi9zaGFyZC1zbmI2
L2lndEBnZW1fYnVzeUBjbG9zZS1yYWNlLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIzMS9zaGFyZC1zbmI2L2lndEBnZW1f
YnVzeUBjbG9zZS1yYWNlLmh0bWwKCiAgKiBpZ3RAZ2VtX3NvZnRwaW5Ac29mdHBpbjoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bM10gLT4gW1RJTUVPVVRdWzRdCiAgIFszXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNi9zaGFyZC1z
a2w1L2lndEBnZW1fc29mdHBpbkBzb2Z0cGluLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIzMS9zaGFyZC1za2w0L2lndEBn
ZW1fc29mdHBpbkBzb2Z0cGluLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10
aHJlYWRlZDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLUZB
SUxdWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjgwNi9zaGFyZC1oc3c2L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVk
Lmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDIzMS9zaGFyZC1oc3c4L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVh
ZGVkLmh0bWwKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLUZB
SUxdWzhdCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjgwNi9zaGFyZC1rYmw2L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVk
Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDIzMS9zaGFyZC1rYmwyL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVh
ZGVkLmh0bWwKCiAgCgojIyMgUGlnbGl0IGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jl
c3Npb25zICMjIyMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJn
LTAtdWludC1jdWJlIChORVcpOgogICAgLSBwaWctaHN3LTQ3NzByOiAgICAgIE5PVFJVTiAtPiBb
Q1JBU0hdWzldICsxMjIgc2ltaWxhciBpc3N1ZXMKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIzMS9waWctaHN3LTQ3NzByL3NwZWNA
YXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmctMC11aW50LWN1YmUuaHRtbAoKICAK
TmV3IHRlc3RzCi0tLS0tLS0tLQoKICBOZXcgdGVzdHMgaGF2ZSBiZWVuIGludHJvZHVjZWQgYmV0
d2VlbiBDSV9EUk1fNjgwNl9mdWxsIGFuZCBQYXRjaHdvcmtfMTQyMzFfZnVsbDoKCiMjIyBOZXcg
UGlnbGl0IHRlc3RzICgxMjMpICMjIwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVn
YXRoZXJAZnMtci0wLWludC1jdWJlYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQog
ICAgLSBFeGVjIHRpbWU6IFswLjA2XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVy
ZWdhdGhlckBmcy1yLTAtdWludC1jdWJlYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChz
KQogICAgLSBFeGVjIHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4
dHVyZWdhdGhlckBmcy1yLW5vbmUtc2hhZG93LWN1YmU6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFz
aChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVA
dGV4dHVyZWdhdGhlckBmcy1yLW5vbmUtc2hhZG93LWN1YmVhcnJheToKICAgIC0gU3RhdHVzZXMg
OiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9ncHVf
c2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnLTAtaW50LWN1YmVhcnJheToKICAgIC0gU3RhdHVz
ZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9n
cHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnLTAtdWludC1jdWJlOgogICAgLSBTdGF0dXNl
cyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dw
dV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmctMC11aW50LWN1YmVhcnJheToKICAgIC0gU3Rh
dHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFy
Yl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnLTEtaW50LWN1YmVhcnJheToKICAgIC0g
U3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVj
QGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnLTEtdWludC1jdWJlOgogICAgLSBT
dGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wNl0gcwoKICAqIHNwZWNA
YXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmctMS11aW50LWN1YmVhcnJheToKICAg
IC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBz
cGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYi0wLWZsb2F0LWN1YmVhcnJh
eToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMK
CiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYi0wLWludC1jdWJl
OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wNl0gcwoK
ICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiLTAtaW50LWN1YmVh
cnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDdd
IHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYi0wLXVpbnQt
Y3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDdd
IHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYi0wLXVpbnQt
Y3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBb
MC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiLTEt
ZmxvYXQtY3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0
aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMt
cmdiLTEtaW50LWN1YmU6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRp
bWU6IFswLjA2XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlckBmcy1y
Z2ItMS1pbnQtY3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhl
YyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJA
ZnMtcmdiLTEtdWludC1jdWJlOgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhl
YyB0aW1lOiBbMC4xMF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJA
ZnMtcmdiLTEtdWludC1jdWJlYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAg
LSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdh
dGhlckBmcy1yZ2ItMi1mbG9hdC1jdWJlYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChz
KQogICAgLSBFeGVjIHRpbWU6IFswLjEwXSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4
dHVyZWdhdGhlckBmcy1yZ2ItMi1pbnQtY3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMp
CiAgICAtIEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0
dXJlZ2F0aGVyQGZzLXJnYi0yLWludC1jdWJlYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFz
aChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA2XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVA
dGV4dHVyZWdhdGhlckBmcy1yZ2ItMi11aW50LWN1YmU6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFz
aChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVA
dGV4dHVyZWdhdGhlckBmcy1yZ2ItMi11aW50LWN1YmVhcnJheToKICAgIC0gU3RhdHVzZXMgOiAx
IGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hh
ZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMC1mbG9hdC1jdWJlOgogICAgLSBTdGF0dXNlcyA6
IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9z
aGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0wLWZsb2F0LWN1YmVhcnJheToKICAgIC0gU3Rh
dHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFy
Yl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMC1pbnQtY3ViZToKICAgIC0gU3Rh
dHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFy
Yl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMC1pbnQtY3ViZWFycmF5OgogICAg
LSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNw
ZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0wLXVpbnQtY3ViZToKICAg
IC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBz
cGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMC11aW50LWN1YmVhcnJh
eToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMK
CiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMS1mbG9hdC1j
dWJlOgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0g
cwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0xLWZsb2F0
LWN1YmVhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTog
WzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEt
MS1pbnQtY3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTog
WzAuMTBdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEt
MS1pbnQtY3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0
aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMt
cmdiYS0xLXVpbnQtY3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMg
dGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZz
LXJnYmEtMS11aW50LWN1YmVhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAt
IEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0
aGVyQGZzLXJnYmEtMi1mbG9hdC1jdWJlOgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVn
YXRoZXJAZnMtcmdiYS0yLWZsb2F0LWN1YmVhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNo
KHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0
ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMi1pbnQtY3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNo
KHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0
ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMi1pbnQtY3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEg
Y3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFk
ZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0yLXVpbnQtY3ViZToKICAgIC0gU3RhdHVzZXMgOiAx
IGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hh
ZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMi11aW50LWN1YmVhcnJheToKICAgIC0gU3RhdHVz
ZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9n
cHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMy1mbG9hdC1jdWJlOgogICAgLSBTdGF0
dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJi
X2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0zLWZsb2F0LWN1YmVhcnJheToKICAg
IC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBz
cGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMy1pbnQtY3ViZToKICAg
IC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBz
cGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMy1pbnQtY3ViZWFycmF5
OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoK
ICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJAZnMtcmdiYS0zLXVpbnQtY3Vi
ZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMK
CiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQGZzLXJnYmEtMy11aW50LWN1
YmVhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAu
MDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQHZzLXItbm9uZS1z
aGFkb3ctY3ViZToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTog
WzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyQHZzLXItbm9u
ZS1zaGFkb3ctY3ViZWFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhl
YyB0aW1lOiBbMC4wOV0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJv
ZmZzZXRAZnMtci1ub25lLXNoYWRvdy0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2go
cykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRl
eHR1cmVnYXRoZXJvZmZzZXRAZnMtcmctMC1pbnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAx
IGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hh
ZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnLTAtaW50LTJkYXJyYXktY29uc3Q6CiAgICAt
IFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3Bl
Y0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZy0wLXVpbnQtMmRhcnJh
eToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMK
CiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnLTAtdWlu
dC0yZGFycmF5LWNvbnN0OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0
aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZz
ZXRAZnMtcmctMS1pbnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAt
IEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0
aGVyb2Zmc2V0QGZzLXJnLTEtaW50LTJkYXJyYXktY29uc3Q6CiAgICAtIFN0YXR1c2VzIDogMSBj
cmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRl
cjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZy0xLXVpbnQtMmRhcnJheToKICAgIC0gU3RhdHVz
ZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9n
cHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnLTEtdWludC0yZGFycmF5LWNvbnN0
OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoK
ICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMtcmdiLTAtaW50
LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFsw
LjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1y
Z2ItMC1pbnQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAt
IEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0
aGVyb2Zmc2V0QGZzLXJnYi0wLXVpbnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNo
KHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0
ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYi0wLXVpbnQtMmRhcnJheS1jb25zdDoKICAgIC0gU3Rh
dHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFy
Yl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYi0xLWludC0yZGFycmF5Ogog
ICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAq
IHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMtcmdiLTEtaW50LTJk
YXJyYXktY29uc3Q6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6
IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBm
cy1yZ2ItMS11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBF
eGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhl
cm9mZnNldEBmcy1yZ2ItMS11aW50LTJkYXJyYXktY29uc3Q6CiAgICAtIFN0YXR1c2VzIDogMSBj
cmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRl
cjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2ItMi1pbnQtMmRhcnJheToKICAgIC0gU3RhdHVz
ZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9n
cHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYi0yLWludC0yZGFycmF5LWNvbnN0
OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoK
ICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMtcmdiLTItdWlu
dC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBb
MC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMt
cmdiLTItdWludC0yZGFycmF5LWNvbnN0OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVn
YXRoZXJvZmZzZXRAZnMtcmdiYS0wLWZsb2F0LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBj
cmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRl
cjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTAtZmxvYXQtMmRhcnJheS1jb25zdDoKICAg
IC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDldIHMKCiAgKiBz
cGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEtMC1pbnQtMmRh
cnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMTBd
IHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEt
MC1pbnQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4
ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVy
b2Zmc2V0QGZzLXJnYmEtMC11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChz
KQogICAgLSBFeGVjIHRpbWU6IFswLjA5XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4
dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTAtdWludC0yZGFycmF5LWNvbnN0OgogICAgLSBTdGF0
dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJi
X2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMtcmdiYS0xLWZsb2F0LTJkYXJyYXk6
CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjEwXSBzCgog
ICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTEtZmxv
YXQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMg
dGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zm
c2V0QGZzLXJnYmEtMS1pbnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAg
ICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJl
Z2F0aGVyb2Zmc2V0QGZzLXJnYmEtMS1pbnQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMg
OiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVf
c2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEtMS11aW50LTJkYXJyYXk6CiAgICAt
IFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3Bl
Y0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTEtdWludC0yZGFy
cmF5LWNvbnN0OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBb
MC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAZnMt
cmdiYS0yLWZsb2F0LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBF
eGVjIHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhl
cm9mZnNldEBmcy1yZ2JhLTItZmxvYXQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMgOiAx
IGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDldIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hh
ZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEtMi1pbnQtMmRhcnJheToKICAgIC0gU3Rh
dHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFy
Yl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEtMi1pbnQtMmRhcnJheS1j
b25zdDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDdd
IHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEt
Mi11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRp
bWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNl
dEBmcy1yZ2JhLTItdWludC0yZGFycmF5LWNvbnN0OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2go
cykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRl
eHR1cmVnYXRoZXJvZmZzZXRAZnMtcmdiYS0zLWZsb2F0LTJkYXJyYXk6CiAgICAtIFN0YXR1c2Vz
IDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1
X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTMtZmxvYXQtMmRhcnJheS1jb25z
dDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMK
CiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZzLXJnYmEtMy1p
bnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTog
WzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0QGZz
LXJnYmEtMy1pbnQtMmRhcnJheS1jb25zdDoKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAg
ICAtIEV4ZWMgdGltZTogWzAuMDddIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJl
Z2F0aGVyb2Zmc2V0QGZzLXJnYmEtMy11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBj
cmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRl
cjVAdGV4dHVyZWdhdGhlcm9mZnNldEBmcy1yZ2JhLTMtdWludC0yZGFycmF5LWNvbnN0OgogICAg
LSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNw
ZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRAdnMtci1ub25lLXNoYWRvdy0y
ZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4w
N10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRzQGZzLXIt
bm9uZS1zaGFkb3ctMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4
ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVy
b2Zmc2V0c0Bmcy1yZy0wLWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykK
ICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1
cmVnYXRoZXJvZmZzZXRzQGZzLXJnLTAtdWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEg
Y3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wNl0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFk
ZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRzQGZzLXJnLTEtaW50LTJkYXJyYXk6CiAgICAtIFN0YXR1
c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJf
Z3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmctMS11aW50LTJkYXJyYXk6CiAg
ICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICog
c3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiLTAtaW50LTJk
YXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3
XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdi
LTAtdWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0
aW1lOiBbMC4xMF0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZz
ZXRzQGZzLXJnYi0xLWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4wNl0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVn
YXRoZXJvZmZzZXRzQGZzLXJnYi0xLXVpbnQtMmRhcnJheToKICAgIC0gU3RhdHVzZXMgOiAxIGNy
YXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDZdIHMKCiAgKiBzcGVjQGFyYl9ncHVfc2hhZGVy
NUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0c0Bmcy1yZ2ItMi1pbnQtMmRhcnJheToKICAgIC0gU3RhdHVz
ZXMgOiAxIGNyYXNoKHMpCiAgICAtIEV4ZWMgdGltZTogWzAuMDhdIHMKCiAgKiBzcGVjQGFyYl9n
cHVfc2hhZGVyNUB0ZXh0dXJlZ2F0aGVyb2Zmc2V0c0Bmcy1yZ2ItMi11aW50LTJkYXJyYXk6CiAg
ICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICog
c3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiYS0wLWZsb2F0
LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFsw
LjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMt
cmdiYS0wLWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhl
YyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJv
ZmZzZXRzQGZzLXJnYmEtMC11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChz
KQogICAgLSBFeGVjIHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4
dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiYS0xLWZsb2F0LTJkYXJyYXk6CiAgICAtIFN0YXR1c2Vz
IDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1
X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiYS0xLWludC0yZGFycmF5OgogICAg
LSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOF0gcwoKICAqIHNw
ZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRzQGZzLXJnYmEtMS11aW50LTJk
YXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA3
XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdi
YS0yLWZsb2F0LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVj
IHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9m
ZnNldHNAZnMtcmdiYS0yLWludC0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykK
ICAgIC0gRXhlYyB0aW1lOiBbMC4wOV0gcwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1
cmVnYXRoZXJvZmZzZXRzQGZzLXJnYmEtMi11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDog
MSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA4XSBzCgogICogc3BlY0BhcmJfZ3B1X3No
YWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiYS0zLWZsb2F0LTJkYXJyYXk6CiAgICAt
IFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRpbWU6IFswLjA4XSBzCgogICogc3Bl
Y0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNldHNAZnMtcmdiYS0zLWludC0yZGFy
cmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOV0g
cwoKICAqIHNwZWNAYXJiX2dwdV9zaGFkZXI1QHRleHR1cmVnYXRoZXJvZmZzZXRzQGZzLXJnYmEt
My11aW50LTJkYXJyYXk6CiAgICAtIFN0YXR1c2VzIDogMSBjcmFzaChzKQogICAgLSBFeGVjIHRp
bWU6IFswLjA3XSBzCgogICogc3BlY0BhcmJfZ3B1X3NoYWRlcjVAdGV4dHVyZWdhdGhlcm9mZnNl
dHNAdnMtci1ub25lLXNoYWRvdy0yZGFycmF5OgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykK
ICAgIC0gRXhlYyB0aW1lOiBbMC4wN10gcwoKICAqIHNwZWNAYXJiX3BpeGVsX2J1ZmZlcl9vYmpl
Y3RAdGV4c3ViaW1hZ2UgYXJyYXkgcGJvOgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2gocykKICAg
IC0gRXhlYyB0aW1lOiBbMS44M10gcwoKICAqIHNwZWNAYXJiX3BpeGVsX2J1ZmZlcl9vYmplY3RA
dGV4c3ViaW1hZ2UgY3ViZV9tYXBfYXJyYXkgcGJvOgogICAgLSBTdGF0dXNlcyA6IDEgY3Jhc2go
cykKICAgIC0gRXhlYyB0aW1lOiBbMC4wOV0gcwoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MjMxX2Z1bGwg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJ
c3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRp
YXRlOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxMF0gLT4gW0ZBSUxdWzExXSAo
W2ZkbyMxMDU5NTddKQogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82ODA2L3NoYXJkLXNuYjcvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LWNvbnRl
eHRzLWltbWVkaWF0ZS5odG1sCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjMxL3NoYXJkLXNuYjIvaWd0QGdlbV9laW9AaW4tZmxp
Z2h0LWNvbnRleHRzLWltbWVkaWF0ZS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBy
ZWVtcHQtc2VsZi1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzEyXSAtPiBb
U0tJUF1bMTNdIChbZmRvIzExMTMyNV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzEyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNi9zaGFyZC1pY2xi
Ny9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1zZWxmLWJzZC5odG1sCiAgIFsxM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjMxL3No
YXJkLWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXNlbGYtYnNkLmh0bWwKCiAg
KiBpZ3RAZ2VtX3B3cml0ZUBzbWFsbC1ndHQtZmJyOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAg
IFtQQVNTXVsxNF0gLT4gW0lOQ09NUExFVEVdWzE1XSAoW2ZkbyMxMDM5MjddKSArMSBzaW1pbGFy
IGlzc3VlCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4MDYvc2hhcmQtYXBsMi9pZ3RAZ2VtX3B3cml0ZUBzbWFsbC1ndHQtZmJyLmh0bWwK
ICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQyMzEvc2hhcmQtYXBsOC9pZ3RAZ2VtX3B3cml0ZUBzbWFsbC1ndHQtZmJyLmh0bWwKCiAg
KiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbUEFTU11bMTZdIC0+IFtJTkNPTVBMRVRFXVsxN10gKFtmZG8jMTAzOTI3XSAvIFtm
ZG8jMTA4Njg2XSkKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjgwNi9zaGFyZC1hcGwzL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRo
cmVhZGVkLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQyMzEvc2hhcmQtYXBsNS9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5v
bi10aHJlYWRlZC5odG1sCiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE4XSAtPiBb
SU5DT01QTEVURV1bMTldIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwODY4Nl0pCiAgIFsxOF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4MDYvc2hhcmQt
aWNsYjUvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAogICBbMTldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIzMS9z
aGFyZC1pY2xiNy9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCiAgICAt
IHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzIwXSAtPiBbSU5DT01QTEVURV1bMjFdIChbZmRv
IzEwMzM1OV0gLyBbZmRvIzEwODY4Nl0gLyBbay5vcmcjMTk4MTMzXSkKICAgWzIwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNi9zaGFyZC1nbGs5
L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKICAgWzIxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMzEvc2hhcmQt
Z2xrOS9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCgogICogaWd0QGdl
bV92bV9jcmVhdGVAZXhlY2J1ZjoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMjJd
IC0+IFtTS0lQXVsyM10gKFtmZG8jMTA5MjcxXSkgKzkgc2ltaWxhciBpc3N1ZXMKICAgWzIyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNi9zaGFy
ZC1oc3cyL2lndEBnZW1fdm1fY3JlYXRlQGV4ZWNidWYuaHRtbAogICBbMjNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIzMS9zaGFyZC1oc3c1
L2lndEBnZW1fdm1fY3JlYXRlQGV4ZWNidWYuaHRtbAoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNA
c3VzcGVuZC1yZXN1bWUtY29udGV4dDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11b
MjRdIC0+IFtETUVTRy1XQVJOXVsyNV0gKAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBz
ZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MjMxLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
