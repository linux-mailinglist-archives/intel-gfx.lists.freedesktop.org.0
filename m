Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C02D34D14
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 18:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0049389A5E;
	Tue,  4 Jun 2019 16:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31A8789A5C;
 Tue,  4 Jun 2019 16:18:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2ACE8A0137;
 Tue,  4 Jun 2019 16:18:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 04 Jun 2019 16:18:49 -0000
Message-ID: <20190604161849.13711.43564@emeril.freedesktop.org>
References: <20190604123947.20713-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190604123947.20713-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_dma-?=
 =?utf-8?q?buf=3A_Discard_old_fence=5Fexcl_on_retrying_get=5Ffences=5Frcu_?=
 =?utf-8?q?for_realloc_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZG1hLWJ1ZjogRGlzY2FyZCBvbGQgZmVuY2Vf
ZXhjbCBvbiByZXRyeWluZyBnZXRfZmVuY2VzX3JjdSBmb3IgcmVhbGxvYyAocmV2MykKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxNTgxLwpTdGF0ZSA6
IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJN
XzYxODYgLT4gUGF0Y2h3b3JrXzEzMTY3Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBO
byByZWdyZXNzaW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE2Ny8KCktub3duIGlzc3VlcwotLS0t
LS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMTY3
IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMg
UG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1kZWZhdWx0
OgogICAgLSB7ZmktaWNsLWd1Y306ICAgICAgIFtJTkNPTVBMRVRFXVsxXSAoW2ZkbyMxMDc3MTNd
IC8gW2ZkbyMxMDg1NjldKSAtPiBbUEFTU11bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTg2L2ZpLWljbC1ndWMvaWd0QGdlbV9jdHhf
c3dpdGNoQGJhc2ljLWRlZmF1bHQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTY3L2ZpLWljbC1ndWMvaWd0QGdlbV9jdHhf
c3dpdGNoQGJhc2ljLWRlZmF1bHQuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVs
b2FkOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVszXSAoW2ZkbyMxMDc3
MjRdKSAtPiBbUEFTU11bNF0KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MTg2L2ZpLWljbC11My9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJl
bG9hZC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMxNjcvZmktaWNsLXUzL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2Fk
Lmh0bWwKCiAgKiB7aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHR9OgogICAgLSBmaS1za2wtaW9t
bXU6ICAgICAgIFtJTkNPTVBMRVRFXVs1XSAoW2ZkbyMxMDg2MDJdKSAtPiBbUEFTU11bNl0KICAg
WzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTg2
L2ZpLXNrbC1pb21tdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFs2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxNjcvZmkt
c2tsLWlvbW11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgKiB7aWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9tbWFufToKICAgIC0gZmktaWNsLXk6ICAgICAgICAgICBbVElNRU9VVF1b
N10gKFtmZG8jMTEwODE4IF0pIC0+IFtQQVNTXVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxODYvZmktaWNsLXkvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9tbWFuLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE2Ny9maS1pY2wteS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX21tYW4uaHRtbAoKICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNy
Yy1waXBlLWE6CiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW0lOQ09NUExFVEVdWzldIChbZmRv
IzEwNzcxOF0pIC0+IFtQQVNTXVsxMF0KICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTg2L2ZpLWJsYi1lNjg1MC9pZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxNjcvZmktYmxiLWU2ODUw
L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEuaHRtbAoKICAK
ICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGln
bm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVu
Y2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwNzcxM106IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA3
NzE4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzE4
CiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDc3MjQKICBbZmRvIzEwODU2OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwODU2OQogIFtmZG8jMTA4NjAyXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NjAyCiAgW2ZkbyMxMTA4MTggXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODE4IAoKClBhcnRpY2lw
YXRpbmcgaG9zdHMgKDUzIC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAg
TWlzc2luZyAgICAoOCk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBm
aS1ic3ctY3lhbiBmaS1rYmwtNzU2MHUgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIGZpLWNt
bC11IAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9EUk1fNjE4
NiAtPiBQYXRjaHdvcmtfMTMxNjcKCiAgQ0lfRFJNXzYxODY6IGE2MjljY2FhYTY2YmI0ZWZmYzQ2
MWEwMGRlNWIzZjkyYjZlYTljNGMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgKICBJR1RfNTAzNzogYTk4YzljZDUwYWE0ODkzMzIxN2NhNDEwNTUyNzljY2IxNjgw
ZDI1YiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10
b29scwogIFBhdGNod29ya18xMzE2NzogY2QyMjY3MGI5MWY2NDE3MDg4YzdlYTI4YWQwYTc1MzVk
NGM4NDQ5OCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09
IExpbnV4IGNvbW1pdHMgPT0KCmNkMjI2NzBiOTFmNiBkbWEtYnVmOiBEaXNjYXJkIG9sZCBmZW5j
ZV9leGNsIG9uIHJldHJ5aW5nIGdldF9mZW5jZXNfcmN1IGZvciByZWFsbG9jCgo9PSBMb2dzID09
CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxNjcvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
