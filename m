Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F662B370
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019528967B;
	Mon, 27 May 2019 11:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04E05894EA;
 Mon, 27 May 2019 11:47:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0DC0A0073;
 Mon, 27 May 2019 11:47:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 May 2019 11:47:23 -0000
Message-ID: <20190527114723.25361.16696@emeril.freedesktop.org>
References: <20190527111053.12486-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190527111053.12486-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Keep_user_GGTT_alive_for_a_minimum_of_250ms_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEtlZXAgdXNlciBHR1RUIGFs
aXZlIGZvciBhIG1pbmltdW0gb2YgMjUwbXMgKHJldjUpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTA0Ny8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MTQ3IC0+IFBhdGNod29y
a18xMzEwNQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNo
YW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzMTA1IGFic29sdXRlbHkgbmVlZCB0byBiZQog
IHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdl
cyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEzMTA1LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQog
IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1LwoKUG9zc2libGUgbmV3IGlzc3Vl
cwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhh
dCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMTA1OgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVf
bW9kdWxlX2xvYWRAcmVsb2FkOgogICAgLSBmaS1rYmwtcjogICAgICAgICAgIFtQQVNTXVsxXSAt
PiBbSU5DT01QTEVURV1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWtibC1yL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9h
ZC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMxMDUvZmkta2JsLXIvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwK
ICAgIC0gZmktd2hsLXU6ICAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdCiAg
IFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0
Ny9maS13aGwtdS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLXdo
bC11L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLXNrbC1pb21tdTog
ICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XQogICBbNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktc2tsLWlvbW11L2lndEBp
OTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktc2tsLWlvbW11L2lndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWhzdy00NzcwcjogICAgICAgW1BBU1Nd
WzddIC0+IFtJTkNPTVBMRVRFXVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktaHN3LTQ3NzByL2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktaHN3LTQ3NzByL2lndEBpOTE1X21vZHVsZV9sb2Fk
QHJlbG9hZC5odG1sCiAgICAtIGZpLXNrbC02NzAwazI6ICAgICAgW1BBU1NdWzldIC0+IFtJTkNP
TVBMRVRFXVsxMF0KICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MTQ3L2ZpLXNrbC02NzAwazIvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMxMDUvZmktc2tsLTY3MDBrMi9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQu
aHRtbAogICAgLSBmaS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVsxMV0gLT4gW0lOQ09NUExFVEVd
WzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MTQ3L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAog
ICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzEwNS9maS1ic3cta2Vma2EvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAg
IC0gZmktYmR3LTU1NTd1OiAgICAgICBbUEFTU11bMTNdIC0+IFtJTkNPTVBMRVRFXVsxNF0KICAg
WzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0
Ny9maS1iZHctNTU1N3UvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzE0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUv
ZmktYmR3LTU1NTd1L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLXNr
bC1ndWM6ICAgICAgICAgW1BBU1NdWzE1XSAtPiBbSU5DT01QTEVURV1bMTZdCiAgIFsxNV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktc2ts
LWd1Yy9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMTZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1za2wtZ3Vj
L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWtibC1ndWM6ICAgICAg
ICAgW1BBU1NdWzE3XSAtPiBbSU5DT01QTEVURV1bMThdCiAgIFsxN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmkta2JsLWd1Yy9pZ3RAaTkx
NV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1rYmwtZ3VjL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWNmbC04MTA5dTogICAgICAgW1BBU1NdWzE5
XSAtPiBbSU5DT01QTEVURV1bMjBdCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktY2ZsLTgxMDl1L2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWNmbC04MTA5dS9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQuaHRtbAogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVsyMV0gLT4gW0lO
Q09NUExFVEVdWzIyXQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxv
YWQuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzEwNS9maS1rYmwtNzUwMHUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
Lmh0bWwKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11bMjNdIC0+IFtJTkNPTVBMRVRF
XVsyNF0KICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjE0Ny9maS1jZmwtODcwMGsvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwK
ICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMxMDUvZmktY2ZsLTg3MDBrL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAg
ICAtIGZpLXNuYi0yNTIwbTogICAgICAgW1BBU1NdWzI1XSAtPiBbSU5DT01QTEVURV1bMjZdCiAg
IFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYx
NDcvZmktc25iLTI1MjBtL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsyNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1
L2ZpLXNuYi0yNTIwbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICAgLSBmaS1o
c3ctNDc3MDogICAgICAgIFtQQVNTXVsyN10gLT4gW0lOQ09NUExFVEVdWzI4XQogICBbMjddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWhz
dy00NzcwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsyOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWhzdy00
NzcwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWNmbC1ndWM6ICAg
ICAgICAgW1BBU1NdWzI5XSAtPiBbSU5DT01QTEVURV1bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktY2ZsLWd1Yy9pZ3RA
aTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1jZmwtZ3VjL2lndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1BBU1Nd
WzMxXSAtPiBbSU5DT01QTEVURV1bMzJdCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9tb2R1
bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1za2wtNjc3MGhxL2lndEBpOTE1X21vZHVs
ZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWJzdy1uMzA1MDogICAgICAgTk9UUlVOIC0+IFtJ
TkNPTVBMRVRFXVszM10KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktYnN3LW4zMDUwL2lndEBpOTE1X21vZHVsZV9sb2Fk
QHJlbG9hZC5odG1sCiAgICAtIGZpLWlsay02NTA6ICAgICAgICAgW1BBU1NdWzM0XSAtPiBbSU5D
T01QTEVURV1bMzVdCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYxNDcvZmktaWxrLTY1MC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQu
aHRtbAogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzEwNS9maS1pbGstNjUwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1s
CiAgICAtIGZpLWl2Yi0zNzcwOiAgICAgICAgW1BBU1NdWzM2XSAtPiBbSU5DT01QTEVURV1bMzdd
CiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYxNDcvZmktaXZiLTM3NzAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzM3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
MDUvZmktaXZiLTM3NzAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0gZmkt
c2tsLWxtZW06ICAgICAgICBbUEFTU11bMzhdIC0+IFtJTkNPTVBMRVRFXVszOV0KICAgWzM4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1z
a2wtbG1lbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMzldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1za2wt
bG1lbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICAgLSBmaS1oc3ctcGVwcHk6
ICAgICAgIFtQQVNTXVs0MF0gLT4gW0lOQ09NUExFVEVdWzQxXQogICBbNDBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWhzdy1wZXBweS9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbNDFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1oc3ctcGVwcHkvaWd0
QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0gZmktc2tsLTYyNjB1OiAgICAgICBb
UEFTU11bNDJdIC0+IFtJTkNPTVBMRVRFXVs0M10KICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1za2wtNjI2MHUvaWd0QGk5MTVf
bW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktc2tsLTYyNjB1L2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWtibC03NTY3dTogICAgICAgW1BBU1NdWzQ0
XSAtPiBbSU5DT01QTEVURV1bNDVdCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmkta2JsLTc1Njd1L2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQuaHRtbAogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtQQVNTXVs0Nl0gLT4gW0lO
Q09NUExFVEVdWzQ3XQogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWtibC14MTI3NS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxv
YWQuaHRtbAogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzEwNS9maS1rYmwteDEyNzUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
Lmh0bWwKICAgIC0gZmktZ2RnLTU1MTogICAgICAgICBbUEFTU11bNDhdIC0+IFtJTkNPTVBMRVRF
XVs0OV0KICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjE0Ny9maS1nZGctNTUxL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAg
IFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMTA1L2ZpLWdkZy01NTEvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKCiAgKiBp
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheToKICAgIC0gZmktYndyLTIxNjA6
ICAgICAgICBbUEFTU11bNTBdIC0+IFtJTkNPTVBMRVRFXVs1MV0KICAgWzUwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1id3ItMjE2MC9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheS5odG1sCiAgIFs1MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJ3
ci0yMTYwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC1uby1kaXNwbGF5Lmh0bWwKCiAgKiBp
Z3RAcnVubmVyQGFib3J0ZWQ6CiAgICAtIGZpLWlsay02NTA6ICAgICAgICAgTk9UUlVOIC0+IFtG
QUlMXVs1Ml0KICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMxMDUvZmktaWxrLTY1MC9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAg
LSBmaS1wbnYtZDUxMDogICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNTNdCiAgIFs1M106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLXBu
di1kNTEwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJkdy1ndnRkdm06ICAgICAg
Tk9UUlVOIC0+IFtGQUlMXVs1NF0KICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktYmR3LWd2dGR2bS9pZ3RAcnVubmVyQGFi
b3J0ZWQuaHRtbAogICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNTVd
CiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMTA1L2ZpLWNmbC04MTA5dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1o
c3ctcGVwcHk6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNTZdCiAgIFs1Nl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWhzdy1wZXBw
eS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIE5PVFJV
TiAtPiBbRkFJTF1bNTddCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWljbC11Mi9pZ3RAcnVubmVyQGFib3J0ZWQuaHRt
bAogICAgLSBmaS1nZGctNTUxOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNThdCiAgIFs1OF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1
L2ZpLWdkZy01NTEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktc25iLTI1MjBtOiAg
ICAgICBOT1RSVU4gLT4gW0ZBSUxdWzU5XQogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1zbmItMjUyMG0vaWd0QHJ1bm5l
ckBhYm9ydGVkLmh0bWwKICAgIC0gZmktaHN3LTQ3NzA6ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxd
WzYwXQogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzEwNS9maS1oc3ctNDc3MC9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBm
aS1rYmwtNzUwMHU6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNjFdCiAgIFs2MV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWtibC03
NTAwdS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ieHQtajQyMDU6ICAgICAgIE5P
VFJVTiAtPiBbRkFJTF1bNjJdCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJ4dC1qNDIwNS9pZ3RAcnVubmVyQGFib3J0
ZWQuaHRtbAogICAgLSBmaS13aGwtdTogICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNjNdCiAg
IFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMTA1L2ZpLXdobC11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWNtbC11Mjog
ICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2NF0KICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktY21sLXUyL2lndEBydW5u
ZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWljbC11MzogICAgICAgICAgTk9UUlVOIC0+IFtGQUlM
XVs2NV0KICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMxMDUvZmktaWNsLXUzL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZp
LWl2Yi0zNzcwOiAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2Nl0KICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktaXZiLTM3
NzAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBOT1RS
VU4gLT4gW0ZBSUxdWzY3XQogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1ieHQtZHNpL2lndEBydW5uZXJAYWJvcnRlZC5o
dG1sCiAgICAtIGZpLWJ5dC1qMTkwMDogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OF0KICAgWzY4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
MDUvZmktYnl0LWoxOTAwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWljbC15OiAg
ICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OV0KICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktaWNsLXkvaWd0QHJ1bm5l
ckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2JsLTc1Njd1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxd
WzcwXQogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzEwNS9maS1rYmwtNzU2N3UvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0g
ZmktYnN3LW4zMDUwOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzcxXQogICBbNzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1ic3ct
bjMwNTAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBO
T1RSVU4gLT4gW0ZBSUxdWzcyXQogICBbNzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1ibGItZTY4NTAvaWd0QHJ1bm5lckBhYm9y
dGVkLmh0bWwKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzczXQog
ICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzEwNS9maS1rYmwteDEyNzUvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnN3
LWtlZmthOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzc0XQogICBbNzRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1ic3cta2Vma2Ev
aWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBOT1RSVU4g
LT4gW0ZBSUxdWzc1XQogICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1jZmwtODcwMGsvaWd0QHJ1bm5lckBhYm9ydGVkLmh0
bWwKICAgIC0gZmktaHN3LTQ3NzByOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzc2XQogICBbNzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEw
NS9maS1oc3ctNDc3MHIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2JsLTg4MDln
OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzc3XQogICBbNzddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1rYmwtODgwOWcvaWd0QHJ1
bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2JsLXI6ICAgICAgICAgICBOT1RSVU4gLT4gW0ZB
SUxdWzc4XQogICBbNzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzEwNS9maS1rYmwtci9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBm
aS1iZHctNTU1N3U6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNzldCiAgIFs3OV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJkdy01
NTU3dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ieXQtbjI4MjA6ICAgICAgIE5P
VFJVTiAtPiBbRkFJTF1bODBdCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJ5dC1uMjgyMC9pZ3RAcnVubmVyQGFib3J0
ZWQuaHRtbAogICAgLSBmaS1zbmItMjYwMDogICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODFdCiAg
IFs4MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMTA1L2ZpLXNuYi0yNjAwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWVsay1l
NzUwMDogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs4Ml0KICAgWzgyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktZWxrLWU3NTAwL2ln
dEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzEwNSB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMj
IwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0gZmktY21sLXU6ICAg
ICAgICAgICBbUEFTU11bODNdIC0+IFtJTkNPTVBMRVRFXVs4NF0gKFtmZG8jMTEwNTY2XSkKICAg
WzgzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0
Ny9maS1jbWwtdS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBbODRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9m
aS1jbWwtdS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAoKICAqIGlndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZDoKICAgIC0gZmkta2JsLTg4MDlnOiAgICAgICBbUEFTU11bODVd
IC0+IFtJTkNPTVBMRVRFXVs4Nl0gKFtmZG8jMTAzNjY1XSkKICAgWzg1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1rYmwtODgwOWcvaWd0
QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzg2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmkta2JsLTg4MDlnL2lndEBp
OTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWJ5dC1qMTkwMDogICAgICAgW1BB
U1NdWzg3XSAtPiBbSU5DT01QTEVURV1bODhdIChbZmRvIzEwMjY1N10pCiAgIFs4N106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktYnl0LWox
OTAwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFs4OF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJ5dC1qMTkw
MC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICAgLSBmaS1za2wtNjYwMHU6ICAg
ICAgIFtQQVNTXVs4OV0gLT4gW0lOQ09NUExFVEVdWzkwXSAoW2ZkbyMxMDQxMDhdKQogICBbODld
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2Zp
LXNrbC02NjAwdS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbOTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1z
a2wtNjYwMHUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0gZmktZWxrLWU3
NTAwOiAgICAgICBbUEFTU11bOTFdIC0+IFtJTkNPTVBMRVRFXVs5Ml0gKFtmZG8jMTAzOTg5XSkK
ICAgWzkxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjE0Ny9maS1lbGstZTc1MDAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzky
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
MDUvZmktZWxrLWU3NTAwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZp
LWdsay1kc2k6ICAgICAgICAgW1BBU1NdWzkzXSAtPiBbSU5DT01QTEVURV1bOTRdIChbZmRvIzEw
MzM1OV0gLyBbay5vcmcjMTk4MTMzXSkKICAgWzkzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1nbGstZHNpL2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCiAgIFs5NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWdsay1kc2kvaWd0QGk5MTVfbW9kdWxlX2xvYWRA
cmVsb2FkLmh0bWwKICAgIC0gZmktYmR3LWd2dGR2bTogICAgICBbUEFTU11bOTVdIC0+IFtJTkNP
TVBMRVRFXVs5Nl0gKFtmZG8jMTA1NjAwXSkKICAgWzk1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFs5Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJkdy1ndnRkdm0vaWd0QGk5MTVfbW9k
dWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0gZmktY21sLXUyOiAgICAgICAgICBbUEFTU11bOTdd
IC0+IFtJTkNPTVBMRVRFXVs5OF0gKFtmZG8jMTEwNTY2XSkKICAgWzk3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1jbWwtdTIvaWd0QGk5
MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzk4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktY21sLXUyL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWJ4dC1kc2k6ICAgICAgICAgW1BBU1NdWzk5
XSAtPiBbSU5DT01QTEVURV1bMTAwXSAoW2ZkbyMxMDM5MjddKQogICBbOTldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWJ4dC1kc2kvaWd0
QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzEwMF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWJ4dC1kc2kvaWd0QGk5
MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0gZmktc2tsLWd2dGR2bTogICAgICBbUEFT
U11bMTAxXSAtPiBbSU5DT01QTEVURV1bMTAyXSAoW2ZkbyMxMDU2MDBdKQogICBbMTAxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1za2wt
Z3Z0ZHZtL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsxMDJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEwNS9maS1za2wt
Z3Z0ZHZtL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWJ4dC1qNDIw
NTogICAgICAgW1BBU1NdWzEwM10gLT4gW0lOQ09NUExFVEVdWzEwNF0gKFtmZG8jMTAzOTI3XSkK
ICAgWzEwM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYxNDcvZmktYnh0LWo0MjA1L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsx
MDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzEwNS9maS1ieHQtajQyMDUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgIC0g
ZmktYnl0LW4yODIwOiAgICAgICBbUEFTU11bMTA1XSAtPiBbSU5DT01QTEVURV1bMTA2XSAoW2Zk
byMxMDI2NTddKQogICBbMTA1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjE0Ny9maS1ieXQtbjI4MjAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
Lmh0bWwKICAgWzEwNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMTA1L2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQu
aHRtbAogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVsxMDddIC0+IFtJTkNPTVBMRVRF
XVsxMDhdIChbZmRvIzEwNzcxM10pCiAgIFsxMDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWljbC11My9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQuaHRtbAogICBbMTA4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktaWNsLXUzL2lndEBpOTE1X21vZHVsZV9sb2FkQHJl
bG9hZC5odG1sCiAgICAtIGZpLXNuYi0yNjAwOiAgICAgICAgW1BBU1NdWzEwOV0gLT4gW0lOQ09N
UExFVEVdWzExMF0gKFtmZG8jMTA1NDExXSkKICAgWzEwOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktc25iLTI2MDAvaWd0QGk5MTVfbW9k
dWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzExMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLXNuYi0yNjAwL2lndEBpOTE1X21vZHVs
ZV9sb2FkQHJlbG9hZC5odG1sCiAgICAtIGZpLWljbC15OiAgICAgICAgICAgW1BBU1NdWzExMV0g
LT4gW0lOQ09NUExFVEVdWzExMl0gKFtmZG8jMTA3NzEzXSkKICAgWzExMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktaWNsLXkvaWd0QGk5
MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKICAgWzExMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWljbC15L2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZhc3Q6
CiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzExM10gLT4gW0ZBSUxdWzExNF0gKFtm
ZG8jMTEwNjI3XSkKICAgWzExM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYxNDcvZmktY21sLXUyL2lndEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0
Lmh0bWwKICAgWzExNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMTA1L2ZpLWNtbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5o
dG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVu
ZEBiYXNpYy1zMzoKICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBbSU5DT01QTEVURV1bMTE1XSAo
W2ZkbyMxMDc3MThdKSAtPiBbUEFTU11bMTE2XQogICBbMTE1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Ny9maS1ibGItZTY4NTAvaWd0QGdlbV9l
eGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAogICBbMTE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktYmxiLWU2ODUwL2lndEBnZW1f
ZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1h
OgogICAgLSBmaS1rYmwtNzU2N3U6ICAgICAgIFtTS0lQXVsxMTddIChbZmRvIzEwOTI3MV0gLyBb
ZmRvIzEwOTI3OF0pIC0+IFtQQVNTXVsxMThdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxMTddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQ3L2ZpLWti
bC03NTY3dS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKICAgWzExOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1L2ZpLWtibC03
NTY3dS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lAYmFz
aWMtZmxpcC1jOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVsxMTldIChb
ZmRvIzEwNzcyNF0pIC0+IFtQQVNTXVsxMjBdICsxIHNpbWlsYXIgaXNzdWUKICAgWzExOV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDcvZmktaWNs
LXUzL2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWMuaHRtbAogICBbMTIwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMDUvZmktaWNsLXUzL2ln
dEBrbXNfYnVzeUBiYXNpYy1mbGlwLWMuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICog
aWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkOgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtE
TUVTRy1XQVJOXVsxMjFdIChbZmRvIzExMDU5NV0pIC0+IFtJTkNPTVBMRVRFXVsxMjJdIChbZmRv
IzEwNzcxM10pCiAgIFsxMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MTQ3L2ZpLWljbC11Mi9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRt
bAogICBbMTIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMxMDUvZmktaWNsLXUyL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCgog
ICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBmaS1za2wtaW9tbXU6ICAgICAgIFtGQUlMXVsx
MjNdIChbZmRvIzEwNDEwOF0gLyBbZmRvIzEwODYwMl0pIC0+IFtGQUlMXVsxMjRdIChbZmRvIzEw
NDEwOF0pCiAgIFsxMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MTQ3L2ZpLXNrbC1pb21tdS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTI0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
MDUvZmktc2tsLWlvbW11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAogIFtmZG8jMTAyNjU3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyNjU3CiAg
W2ZkbyMxMDMzNTldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMzNTkKICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzY2NQogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDM5ODldOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5ODkKICBbZmRvIzEwNDEwOF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtm
ZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA1NDExCiAgW2ZkbyMxMDU2MDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDU2MDAKICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA3NzE4XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzE4CiAgW2ZkbyMxMDc3MjRdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRv
IzEwODYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
OAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTA1LwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
