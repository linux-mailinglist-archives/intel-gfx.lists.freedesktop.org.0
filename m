Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 182622798E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0216489D6C;
	Thu, 23 May 2019 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCBF89D5B;
 Thu, 23 May 2019 09:42:26 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP; 23 May 2019 02:42:25 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.92.237])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 02:42:22 -0700
Date: Thu, 23 May 2019 12:42:21 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190523094221.GA26026@jlahtine-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGF2ZSAmIERhbmllbCwKClR3byBzY2hlZHVsaW5nIGZpeGVzIGZvciB0byBvdmVyc2F0dXJh
dGVkIChtZWRpYSB0cmFuc2NvZGluZwpzY2VuYXJpb3MpIGFuZCB0aGVpciBkZXBlbmRlbmNpZXMu
CgpPbiBHVlQgc2lkZSBhIHJlc2V0IHJvYnVzdG5lc3MgZml4IGFuZCBjb250ZXh0IHN0YXRlIHJl
c3RvcmluZwpmaXggKyBlcnJvciBwYXRoIGZpeCBjYXVnaHQgYnkgc3RhdGljIGNoZWNrZXIuCgpS
ZWdhcmRzLCBKb29uYXMKClBTLiBBcyB5b3UgYXJlIGF3YXJlLCAtcmMxIGNhdXNlZCBhbiBleHBs
b3Npb24gb24gdGhlIENJIGR1ZSB0byB0aGUgZXh0NApyZWdyZXNzaW9uLCB3aGljaCBpbiB0dXJu
IGxldCBvdGhlciByZWdyZXNzaW9ucyBjcmVlcCBpbiBtb21lbnRhcmlseS4KTm93IHRoZXJlIGlz
IGh1Z2UgYmFja2xvZywgc28gdGhlIENJIHJlc3VsdHMgYXJlIGludGVycHJldGVkIGZyb20gbXVs
dGlwbGUKcnVucy4gSSBoYXZlIGEgZ29vZCBjb25maWRlbmNlIG9uIHRoZSBQUiwgc28gZGVjaWRl
ZCB0byBzZW5kIGFueXdheS4KCioqKgoKZHJtLWludGVsLWZpeGVzLTIwMTktMDUtMjM6CgotIEZp
eCBib29zdGluZyBvZiBuZXcgY2xpZW50IHRvIGJlIG5vbi1wcmVlbXB0aXZlCi0gRml4IHRvIGFj
dHVhbGx5IGJ1bXAgcmVhZHkgdGFza3MgYWhlYWQgb2YgYnVzeXdhaXRzCi0gSW5jbHVkZXMgZ3Z0
LWZpeGVzLTIwMTktMDUtMjEKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYTE4
ODMzOWNhNWEzOTZhY2M1ODhlNTg1MWVkN2UxOWY2NmIwZWJkOToKCiAgTGludXggNS4yLXJjMSAo
MjAxOS0wNS0xOSAxNTo0NzowOSAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWludGVs
IHRhZ3MvZHJtLWludGVsLWZpeGVzLTIwMTktMDUtMjMKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdl
cyB1cCB0byA1N2NiODUzZDFkNWIwN2VkNGU0NjQ3YWQ2MWIwYzE2YTljMjE5OTZlOgoKICBNZXJn
ZSB0YWcgJ2d2dC1maXhlcy0yMDE5LTA1LTIxJyBvZiBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwv
Z3Z0LWxpbnV4IGludG8gZHJtLWludGVsLWZpeGVzICgyMDE5LTA1LTIxIDE0OjM3OjM4ICswMzAw
KQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQotIEZpeCBib29zdGluZyBvZiBuZXcgY2xpZW50IHRvIGJlIG5vbi1wcmVlbXB0
aXZlCi0gRml4IHRvIGFjdHVhbGx5IGJ1bXAgcmVhZHkgdGFza3MgYWhlYWQgb2YgYnVzeXdhaXRz
Ci0gSW5jbHVkZXMgZ3Z0LWZpeGVzLTIwMTktMDUtMjEKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQ2hyaXMgV2lsc29uICg1
KToKICAgICAgZHJtL2k5MTU6IFJlYXJyYW5nZSBpOTE1X3NjaGVkdWxlci5jCiAgICAgIGRybS9p
OTE1OiBQYXNzIGk5MTVfc2NoZWRfbm9kZSBhcm91bmQgaW50ZXJuYWxseQogICAgICBkcm0vaTkx
NTogQnVtcCBzaWduYWxlciBwcmlvcml0eSBvbiBhZGRpbmcgYSB3YWl0ZXIKICAgICAgZHJtL2k5
MTU6IERvd25ncmFkZSBORVdDTElFTlQgdG8gbm9uLXByZWVtcHRpdmUKICAgICAgZHJtL2k5MTU6
IFRydWx5IGJ1bXAgcmVhZHkgdGFza3MgYWhlYWQgb2YgYnVzeXdhaXRzCgpEYW4gQ2FycGVudGVy
ICgxKToKICAgICAgZHJtL2k5MTUvZ3Z0OiBGaXggYW4gZXJyb3IgY29kZSBpbiBwcGd0dF9wb3B1
bGF0ZV9zcHRfYnlfZ3Vlc3RfZW50cnkoKQoKSm9vbmFzIExhaHRpbmVuICgxKToKICAgICAgTWVy
Z2UgdGFnICdndnQtZml4ZXMtMjAxOS0wNS0yMScgb2YgaHR0cHM6Ly9naXRodWIuY29tL2ludGVs
L2d2dC1saW51eCBpbnRvIGRybS1pbnRlbC1maXhlcwoKV2VpbmFuICgxKToKICAgICAgZHJtL2k5
MTUvZ3Z0OiBlbWl0IGluaXQgYnJlYWRjcnVtYiBmb3IgZ3Z0IHJlcXVlc3QKCllhbiBaaGFvICg0
KToKICAgICAgZHJtL2k5MTUvZ3Z0OiB1c2UgY21kIHRvIHJlc3RvcmUgaW4tY29udGV4dCBtbWlv
cyB0byBodyBmb3IgZ2VuOSBwbGF0Zm9ybQogICAgICBkcm0vaTkxNS9ndnQ6IFRpbGVkIFJlc291
cmNlcyBtbWlvcyBhcmUgaW4tY29udGV4dCBtbWlvcyBmb3IgZ2VuOSsKICAgICAgZHJtL2k5MTUv
Z3Z0OiBhZGQgMHg0ZGZjIHRvIGdlbjkgc2F2ZS1yZXN0b3JlIGxpc3QKICAgICAgZHJtL2k5MTUv
Z3Z0OiBkbyBub3QgbGV0IFRSVFRFIGFuZCAweDRkZmMgd3JpdGUgcGFzc3Rocm91Z2ggdG8gaGFy
ZHdhcmUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvY21kX3BhcnNlci5jICAgICAgIHwgIDE0
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMgICAgICAgICAgICAgIHwgICA0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYyAgICAgICAgIHwgIDE1IC0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvbW1pb19jb250ZXh0LmMgICAgIHwgIDIzICsrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jICAgICAgICB8ICAyMyArKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaCAgfCAgIDUgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgICAgfCAgNDIgKystLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgICAgICAgfCAyNTUgKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMu
aCB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbHJjLmMgICAgICAgICAgICB8
ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX2xyYy5jICB8ICAx
MiArLQogMTEgZmlsZXMgY2hhbmdlZCwgMjAyIGluc2VydGlvbnMoKyksIDE5NiBkZWxldGlvbnMo
LSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
