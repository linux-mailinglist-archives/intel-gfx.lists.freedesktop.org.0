Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 610CCF1C39
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 18:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10BD6EE02;
	Wed,  6 Nov 2019 17:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B2126EDFE;
 Wed,  6 Nov 2019 17:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 155A4A0071;
 Wed,  6 Nov 2019 17:16:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 17:16:51 -0000
Message-ID: <157306061108.12035.2971281178314574352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106135739.7583-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191106135739.7583-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5Bv2=2C1/4=5D_drm=3A_Expose_a_method_for_crea?=
 =?utf-8?q?ting_anonymous_struct_file_around_drm=5Fminor?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
NF0gZHJtOiBFeHBvc2UgYSBtZXRob2QgZm9yIGNyZWF0aW5nIGFub255bW91cyBzdHJ1Y3QgZmls
ZSBhcm91bmQgZHJtX21pbm9yClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTA2NC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MjcwIC0+IFBhdGNod29ya18xNTE1NAo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0t
LS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdp
dGggUGF0Y2h3b3JrXzE1MTU0IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVh
bGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MTU0LCBw
bGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MTU0L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTE1NDoKCiMjIyBJR1QgY2hhbmdl
cyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfbW1hbjoKICAgIC0gZmktc2tsLWxtZW06ICAgICAgICBbUEFTU11bMV0gLT4gW0lO
Q09NUExFVEVdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzI3MC9maS1za2wtbG1lbS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX21tYW4u
aHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MTU0L2ZpLXNrbC1sbWVtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfbW1hbi5odG1s
CgogIAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBm
cm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90
IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9l
eGVjbGlzdHM6CiAgICAtIHtmaS1pY2wtZHNpfTogICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1G
QUlMXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzcyNzAvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5o
dG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUxNTQvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5o
dG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2Vz
IGZvdW5kIGluIFBhdGNod29ya18xNTE1NCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzOgogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQQVNT
XVs1XSAtPiBbSU5DT01QTEVURV1bNl0gKFtmZG8jMTA2MDcwXSAvIFtmZG8jMTExNzAwXSkKICAg
WzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mjcw
L2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBb
Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MTU0L2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoK
ICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlz
IGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZl
cmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwNjA3MF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjA3MAogIFtmZG8j
MTExNzAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NzAwCgoKUGFydGljaXBhdGluZyBob3N0cyAoNTEgLT4gNDQpCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg3KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZp
LWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBlciBmaS1i
ZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkw
NTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzI3MCAtPiBQYXRjaHdvcmtfMTUxNTQKCiAg
Q0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcyNzA6IDhkODNmMzk3OGNiMjQxM2ZmY2Vi
MmI4YTljMWQ1MDc0ODRkN2ZmMDggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgKICBJR1RfNTI2NDogZjIxMjEzMDEyMzkzYmQ4MDQxYWQ5MzA4NGNlMjlkYTA4OGVm
ODQyNiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10
b29scwogIFBhdGNod29ya18xNTE1NDogM2ZjOGVhZDU5NmRjZmU5NTU3MTk1NjIyY2FkNjNhODYy
ZjYyODY2YSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09
IExpbnV4IGNvbW1pdHMgPT0KCjNmYzhlYWQ1OTZkYyBkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlm
eSBtbWFwX2d0dCByZXZvY2F0aW9uIG9uIHVuYmluZGluZwo2ODE2YTVhNjJjMzQgZHJtL2k5MTUv
c2VsZnRlc3RzOiBXcmFwIHZtX21tYXAoKSBhcm91bmQgR0VNIG9iamVjdHMKMDk2ZWExNWIwNTJh
IGRybS9pOTE1L3NlbGZ0ZXN0czogUmVwbGFjZSBtb2NrX2ZpbGUgaGFja2VyeSB3aXRoIGRybSdz
IHRydWUgZmFrZQozYTM4ZjllOWJlNGIgZHJtOiBFeHBvc2UgYSBtZXRob2QgZm9yIGNyZWF0aW5n
IGFub255bW91cyBzdHJ1Y3QgZmlsZSBhcm91bmQgZHJtX21pbm9yCgo9PSBMb2dzID09CgpGb3Ig
bW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUxNTQvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
