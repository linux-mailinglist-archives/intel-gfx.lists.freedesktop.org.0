Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4947AB2D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E50346E581;
	Tue, 30 Jul 2019 14:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C45616E583;
 Tue, 30 Jul 2019 14:38:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB794A00FD;
 Tue, 30 Jul 2019 14:38:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 30 Jul 2019 14:38:56 -0000
Message-ID: <20190730143856.20693.79199@emeril.freedesktop.org>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730133035.1977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/17=5D_drm/i915/execlists=3A_Always_clear?=
 =?utf-8?q?_pending=26inflight_requests_on_reset?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE3
XSBkcm0vaTkxNS9leGVjbGlzdHM6IEFsd2F5cyBjbGVhciBwZW5kaW5nJmluZmxpZ2h0IHJlcXVl
c3RzIG9uIHJlc2V0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82NDQzMy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV82NTgxIC0+IFBhdGNod29ya18xMzgwMAo9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0K
CiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0
Y2h3b3JrXzEzODAwIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5Lgog
IAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8g
d2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzODAwLCBwbGVhc2Ug
bm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3
IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoK
ICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzODAwLwoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0t
CgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzEzODAwOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3Nz
aWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRy
aWVzOgogICAgLSBmaS1pdmItMzc3MDogICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1b
Ml0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NTgxL2ZpLWl2Yi0zNzcwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM4MDAvZmktaXZiLTM3NzAvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0
bWwKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRd
CiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjU4MS9maS1oc3ctcGVwcHkvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwK
ICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzgwMC9maS1oc3ctcGVwcHkvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0
bWwKICAgIC0gZmktYmR3LWd2dGR2bTogICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZd
CiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjU4MS9maS1iZHctZ3Z0ZHZtL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM4MDAvZmktYmR3LWd2dGR2bS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMu
aHRtbAogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVs3XSAtPiBbSU5DT01QTEVURV1b
OF0KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NTgxL2ZpLWtibC03NTAwdS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRt
bAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzODAwL2ZpLWtibC03NTAwdS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMu
aHRtbAogICAgLSBmaS1zbmItMjUyMG06ICAgICAgIFtQQVNTXVs5XSAtPiBbSU5DT01QTEVURV1b
MTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjU4MS9maS1zbmItMjUyMG0vaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0
bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM4MDAvZmktc25iLTI1MjBtL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmll
cy5odG1sCiAgICAtIGZpLWdkZy01NTE6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbRE1FU0ctV0FS
Tl1bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY1ODEvZmktZ2RnLTU1MS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMu
aHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzgwMC9maS1nZGctNTUxL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmll
cy5odG1sCiAgICAtIGZpLWNmbC04MTA5dTogICAgICAgW1BBU1NdWzEzXSAtPiBbSU5DT01QTEVU
RV1bMTRdCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY1ODEvZmktY2ZsLTgxMDl1L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmll
cy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzODAwL2ZpLWNmbC04MTA5dS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2Vu
dHJpZXMuaHRtbAogICAgLSBmaS1wbnYtZDUxMDogICAgICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNH
LVdBUk5dWzE2XQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NTgxL2ZpLXBudi1kNTEwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50
cmllcy5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLXBudi1kNTEwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxf
ZW50cmllcy5odG1sCiAgICAtIGZpLWlsay02NTA6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbSU5D
T01QTEVURV1bMThdCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY1ODEvZmktaWxrLTY1MC9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2Vu
dHJpZXMuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzgwMC9maS1pbGstNjUwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxf
ZW50cmllcy5odG1sCiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1BBU1NdWzE5XSAtPiBbRE1F
U0ctV0FSTl1bMjBdCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY1ODEvZmktc2tsLTY3NzBocS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxs
X2VudHJpZXMuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1za2wtNjc3MGhxL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVh
ZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZpLWJ5dC1uMjgyMDogICAgICAgW1BBU1NdWzIxXSAt
PiBbRE1FU0ctV0FSTl1bMjJdCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktYnl0LW4yODIwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVh
ZF9hbGxfZW50cmllcy5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJ5dC1uMjgyMC9pZ3RAZGVidWdmc190ZXN0
QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1lbGstZTc1MDA6ICAgICAgIFtQQVNTXVsy
M10gLT4gW0RNRVNHLVdBUk5dWzI0XQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTgxL2ZpLWVsay1lNzUwMC9pZ3RAZGVidWdmc190ZXN0
QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1lbGstZTc1MDAvaWd0QGRlYnVnZnNf
dGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0gZmktaHN3LTQ3NzByOiAgICAgICBbUEFT
U11bMjVdIC0+IFtJTkNPTVBMRVRFXVsyNl0KICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9maS1oc3ctNDc3MHIvaWd0QGRlYnVnZnNf
dGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmktaHN3LTQ3NzByL2lndEBkZWJ1
Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAg
W1BBU1NdWzI3XSAtPiBbRE1FU0ctV0FSTl1bMjhdCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktc2tsLWd2dGR2bS9pZ3RAZGVi
dWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1za2wtZ3Z0ZHZtL2ln
dEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZpLWtibC1ndWM6ICAg
ICAgICAgW1BBU1NdWzI5XSAtPiBbRE1FU0ctV0FSTl1bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmkta2JsLWd1Yy9pZ3RA
ZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1rYmwtZ3VjL2ln
dEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZpLWJzdy1rZWZrYTog
ICAgICAgW1BBU1NdWzMxXSAtPiBbRE1FU0ctV0FSTl1bMzJdCiAgIFszMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktYnN3LWtlZmthL2ln
dEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJzdy1rZWZr
YS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1rYmwteDEy
NzU6ICAgICAgIFtQQVNTXVszM10gLT4gW0lOQ09NUExFVEVdWzM0XQogICBbMzNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTgxL2ZpLWtibC14MTI3
NS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbMzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1rYmwt
eDEyNzUvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0gZmktYmxi
LWU2ODUwOiAgICAgICBbUEFTU11bMzVdIC0+IFtJTkNPTVBMRVRFXVszNl0KICAgWzM1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9maS1ibGIt
ZTY4NTAvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzM2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmkt
YmxiLWU2ODUwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZp
LWJ3ci0yMTYwOiAgICAgICAgW1BBU1NdWzM3XSAtPiBbRE1FU0ctV0FSTl1bMzhdCiAgIFszN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmkt
YndyLTIxNjAvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzM4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAv
ZmktYndyLTIxNjAvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0g
ZmktYmR3LTU1NTd1OiAgICAgICBbUEFTU11bMzldIC0+IFtJTkNPTVBMRVRFXVs0MF0KICAgWzM5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9m
aS1iZHctNTU1N3UvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzQw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4
MDAvZmktYmR3LTU1NTd1L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAg
ICAtIGZpLWtibC1yOiAgICAgICAgICAgW1BBU1NdWzQxXSAtPiBbSU5DT01QTEVURV1bNDJdCiAg
IFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1
ODEvZmkta2JsLXIvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzQy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4
MDAvZmkta2JsLXIvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0g
Zmktc2tsLWd1YzogICAgICAgICBbUEFTU11bNDNdIC0+IFtETUVTRy1XQVJOXVs0NF0KICAgWzQz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9m
aS1za2wtZ3VjL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFs0NF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAw
L2ZpLXNrbC1ndWMvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0g
Zmkta2JsLTc1Njd1OiAgICAgICBbUEFTU11bNDVdIC0+IFtJTkNPTVBMRVRFXVs0Nl0KICAgWzQ1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9m
aS1rYmwtNzU2N3UvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzQ2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4
MDAvZmkta2JsLTc1Njd1L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAg
ICAtIGZpLWFwbC1ndWM6ICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVs0N10KICAgWzQ3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4
MDAvZmktYXBsLWd1Yy9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICAg
LSBmaS1rYmwtODgwOWc6ICAgICAgIFtQQVNTXVs0OF0gLT4gW0lOQ09NUExFVEVdWzQ5XQogICBb
NDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTgx
L2ZpLWtibC04ODA5Zy9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBb
NDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzgwMC9maS1rYmwtODgwOWcvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwK
ICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11bNTBdIC0+IFtJTkNPTVBMRVRFXVs1MV0K
ICAgWzUwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjU4MS9maS1jZmwtODcwMGsvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwK
ICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM4MDAvZmktY2ZsLTg3MDBrL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5o
dG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzUyXSAtPiBbRE1FU0ctV0FSTl1b
NTNdCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY1ODEvZmktY21sLXUyL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzODAwL2ZpLWNtbC11Mi9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRt
bAogICAgLSBmaS13aGwtdTogICAgICAgICAgIFtQQVNTXVs1NF0gLT4gW0lOQ09NUExFVEVdWzU1
XQogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NTgxL2ZpLXdobC11L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAg
IFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzODAwL2ZpLXdobC11L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAg
ICAtIGZpLWJzdy1uMzA1MDogICAgICAgW1BBU1NdWzU2XSAtPiBbRE1FU0ctV0FSTl1bNTddCiAg
IFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1
ODEvZmktYnN3LW4zMDUwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAg
IFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzODAwL2ZpLWJzdy1uMzA1MC9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRt
bAogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVs1OF0gLT4gW0lOQ09NUExFVEVdWzU5
XQogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NTgxL2ZpLWhzdy00NzcwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzODAwL2ZpLWhzdy00NzcwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5o
dG1sCiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW1BBU1NdWzYwXSAtPiBbRE1FU0ctV0FSTl1b
NjFdCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY1ODEvZmktY2ZsLWd1Yy9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRt
bAogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzgwMC9maS1jZmwtZ3VjL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5o
dG1sCgogICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBmaS1pbGstNjUwOiAgICAgICAgIE5P
VFJVTiAtPiBbRkFJTF1bNjJdCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWlsay02NTAvaWd0QHJ1bm5lckBhYm9ydGVk
Lmh0bWwKICAgIC0gZmktcG52LWQ1MTA6ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzYzXQogICBb
NjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzgwMC9maS1wbnYtZDUxMC9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1iZHctZ3Z0
ZHZtOiAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNjRdCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJkdy1ndnRkdm0vaWd0
QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktY2ZsLTgxMDl1OiAgICAgICBOT1RSVU4gLT4g
W0ZBSUxdWzY1XQogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzgwMC9maS1jZmwtODEwOXUvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwK
ICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzY2XQogICBbNjZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9m
aS1oc3ctcGVwcHkvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktZ2RnLTU1MTogICAg
ICAgICBOT1RSVU4gLT4gW0ZBSUxdWzY3XQogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1nZGctNTUxL2lndEBydW5uZXJA
YWJvcnRlZC5odG1sCiAgICAtIGZpLXNuYi0yNTIwbTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2
OF0KICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM4MDAvZmktc25iLTI1MjBtL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZp
LWhzdy00NzcwOiAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OV0KICAgWzY5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmktaHN3LTQ3
NzAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBOT1RS
VU4gLT4gW0ZBSUxdWzcwXQogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1rYmwtNzUwMHUvaWd0QHJ1bm5lckBhYm9ydGVk
Lmh0bWwKICAgIC0gZmktYnh0LWo0MjA1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzcxXQogICBb
NzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzgwMC9maS1ieHQtajQyMDUvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktd2hsLXU6
ICAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzcyXQogICBbNzJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS13aGwtdS9pZ3RAcnVu
bmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1jbWwtdTI6ICAgICAgICAgIE5PVFJVTiAtPiBbRkFJ
TF1bNzNdCiAgIFs3M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzODAwL2ZpLWNtbC11Mi9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBm
aS1jbWwtdTogICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNzRdCiAgIFs3NF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWNtbC11
L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWl2Yi0zNzcwOiAgICAgICAgTk9UUlVO
IC0+IFtGQUlMXVs3NV0KICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmktaXZiLTM3NzAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0
bWwKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzc2XQogICBbNzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgw
MC9maS1ieHQtZHNpL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJ5dC1qMTkwMDog
ICAgICAgTk9UUlVOIC0+IFtGQUlMXVs3N10KICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmktYnl0LWoxOTAwL2lndEBydW5u
ZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgTk9UUlVOIC0+IFtGQUlM
XVs3OF0KICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM4MDAvZmktY2ZsLWd1Yy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBm
aS1rYmwtNzU2N3U6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNzldCiAgIFs3OV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWtibC03
NTY3dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ibGItZTY4NTA6ICAgICAgIE5P
VFJVTiAtPiBbRkFJTF1bODBdCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJsYi1lNjg1MC9pZ3RAcnVubmVyQGFib3J0
ZWQuaHRtbAogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODFdCiAg
IFs4MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzODAwL2ZpLWtibC14MTI3NS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1jZmwt
ODcwMGs6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODJdCiAgIFs4Ml06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWNmbC04NzAway9p
Z3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIE5PVFJVTiAt
PiBbRkFJTF1bODNdCiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWhzdy00Nzcwci9pZ3RAcnVubmVyQGFib3J0ZWQuaHRt
bAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODRdCiAgIFs4NF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAw
L2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1hcGwtZ3VjOiAg
ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODVdCiAgIFs4NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWFwbC1ndWMvaWd0QHJ1bm5l
ckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2JsLXI6ICAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxd
Wzg2XQogICBbODZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzgwMC9maS1rYmwtci9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1i
ZHctNTU1N3U6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODddCiAgIFs4N106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJkdy01NTU3
dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ieXQtbjI4MjA6ICAgICAgIE5PVFJV
TiAtPiBbRkFJTF1bODhdCiAgIFs4OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJ5dC1uMjgyMC9pZ3RAcnVubmVyQGFib3J0ZWQu
aHRtbAogICAgLSBmaS1rYmwtZ3VjOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bODldCiAgIFs4
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
ODAwL2ZpLWtibC1ndWMvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktc25iLTI2MDA6
ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzkwXQogICBbOTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1zbmItMjYwMC9pZ3RAcnVu
bmVyQGFib3J0ZWQuaHRtbAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhlIGZvbGxvd2lu
ZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBzdGF0dXNl
cy4KICBUaGV5IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAqIGlndEBkZWJ1
Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllczoKICAgIC0ge2ZpLWljbC1ndWN9OiAgICAgICBbUEFT
U11bOTFdIC0+IFtETUVTRy1XQVJOXVs5Ml0KICAgWzkxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9maS1pY2wtZ3VjL2lndEBkZWJ1Z2ZzX3Rl
c3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFs5Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWljbC1ndWMvaWd0QGRlYnVnZnNf
dGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKCiAgCk5ldyB0ZXN0cwotLS0tLS0tLS0KCiAgTmV3
IHRlc3RzIGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGJldHdlZW4gQ0lfRFJNXzY1ODEgYW5kIFBhdGNo
d29ya18xMzgwMDoKCiMjIyBOZXcgSUdUIHRlc3RzICgyKSAjIyMKCiAgKiBpZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0gU3RhdHVzZXMgOgogICAgLSBFeGVjIHRpbWU6
IFtOb25lXSBzCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0czoKICAgIC0g
U3RhdHVzZXMgOgogICAgLSBFeGVjIHRpbWU6IFtOb25lXSBzCgogIAoKS25vd24gaXNzdWVzCi0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTM4
MDAgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMj
IyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXM6
CiAgICAtIGZpLXNrbC1pb21tdTogICAgICAgW1BBU1NdWzkzXSAtPiBbSU5DT01QTEVURV1bOTRd
IChbZmRvIzEwODkwMV0pCiAgIFs5M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY1ODEvZmktc2tsLWlvbW11L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9h
bGxfZW50cmllcy5odG1sCiAgIFs5NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLXNrbC1pb21tdS9pZ3RAZGVidWdmc190ZXN0QHJl
YWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1nbGstZHNpOiAgICAgICAgIFtQQVNTXVs5NV0g
LT4gW0lOQ09NUExFVEVdWzk2XSAoW2ZkbyMxMDMzNTldIC8gW2sub3JnIzE5ODEzM10pCiAgIFs5
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEv
ZmktZ2xrLWRzaS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbOTZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgw
MC9maS1nbGstZHNpL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAt
IGZpLWNtbC11OiAgICAgICAgICAgW1BBU1NdWzk3XSAtPiBbSU5DT01QTEVURV1bOThdIChbZmRv
IzExMDU2Nl0pCiAgIFs5N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY1ODEvZmktY21sLXUvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVz
Lmh0bWwKICAgWzk4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM4MDAvZmktY21sLXUvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVz
Lmh0bWwKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bOTldIC0+IFtJTkNPTVBMRVRF
XVsxMDBdIChbZmRvIzEwNzcxM10pCiAgIFs5OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktaWNsLXUzL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVh
ZF9hbGxfZW50cmllcy5odG1sCiAgIFsxMDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1pY2wtdTMvaWd0QGRlYnVnZnNfdGVzdEBy
ZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0gZmktYnh0LWo0MjA1OiAgICAgICBbUEFTU11bMTAx
XSAtPiBbSU5DT01QTEVURV1bMTAyXSAoW2ZkbyMxMDM5MjddKQogICBbMTAxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9maS1ieHQtajQyMDUv
aWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzEwMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWJ4dC1q
NDIwNS9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1pY2wt
dTI6ICAgICAgICAgIFtQQVNTXVsxMDNdIC0+IFtJTkNPTVBMRVRFXVsxMDRdIChbZmRvIzEwNzcx
M10pCiAgIFsxMDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NTgxL2ZpLWljbC11Mi9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRt
bAogICBbMTA0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM4MDAvZmktaWNsLXUyL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5o
dG1sCiAgICAtIGZpLXNrbC1sbWVtOiAgICAgICAgW1BBU1NdWzEwNV0gLT4gW0lOQ09NUExFVEVd
WzEwNl0gKFtmZG8jMTA4OTAxXSkKICAgWzEwNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktc2tsLWxtZW0vaWd0QGRlYnVnZnNfdGVzdEBy
ZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzEwNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLXNrbC1sbWVtL2lndEBkZWJ1Z2ZzX3Rl
c3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgICAtIGZpLXNrbC02MjYwdTogICAgICAgW1BBU1Nd
WzEwN10gLT4gW0lOQ09NUExFVEVdWzEwOF0gKFtmZG8jMTA4OTAxXSkKICAgWzEwN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktc2tsLTYy
NjB1L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFsxMDhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgwMC9maS1z
a2wtNjI2MHUvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0gZmkt
c25iLTI2MDA6ICAgICAgICBbUEFTU11bMTA5XSAtPiBbSU5DT01QTEVURV1bMTEwXSAoW2ZkbyMx
MDU0MTFdKQogICBbMTA5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjU4MS9maS1zbmItMjYwMC9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJp
ZXMuaHRtbAogICBbMTEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM4MDAvZmktc25iLTI2MDAvaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9l
bnRyaWVzLmh0bWwKICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bMTExXSAtPiBbSU5D
T01QTEVURV1bMTEyXSAoW2ZkbyMxMDg5MDFdKQogICBbMTExXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU4MS9maS1za2wtNjYwMHUvaWd0QGRlYnVn
ZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzExMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLXNrbC02NjAwdS9pZ3RA
ZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1ieXQtajE5MDA6ICAg
ICAgIFtQQVNTXVsxMTNdIC0+IFtJTkNPTVBMRVRFXVsxMTRdIChbZmRvIzEwMjY1N10pCiAgIFsx
MTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTgx
L2ZpLWJ5dC1qMTkwMC9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBb
MTE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM4MDAvZmktYnl0LWoxOTAwL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgICAtIGZpLWJ4dC1kc2k6ICAgICAgICAgW1BBU1NdWzExNV0gLT4gW0lOQ09NUExFVEVdWzEx
Nl0gKFtmZG8jMTAzOTI3XSkKICAgWzExNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY1ODEvZmktYnh0LWRzaS9pZ3RAZGVidWdmc190ZXN0QHJlYWRf
YWxsX2VudHJpZXMuaHRtbAogICBbMTE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MDAvZmktYnh0LWRzaS9pZ3RAZGVidWdmc190ZXN0QHJl
YWRfYWxsX2VudHJpZXMuaHRtbAogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtQQVNTXVsxMTdd
IC0+IFtJTkNPTVBMRVRFXVsxMThdIChbZmRvIzEwNzcxM10pCiAgIFsxMTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTgxL2ZpLWljbC1kc2kvaWd0
QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgWzExOF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzODAwL2ZpLWljbC1kc2kv
aWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKICAgIC0gZmktc2tsLTY3MDBr
MjogICAgICBbUEFTU11bMTE5XSAtPiBbSU5DT01QTEVURV1bMTIwXSAoW2ZkbyMxMDg5MDFdKQog
ICBbMTE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjU4MS9maS1za2wtNjcwMGsyL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1s
CiAgIFsxMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzgwMC9maS1za2wtNjcwMGsyL2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmll
cy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVh
bnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0
aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAy
NjU3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyNjU3
CiAgW2ZkbyMxMDMzNTldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDMzNTkKICBbZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NDExCiAgW2ZkbyMxMDc3MTNdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODkw
MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODkwMQog
IFtmZG8jMTEwNTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTEwNTY2CiAgW2sub3JnIzE5ODEzM106IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTk4MTMzCgoKUGFydGljaXBhdGluZyBob3N0cyAoNTUgLT4gNDcpCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg4KTogZmkta2JsLXNv
cmFrYSBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4g
ZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzCgo9PSBMb2dzID09CgpGb3IgbW9y
ZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM4MDAvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
