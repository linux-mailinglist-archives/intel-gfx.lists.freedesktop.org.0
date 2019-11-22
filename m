Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DA710784C
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 20:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E286F55D;
	Fri, 22 Nov 2019 19:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB0FC6F55C;
 Fri, 22 Nov 2019 19:50:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4619A00E6;
 Fri, 22 Nov 2019 19:50:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Nov 2019 19:50:37 -0000
Message-ID: <157445223780.23771.13222016513449250973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191122180053.770825-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191122180053.770825-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Adapt_eng?=
 =?utf-8?q?ine=5Fpark_synchronisation_rules_for_engine=5Fretire?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZ3Q6IEFkYXB0IGVuZ2luZV9wYXJrIHN5bmNocm9uaXNhdGlvbiBydWxlcyBm
b3IgZW5naW5lX3JldGlyZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjk4OTkvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAphMzY1NDM0YjE1OWEgZHJtL2k5MTUvZ3Q6IEFkYXB0IGVu
Z2luZV9wYXJrIHN5bmNocm9uaXNhdGlvbiBydWxlcyBmb3IgZW5naW5lX3JldGlyZQo5NjQ5MDI3
NWUzYzIgZHJtL2k5MTUvZ3Q6IFNjaGVkdWxlIHJlcXVlc3QgcmV0aXJlbWVudCB3aGVuIHRpbWVs
aW5lIGlkbGVzCi06Mjk6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1p
dCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUg
bGluZT4iKScgLSBpZTogJ2NvbW1pdCA3ZTM0ZjRlNGFhZDMgKCJkcm0vaTkxNS9nZW44KzogQWRk
IFJDNiBDVFggY29ycnVwdGlvbiBXQSIpJwojMjk6IApSZWZlcmVuY2VzOiA3ZTM0ZjRlNGFhZDMg
KCJkcm0vaTkxNS9nZW44KzogQWRkIFJDNiBDVFggY29ycnVwdGlvbiBXQSIpCgotOjMwOiBFUlJP
UjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUg
J2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21t
aXQgMjI0OGEyODM4NGZlICgiZHJtL2k5MTUvZ2VuOCs6IEFkZCBSQzYgQ1RYIGNvcnJ1cHRpb24g
V0EiKScKIzMwOiAKUmVmZXJlbmNlczogMjI0OGEyODM4NGZlICgiZHJtL2k5MTUvZ2VuOCs6IEFk
ZCBSQzYgQ1RYIGNvcnJ1cHRpb24gV0EiKQoKdG90YWw6IDIgZXJyb3JzLCAwIHdhcm5pbmdzLCAw
IGNoZWNrcywgMTg0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
