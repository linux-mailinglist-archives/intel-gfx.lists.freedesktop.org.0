Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0011C0ACF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D516EA1A;
	Thu, 30 Apr 2020 23:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42A3B6E0E3;
 Thu, 30 Apr 2020 23:06:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BC09A0BC6;
 Thu, 30 Apr 2020 23:06:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 23:06:47 -0000
Message-ID: <158828800721.31919.954029766333496706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430194107.7073-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430194107.7073-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Implement_vm=5Fops-=3Eaccess_for_gdb_access_into_mmaps?=
 =?utf-8?q?_=28rev3=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEltcGxlbWVudCB2bV9vcHMt
PmFjY2VzcyBmb3IgZ2RiIGFjY2VzcyBpbnRvIG1tYXBzIChyZXYzKQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzY3ODMvClN0YXRlIDogZmFpbHVyZQoK
PT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fODQwMyAtPiBQ
YXRjaHdvcmtfMTc1MzIKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNzUzMiBhYnNvbHV0ZWx5IG5lZWQg
dG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVk
IGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xNzUzMiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93
IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzUzMi9pbmRleC5odG1sCgpQ
b3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVu
a25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTc1MzI6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMj
IyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1tYW46CiAgICAtIGZpLWdkZy01NTE6ICAg
ICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1GQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg0MDMvZmktZ2RnLTU1MS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQG1tYW4uaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3NTMyL2ZpLWdkZy01NTEvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBtbWFuLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE3NTMyIHRoYXQgY29tZSBmcm9t
IGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgZml4ZXMg
IyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfZW5naW5lczoKICAgIC0gZmktYndy
LTIxNjA6ICAgICAgICBbSU5DT01QTEVURV1bM10gKFtpOTE1IzQ4OV0pIC0+IFtQQVNTXVs0XQog
ICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg0
MDMvZmktYndyLTIxNjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9lbmdpbmVzLmh0bWwKICAg
WzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NzUzMi9maS1id3ItMjE2MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X2VuZ2luZXMuaHRtbAoK
ICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6
CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW1NLSVBdWzVdIChbZmRvIzEwOTI3MV0pIC0+IFtG
QUlMXVs2XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTVdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg0MDMvZmkta2JsLXgxMjc1L2lndEBpOTE1
X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzUzMi9maS1rYmwteDEyNzUvaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtpOTE1IzQ4OV06IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ4OQogIFtpOTE1
IzYyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjIK
ICBbaTkxNSM5NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzk1CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTEgLT4gNDMpCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg4KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1
IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1rYmwtNzU2MHUgZmkt
Ynl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoK
ICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzg0MDMgLT4gUGF0
Y2h3b3JrXzE3NTMyCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV84NDAzOiAwOTk3
OGU5OTkyOWY2ZTVhY2ZlMWU5NTlmNjQ5OWExMzRmMjEwODg3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzU2MTk6IDk0ZGU5MjNjYThkNGNjOGY1MzJi
ODA2MmQ4N2FhYWQ5ZGE2ZWY5NTYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTc1MzI6IDhiMjA2OWE4ZjdmMGJjNzNj
Mzg3Nzg3ZjZmM2IzMWE1ZGM1M2FkNTAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9n
ZngtY2kvbGludXgKCgo9PSBLZXJuZWwgMzJiaXQgYnVpbGQgPT0KCldhcm5pbmc6IEtlcm5lbCAz
MmJpdCBidWlsZHRlc3QgZmFpbGVkOgpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvUGF0Y2h3
b3JrXzE3NTMyL2J1aWxkXzMyYml0LmxvZwoKICBDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxs
cy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIENISyAgICAg
aW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5vCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUvYXNt
LWdlbmVyaWMvYnVnLmg6NTowLAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4Ni9pbmNs
dWRlL2FzbS9idWcuaDo4MywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9i
dWcuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L21tZGVidWcuaDo1
LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L21tLmg6OSwKICAgICAgICAg
ICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tbWFuLmg6NSwKICAgICAgICAgICAgICAgICBm
cm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmM6ODoKZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6IEluIGZ1bmN0aW9uIOKA
mF9faWd0X21tYXBfYWNjZXNz4oCZOgouL2luY2x1ZGUvbGludXgvZXJyLmg6MjI6NDk6IGVycm9y
OiBjYXN0IHRvIHBvaW50ZXIgZnJvbSBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXplIFstV2Vycm9y
PWludC10by1wb2ludGVyLWNhc3RdCiAjZGVmaW5lIElTX0VSUl9WQUxVRSh4KSB1bmxpa2VseSgo
dW5zaWduZWQgbG9uZykodm9pZCAqKSh4KSA+PSAodW5zaWduZWQgbG9uZyktTUFYX0VSUk5PKQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgouL2luY2x1
ZGUvbGludXgvY29tcGlsZXIuaDo3ODo0Mjogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDi
gJh1bmxpa2VseeKAmQogIyBkZWZpbmUgdW5saWtlbHkoeCkgX19idWlsdGluX2V4cGVjdCghISh4
KSwgMCkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYzo5OTY6Njogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmElTX0VSUl9WQUxVReKAmQogIGlmIChJU19FUlJfVkFM
VUUoYWRkcikpCiAgICAgIF5+fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVh
dGVkIGFzIGVycm9ycwpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NjogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLm8nIGZhaWxlZAptYWtl
WzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLm9dIEVycm9y
IDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVd
IEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdk
cml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJy
b3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ4ODogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmls
ZToxNzIyOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJp
dmVyc10gRXJyb3IgMgoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjhiMjA2OWE4ZjdmMCBkcm0vaTkx
NTogSW1wbGVtZW50IHZtX29wcy0+YWNjZXNzIGZvciBnZGIgYWNjZXNzIGludG8gbW1hcHMKCj09
IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzUzMi9pbmRleC5odG1sCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
