Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA56113DBF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 10:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DCF6F615;
	Thu,  5 Dec 2019 09:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F37D6F610;
 Thu,  5 Dec 2019 09:24:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 01:24:18 -0800
X-IronPort-AV: E=Sophos;i="5.69,280,1571727600"; d="scan'208";a="205712033"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.3.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 01:24:14 -0800
Date: Thu, 5 Dec 2019 11:24:12 +0200
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191205092412.GA8089@jlahtine-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGF2ZSAmIERhbmllbCwKCkZpbmFsIG9uZSBmb3IgNS41LXJjMS4KCkEgZml4IGZvciBFSEwg
cG9ydCBEIHByb2dyYW1taW5nIChEREktRCkgYW5kIGEgY291cGxlIG9mIENJCmZpeGVzIGZvciBH
RU0gY29udGV4dHMuCgpUaGlzIGluY2x1ZGVzIHRoZSBHVlQgZml4ZXMgUFIgd2l0aCBvbmUgY29t
bWFuZCBwYXJzZXIgZml4IGFuZApvbmUgV0FSTiBzcGxhdCBmaXguCgpSZWdhcmRzLCBKb29uYXMK
CioqKgoKZHJtLWludGVsLW5leHQtZml4ZXMtMjAxOS0xMi0wNToKCi0gSW5jbHVkZXMgZ3Z0LW5l
eHQtZml4ZXMtMjAxOS0xMi0wMiBwdWxsCi0gRml4ZXMgZm9yIENJIHNwb3R0ZWQgZWFkbG9jayBh
bmQgYSByYWNlIGNvbmRpdGlvbiBpbiBHRU0gY29udGV4dHMKLSBGaXggZm9yIEVITCBwb3J0IEQg
cHJvZ3JhbW1pbmcKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgM2NjNDRmZWI5
ODYxZDJmNTI2N2FmOWI5NjJhZTkyYzVlYTFiNDhmZDoKCiAgZHJtL2k5MTU6IFJlZHVjZSBuZXN0
ZWQgcHJlcGFyZV9yZW1vdGVfY29udGV4dCgpIHRvIGEgdHJ5bG9jayAoMjAxOS0xMS0yNyAxMDox
MjoxOSArMDIwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWludGVsIHRhZ3MvZHJtLWludGVs
LW5leHQtZml4ZXMtMjAxOS0xMi0wNQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDAx
YmI2MzAzMTkzMzdiZTE1ZmM1MGMyMTExMjYxODAxOThkNGUxNTc6CgogIGRybS9pOTE1L2VobDog
TWFrZSBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZCgpIHVzZSBwaHkgaW5zdGVhZCBvZiBwb3J0
ICgyMDE5LTEyLTAzIDEzOjA2OjA1ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQotIEluY2x1ZGVzIGd2dC1uZXh0
LWZpeGVzLTIwMTktMTItMDIgcHVsbAotIEZpeGVzIGZvciBDSSBzcG90dGVkIGVhZGxvY2sgYW5k
IGEgcmFjZSBjb25kaXRpb24gaW4gR0VNIGNvbnRleHRzCi0gRml4IGZvciBFSEwgcG9ydCBEIHBy
b2dyYW1taW5nCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCkNocmlzIFdpbHNvbiAoMSk6CiAgICAgIGRybS9pOTE1L2dlbTog
VGFrZSB0aW1lbGluZS0+bXV0ZXggdG8gd2FsayBsaXN0LW9mLXJlcXVlc3RzCgpHYW8sIEZyZWQg
KDIpOgogICAgICBkcm0vaTkxNS9ndnQ6IFJlZmluZSBub24gcHJpdmlsZWdlIHJlZ2lzdGVyIGFk
ZHJlc3MgY2FsdWNhdGlvbgogICAgICBkcm0vaTkxNS9ndnQ6IFVwZGF0ZSBmb3JjZS10by1ub25w
cml2IHJlZ2lzdGVyIHdoaXRlbGlzdAoKSm9vbmFzIExhaHRpbmVuICgxKToKICAgICAgTWVyZ2Ug
dGFnICdndnQtbmV4dC1maXhlcy0yMDE5LTEyLTAyJyBvZiBodHRwczovL2dpdGh1Yi5jb20vaW50
ZWwvZ3Z0LWxpbnV4IGludG8gZHJtLWludGVsLW5leHQtZml4ZXMKCk1hdHQgUm9wZXIgKDEpOgog
ICAgICBkcm0vaTkxNS9laGw6IE1ha2UgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoKSB1c2Ug
cGh5IGluc3RlYWQgb2YgcG9ydAoKWmhlbnl1IFdhbmcgKDEpOgogICAgICBkcm0vaTkxNS9ndnQ6
IEZpeCBjbWQgbGVuZ3RoIGNoZWNrIGZvciBNSV9BVE9NSUMKCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgIDQgKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2NtZF9wYXJzZXIuYyAgICAgICB8ICA2ICsrKy0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2hhbmRsZXJzLmMgICAgICAgICB8ICA1ICsrKy0tCiA0IGZpbGVzIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
