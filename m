Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D912D677
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 09:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC82897C5;
	Wed, 29 May 2019 07:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 510E0897C5;
 Wed, 29 May 2019 07:37:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49DBDA00E9;
 Wed, 29 May 2019 07:37:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: kiran.s.kumar@intel.com
Date: Wed, 29 May 2019 07:37:34 -0000
Message-ID: <20190529073734.29222.99590@emeril.freedesktop.org>
References: <1559109487-29542-1-git-send-email-kiran.s.kumar@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1559109487-29542-1-git-send-email-kiran.s.kumar@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_FBC_needs_vblank_before_enable_/_disable?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZCQyBuZWVkcyB2Ymxhbmsg
YmVmb3JlIGVuYWJsZSAvIGRpc2FibGUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzYxMjg3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJ
IEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYxNTkgLT4gUGF0Y2h3b3JrXzEzMTIyCj09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1h
cnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTMxMjIgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQg
bWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90
aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMx
MjIsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1l
bnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2
ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMjIvCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZl
IGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMxMjI6CgojIyMgSUdUIGNoYW5nZXMgIyMj
CgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb246CiAgICAtIGZpLWhzdy00NzcwcjogICAgICAg
W1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNTkvZmktaHN3LTQ3NzByL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCiAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMjIvZmktaHN3
LTQ3NzByL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5o
dG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2Vz
IGZvdW5kIGluIFBhdGNod29ya18xMzEyMiB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3B1
X3JlbG9jQGJhc2ljOgogICAgLSBmaS1jbWwtdTI6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbSU5D
T01QTEVURV1bNF0gKFtmZG8jMTEwMjQ2XSAvIFtmZG8jMTEwNTY2XSkKICAgWzNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTU5L2ZpLWNtbC11Mi9p
Z3RAZ2VtX2NwdV9yZWxvY0BiYXNpYy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMjIvZmktY21sLXUyL2lndEBnZW1fY3B1
X3JlbG9jQGJhc2ljLmh0bWwKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQ6CiAgICAt
IGZpLWJsYi1lNjg1MDogICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XSAoW2ZkbyMx
MDc3MThdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYxNTkvZmktYmxiLWU2ODUwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1s
CiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMxMjIvZmktYmxiLWU2ODUwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCgog
IAogIFtmZG8jMTA3NzE4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzE4CiAgW2ZkbyMxMTAyNDZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTAyNDYKICBbZmRvIzExMDU2Nl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU2NgoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDQ4IC0+IDQwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAo
OCk6IGZpLWtibC1zb3Jha2EgZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tz
IGZpLWJzdy1jeWFuIGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyBmaS1zbmItMjYwMCAKCgpC
dWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lfRFJNXzYxNTkgLT4gUGF0
Y2h3b3JrXzEzMTIyCgogIENJX0RSTV82MTU5OiBmMjgwZDMzYWU4OTU2MjRhMjQ3ZDQ0MzFlY2Uw
OWI1MDg4ZTZmMDIxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
CiAgSUdUXzUwMjE6IDJkNjRjYjY4MDgwNzViMGQwNjk2YTg5ZDJjZTI5MDIyMGU2ZWZmOGUgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQ
YXRjaHdvcmtfMTMxMjI6IGE3OGUxYWEwNWJjZDI5YzJkMzdlYjg1N2RhOWZhNDAyMDAzYmIyZmYg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBj
b21taXRzID09CgphNzhlMWFhMDViY2QgZHJtL2k5MTU6IEZCQyBuZWVkcyB2YmxhbmsgYmVmb3Jl
IGVuYWJsZSAvIGRpc2FibGUKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzEyMi8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
