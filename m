Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCD7E991A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 10:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 477DA6E8EE;
	Wed, 30 Oct 2019 09:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 378986E8EA;
 Wed, 30 Oct 2019 09:23:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F7D1A0071;
 Wed, 30 Oct 2019 09:23:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 30 Oct 2019 09:23:41 -0000
Message-ID: <20191030092341.8996.47361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191030083734.27787-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191030083734.27787-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Always_track_callers_to_intel=5Frps=5Fmark=5Finterac?=
 =?utf-8?b?dGl2ZSgp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IEFsd2F5cyB0cmFjayBj
YWxsZXJzIHRvIGludGVsX3Jwc19tYXJrX2ludGVyYWN0aXZlKCkKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4NzY0LwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcyMjIgLT4gUGF0
Y2h3b3JrXzE1MDY5Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUwNjkgYWJzb2x1dGVseSBuZWVkIHRv
IGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBj
aGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTUwNjksIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0
aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVj
ZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwNjkvaW5kZXguaHRtbAoKUG9z
c2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtu
b3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1
MDY5OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMj
CgogICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBmaS13aGwtdTogICAgICAgICAgIE5PVFJV
TiAtPiBbRkFJTF1bMV0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTA2OS9maS13aGwtdS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAog
ICAgLSBmaS1ieHQtZHNpOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMl0KICAgWzJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTA2OS9maS1i
eHQtZHNpL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJzdy1uMzA1MDogICAgICAg
Tk9UUlVOIC0+IFtGQUlMXVszXQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDY5L2ZpLWJzdy1uMzA1MC9pZ3RAcnVubmVyQGFib3J0
ZWQuaHRtbAogICAgLSBmaS1ic3cta2Vma2E6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNF0KICAg
WzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTA2OS9maS1ic3cta2Vma2EvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCktub3duIGlzc3Vl
cwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3Jr
XzE1MDY5IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMK
CiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1m
aWxlczoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbSU5DT01QTEVURV1bNV0gKFtmZG8jMTA3
NzEzXSAvIFtmZG8jMTA5MTAwXSkgLT4gW1BBU1NdWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIyMi9maS1pY2wtdTMvaWd0QGdlbV9j
dHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTA2OS9maS1pY2wtdTMvaWd0QGdlbV9jdHhf
Y3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgKiB7aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF90
aW1lbGluZXN9OgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIFtJTkNPTVBMRVRFXVs3XSAoW2Zk
byMxMTE4MzFdKSAtPiBbUEFTU11bOF0KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjIyL2ZpLXRnbC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfdGltZWxpbmVzLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTA2OS9maS10Z2wtdS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X3RpbWVsaW5lcy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHBy
ZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAg
dGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVS
RSkuCgogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzExMTQ2MV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQ2MQogIFtmZG8jMTExNzY0XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzY0CiAgW2ZkbyMx
MTE4MzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4
MzEKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MCAtPiA0MSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDEpOiBmaS1jZmwtODEwOXUgCiAgTWlzc2luZyAgICAo
MTApOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktaHN3LXBlcHB5IGZpLWJ5dC1zcXVhd2tz
IGZpLWljbC11MiBmaS1ic3ctY3lhbiBmaS1wbnYtZDUxMCBmaS1pY2wteSBmaS1ieXQtY2xhcHBl
ciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJ
LTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzIyMiAtPiBQYXRjaHdvcmtfMTUw
NjkKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcyMjI6IDg2NDRkNzA1NTYxZjYx
NDQxNDI4MTlkYTAzNmJjM2M4ZWRiZWNkOTIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNTI1MTogNmQzMGVjMjMxNGYyMmY0NjUxMTNmN2E5NzI5NDRm
ZWU1NDZlY2JkOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xNTA2OTogYjY0MmMzNWQ3MmJiODZiZTVlNTVmOGQ1NDRl
ZTJkNDIzNzA4MDU0OCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmI2NDJjMzVkNzJiYiBkcm0vaTkxNS9ndDogQWx3YXlz
IHRyYWNrIGNhbGxlcnMgdG8gaW50ZWxfcnBzX21hcmtfaW50ZXJhY3RpdmUoKQoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MDY5L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
