Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D02BB336EF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC87C892B2;
	Mon,  3 Jun 2019 17:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F97B892AE;
 Mon,  3 Jun 2019 17:39:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78CC4A00A0;
 Mon,  3 Jun 2019 17:39:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Jun 2019 17:39:27 -0000
Message-ID: <20190603173927.25578.92772@emeril.freedesktop.org>
References: <20190603171130.3186-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190603171130.3186-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Replace_struct=5Fmutex_serialisation_for_allocation?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBSZXBsYWNlIHN0cnVj
dF9tdXRleCBzZXJpYWxpc2F0aW9uIGZvciBhbGxvY2F0aW9uClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTUzMy8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MTgyIC0+IFBhdGNo
d29ya18xMzE2Mgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMg
Zm91bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxNjIvCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzE2MiB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMj
IwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXZpY3Q6CiAgICAtIGZpLWJzdy1rZWZrYTog
ICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXSAoW2ZkbyMxMDc3MDldKQogICBbMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxODIvZmkt
YnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXZpY3QuaHRtbAogICBbMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTYyL2ZpLWJz
dy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V2aWN0Lmh0bWwKCiAgKiBpZ3RAdmdlbV9i
YXNpY0BtbWFwOgogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtQQVNTXVszXSAtPiBbSU5DT01Q
TEVURV1bNF0gKFtmZG8jMTA3NzEzXSkKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTgyL2ZpLWljbC1kc2kvaWd0QHZnZW1fYmFzaWNAbW1h
cC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMxNjIvZmktaWNsLWRzaS9pZ3RAdmdlbV9iYXNpY0BtbWFwLmh0bWwKCiAgCiMj
IyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1m
bGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5OgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs1XSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bNl0KICAgWzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTgyL2ZpLWljbC11My9pZ3RA
a21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1iZWZvcmUtY3Vyc29yLWxlZ2FjeS5odG1sCiAg
IFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMxNjIvZmktaWNsLXUzL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1mbGlwLWJlZm9yZS1j
dXJzb3ItbGVnYWN5Lmh0bWwKCiAgCiAgW2ZkbyMxMDc3MDldOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MDkKICBbZmRvIzEwNzcxM106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA3NzI0
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzI0CgoK
UGFydGljaXBhdGluZyBob3N0cyAoNTAgLT4gNDQpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmktYnN3LW4zMDUwIAogIE1pc3NpbmcgICAgKDcpOiBm
aS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktaHN3LXBlcHB5IGZpLWJ5dC1zcXVhd2tzIGZpLWti
bC03NTYwdSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0t
LS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82MTgyIC0+IFBhdGNod29ya18xMzE2MgoKICBD
SV9EUk1fNjE4MjogNjNlMWNiNWQxN2Y5MzFlZTY1ZTkzZmU0NWQ1OTNiNDViNWM4NjNmNSBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDI5OiA1YWVh
Y2Q1Y2MzZmMzN2ZmOWU1ZGNjYjllOGFlNjNhY2RjMTJlNTIxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMTYyOiBk
NjIyNmI3ZjE5MTg4Nzk2YjA4ZWUzZTQyMTZmZTkwNmMwNzhjZTVkIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKZDYyMjZi
N2YxOTE4IGRybS9pOTE1L2d0dDogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbiBm
b3IgYWxsb2NhdGlvbgoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTYyLwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
