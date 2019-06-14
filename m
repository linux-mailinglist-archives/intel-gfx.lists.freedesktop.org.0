Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA3D450FD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 03:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B2A892F8;
	Fri, 14 Jun 2019 01:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A372892F8;
 Fri, 14 Jun 2019 01:03:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71909A00F3;
 Fri, 14 Jun 2019 01:03:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 14 Jun 2019 01:03:49 -0000
Message-ID: <20190614010349.17469.18001@emeril.freedesktop.org>
References: <20190614002713.141340-1-sean@poorly.run>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614002713.141340-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?amdgpu=3A_Fix_connector_atomic=5Fcheck_compilation_fail?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2FtZGdwdTogRml4IGNvbm5lY3RvciBh
dG9taWNfY2hlY2sgY29tcGlsYXRpb24gZmFpbApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIwNzQvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRv
bWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRl
L2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
Ly4uL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5vCmRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1Ly4uL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jOjQwMjQ6MTg6IGVycm9yOiBpbml0
aWFsaXphdGlvbiBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XZXJyb3I9aW5jb21w
YXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgLmF0b21pY19jaGVjayA9IGFtZGdwdV9kbV9jb25uZWN0
b3JfYXRvbWljX2NoZWNrLAogICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS8uLi9kaXNwbGF5L2FtZGdwdV9k
bS9hbWRncHVfZG0uYzo0MDI0OjE4OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3Ig4oCY
YW1kZ3B1X2RtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MuYXRvbWljX2NoZWNr4oCZKQpjYzE6IHNv
bWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDoyNzg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS8uLi9k
aXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0ubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvLi4vZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLm9dIEVy
cm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODk6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ4OTogcmVjaXBlIGZv
ciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0g
RXJyb3IgMgpNYWtlZmlsZToxMDcxOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVk
Cm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
