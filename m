Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B832D8CDA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 11:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2796E909;
	Wed, 16 Oct 2019 09:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D6646E909;
 Wed, 16 Oct 2019 09:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94929A0137;
 Wed, 16 Oct 2019 09:47:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 16 Oct 2019 09:47:18 -0000
Message-ID: <20191016094718.14703.70979@emeril.freedesktop.org>
References: <20191015161131.21239-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015161131.21239-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/ehl=3A_Don=27t_forget_to_set_TC_long_detect_function_=28re?=
 =?utf-8?b?djIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBEb24ndCBmb3JnZXQg
dG8gc2V0IFRDIGxvbmcgZGV0ZWN0IGZ1bmN0aW9uIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgwMzgvClN0YXRlIDogZmFpbHVyZQoKPT0g
U3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzA5OV9mdWxsIC0+
IFBhdGNod29ya18xNDgyMF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJp
b3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ4MjBfZnVsbCBhYnNv
bHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsg
dGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMK
ICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDgyMF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIg
YnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9k
ZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxl
IG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBj
aGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDgyMF9m
dWxsOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMj
CgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtdGhyYXNoaW5nOgogICAgLSBz
aGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0gKzEgc2ltaWxhciBpc3N1
ZQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwOTkvc2hhcmQtaHN3Ny9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC10aHJhc2hp
bmcuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0ODIwL3NoYXJkLWhzdzgvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3Jr
ZWQtdGhyYXNoaW5nLmh0bWwKCiAgCiMjIyMgU3VwcHJlc3NlZCAjIyMjCgogIFRoZSBmb2xsb3dp
bmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVz
ZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4KCiAgKiBpZ3RAa21z
X2NvbmN1cnJlbnRAcGlwZS1lOgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAgIE5PVFJVTiAtPiBb
U0tJUF1bM10KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDgyMC9zaGFyZC10Z2xiNi9pZ3RAa21zX2NvbmN1cnJlbnRAcGlwZS1lLmh0
bWwKCiAgKiB7aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtZC1jdXJzb3Itc3VzcGVuZH06CiAgICAt
IHtzaGFyZC10Z2xifTogICAgICAgTk9UUlVOIC0+IFtJTkNPTVBMRVRFXVs0XQogICBbNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3No
YXJkLXRnbGI0L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWQtY3Vyc29yLXN1c3BlbmQuaHRtbAoK
ICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTQ4MjBfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZWlv
QGluLWZsaWdodC1jb250ZXh0cy1pbW1lZGlhdGU6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAg
W1BBU1NdWzVdIC0+IFtGQUlMXVs2XSAoW2ZkbyMxMTE5MjVdKQogICBbNV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtc25iNy9pZ3RA
Z2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRpYXRlLmh0bWwKICAgWzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1z
bmI2L2lndEBnZW1fZWlvQGluLWZsaWdodC1jb250ZXh0cy1pbW1lZGlhdGUuaHRtbAoKICAqIGln
dEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzExMDg1NF0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1pY2xiMS9pZ3RAZ2Vt
X2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJkLWljbGIzL2lndEBnZW1fZXhl
Y19iYWxhbmNlckBzbW9rZS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1vcmRl
ci1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs5XSAtPiBbU0tJUF1bMTBd
IChbZmRvIzEwOTI3Nl0pICsxMSBzaW1pbGFyIGlzc3VlcwogICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtaWNsYjEvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQG91dC1vcmRlci1ic2QyLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtaWNsYjMv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1vcmRlci1ic2QyLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1BBU1NdWzExXSAtPiBbU0tJUF1bMTJdIChbZmRvIzExMTMyNV0pICsyIHNpbWlsYXIgaXNzdWVz
CiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwOTkvc2hhcmQtaWNsYjUvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNk
Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ4MjAvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQt
cXVldWUtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMzoKICAgIC0gc2hh
cmQtYXBsOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtETUVTRy1XQVJOXVsxNF0gKFtmZG8jMTA4
NTY2XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1hcGw0L2lndEBnZW1fc29mdHBpbkBu
b3JlbG9jLXMzLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtYXBsNC9pZ3RAZ2VtX3NvZnRwaW5Abm9yZWxv
Yy1zMy5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtYWZ0ZXItY2xv
c2U6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzE1XSAtPiBbRE1FU0ctV0FSTl1b
MTZdIChbZmRvIzExMTg3MF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzE1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1oc3c4L2lndEBn
ZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKICAgWzE2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hh
cmQtaHN3Ny9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1hZnRlci1jbG9zZS5odG1s
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIHNoYXJkLXNuYjog
ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbSU5DT01QTEVURV1bMThdIChbZmRvIzEwNTQxMV0pICsx
IHNpbWlsYXIgaXNzdWUKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1zbmI0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFu
Z2NoZWNrLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtc25iMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hh
bmdjaGVjay5odG1sCgogICogaWd0QGttc19idXN5QGV4dGVuZGVkLXBhZ2VmbGlwLW1vZGVzZXQt
aGFuZy1vbGRmYi1yZW5kZXItYjoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMTld
IC0+IFtETUVTRy1XQVJOXVsyMF0gKFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSAvIFtmZG8j
MTEwMjIyXSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzA5OS9zaGFyZC1rYmw3L2lndEBrbXNfYnVzeUBleHRlbmRlZC1wYWdlZmxpcC1t
b2Rlc2V0LWhhbmctb2xkZmItcmVuZGVyLWIuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1rYmw3L2lndEBr
bXNfYnVzeUBleHRlbmRlZC1wYWdlZmxpcC1tb2Rlc2V0LWhhbmctb2xkZmItcmVuZGVyLWIuaHRt
bAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTEyOHg0Mi1zbGlkaW5nOgog
ICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAoW2ZkbyMx
MDMyMzJdKQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDk5L3NoYXJkLWtibDIvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3It
MTI4eDQyLXNsaWRpbmcuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1rYmw3L2lndEBrbXNfY3Vyc29yX2Ny
Y0BwaXBlLWItY3Vyc29yLTEyOHg0Mi1zbGlkaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9j
cmNAcGlwZS1jLWN1cnNvci0xMjh4MTI4LXNsaWRpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW1BBU1NdWzIzXSAtPiBbRkFJTF1bMjRdIChbZmRvIzEwMzIzMl0pCiAgIFsyM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtc2ts
My9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0xMjh4MTI4LXNsaWRpbmcuaHRtbAog
ICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDgyMC9zaGFyZC1za2w4L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLTEyOHgx
Mjgtc2xpZGluZy5odG1sCgogICogaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmItcmVjcmVhdGU6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzI1XSAtPiBbRkFJTF1bMjZdIChbZmRv
IzEwMDM2OF0pCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzcwOTkvc2hhcmQtc2tsNy9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC1mYi1yZWNy
ZWF0ZS5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJkLXNrbDUvaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmIt
cmVjcmVhdGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXBy
aW1zY3JuLXNwci1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bMjddIC0+IFtGQUlMXVsyOF0gKFtmZG8jMTAzMTY3XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAg
WzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5
OS9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Ny
bi1zcHItaW5kZmItZHJhdy1ibHQuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1ibHQuaHRt
bAoKICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWE6CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzI5XSAtPiBbSU5DT01QTEVURV1bMzBdIChb
ZmRvIzEwMzY2NV0pCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQta2JsNi9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3Bl
bmQtcmVhZC1jcmMtcGlwZS1hLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQta2JsMi9pZ3RAa21zX3BpcGVf
Y3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5l
QHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1jLXBsYW5lczoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMzFdIC0+IFtJTkNPTVBMRVRFXVszMl0gKFtmZG8j
MTA0MTA4XSkKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzA5OS9zaGFyZC1za2w4L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0
b20tcmlnaHQtc3VzcGVuZC1waXBlLWMtcGxhbmVzLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtc2tsNi9p
Z3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1jLXBs
YW5lcy5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2Ut
N2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMzNdIC0+IFtGQUlMXVszNF0g
KFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1za2wzL2lndEBrbXNfcGxh
bmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbMzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1z
a2w4L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAoK
ICAqIGlndEBrbXNfcGxhbmVfY3Vyc29yQHBpcGUtYS12aWV3cG9ydC1zaXplLTY0OgogICAgLSBz
aGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVszNV0gLT4gW0RNRVNHLVdBUk5dWzM2XSAoW2ZkbyMx
MDM1NThdIC8gW2ZkbyMxMDU2MDJdKSArMTkgc2ltaWxhciBpc3N1ZXMKICAgWzM1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1rYmw3
L2lndEBrbXNfcGxhbmVfY3Vyc29yQHBpcGUtYS12aWV3cG9ydC1zaXplLTY0Lmh0bWwKICAgWzM2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4
MjAvc2hhcmQta2JsNy9pZ3RAa21zX3BsYW5lX2N1cnNvckBwaXBlLWEtdmlld3BvcnQtc2l6ZS02
NC5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtQQVNTXVszN10gLT4gW1NLSVBdWzM4XSAoW2ZkbyMxMDk0NDFdKQogICBbMzdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDk5L3No
YXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5odG1sCiAgIFszOF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJk
LWljbGIxL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5odG1sCgogICogaWd0QGttc19zZXRt
b2RlQGJhc2ljOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVszOV0gLT4gW0ZBSUxd
WzQwXSAoW2ZkbyM5OTkxMl0pCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtc2tsNy9pZ3RAa21zX3NldG1vZGVAYmFzaWMu
aHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDgyMC9zaGFyZC1za2w1L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogICog
aWd0QHByaW1lX3NlbGZfaW1wb3J0QGJhc2ljLWxsc2Vlay1iYWQ6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW1BBU1NdWzQxXSAtPiBbSU5DT01QTEVURV1bNDJdIChbZmRvIzEwMzkyN10pCiAg
IFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcw
OTkvc2hhcmQtYXBsNS9pZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMtbGxzZWVrLWJhZC5odG1s
CiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0ODIwL3NoYXJkLWFwbDcvaWd0QHByaW1lX3NlbGZfaW1wb3J0QGJhc2ljLWxsc2Vlay1i
YWQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9leGVjX3Nj
aGVkdWxlQHByZWVtcHQtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0M10g
KFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzQ0XSArNCBzaW1pbGFyIGlzc3VlcwogICBbNDNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDk5L3NoYXJk
LWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWJzZC5odG1sCiAgIFs0NF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3No
YXJkLWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWJzZC5odG1sCgogICogaWd0
QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtY2hhaW4tYnNkMjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbU0tJUF1bNDVdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVs0Nl0gKzEx
IHNpbWlsYXIgaXNzdWVzCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBy
ZWVtcHQtcXVldWUtY2hhaW4tYnNkMi5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJkLWljbGIxL2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWNoYWluLWJzZDIuaHRtbAoKICAqIGlndEBnZW1f
dXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlOgogICAgLSBzaGFyZC1nbGs6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVs0N10gKFtmZG8jMTExODcwXSkgLT4gW1BBU1NdWzQ4XQogICBb
NDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDk5
L3NoYXJkLWdsazcvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtYWZ0ZXItY2xvc2Uu
aHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDgyMC9zaGFyZC1nbGs3L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFw
LWFmdGVyLWNsb3NlLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1j
eWNsZXM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNHLVdBUk5dWzQ5XSAoW2ZkbyMx
MTE4NzBdKSAtPiBbUEFTU11bNTBdICsxIHNpbWlsYXIgaXNzdWUKICAgWzQ5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1zbmIyL2ln
dEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCiAgIFs1MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJk
LXNuYjEvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtY3ljbGVzLmh0bWwKCiAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAg
ICBbRE1FU0ctRkFJTF1bNTFdIChbZmRvIzExMTk5MV0pIC0+IFtQQVNTXVs1Ml0KICAgWzUxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFy
ZC1oc3c2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzUyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hh
cmQtaHN3OC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgogICogaWd0QGk5
MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQ6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW0RNRVNHLVdBUk5dWzUzXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNTRdICs2
IHNpbWlsYXIgaXNzdWVzCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtYXBsMS9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJl
c3RvcmUtdGlsZWQydW50aWxlZC5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJkLWFwbDgvaWd0QGk5MTVfc3Vz
cGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29y
X2NyY0BwaXBlLWItY3Vyc29yLTEyOHg0Mi1zbGlkaW5nOgogICAgLSBzaGFyZC1hcGw6ICAgICAg
ICAgIFtGQUlMXVs1NV0gKFtmZG8jMTAzMjMyXSkgLT4gW1BBU1NdWzU2XQogICBbNTVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDk5L3NoYXJkLWFw
bDMvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItMTI4eDQyLXNsaWRpbmcuaHRtbAog
ICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDgyMC9zaGFyZC1hcGw4L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTEyOHg0
Mi1zbGlkaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yYS12cy1mbGlw
YS1sZWdhY3k6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzU3XSAoW2Zk
byMxMDc3MTNdKSAtPiBbUEFTU11bNThdCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtaWNsYjcvaWd0QGttc19jdXJzb3Jf
bGVnYWN5QGN1cnNvcmEtdnMtZmxpcGEtbGVnYWN5Lmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtaWNsYjYv
aWd0QGttc19jdXJzb3JfbGVnYWN5QGN1cnNvcmEtdnMtZmxpcGEtbGVnYWN5Lmh0bWwKCiAgKiBp
Z3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJzb3ItdG9nZ2xlOgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtGQUlMXVs1OV0gKFtmZG8jMTAyNjcwXSAvIFtmZG8jMTA2MDgxXSkgLT4g
W1BBU1NdWzYwXQogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDk5L3NoYXJkLXNrbDMvaWd0QGttc19jdXJzb3JfbGVnYWN5QGZsaXAtdnMt
Y3Vyc29yLXRvZ2dsZS5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODIwL3NoYXJkLXNrbDgvaWd0QGttc19jdXJzb3JfbGVn
YWN5QGZsaXAtdnMtY3Vyc29yLXRvZ2dsZS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMt
ZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBb
RkFJTF1bNjFdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs2Ml0KICAgWzYxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1za2wzL2ln
dEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICBb
NjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDgyMC9zaGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVy
cnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBtb2Rlc2V0LXZzLXZibGFuay1yYWNlOgog
ICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs2M10gKFtmZG8jMTExNjA5XSkgLT4gW1BB
U1NdWzY0XQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDk5L3NoYXJkLWdsazEvaWd0QGttc19mbGlwQG1vZGVzZXQtdnMtdmJsYW5rLXJh
Y2UuaHRtbAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDgyMC9zaGFyZC1nbGsyL2lndEBrbXNfZmxpcEBtb2Rlc2V0LXZzLXZibGFu
ay1yYWNlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1w
cmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W0ZBSUxdWzY1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNjZdICsyIHNpbWlsYXIgaXNzdWVz
CiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwOTkvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAt
cHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzY2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQtaWNsYjgv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZi
LWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1j
b25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY3XSAo
W2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNjhdCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtc2tsOC9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNjhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFy
ZC1za2w2L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1p
bi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbU0tJUF1bNjldIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs3MF0g
KzEgc2ltaWxhciBpc3N1ZQogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MDk5L3NoYXJkLWljbGI0L2lndEBrbXNfcHNyQHBzcjJfcHJpbWFy
eV9wYWdlX2ZsaXAuaHRtbAogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3By
aW1hcnlfcGFnZV9mbGlwLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1f
Y3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZB
SUxdWzcxXSAoW2ZkbyMxMTEzMjldKSAtPiBbU0tJUF1bNzJdIChbZmRvIzEwOTI3Nl0pCiAgIFs3
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkv
c2hhcmQtaWNsYjEvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJpdi5odG1sCiAgIFs3
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
ODIwL3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRtbAoK
ICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyOgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtTS0lQXVs3M10gKFtmZG8jMTA5Mjc2XSkgLT4gW0ZBSUxdWzc0XSAo
W2ZkbyMxMTEzMzBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs3M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwOTkvc2hhcmQtaWNsYjgvaWd0QGdlbV9t
b2NzX3NldHRpbmdzQG1vY3MtaXNvbGF0aW9uLWJzZDIuaHRtbAogICBbNzRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgyMC9zaGFyZC1pY2xi
MS9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29sYXRpb24tYnNkMi5odG1sCgogICogaWd0
QGttc19jb250ZW50X3Byb3RlY3Rpb25Ac3JtOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtG
QUlMXVs3NV0gKFtmZG8jMTEwMzIxXSkgLT4gW0lOQ09NUExFVEVdWzc2XSAoW2ZkbyMxMDM5Mjdd
KQogICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MDk5L3NoYXJkLWFwbDMvaWd0QGttc19jb250ZW50X3Byb3RlY3Rpb25Ac3JtLmh0bWwKICAg
Wzc2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ4MjAvc2hhcmQtYXBsMy9pZ3RAa21zX2NvbnRlbnRfcHJvdGVjdGlvbkBzcm0uaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTJwLXByaW1zY3JuLXNwci1pbmRmYi1m
dWxsc2NyZWVuOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtTS0lQXVs3N10gKFtmZG8jMTA5
MjcxXSkgLT4gW1NLSVBdWzc4XSAoW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDkyNzFdKSArMjAgc2lt
aWxhciBpc3N1ZXMKICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzA5OS9zaGFyZC1rYmw3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
cHNyLTJwLXByaW1zY3JuLXNwci1pbmRmYi1mdWxsc2NyZWVuLmh0bWwKICAgWzc4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvc2hhcmQt
a2JsNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0ycC1wcmltc2Nybi1zcHItaW5k
ZmItZnVsbHNjcmVlbi5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNz
ZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhl
IHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSku
CgogIFtmZG8jMTAwMzY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTAwMzY4CiAgW2ZkbyMxMDI2NzBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDI2NzAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMjMyXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMjMyCiAgW2ZkbyMxMDM1
NThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1NTgK
ICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzY2NQogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTM2M106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtmZG8jMTA1NDEx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NDExCiAg
W2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDU2MDIKICBbZmRvIzEwNjA4MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwNjA4MQogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2NgogIFtm
ZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5MjcxCiAgW2ZkbyMxMDkyNzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDkyNzYKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTEwMjIyXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMjIyCiAgW2ZkbyMxMTAzMjFdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAzMjEKICBbZmRv
IzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDQwMwogIFtmZG8jMTEwODU0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTEwODU0CiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMyOV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTExMzMwXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzMwCiAgW2ZkbyMx
MTE2MDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2
MDkKICBbZmRvIzExMTg1N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTg1NwogIFtmZG8jMTExODcwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTExODcwCiAgW2ZkbyMxMTE5MjVdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE5MjUKICBbZmRvIzExMTk5MV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTk5MQogIFtmZG8jOTk5
MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoK
ClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IHBpZy1za2wtNjI2MHUgCgoKQnVpbGQgY2hhbmdlcwot
LS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9E
Uk1fNzA5OSAtPiBQYXRjaHdvcmtfMTQ4MjAKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lf
RFJNXzcwOTk6IGZjY2QwYWJjOWMwNTUzNjc1MWM2MGFhYmU1NzEwYzE3M2ZiOGZmYTYgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIzMTogZTI5MzA1
MWY4Zjk5YzcyY2IwMWQyMWU0YjczYTU5MjhlYTM1MWViMyBAIGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDgyMDogMDBi
NzcxYzM4NTVjZDI1N2NhYTcxNGI0ODg0ZjAyYjViMzU3MTRkOCBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4
NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
cGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MjAvaW5kZXguaHRtbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
