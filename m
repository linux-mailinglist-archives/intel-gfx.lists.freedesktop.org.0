Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C63CBA07
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 14:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A81C6EB5A;
	Fri,  4 Oct 2019 12:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E52656EB59;
 Fri,  4 Oct 2019 12:11:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC52DA0118;
 Fri,  4 Oct 2019 12:11:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Oct 2019 12:11:17 -0000
Message-ID: <20191004121117.26991.335@emeril.freedesktop.org>
References: <20191004105958.1741-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191004105958.1741-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Restrict_L3_remapping_sysfs_interface_to_dwords?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlc3RyaWN0IEwzIHJlbWFw
cGluZyBzeXNmcyBpbnRlcmZhY2UgdG8gZHdvcmRzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzU4OC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5
ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MDA1IC0+IFBhdGNod29ya18x
NDY2Ngo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5n
ZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NjY2IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZl
cmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBo
YXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzE0NjY2LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRv
IGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2Ug
cG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjY2L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5l
dyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDY2NjoKCiMj
IyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzOgogICAgLSBmaS1jZmwtODcwMGs6ICAgICAg
IFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDA1L2ZpLWNmbC04NzAway9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NjYvZmktY2ZsLTg3MDBrL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NjY2IHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVz
IGhpdCAjIyMjCgogICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczM6CiAgICAtIGZpLWJs
Yi1lNjg1MDogICAgICAgW1BBU1NdWzNdIC0+IFtJTkNPTVBMRVRFXVs0XSAoW2ZkbyMxMDc3MThd
KQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwMDUvZmktYmxiLWU2ODUwL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKICAg
WzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDY2Ni9maS1ibGItZTY4NTAvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAoKICAq
IGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXM6CiAgICAtIGZpLWljbC11Mzog
ICAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMDc3MjRdKSArMyBz
aW1pbGFyIGlzc3VlcwogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwMDUvZmktaWNsLXUzL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0
LWRldmljZXMuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NjY2L2ZpLWljbC11My9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNp
Yy1zNC1kZXZpY2VzLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBn
ZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZsaW5rOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtE
TUVTRy1XQVJOXVs3XSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bOF0gKzIgc2ltaWxhciBpc3N1
ZXMKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MDA1L2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1mbGluay5odG1sCiAg
IFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ2NjYvZmktaWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZsaW5rLmh0bWwKCiAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmktaWNsLXUyOiAgICAg
ICAgICBbRE1FU0ctRkFJTF1bOV0gLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMDUvZmktaWNsLXUyL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NjYvZmktaWNsLXUyL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1p
LWNyYy1mYXN0OgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtGQUlMXVsxMV0gKFtmZG8jMTA5
NjM1IF0pIC0+IFtQQVNTXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAwNS9maS1pY2wtdTIvaWd0QGttc19jaGFtZWxpdW1AaGRt
aS1jcmMtZmFzdC5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NjY2L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1p
LWNyYy1mYXN0Lmh0bWwKCiAgCiAgW2ZkbyMxMDc3MThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA5NjM1IF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTYzNSAKCgpQ
YXJ0aWNpcGF0aW5nIGhvc3RzICg1MSAtPiA0NCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgogIEFkZGl0aW9uYWwgKDEpOiBmaS1pY2wtdTQgCiAgTWlzc2luZyAgICAoOCk6IGZpLWls
ay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ic3ctbjMwNTAgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5
YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMK
LS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lf
RFJNXzcwMDUgLT4gUGF0Y2h3b3JrXzE0NjY2CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJ
X0RSTV83MDA1OiA4NmE0ODVjMmRmOWRlZTBkMmM2ZGFkNGM2NDQ0ZmFjY2U3OWNhNDY5IEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMTE6IDE2MDFl
MTU3MWViMGYyOWEwNmI2NDQ5NDA0MGIzZWE3ODU5YTY1MGYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ2NjY6IGY1
ZmY2ODdhYWQzYmQ2NjJkMzc3NjlhM2M3ZmEyODAwOGZmNGY2MWQgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgpmNWZmNjg3
YWFkM2IgZHJtL2k5MTU6IFJlc3RyaWN0IEwzIHJlbWFwcGluZyBzeXNmcyBpbnRlcmZhY2UgdG8g
ZHdvcmRzCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NjYvaW5kZXguaHRtbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
