Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31C5AEC8D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D52B899D5;
	Tue, 10 Sep 2019 14:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D50C2899D5;
 Tue, 10 Sep 2019 14:00:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C69F2A47DC;
 Tue, 10 Sep 2019 14:00:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 10 Sep 2019 14:00:05 -0000
Message-ID: <20190910140005.31034.65250@emeril.freedesktop.org>
References: <20190910121347.22958-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190910121347.22958-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Use_a_high_priority_wq_for_nonblocking_plane_updates?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSBhIGhpZ2ggcHJpb3Jp
dHkgd3EgZm9yIG5vbmJsb2NraW5nIHBsYW5lIHVwZGF0ZXMKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NDg1LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1
bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY4NjAgLT4gUGF0Y2h3
b3JrXzE0MzQwCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBm
b3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDM0MC8KClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0t
LS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVl
biBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDM0MDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMj
IyMgU3VwcHJlc3NlZCAjIyMjCgogIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20gdW50
cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0
IHRoZSBvdmVyYWxsIHJlc3VsdC4KCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1k
ZXZpY2VzOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIE5PVFJVTiAtPiBbSU5DT01QTEVURV1b
MV0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDM0MC9maS10Z2wtdS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2Vz
Lmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5n
ZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MzQwIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoK
CiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGk5MTVf
bW9kdWxlX2xvYWRAcmVsb2FkOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVsyXSAt
PiBbRE1FU0ctV0FSTl1bM10gKFtmZG8jMTA3NzI0XSAvIFtmZG8jMTExMjE0XSkKICAgWzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL2ZpLWlj
bC11My9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAogICBbM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzQwL2ZpLWljbC11My9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWM6CiAgICAtIHtmaS10Z2wtdX06ICAg
ICAgICAgW0lOQ09NUExFVEVdWzRdIChbZmRvIzExMTU5M10pIC0+IFtQQVNTXVs1XQogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4NjAvZmkt
dGdsLXUvaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWMuaHRtbAogICBbNV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzQwL2ZpLXRnbC11L2ln
dEBnZW1fZXhlY19ndHRmaWxsQGJhc2ljLmh0bWwKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEBy
ZWxvYWQ6CiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW0lOQ09NUExFVEVdWzZdIChbZmRvIzEw
NzcxOF0pIC0+IFtQQVNTXVs3XQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY4NjAvZmktYmxiLWU2ODUwL2lndEBpOTE1X21vZHVsZV9sb2Fk
QHJlbG9hZC5odG1sCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQzNDAvZmktYmxiLWU2ODUwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJl
bG9hZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0g
ZmktaHN3LXBlcHB5OiAgICAgICBbRE1FU0ctV0FSTl1bOF0gKFtmZG8jMTAyNjE0XSkgLT4gW1BB
U1NdWzldCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjg2MC9maS1oc3ctcGVwcHkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNp
Yy5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQzNDAvZmktaHN3LXBlcHB5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
YmFzaWMuaHRtbAoKICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLWZy
YW1lLXNlcXVlbmNlOgogICAgLSB7ZmktaWNsLWRzaX06ICAgICAgIFtETUVTRy1XQVJOXVsxMF0g
KFtmZG8jMTA2MTA3XSkgLT4gW1BBU1NdWzExXQogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL2ZpLWljbC1kc2kvaWd0QGttc19waXBl
X2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWEtZnJhbWUtc2VxdWVuY2UuaHRtbAogICBbMTFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM0MC9m
aS1pY2wtZHNpL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLWZyYW1lLXNl
cXVlbmNlLmh0bWwKCiAgKiBpZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1tbWFwOgogICAgLSBm
aS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVsxMl0gKFtmZG8jMTA3NzI0XSkgLT4gW1BB
U1NdWzEzXQogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82ODYwL2ZpLWljbC11My9pZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1tbWFwLmh0
bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQzNDAvZmktaWNsLXUzL2lndEBwcmltZV92Z2VtQGJhc2ljLWZlbmNlLW1tYXAuaHRt
bAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0
IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRp
ZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMjYxNF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjYxNAogIFtm
ZG8jMTA2MTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA2MTA3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcxOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxOAogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMDg1NjldOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjkKICBbZmRv
IzExMTIxNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTIxNAogIFtmZG8jMTExNTkzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExNTkzCgoKUGFydGljaXBhdGluZyBob3N0cyAoNTMgLT4gNDcpCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg2KTogZmktaWxrLW01NDAgZmkt
aHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFw
cGVyIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAt
PiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzY4NjAgLT4gUGF0Y2h3b3JrXzE0MzQwCgogIENJLTIw
MTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV82ODYwOiAzM2MwMDA1OWIwODRmNDJmMDFhMTY4YjVm
NjdlNGRmNjcwMjkzZTJjIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4CiAgSUdUXzUxNzc6IDhmMzUxZDY5MzM1MmQyMWM5NmNlZjM4YzNmZDc3Zjc3OGM2ZDdjMzMg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMK
ICBQYXRjaHdvcmtfMTQzNDA6IGE5YWUwYmRiMzMxNWQ4M2M4ODRlNzdmNTBjYThkOThiNDgwOGI1
MzcgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51
eCBjb21taXRzID09CgphOWFlMGJkYjMzMTUgZHJtL2k5MTU6IFVzZSBhIGhpZ2ggcHJpb3JpdHkg
d3EgZm9yIG5vbmJsb2NraW5nIHBsYW5lIHVwZGF0ZXMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRl
dGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDM0MC8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
