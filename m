Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40164105DD3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 01:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609D16E25E;
	Fri, 22 Nov 2019 00:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEDF96E25E;
 Fri, 22 Nov 2019 00:50:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E618EA0BA8;
 Fri, 22 Nov 2019 00:50:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Fri, 22 Nov 2019 00:50:24 -0000
Message-ID: <157438382493.23771.11616082119538389460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191122001627.541739-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191122001627.541739-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests=3A_add_basic_selftests_for_rc6_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBhZGQgYmFz
aWMgc2VsZnRlc3RzIGZvciByYzYgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82OTgyNS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDAxIC0+IFBhdGNod29ya18xNTM4
Ngo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpT
dW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzE1Mzg2IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlm
aWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZl
IG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE1Mzg2LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRv
Y3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBp
c3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2Vz
IHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTM4NjoKCiMjIyBJ
R1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG06CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1Nd
WzFdIC0+IFtETUVTRy1GQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfcG0uaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWljbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X3BtLmh0bWwKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLUZB
SUxdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzQwMS9maS1rYmwtNzUwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUzODYvZmkta2JsLTc1MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAog
ICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctRkFJTF1bNl0KICAg
WzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAx
L2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1p
Y2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLWdsay1kc2k6
ICAgICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1GQUlMXVs4XQogICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktZ2xrLWRzaS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1nbGstZHNpL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1oc3ctcGVwcHk6ICAgICAgIFtQQVNT
XVs5XSAtPiBbRE1FU0ctRkFJTF1bMTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ndF9wbS5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X3BtLmh0bWwKICAgIC0gZmktc2tsLTY3MDBrMjogICAgICBbUEFTU11bMTFdIC0+
IFtETUVTRy1GQUlMXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1za2wtNjcwMGsyL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfcG0uaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1za2wtNjcwMGsyL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfcG0uaHRtbAogICAgLSBmaS1ic3ctbjMwNTA6ICAgICAgIFtQQVNTXVsxM10gLT4gW0RN
RVNHLUZBSUxdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDAxL2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X3BtLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzODYvZmktYnN3LW4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
cG0uaHRtbAogICAgLSBmaS1rYmwtc29yYWthOiAgICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNHLUZB
SUxdWzE2XQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83NDAxL2ZpLWtibC1zb3Jha2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5o
dG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1Mzg2L2ZpLWtibC1zb3Jha2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5o
dG1sCiAgICAtIGZpLXdobC11OiAgICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRE1FU0ctRkFJTF1b
MThdCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzc0MDEvZmktd2hsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFsx
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
Mzg2L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1j
ZmwtZ3VjOiAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0RNRVNHLUZBSUxdWzIwXQogICBbMTldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWNm
bC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFsyMF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWNmbC1n
dWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLWhzdy00NzcwOiAg
ICAgICAgW1BBU1NdWzIxXSAtPiBbRE1FU0ctRkFJTF1bMjJdCiAgIFsyMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktaHN3LTQ3NzAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWhzdy00NzcwL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1ieHQtZHNpOiAgICAgICAgIFtQ
QVNTXVsyM10gLT4gW0RNRVNHLUZBSUxdWzI0XQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWJ4dC1kc2kvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWJ4dC1kc2kvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLXNrbC02NjAwdTogICAgICAgW1BBU1NdWzI1XSAt
PiBbRE1FU0ctRkFJTF1bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktc2tsLTY2MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfcG0uaHRtbAogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1za2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ndF9wbS5odG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbRE1F
U0ctRkFJTF1bMjhdCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0MDEvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0u
aHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTM4Ni9maS1jbWwtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1s
CiAgICAtIGZpLWljbC1kc2k6ICAgICAgICAgW1BBU1NdWzI5XSAtPiBbRE1FU0ctRkFJTF1bMzBd
CiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MDEvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzMw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUz
ODYvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgIC0gZmkt
YXBsLWd1YzogICAgICAgICBbUEFTU11bMzFdIC0+IFtETUVTRy1GQUlMXVszMl0KICAgWzMxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1h
cGwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICBbMzJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1hcGwt
Z3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1rYmwtODgwOWc6
ICAgICAgIFtQQVNTXVszM10gLT4gW0RNRVNHLUZBSUxdWzM0XQogICBbMzNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWtibC04ODA5Zy9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLTg4MDlnL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1jZmwtODcwMGs6ICAgICAg
IFtQQVNTXVszNV0gLT4gW0RNRVNHLUZBSUxdWzM2XQogICBbMzVdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWNmbC04NzAway9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmktY2ZsLTg3MDBrL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1rYmwtcjogICAgICAgICAgIFtQQVNT
XVszN10gLT4gW0RNRVNHLUZBSUxdWzM4XQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWtibC1yL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZ3RfcG0uaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1rYmwtci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2d0X3BtLmh0bWwKICAgIC0gZmktYnl0LWoxOTAwOiAgICAgICBbUEFTU11bMzldIC0+IFtETUVT
Ry1GQUlMXVs0MF0KICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzQwMS9maS1ieXQtajE5MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9w
bS5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1Mzg2L2ZpLWJ5dC1qMTkwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3Bt
Lmh0bWwKICAgIC0gZmktYnN3LW5pY2s6ICAgICAgICBbUEFTU11bNDFdIC0+IFtETUVTRy1GQUlM
XVs0Ml0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzQwMS9maS1ic3ctbmljay9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwK
ICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUzODYvZmktYnN3LW5pY2svaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAg
ICAtIGZpLWljbC15OiAgICAgICAgICAgW1BBU1NdWzQzXSAtPiBbRE1FU0ctRkFJTF1bNDRdCiAg
IFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0
MDEvZmktaWNsLXkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFs0NF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2Zp
LWljbC15L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1rYmwteDEy
NzU6ICAgICAgIFtQQVNTXVs0NV0gLT4gW0RNRVNHLUZBSUxdWzQ2XQogICBbNDVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWtibC14MTI3
NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLXgxMjc1
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICAgLSBmaS1rYmwtZ3VjOiAgICAg
ICAgIFtQQVNTXVs0N10gLT4gW0RNRVNHLUZBSUxdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDAxL2ZpLWtibC1ndWMvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWtibC1ndWMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLXNrbC1ndWM6ICAgICAgICAgW1BBU1Nd
WzQ5XSAtPiBbRE1FU0ctRkFJTF1bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktc2tsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X3BtLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmktc2tsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X3BtLmh0bWwKICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBbUEFTU11bNTFdIC0+IFtE
TUVTRy1GQUlMXVs1Ml0KICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1iZHctNTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
dF9wbS5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWJkdy01NTU3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X3BtLmh0bWwKICAgIC0gZmktc25iLTI2MDA6ICAgICAgICBbUEFTU11bNTNdIC0+IFtETUVTRy1G
QUlMXVs1NF0KICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQwMS9maS1zbmItMjYwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0
bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzODYvZmktc25iLTI2MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1s
CiAgICAtIGZpLWJzdy1rZWZrYTogICAgICAgW1BBU1NdWzU1XSAtPiBbRE1FU0ctRkFJTF1bNTZd
CiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MDEvZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICBb
NTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTM4Ni9maS1ic3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAt
IGZpLWhzdy00NzcwcjogICAgICAgW1BBU1NdWzU3XSAtPiBbRE1FU0ctRkFJTF1bNThdCiAgIFs1
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEv
ZmktaHN3LTQ3NzByL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICBbNThdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9m
aS1oc3ctNDc3MHIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLWJ5
dC1uMjgyMDogICAgICAgW1BBU1NdWzU5XSAtPiBbRE1FU0ctRkFJTF1bNjBdCiAgIFs1OV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktYnl0
LW4yODIwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICBbNjBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM4Ni9maS1ieXQt
bjI4MjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLXNrbC1sbWVt
OiAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVs2MV0KICAgWzYxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmktc2tsLWxtZW0v
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgICAtIGZpLXNrbC02NzcwaHE6ICAg
ICAgW1BBU1NdWzYyXSAtPiBbRE1FU0ctRkFJTF1bNjNdCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MDEvZmktc2tsLTY3NzBocS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmktc2tsLTY3NzBocS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKICAgIC0gZmktc25iLTI1MjBtOiAgICAgICBb
UEFTU11bNjRdIC0+IFtETUVTRy1GQUlMXVs2NV0KICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1zbmItMjUyMG0vaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ndF9wbS5odG1sCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLXNuYi0yNTIwbS9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2d0X3BtLmh0bWwKCiAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6CiAgICAtIGZp
LWtibC03NTAwdTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2Nl0KICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLTc1
MDB1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWtibC14MTI3NTogICAgICAgTk9U
UlVOIC0+IFtGQUlMXVs2N10KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLXgxMjc1L2lndEBydW5uZXJAYWJvcnRl
ZC5odG1sCiAgICAtIGZpLWNmbC04NzAwazogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OF0KICAg
WzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUzODYvZmktY2ZsLTg3MDBrL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWtibC04
ODA5ZzogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OV0KICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLTg4MDlnL2ln
dEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWtibC1yOiAgICAgICAgICAgTk9UUlVOIC0+
IFtGQUlMXVs3MF0KICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUzODYvZmkta2JsLXIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAg
Cktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQg
aW4gUGF0Y2h3b3JrXzE1Mzg2IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1Qg
Y2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9leGVjX3N1c3Bl
bmRAYmFzaWMtczQtZGV2aWNlczoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bNzFd
IC0+IFtETUVTRy1XQVJOXVs3Ml0gKFtmZG8jMTA3MTM5XSkKICAgWzcxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1rYmwtNzUwMHUvaWd0
QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlcy5odG1sCiAgIFs3Ml06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2ZpLWtibC03
NTAwdS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKCiAgCiMjIyMg
UG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgog
ICAgLSBmaS1za2wtbG1lbTogICAgICAgIFtETUVTRy1XQVJOXVs3M10gKFtmZG8jMTEyMjYxXSkg
LT4gW1BBU1NdWzc0XQogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDAxL2ZpLXNrbC1sbWVtL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVs
b2FkLmh0bWwKICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzODYvZmktc2tsLWxtZW0vaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1oc3ctcGVw
cHk6ICAgICAgIFtETUVTRy1GQUlMXVs3NV0gKFtmZG8jMTEyMTQ3XSkgLT4gW1BBU1NdWzc2XQog
ICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDAxL2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFs3Nl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2
L2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBb
RE1FU0ctV0FSTl1bNzddIChbZmRvIzEwMjYxNF0pIC0+IFtQQVNTXVs3OF0KICAgWzc3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQwMS9maS1oc3ct
cGVwcHkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFs3OF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2Zp
LWhzdy1wZXBweS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiAg
e25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25v
cmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNl
IChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI2MTRdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2MTQKICBbZmRvIzEwNzEz
OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzEzOQog
IFtmZG8jMTA5OTY0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA5OTY0CiAgW2ZkbyMxMTIxNDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTIxNDcKICBbZmRvIzExMjI2MV06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI2MQogIFtmZG8jMTEyMjk4XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjk4CgoKUGFydGljaXBhdGlu
ZyBob3N0cyAoNTEgLT4gNDQpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNz
aW5nICAgICg3KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJz
dy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQg
Y2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExp
bnV4OiBDSV9EUk1fNzQwMSAtPiBQYXRjaHdvcmtfMTUzODYKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkw
NTI5CiAgQ0lfRFJNXzc0MDE6IDI0MmQwNGM1ZDM5OTNlOWYwY2QwMjVhYzlhNzNhMmU4MWQ0MjA2
ZGUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTI5
OTogNjVmZWQ2YTc5YWRlYTE0ZjdiZWY2ZDU1NTMwZGE0N2Q3NzMxZDM3MCBAIGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18x
NTM4NjogMDI4ODhhMTgwNzA1MTYwYzdhYmNhMDRkOTE0YzhkMTY0Y2NmOGQ5MyBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0K
CjAyODg4YTE4MDcwNSBkcm0vaTkxNS9zZWxmdGVzdHM6IGFkZCBiYXNpYyBzZWxmdGVzdHMgZm9y
IHJjNgoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mzg2L2luZGV4Lmh0bWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
