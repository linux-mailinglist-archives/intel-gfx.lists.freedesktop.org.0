Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6591281FAA
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 02:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313B96E9F9;
	Sat,  3 Oct 2020 00:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5B36E9F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 00:18:51 +0000 (UTC)
IronPort-SDR: 7xiX9VPKliTQ82xN5+C82Nj3PeQywo+anxINXybvJ7h+TJUWci3mfV9oWV1qNZg21qMBuM83CC
 F2vxLep8aMag==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="143102196"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="143102196"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:50 -0700
IronPort-SDR: 3P2pToM/E82g1tw72Rj6jP+jV/JmLUZOXZBlFDL4jfCZfDHAlF2KP9Inil8pL3FEygd89AQIed
 BRc1DmAFAwTA==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="511239266"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  3 Oct 2020 03:18:42 +0300
Message-Id: <20201003001846.1271151-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201003001846.1271151-1-imre.deak@intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/skl: Work around incorrect BIOS
 WRPLL PDIV programming
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIEJJT1Mgb2YgYXQgbGVhc3Qgb25lIEFTVVMtWjE3ME0gc3lzdGVtIHdpdGggYW4gU0tMIEkg
aGF2ZSBwcm9ncmFtcwp0aGUgMTAxYiBXUlBMTCBQRElWIGRpdmlkZXIgdmFsdWUsIHdoaWNoIGlz
IHRoZSBlbmNvZGluZyBmb3IgUERJVj03IHdpdGgKYml0IzAgaW5jb3JyZWN0bHkgc2V0LgoKVGhp
cyBoYXBwZW5zIHdpdGggdGhlCgoiMzg0MHgyMTYwIjogMzAgMjYyNzUwIDM4NDAgMzg4OCAzOTIw
IDQwMDAgMjE2MCAyMTYzIDIxNjggMjE5MSAweDQ4IDB4OQoKSERNSSBtb2RlIChzY2FsZWQgZnJv
bSBhIDEwMjR4NzY4IHNyYyBmYikgc2V0IGJ5IEJJT1MgYW5kIHRoZQoKcmVmX2Nsb2NrPTI0MDAw
LCBkY29faW50ZWdlcj0zODMsIGRjb19mcmFjdGlvbj01ODAyLCBwZGl2PTcsIHFkaXY9MSwga2Rp
dj0xCgpXUlBMTCBwYXJhbWV0ZXJzIChhc3N1bWluZyBQRElWPTcgd2FzIHRoZSBpbnRlbmRlZCBz
ZXR0aW5nKS4gVGhpcwpjb3JyZXNwb25kcyB0byAyNjI3NDkgUExMIGZyZXF1ZW5jeS9wb3J0IGNs
b2NrLgoKTGF0ZXIgdGhlIGRyaXZlciBzZXRzIHRoZSBzYW1lIG1vZGUgZm9yIHdoaWNoIGl0IGNh
bGN1bGF0ZXMgdGhlIHNhbWUKZGNvX2ludC9kY29fZnJhYy9kaXYgV1JQTEwgcGFyYW1ldGVycyAo
d2l0aCB0aGUgY29ycmVjdCBQRElWPTcgZW5jb2RpbmcpLgoKQmFzZWQgb24gdGhlIGFib3ZlLCBs
ZXQncyBhc3N1bWUgdGhhdCBQRElWPTcgd2FzIGludGVuZGVkIGFuZCB0aGUgSFcKanVzdCBpZ25v
cmVzIGJpdCMwIGluIHRoZSBQRElWIHJlZ2lzdGVyIGZpZWxkIGZvciB0aGlzIHNldHRpbmcsIHRy
ZWF0aW5nCjEwMGIgYW5kIDEwMWIgZW5jb2RpbmdzIHRoZSBzYW1lIHdheS4KCldoaWxlIGF0IGl0
IGFkZCB0aGUgTUlTU0lOR19DQVNFKCkgZm9yIHRoZSBwMCxwMiBkaXZpZGVyIGRlY29kaW5ncy4K
CnYyOiAoVmlsbGUpCi0gQWRkIGEgZGVmaW5lIGZvciB0aGUgaW5jb3JyZWN0IGRpdmlkZXIgdmFs
dWUuCi0gRW1pdCBvbmx5IGEgZGVidWcgbWVzc2FnZSB3aGVuIGRldGVjdGluZyB0aGUgaW5jb3Jy
ZWN0IGRpdmlkZXIgdmFsdWUuCi0gVXNlIGZhbGx0aHJvdWdoIGZyb20gdGhlIGluY29ycmVjdCBk
aXZpZGVyIHZhbHVlIGNhc2UuCi0gQWRkIHRoZSBNSVNTSU5HX0NBU0UoKXMuCgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE0ICsrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMKaW5kZXggZTA4Njg0ZTM0MDc4Li42MWNiNTU4YzYwZDEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTE2MDIsMTIg
KzE2MDIsMjYgQEAgc3RhdGljIGludCBza2xfZGRpX3dycGxsX2dldF9mcmVxKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCWNhc2UgRFBMTF9DRkdDUjJfUERJVl8zOgogCQlwMCA9IDM7
CiAJCWJyZWFrOworCWRlZmF1bHQ6CisJCWlmIChwMCA9PSBEUExMX0NGR0NSMl9QRElWXzdfSU5W
QUxJRCkKKwkJCS8qCisJCQkgKiBJbmNvcnJlY3QgQVNVUy1aMTcwTSBCSU9TIHNldHRpbmcsIHRo
ZSBIVyBzZWVtcyB0byBpZ25vcmUgYml0IzAsCisJCQkgKiBoYW5kbGluZyBpdCB0aGUgc2FtZSB3
YXkgYXMgUERJVl83LgorCQkJICovCisJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiSW52YWxp
ZCBXUlBMTCBQRElWIGRpdmlkZXIgdmFsdWUsIGZpeGluZyBpdC5cbiIpOworCQllbHNlCisJCQlN
SVNTSU5HX0NBU0UocDApOworCisJCWZhbGx0aHJvdWdoOwogCWNhc2UgRFBMTF9DRkdDUjJfUERJ
Vl83OgogCQlwMCA9IDc7CiAJCWJyZWFrOwogCX0KIAogCXN3aXRjaCAocDIpIHsKKwlkZWZhdWx0
OgorCQlNSVNTSU5HX0NBU0UocDIpOworCQlmYWxsdGhyb3VnaDsKIAljYXNlIERQTExfQ0ZHQ1Iy
X0tESVZfNToKIAkJcDIgPSA1OwogCQlicmVhazsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IDg4YzIxNWNmOTdkNC4uZDkxMTU4MzUyNmRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAg
LTEwMjYxLDYgKzEwMjYxLDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lICBEUExM
X0NGR0NSMl9QRElWXzIgKDEgPDwgMikKICNkZWZpbmUgIERQTExfQ0ZHQ1IyX1BESVZfMyAoMiA8
PCAyKQogI2RlZmluZSAgRFBMTF9DRkdDUjJfUERJVl83ICg0IDw8IDIpCisjZGVmaW5lICBEUExM
X0NGR0NSMl9QRElWXzdfSU5WQUxJRAkoNSA8PCAyKQogI2RlZmluZSAgRFBMTF9DRkdDUjJfQ0VO
VFJBTF9GUkVRX01BU0sJKDMpCiAKICNkZWZpbmUgRFBMTF9DRkdDUjEoaWQpCV9NTUlPX1BJUEUo
KGlkKSAtIFNLTF9EUExMMSwgX0RQTEwxX0NGR0NSMSwgX0RQTEwyX0NGR0NSMSkKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
