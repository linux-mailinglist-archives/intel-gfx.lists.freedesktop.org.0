Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 134E916643
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 17:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7820189FD3;
	Tue,  7 May 2019 15:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBBD489CF5;
 Tue,  7 May 2019 15:09:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4B62A0109;
 Tue,  7 May 2019 15:09:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 May 2019 15:09:27 -0000
Message-ID: <20190507150927.858.16649@emeril.freedesktop.org>
References: <20190507122544.12698-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190507122544.12698-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Only_reschedule_the_submission_tasklet_if_preemption_is?=
 =?utf-8?q?_possible?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE9ubHkgcmVzY2hlZHVsZSB0
aGUgc3VibWlzc2lvbiB0YXNrbGV0IGlmIHByZWVtcHRpb24gaXMgcG9zc2libGUKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMzY4LwpTdGF0ZSA6IHN1
Y2Nlc3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYw
NTkgLT4gUGF0Y2h3b3JrXzEyOTc3Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyBy
ZWdyZXNzaW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjk3Ny8KCktub3duIGlzc3VlcwotLS0tLS0t
LS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEyOTc3IHRo
YXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNz
dWVzIGhpdCAjIyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAt
IGZpLWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAoW2ZkbyMx
MDM5MjddIC8gW2ZkbyMxMTA2MjRdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYwNTkvZmktYXBsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2hhbmdjaGVjay5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5NzcvZmktYXBsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2hhbmdjaGVjay5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RA
Z2VtX2V4ZWNfY3JlYXRlQGJhc2ljOgogICAgLSB7ZmktaWNsLXl9OiAgICAgICAgIFtJTkNPTVBM
RVRFXVszXSAoW2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bNF0KICAgWzNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDU5L2ZpLWljbC15L2lndEBnZW1f
ZXhlY19jcmVhdGVAYmFzaWMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTc3L2ZpLWljbC15L2lndEBnZW1fZXhlY19jcmVh
dGVAYmFzaWMuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0OgogICAgLSB7
ZmktaWNsLXUyfTogICAgICAgIFtGQUlMXVs1XSAoW2ZkbyMxMDk2MzUgXSAvIFtmZG8jMTEwMzg3
XSkgLT4gW1BBU1NdWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjA1OS9maS1pY2wtdTIvaWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZh
c3QuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyOTc3L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5o
dG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6CiAgICAt
IGZpLWFwbC1ndWM6ICAgICAgICAgW0ZBSUxdWzddIChbZmRvIzEwODYyMl0gLyBbZmRvIzEwOTcy
MF0pIC0+IFtGQUlMXVs4XSAoW2ZkbyMxMTA2MjRdKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwNTkvZmktYXBsLWd1Yy9pZ3RAcnVubmVy
QGFib3J0ZWQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyOTc3L2ZpLWFwbC1ndWMvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwK
CiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBp
cyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZm
ZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDM5MjddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRv
IzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NzcxMwogIFtmZG8jMTA4NjIyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4NjIyCiAgW2ZkbyMxMDk2MzUgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjM1IAogIFtmZG8jMTA5NzIwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NzIwCiAgW2ZkbyMxMTAzODddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAzODcKICBbZmRv
IzExMDYyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDYyNAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBm
aS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgZmkt
YmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9E
Uk1fNjA1OSAtPiBQYXRjaHdvcmtfMTI5NzcKCiAgQ0lfRFJNXzYwNTk6IGRkN2FmNzY3ZDA3MmZh
ODY2ZDViYzJkMjRmZjIyNWJmODJmMmFkMTEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNDk3MjogZjA1MmU0OWE0M2NjOTcwNGVhNWYyNDBkZjE1ZGQ5
ZDNkZmVkNjhhYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xMjk3NzogYzZlMGQ3ZDlmNzUyOGU1ODIxOWM3MjMwOGMx
ZTViMTU0Y2Q2Y2MzNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmM2ZTBkN2Q5Zjc1MiBkcm0vaTkxNTogT25seSByZXNj
aGVkdWxlIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQgaWYgcHJlZW1wdGlvbiBpcyBwb3NzaWJsZQoK
PT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTc3LwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
