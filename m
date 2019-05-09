Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99660186E7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 10:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B020689B33;
	Thu,  9 May 2019 08:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AA0789B33;
 Thu,  9 May 2019 08:42:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74791A0073;
 Thu,  9 May 2019 08:42:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 09 May 2019 08:42:21 -0000
Message-ID: <20190509084221.12520.79277@emeril.freedesktop.org>
References: <20190509061954.10379-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190509061954.10379-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_support_for_asynchronous_display_power_disab?=
 =?utf-8?q?ling_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcgKHJldjMpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDI0Mi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjA5ZmRjOTZh
OGEyYSBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIHRyYWNraW5nIHdha2VyZWZzIHcvbyBwb3dl
ci1vbiBndWFyYW50ZWUKLToxNDA6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25t
ZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxNDA6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYzoxNDE6CitzdGF0aWMgdm9pZCB1bnRyYWNrX2lu
dGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJ
CQkJICAgIGRlcG90X3N0YWNrX2hhbmRsZV90IHN0YWNrKQoKdG90YWw6IDAgZXJyb3JzLCAwIHdh
cm5pbmdzLCAxIGNoZWNrcywgMzIzIGxpbmVzIGNoZWNrZWQKNjNjNzFkOTI2M2NkIGRybS9pOTE1
OiBGb3JjZSBwcmludGluZyB3YWtlcmVmIHRhY2tpbmcgZHVyaW5nIHBtX2NsZWFudXAKNGVlOTBk
MWY1YjJlIGRybS9pOTE1OiBWZXJpZnkgcG93ZXIgZG9tYWlucyBzdGF0ZSBkdXJpbmcgc3VzcGVu
ZCBpbiBhbGwgY2FzZXMKMmRjMDJhYmNmN2QxIGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgYXN5
bmNocm9ub3VzIGRpc3BsYXkgcG93ZXIgZGlzYWJsaW5nCi06Mzg3OiBDSEVDSzpMSU5FX1NQQUNJ
Tkc6IFBsZWFzZSB1c2UgYSBibGFuayBsaW5lIGFmdGVyIGZ1bmN0aW9uL3N0cnVjdC91bmlvbi9l
bnVtIGRlY2xhcmF0aW9ucwojMzg3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmM6MjI1MzoKK30KKy8qKgoKLTo0Mzg6IFdBUk5JTkc6VFlQT19TUEVMTElORzog
J3ByZWNlZWRpbmcnIG1heSBiZSBtaXNzcGVsbGVkIC0gcGVyaGFwcyAncHJlY2VkaW5nJz8KIzQz
ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jOjIzMDQ6Cisg
KiBGbHVzaGVzIGFueSBwZW5kaW5nIHdvcmsgdGhhdCB3YXMgc2NoZWR1bGVkIGJ5IGEgcHJlY2Vl
ZGluZwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAxIGNoZWNrcywgNDg2IGxpbmVzIGNo
ZWNrZWQKMDdmNDY2ODMxZmUwIGRybS9pOTE1OiBEaXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5
IGR1cmluZyBEUCBBVVggdHJhbnNmZXJzCjUxN2E3MGU1NDI2MyBkcm0vaTkxNTogV0FSTiBmb3Ig
ZURQIGVuY29kZXJzIGluIGludGVsX2RwX2RldGVjdF9kcGNkKCkKN2UwMTc3Y2YxZjZiIGRybS9p
OTE1OiBSZW1vdmUgdGhlIHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9kZXRl
Y3QoKQplNGM0NzllMWFkN2UgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2Vy
IHJlZiBmcm9tIGludGVsX2RwX2hwZF9wdWxzZSgpCi06MTI6IEVSUk9SOkdJVF9DT01NSVRfSUQ6
IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hh
cnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAxYzc2N2IzMzliMzkg
KCJkcm0vaTkxNTogdGFrZSBkaXNwbGF5IHBvcnQgcG93ZXIgZG9tYWluIGluIERQIEhQRCBoYW5k
bGVyIiknCiMxMjogCmNvbW1pdCAxYzc2N2IzMzliMzkzOGIxOTA3NmZmZGM5ZDcwYWExZTQyMzVh
NDViCgotOjIxOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVz
Y3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+
IiknIC0gaWU6ICdjb21taXQgN2QyM2UzYzM3YmIzICgiZHJtL2k5MTU6IENsZWFuaW5nIHVwIGlu
dGVsX2RwX2hwZF9wdWxzZSIpJwojMjE6IApjb21taXQgN2QyM2UzYzM3YmIzZmM2OTUyZGM4NDAw
N2VlNjBjYjUzM2ZkMmQ1YwoKdG90YWw6IDIgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywg
NjggbGluZXMgY2hlY2tlZApkNzgxZWE4Njk4MTUgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBM
TFMgcG93ZXIgZG9tYWluIHdpdGggRElTUExBWV9DT1JFIGRvbWFpbgowOTNiMjQyMWI5OGIgZHJt
L2k5MTU6IEF2b2lkIHRha2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgozZDRh
MzE2YjdkYzAgZHJtL2k5MTU6IEFzc2VydCB0aGF0IFR5cGVDIHBvcnRzIGFyZSBub3QgdXNlZCBm
b3IgZURQCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
