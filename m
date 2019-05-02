Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D62411C37
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828E6895B2;
	Thu,  2 May 2019 15:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A764C895B2;
 Thu,  2 May 2019 15:09:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0D9EA00FD;
 Thu,  2 May 2019 15:09:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 02 May 2019 15:09:21 -0000
Message-ID: <20190502150921.26884.59517@emeril.freedesktop.org>
References: <1556802643-19788-1-git-send-email-vandita.kulkarni@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1556802643-19788-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5Bv4=2C1/4=5D_drm/i915=3A_Fix_the_pipe_state_?=
 =?utf-8?q?timing_mismatch_warnings?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y0LDEv
NF0gZHJtL2k5MTU6IEZpeCB0aGUgcGlwZSBzdGF0ZSB0aW1pbmcgbWlzbWF0Y2ggd2FybmluZ3MK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMjEwLwpT
dGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2Nh
bGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VO
RCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgW01d
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9oZWFkZXJfdGVzdF9pbnRlbF9zaWRlYmFuZC5vCiAgQ0Mg
W01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9oZWFkZXJfdGVzdF9pbnRlbF9zcHJpdGUubwogIEND
IFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfdHYubwogIENDIFtN
XSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfdW5jb3JlLm8KICBDQyBb
TV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2ludGVsX3Zkc2MubwogIENDIFtN
XSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfd2FrZXJlZi5vCiAgQ0Mg
W01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5Lm8KZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5jOiBJbiBmdW5jdGlvbiDigJhpbnRlbF9nZXRfcGlwZV90aW1p
bmdz4oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmM6Nzc0MDoyOiBlcnJv
cjogdGhpcyDigJhpZuKAmSBjbGF1c2UgZG9lcyBub3QgZ3VhcmQuLi4gWy1XZXJyb3I9bWlzbGVh
ZGluZy1pbmRlbnRhdGlvbl0KICBpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVy
KSkKICBefgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmM6Nzc0MjozOiBub3Rl
OiAuLi50aGlzIHN0YXRlbWVudCwgYnV0IHRoZSBsYXR0ZXIgaXMgbWlzbGVhZGluZ2x5IGluZGVu
dGVkIGFzIGlmIGl0IHdlcmUgZ3VhcmRlZCBieSB0aGUg4oCYaWbigJkKICAgcGlwZV9jb25maWct
PmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX2hibGFua19zdGFydCA9CiAgIF5+fn5+fn5+fn5+CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYzo3NzU0OjI6IGVycm9yOiB0aGlzIOKA
mGlm4oCZIGNsYXVzZSBkb2VzIG5vdCBndWFyZC4uLiBbLVdlcnJvcj1taXNsZWFkaW5nLWluZGVu
dGF0aW9uXQogIGlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29kZXIpKQogIF5+CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYzo3NzU2OjM6IG5vdGU6IC4uLnRoaXMg
c3RhdGVtZW50LCBidXQgdGhlIGxhdHRlciBpcyBtaXNsZWFkaW5nbHkgaW5kZW50ZWQgYXMgaWYg
aXQgd2VyZSBndWFyZGVkIGJ5IHRoZSDigJhpZuKAmQogICBwaXBlX2NvbmZpZy0+YmFzZS5hZGp1
c3RlZF9tb2RlLmNydGNfdmJsYW5rX3N0YXJ0ID0KICAgXn5+fn5+fn5+fn4KY2MxOiBhbGwgd2Fy
bmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzU6
IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5Lm8n
IGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
b10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ4NjogcmVjaXBlIGZvciB0YXJnZXQg
J2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9k
cm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ4NjogcmVjaXBlIGZvciB0
YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUv
ZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg2OiByZWNpcGUgZm9yIHRhcmdl
dCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAy
Ck1ha2VmaWxlOjEwNTE6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTog
KioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
