Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04353DFBF7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 04:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD376E397;
	Tue, 22 Oct 2019 02:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF41B6E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 02:42:07 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-gjcSJMpeMYCymoAyWoOlMA-1; Mon, 21 Oct 2019 22:42:00 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38A7D1005500;
 Tue, 22 Oct 2019 02:41:57 +0000 (UTC)
Received: from malachite.redhat.com (ovpn-120-98.rdu2.redhat.com
 [10.10.120.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C94560126;
 Tue, 22 Oct 2019 02:41:28 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 22:36:08 -0400
Message-Id: <20191022023641.8026-14-lyude@redhat.com>
In-Reply-To: <20191022023641.8026-1-lyude@redhat.com>
References: <20191022023641.8026-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: gjcSJMpeMYCymoAyWoOlMA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571712126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2NzST84UVP7UqSrxt1t/UMMPijv4/JY92KueGM0g9gA=;
 b=QilF5EDu86gJkp2AV2lQ4lpTES1+QZyi8afdUuW2xnSy5Ms0wK1M01rCGO1MTbDg3OFwQ7
 T+Lnzo1wGc4x87EhHORx+EWbAiAax77d3YyAGIBjl0P8qQLB1QPJgWi8/QGXX3BGNZNgTa
 CWOaWplVhKGVYv8UOJ+GA+zHrZMJcpw=
Subject: [Intel-gfx] [PATCH v5 13/14] drm/dp_mst: Add basic topology
 reprobing when resuming
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 David Francis <David.Francis@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Maxime Ripard <mripard@kernel.org>, Harry Wentland <hwentlan@amd.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RmluYWxseSEgRm9yIGEgdmVyeSBsb25nIHRpbWUsIG91ciBNU1QgaGVscGVycyBoYXZlIGhhZCBv
bmUgdmVyeQphbm5veWluZyBpc3N1ZTogVGhleSBkb24ndCBrbm93IGhvdyB0byByZXByb2JlIHRo
ZSB0b3BvbG9neSBzdGF0ZSB3aGVuCmNvbWluZyBvdXQgb2Ygc3VzcGVuZC4gVGhpcyBtZWFucyB0
aGF0IGlmIGEgdXNlciBoYXMgYSBtYWNoaW5lIGNvbm5lY3RlZAp0byBhbiBNU1QgdG9wb2xvZ3kg
YW5kIGRlY2lkZXMgdG8gc3VzcGVuZCB0aGVpciBtYWNoaW5lLCB3ZSBsb3NlIGFsbAp0b3BvbG9n
eSBjaGFuZ2VzIHRoYXQgaGFwcGVuZWQgZHVyaW5nIHRoYXQgcGVyaW9kLiBUaGF0IGNhbiBiZSBh
IGJpZwpwcm9ibGVtIGlmIHRoZSBtYWNoaW5lIHdhcyBjb25uZWN0ZWQgdG8gYSBkaWZmZXJlbnQg
dG9wb2xvZ3kgb24gdGhlIHNhbWUKcG9ydCBiZWZvcmUgcmVzdW1pbmcsIGFzIHdlIHdvbid0IGJv
dGhlciByZXByb2JpbmcgYW55IG9mIHRoZSBwb3J0cyBhbmQKbGlrZWx5IGNhdXNlIHRoZSB1c2Vy
J3MgbW9uaXRvcnMgbm90IHRvIGNvbWUgYmFjayB1cCBhcyBleHBlY3RlZC4KClNvLCB3ZSBzdGFy
dCBmaXhpbmcgdGhpcyBieSB0ZWFjaGluZyBvdXIgTVNUIGhlbHBlcnMgaG93IHRvIHJlcHJvYmUg
dGhlCmxpbmsgYWRkcmVzc2VzIG9mIGVhY2ggY29ubmVjdGVkIHRvcG9sb2d5IHdoZW4gcmVzdW1p
bmcuIEFzIGl0IHR1cm5zCm91dCwgdGhlIGJlaGF2aW9yIHRoYXQgd2Ugd2FudCBoZXJlIGlzIGlk
ZW50aWNhbCB0byB0aGUgYmVoYXZpb3Igd2Ugd2FudAp3aGVuIGluaXRpYWxseSBwcm9iaW5nIGEg
bmV3bHkgY29ubmVjdGVkIE1TVCB0b3BvbG9neSwgd2l0aCBhIGNvdXBsZSBvZgppbXBvcnRhbnQg
ZGlmZmVyZW5jZXM6CgotIFdlIG5lZWQgdG8gYmUgbW9yZSBjYXJlZnVsIGFib3V0IGhhbmRsaW5n
IHRoZSBwb3RlbnRpYWwgcmFjZXMgYmV0d2VlbgogIGV2ZW50cyBmcm9tIHRoZSBNU1QgaHViIHRo
YXQgY291bGQgY2hhbmdlIHRoZSB0b3BvbG9neSBzdGF0ZSBhcyB3ZSdyZQogIHBlcmZvcm1pbmcg
dGhlIGxpbmsgYWRkcmVzcyByZXByb2JlCi0gV2UgbmVlZCB0byBiZSBtb3JlIGNhcmVmdWwgYWJv
dXQgaGFuZGxpbmcgdW5saWtlbHkgc3RhdGUgY2hhbmdlcyBvbgogIHBvcnRzIC0gc3VjaCBhcyBh
biBpbnB1dCBwb3J0IHR1cm5pbmcgaW50byBhbiBvdXRwdXQgcG9ydCwgc29tZXRoaW5nCiAgdGhh
dCB3b3VsZCBiZSBmYXIgbW9yZSBsaWtlbHkgdG8gaGFwcGVuIGluIHNpdHVhdGlvbnMgbGlrZSB0
aGUgTVNUIGh1YgogIHdlJ3JlIGNvbm5lY3RlZCB0byBiZWluZyBjaGFuZ2VkIHdoaWxlIHdlJ3Jl
IHN1c3BlbmQKCkJvdGggb2Ygd2hpY2ggaGF2ZSBiZWVuIHNvbHZlZCBieSBwcmV2aW91cyBjb21t
aXRzLiBUaGF0IGxlYXZlcyBvbmUKcmVxdWlyZW1lbnQ6CgotIFdlIG5lZWQgdG8gcHJ1bmUgYW55
IE1TVCBwb3J0cyBpbiBvdXIgaW4tbWVtb3J5IHRvcG9sb2d5IHN0YXRlIHRoYXQKICB3ZXJlIHBy
ZXNlbnQgd2hlbiBzdXNwZW5kaW5nLCBidXQgaGF2ZSBub3QgYXBwZWFyZWQgaW4gdGhlIHBvc3Qt
cmVzdW1lCiAgbGluayBhZGRyZXNzIHJlc3BvbnNlIGZyb20gdGhlaXIgcGFyZW50IGJyYW5jaCBk
ZXZpY2UKCldoaWNoIHdlIGNhbiBub3cgaGFuZGxlIGluIHRoaXMgY29tbWl0IGJ5IG1vZGlmeWlu
Zwpkcm1fZHBfc2VuZF9saW5rX2FkZHJlc3MoKS4gV2UgdGhlbiBpbnRyb2R1Y2Ugc3VzcGVuZC9y
ZXN1bWUgcmVwcm9iaW5nCmJ5IGludHJvZHVjaW5nIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2lu
dmFsaWRhdGVfbXN0YigpLCB3aGljaCB3ZSBjYWxsCmluIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdy
X3N1c3BlbmQoKSB0byB0cmF2ZXJzZSB0aGUgaW4tbWVtb3J5IHRvcG9sb2d5CnN0YXRlIHRvIGlu
ZGljYXRlIHRoYXQgZWFjaCBtc3RiIG5lZWRzIGl0J3MgbGluayBhZGRyZXNzIHJlc2VudCBhbmQg
UEJOCnJlc291cmNlcyByZXByb2JlZC4KCk9uIHJlc3VtZSwgd2Ugc3RhcnQgYmFjayB1cCAmbWdy
LT53b3JrIGFuZCBoYXZlIGl0IHJlcHJvYmUgdGhlIHRvcG9sb2d5CmluIHRoZSBzYW1lIHdheSB3
ZSB3b3VsZCBvbiBhIGhvdHBsdWcsIHJlbW92aW5nIGFueSBsZWZ0b3ZlciBwb3J0cyB0aGF0Cm5v
IGxvbmdlciBhcHBlYXIgaW4gdGhlIHRvcG9sb2d5IHN0YXRlLgoKQ2hhbmdlcyBzaW5jZSB2NDoK
KiBTcGxpdCBpbmRlbnRpbmcgY2hhbmdlcyBpbiBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9yZXN1
bWUoKSBpbnRvIGEKICBzZXBhcmF0ZSBwYXRjaAoqIE9ubHkgZmlyZSBob3RwbHVncyB3aGVuIHNv
bWV0aGluZyBoYXMgYWN0dWFsbHkgY2hhbmdlZCBhZnRlciBhIGxpbmsKICBhZGRyZXNzIHByb2Jl
CiogRG9uJ3QgdHJ5IHRvIGNoYW5nZSBwb3J0LT5jb25uZWN0b3IgYXQgYWxsIG9uIHBvcnRzLCBq
dXN0IHRocm93IG91dAogIHBvcnRzIHRoYXQgbmVlZCB0aGVpciBjb25uZWN0b3JzIHJlbW92ZWQg
dG8gbWFrZSB0aGluZ3MgZWFzaWVyLgoKQ2M6IEp1c3RvbiBMaSA8anVzdG9uLmxpQGludGVsLmNv
bT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBIYXJyeSBXZW50bGFuZCA8aHdl
bnRsYW5AYW1kLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
ClJldmlld2VkLWJ5OiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KU2lnbmVkLW9mZi1ieTog
THl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9hbWQvZGlzcGxh
eS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
bXN0X3RvcG9sb2d5LmMgICAgICAgICB8IDE4MiArKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICAgMyArLQogZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jICAgICAgIHwgICA2ICstCiBpbmNsdWRlL2Ry
bS9kcm1fZHBfbXN0X2hlbHBlci5oICAgICAgICAgICAgICAgfCAgIDMgKy0KIDUgZmlsZXMgY2hh
bmdlZCwgMTU2IGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IDhmNjdkMzAx
YWQ4MS4uNmMzNGY2NDBmNDE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxh
eS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKQEAgLTk3NCw3ICs5NzQsNyBAQCBzdGF0aWMgdm9pZCBz
M19oYW5kbGVfbXN0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIGJvb2wgc3VzcGVuZCkKIAkJaWYg
KHN1c3BlbmQpIHsKIAkJCWRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3N1c3BlbmQobWdyKTsKIAkJ
fSBlbHNlIHsKLQkJCXJldCA9IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3Jlc3VtZShtZ3IpOwor
CQkJcmV0ID0gZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfcmVzdW1lKG1nciwgdHJ1ZSk7CiAJCQlp
ZiAocmV0IDwgMCkgewogCQkJCWRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3NldF9tc3QobWdyLCBm
YWxzZSk7CiAJCQkJbmVlZF9ob3RwbHVnID0gdHJ1ZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90
b3BvbG9neS5jCmluZGV4IGQ0ODZkMTVhYTAwMi4uNDI4MTYwMjcwNDgyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKQEAgLTY3LDggKzY3LDggQEAgc3RhdGljIGludCBkcm1f
ZHBfc2VuZF9kcGNkX3dyaXRlKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAog
CQkJCSAgc3RydWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCwKIAkJCQkgIGludCBvZmZzZXQsIGlu
dCBzaXplLCB1OCAqYnl0ZXMpOwogCi1zdGF0aWMgdm9pZCBkcm1fZHBfc2VuZF9saW5rX2FkZHJl
c3Moc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCi0JCQkJICAgICBzdHJ1Y3Qg
ZHJtX2RwX21zdF9icmFuY2ggKm1zdGIpOworc3RhdGljIGludCBkcm1fZHBfc2VuZF9saW5rX2Fk
ZHJlc3Moc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCisJCQkJICAgIHN0cnVj
dCBkcm1fZHBfbXN0X2JyYW5jaCAqbXN0Yik7CiBzdGF0aWMgaW50IGRybV9kcF9zZW5kX2VudW1f
cGF0aF9yZXNvdXJjZXMoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCiAJCQkJ
CSAgIHN0cnVjdCBkcm1fZHBfbXN0X2JyYW5jaCAqbXN0YiwKIAkJCQkJICAgc3RydWN0IGRybV9k
cF9tc3RfcG9ydCAqcG9ydCk7CkBAIC0xOTc3LDcgKzE5NzcsNyBAQCBkcm1fZHBfbXN0X2FkZF9w
b3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJcmV0dXJuIHBvcnQ7CiB9CiAKLXN0YXRpYyB2
b2lkCitzdGF0aWMgaW50CiBkcm1fZHBfbXN0X2hhbmRsZV9saW5rX2FkZHJlc3NfcG9ydChzdHJ1
Y3QgZHJtX2RwX21zdF9icmFuY2ggKm1zdGIsCiAJCQkJICAgIHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCiAJCQkJICAgIHN0cnVjdCBkcm1fZHBfbGlua19hZGRyX3JlcGx5X3BvcnQgKnBvcnRfbXNn
KQpAQCAtMTk4NiwzMyArMTk4Niw0NSBAQCBkcm1fZHBfbXN0X2hhbmRsZV9saW5rX2FkZHJlc3Nf
cG9ydChzdHJ1Y3QgZHJtX2RwX21zdF9icmFuY2ggKm1zdGIsCiAJc3RydWN0IGRybV9kcF9tc3Rf
cG9ydCAqcG9ydDsKIAlpbnQgb2xkX2RkcHMgPSAwLCByZXQ7CiAJdTggbmV3X3BkdCA9IERQX1BF
RVJfREVWSUNFX05PTkU7Ci0JYm9vbCBjcmVhdGVkID0gZmFsc2UsIHNlbmRfbGlua19hZGRyID0g
ZmFsc2U7CisJYm9vbCBjcmVhdGVkID0gZmFsc2UsIHNlbmRfbGlua19hZGRyID0gZmFsc2UsIGNo
YW5nZWQgPSBmYWxzZTsKIAogCXBvcnQgPSBkcm1fZHBfZ2V0X3BvcnQobXN0YiwgcG9ydF9tc2ct
PnBvcnRfbnVtYmVyKTsKIAlpZiAoIXBvcnQpIHsKIAkJcG9ydCA9IGRybV9kcF9tc3RfYWRkX3Bv
cnQoZGV2LCBtZ3IsIG1zdGIsCiAJCQkJCSAgIHBvcnRfbXNnLT5wb3J0X251bWJlcik7CiAJCWlm
ICghcG9ydCkKLQkJCXJldHVybjsKKwkJCXJldHVybiAtRU5PTUVNOwogCQljcmVhdGVkID0gdHJ1
ZTsKLQl9IGVsc2UgaWYgKHBvcnRfbXNnLT5pbnB1dF9wb3J0ICYmICFwb3J0LT5pbnB1dCAmJiBw
b3J0LT5jb25uZWN0b3IpIHsKLQkJLyogRGVzdHJveWluZyB0aGUgY29ubmVjdG9yIGlzIGltcG9z
c2libGUgaW4gdGhpcyBjb250ZXh0LCBzbwotCQkgKiByZXBsYWNlIHRoZSBwb3J0IHdpdGggYSBu
ZXcgb25lCisJCWNoYW5nZWQgPSB0cnVlOworCX0gZWxzZSBpZiAoIXBvcnQtPmlucHV0ICYmIHBv
cnRfbXNnLT5pbnB1dF9wb3J0ICYmIHBvcnQtPmNvbm5lY3RvcikgeworCQkvKiBTaW5jZSBwb3J0
LT5jb25uZWN0b3IgY2FuJ3QgYmUgY2hhbmdlZCBoZXJlLCB3ZSBjcmVhdGUgYQorCQkgKiBuZXcg
cG9ydCBpZiBpbnB1dF9wb3J0IGNoYW5nZXMgZnJvbSAwIHRvIDEKIAkJICovCiAJCWRybV9kcF9t
c3RfdG9wb2xvZ3lfdW5saW5rX3BvcnQobWdyLCBwb3J0KTsKIAkJZHJtX2RwX21zdF90b3BvbG9n
eV9wdXRfcG9ydChwb3J0KTsKLQogCQlwb3J0ID0gZHJtX2RwX21zdF9hZGRfcG9ydChkZXYsIG1n
ciwgbXN0YiwKIAkJCQkJICAgcG9ydF9tc2ctPnBvcnRfbnVtYmVyKTsKIAkJaWYgKCFwb3J0KQot
CQkJcmV0dXJuOworCQkJcmV0dXJuIC1FTk9NRU07CisJCWNoYW5nZWQgPSB0cnVlOwogCQljcmVh
dGVkID0gdHJ1ZTsKLQl9IGVsc2UgewotCQkvKiBMb2NraW5nIGlzIG9ubHkgbmVlZGVkIHdoZW4g
dGhlIHBvcnQgaGFzIGEgY29ubmVjdG9yCi0JCSAqIGV4cG9zZWQgdG8gdXNlcnNwYWNlCisJfSBl
bHNlIGlmIChwb3J0LT5pbnB1dCAmJiAhcG9ydF9tc2ctPmlucHV0X3BvcnQpIHsKKwkJY2hhbmdl
ZCA9IHRydWU7CisJfSBlbHNlIGlmIChwb3J0LT5jb25uZWN0b3IpIHsKKwkJLyogV2UncmUgdXBk
YXRpbmcgYSBwb3J0IHRoYXQncyBleHBvc2VkIHRvIHVzZXJzcGFjZSwgc28gZG8gaXQKKwkJICog
dW5kZXIgbG9jawogCQkgKi8KIAkJZHJtX21vZGVzZXRfbG9jaygmbWdyLT5iYXNlLmxvY2ssIE5V
TEwpOworCiAJCW9sZF9kZHBzID0gcG9ydC0+ZGRwczsKKwkJY2hhbmdlZCA9IHBvcnQtPmRkcHMg
IT0gcG9ydF9tc2ctPmRkcHMgfHwKKwkJCShwb3J0LT5kZHBzICYmCisJCQkgKHBvcnQtPmxkcHMg
IT0gcG9ydF9tc2ctPmxlZ2FjeV9kZXZpY2VfcGx1Z19zdGF0dXMgfHwKKwkJCSAgcG9ydC0+ZHBj
ZF9yZXYgIT0gcG9ydF9tc2ctPmRwY2RfcmV2aXNpb24gfHwKKwkJCSAgcG9ydC0+bWNzICE9IHBv
cnRfbXNnLT5tY3MgfHwKKwkJCSAgcG9ydC0+cGR0ICE9IHBvcnRfbXNnLT5wZWVyX2RldmljZV90
eXBlIHx8CisJCQkgIHBvcnQtPm51bV9zZHBfc3RyZWFtX3NpbmtzICE9CisJCQkgIHBvcnRfbXNn
LT5udW1fc2RwX3N0cmVhbV9zaW5rcykpOwogCX0KIAogCXBvcnQtPmlucHV0ID0gcG9ydF9tc2ct
PmlucHV0X3BvcnQ7CkBAIC0yMDU0LDIzICsyMDY2LDM4IEBAIGRybV9kcF9tc3RfaGFuZGxlX2xp
bmtfYWRkcmVzc19wb3J0KHN0cnVjdCBkcm1fZHBfbXN0X2JyYW5jaCAqbXN0YiwKIAkJZ290byBm
YWlsOwogCX0KIAotCWlmICghY3JlYXRlZCkKKwkvKgorCSAqIElmIHRoaXMgcG9ydCB3YXNuJ3Qg
anVzdCBjcmVhdGVkLCB0aGVuIHdlJ3JlIHJlcHJvYmluZyBiZWNhdXNlCisJICogd2UncmUgY29t
aW5nIG91dCBvZiBzdXNwZW5kLiBJbiB0aGlzIGNhc2UsIGFsd2F5cyByZXNlbmQgdGhlIGxpbmsK
KwkgKiBhZGRyZXNzIGlmIHRoZXJlJ3MgYW4gTVNUQiBvbiB0aGlzIHBvcnQKKwkgKi8KKwlpZiAo
IWNyZWF0ZWQgJiYgcG9ydC0+cGR0ID09IERQX1BFRVJfREVWSUNFX01TVF9CUkFOQ0hJTkcpCisJ
CXNlbmRfbGlua19hZGRyID0gdHJ1ZTsKKworCWlmIChwb3J0LT5jb25uZWN0b3IpCiAJCWRybV9t
b2Rlc2V0X3VubG9jaygmbWdyLT5iYXNlLmxvY2spOwotCWVsc2UgaWYgKCFwb3J0LT5jb25uZWN0
b3IgJiYgIXBvcnQtPmlucHV0KQorCWVsc2UgaWYgKCFwb3J0LT5pbnB1dCkKIAkJZHJtX2RwX21z
dF9wb3J0X2FkZF9jb25uZWN0b3IobXN0YiwgcG9ydCk7CiAKLQlpZiAoc2VuZF9saW5rX2FkZHIg
JiYgcG9ydC0+bXN0YikKLQkJZHJtX2RwX3NlbmRfbGlua19hZGRyZXNzKG1nciwgcG9ydC0+bXN0
Yik7CisJaWYgKHNlbmRfbGlua19hZGRyICYmIHBvcnQtPm1zdGIpIHsKKwkJcmV0ID0gZHJtX2Rw
X3NlbmRfbGlua19hZGRyZXNzKG1nciwgcG9ydC0+bXN0Yik7CisJCWlmIChyZXQgPT0gMSkgLyog
TVNUQiBiZWxvdyB1cyBjaGFuZ2VkICovCisJCQljaGFuZ2VkID0gdHJ1ZTsKKwkJZWxzZSBpZiAo
cmV0IDwgMCkKKwkJCWdvdG8gZmFpbF9wdXQ7CisJfQogCiAJLyogcHV0IHJlZmVyZW5jZSB0byB0
aGlzIHBvcnQgKi8KIAlkcm1fZHBfbXN0X3RvcG9sb2d5X3B1dF9wb3J0KHBvcnQpOwotCXJldHVy
bjsKKwlyZXR1cm4gY2hhbmdlZDsKIAogZmFpbDoKIAlkcm1fZHBfbXN0X3RvcG9sb2d5X3VubGlu
a19wb3J0KG1nciwgcG9ydCk7Ci0JZHJtX2RwX21zdF90b3BvbG9neV9wdXRfcG9ydChwb3J0KTsK
LQlpZiAoIWNyZWF0ZWQpCisJaWYgKHBvcnQtPmNvbm5lY3RvcikKIAkJZHJtX21vZGVzZXRfdW5s
b2NrKCZtZ3ItPmJhc2UubG9jayk7CitmYWlsX3B1dDoKKwlkcm1fZHBfbXN0X3RvcG9sb2d5X3B1
dF9wb3J0KHBvcnQpOworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyB2b2lkCkBAIC0yMjMwLDEz
ICsyMjU3LDIwIEBAIGRybV9kcF9nZXRfbXN0X2JyYW5jaF9kZXZpY2VfYnlfZ3VpZChzdHJ1Y3Qg
ZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKIAlyZXR1cm4gbXN0YjsKIH0KIAotc3RhdGlj
IHZvaWQgZHJtX2RwX2NoZWNrX2FuZF9zZW5kX2xpbmtfYWRkcmVzcyhzdHJ1Y3QgZHJtX2RwX21z
dF90b3BvbG9neV9tZ3IgKm1nciwKK3N0YXRpYyBpbnQgZHJtX2RwX2NoZWNrX2FuZF9zZW5kX2xp
bmtfYWRkcmVzcyhzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKIAkJCQkJICAg
ICAgIHN0cnVjdCBkcm1fZHBfbXN0X2JyYW5jaCAqbXN0YikKIHsKIAlzdHJ1Y3QgZHJtX2RwX21z
dF9wb3J0ICpwb3J0OworCWludCByZXQ7CisJYm9vbCBjaGFuZ2VkID0gZmFsc2U7CiAKLQlpZiAo
IW1zdGItPmxpbmtfYWRkcmVzc19zZW50KQotCQlkcm1fZHBfc2VuZF9saW5rX2FkZHJlc3MobWdy
LCBtc3RiKTsKKwlpZiAoIW1zdGItPmxpbmtfYWRkcmVzc19zZW50KSB7CisJCXJldCA9IGRybV9k
cF9zZW5kX2xpbmtfYWRkcmVzcyhtZ3IsIG1zdGIpOworCQlpZiAocmV0ID09IDEpCisJCQljaGFu
Z2VkID0gdHJ1ZTsKKwkJZWxzZSBpZiAocmV0IDwgMCkKKwkJCXJldHVybiByZXQ7CisJfQogCiAJ
bGlzdF9mb3JfZWFjaF9lbnRyeShwb3J0LCAmbXN0Yi0+cG9ydHMsIG5leHQpIHsKIAkJc3RydWN0
IGRybV9kcF9tc3RfYnJhbmNoICptc3RiX2NoaWxkID0gTlVMTDsKQEAgLTIyNDgsNiArMjI4Miw3
IEBAIHN0YXRpYyB2b2lkIGRybV9kcF9jaGVja19hbmRfc2VuZF9saW5rX2FkZHJlc3Moc3RydWN0
IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptCiAJCQlkcm1fbW9kZXNldF9sb2NrKCZtZ3ItPmJh
c2UubG9jaywgTlVMTCk7CiAJCQlkcm1fZHBfc2VuZF9lbnVtX3BhdGhfcmVzb3VyY2VzKG1nciwg
bXN0YiwgcG9ydCk7CiAJCQlkcm1fbW9kZXNldF91bmxvY2soJm1nci0+YmFzZS5sb2NrKTsKKwkJ
CWNoYW5nZWQgPSB0cnVlOwogCQl9CiAKIAkJaWYgKHBvcnQtPm1zdGIpCkBAIC0yMjU1LDEwICsy
MjkwLDE3IEBAIHN0YXRpYyB2b2lkIGRybV9kcF9jaGVja19hbmRfc2VuZF9saW5rX2FkZHJlc3Mo
c3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptCiAJCQkgICAgbWdyLCBwb3J0LT5tc3Ri
KTsKIAogCQlpZiAobXN0Yl9jaGlsZCkgewotCQkJZHJtX2RwX2NoZWNrX2FuZF9zZW5kX2xpbmtf
YWRkcmVzcyhtZ3IsIG1zdGJfY2hpbGQpOworCQkJcmV0ID0gZHJtX2RwX2NoZWNrX2FuZF9zZW5k
X2xpbmtfYWRkcmVzcyhtZ3IsCisJCQkJCQkJCSBtc3RiX2NoaWxkKTsKIAkJCWRybV9kcF9tc3Rf
dG9wb2xvZ3lfcHV0X21zdGIobXN0Yl9jaGlsZCk7CisJCQlpZiAocmV0ID09IDEpCisJCQkJY2hh
bmdlZCA9IHRydWU7CisJCQllbHNlIGlmIChyZXQgPCAwKQorCQkJCXJldHVybiByZXQ7CiAJCX0K
IAl9CisKKwlyZXR1cm4gY2hhbmdlZDsKIH0KIAogc3RhdGljIHZvaWQgZHJtX2RwX21zdF9saW5r
X3Byb2JlX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQpAQCAtMjI4NCwxMSArMjMyNiwx
MiBAQCBzdGF0aWMgdm9pZCBkcm1fZHBfbXN0X2xpbmtfcHJvYmVfd29yayhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndvcmspCiAJCXJldHVybjsKIAl9CiAKLQlkcm1fZHBfY2hlY2tfYW5kX3NlbmRfbGlu
a19hZGRyZXNzKG1nciwgbXN0Yik7CisJcmV0ID0gZHJtX2RwX2NoZWNrX2FuZF9zZW5kX2xpbmtf
YWRkcmVzcyhtZ3IsIG1zdGIpOwogCWRybV9kcF9tc3RfdG9wb2xvZ3lfcHV0X21zdGIobXN0Yik7
CiAKIAltdXRleF91bmxvY2soJm1nci0+cHJvYmVfbG9jayk7Ci0JZHJtX2ttc19oZWxwZXJfaG90
cGx1Z19ldmVudChkZXYpOworCWlmIChyZXQpCisJCWRybV9rbXNfaGVscGVyX2hvdHBsdWdfZXZl
bnQoZGV2KTsKIH0KIAogc3RhdGljIGJvb2wgZHJtX2RwX3ZhbGlkYXRlX2d1aWQoc3RydWN0IGRy
bV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCkBAIC0yNTM0LDE2ICsyNTc3LDE4IEBAIGRybV9k
cF9kdW1wX2xpbmtfYWRkcmVzcyhzdHJ1Y3QgZHJtX2RwX2xpbmtfYWRkcmVzc19hY2tfcmVwbHkg
KnJlcGx5KQogCX0KIH0KIAotc3RhdGljIHZvaWQgZHJtX2RwX3NlbmRfbGlua19hZGRyZXNzKHN0
cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAorc3RhdGljIGludCBkcm1fZHBfc2Vu
ZF9saW5rX2FkZHJlc3Moc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCiAJCQkJ
ICAgICBzdHJ1Y3QgZHJtX2RwX21zdF9icmFuY2ggKm1zdGIpCiB7CiAJc3RydWN0IGRybV9kcF9z
aWRlYmFuZF9tc2dfdHggKnR4bXNnOwogCXN0cnVjdCBkcm1fZHBfbGlua19hZGRyZXNzX2Fja19y
ZXBseSAqcmVwbHk7Ci0JaW50IGksIGxlbiwgcmV0OworCXN0cnVjdCBkcm1fZHBfbXN0X3BvcnQg
KnBvcnQsICp0bXA7CisJaW50IGksIGxlbiwgcmV0LCBwb3J0X21hc2sgPSAwOworCWJvb2wgY2hh
bmdlZCA9IGZhbHNlOwogCiAJdHhtc2cgPSBremFsbG9jKHNpemVvZigqdHhtc2cpLCBHRlBfS0VS
TkVMKTsKIAlpZiAoIXR4bXNnKQotCQlyZXR1cm47CisJCXJldHVybiAtRU5PTUVNOwogCiAJdHht
c2ctPmRzdCA9IG1zdGI7CiAJbGVuID0gYnVpbGRfbGlua19hZGRyZXNzKHR4bXNnKTsKQEAgLTI1
NjksMTQgKzI2MTQsMzkgQEAgc3RhdGljIHZvaWQgZHJtX2RwX3NlbmRfbGlua19hZGRyZXNzKHN0
cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAogCiAJZHJtX2RwX2NoZWNrX21zdGJf
Z3VpZChtc3RiLCByZXBseS0+Z3VpZCk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgcmVwbHktPm5wb3J0
czsgaSsrKQotCQlkcm1fZHBfbXN0X2hhbmRsZV9saW5rX2FkZHJlc3NfcG9ydChtc3RiLCBtZ3It
PmRldiwKLQkJCQkJCSAgICAmcmVwbHktPnBvcnRzW2ldKTsKKwlmb3IgKGkgPSAwOyBpIDwgcmVw
bHktPm5wb3J0czsgaSsrKSB7CisJCXBvcnRfbWFzayB8PSBCSVQocmVwbHktPnBvcnRzW2ldLnBv
cnRfbnVtYmVyKTsKKwkJcmV0ID0gZHJtX2RwX21zdF9oYW5kbGVfbGlua19hZGRyZXNzX3BvcnQo
bXN0YiwgbWdyLT5kZXYsCisJCQkJCQkJICAmcmVwbHktPnBvcnRzW2ldKTsKKwkJaWYgKHJldCA9
PSAxKQorCQkJY2hhbmdlZCA9IHRydWU7CisJCWVsc2UgaWYgKHJldCA8IDApCisJCQlnb3RvIG91
dDsKKwl9CisKKwkvKiBQcnVuZSBhbnkgcG9ydHMgdGhhdCBhcmUgY3VycmVudGx5IGEgcGFydCBv
ZiBtc3RiIGluIG91ciBpbi1tZW1vcnkKKwkgKiB0b3BvbG9neSwgYnV0IHdlcmUgbm90IHNlZW4g
aW4gdGhpcyBsaW5rIGFkZHJlc3MuIFVzdWFsbHkgdGhpcworCSAqIG1lYW5zIHRoYXQgdGhleSB3
ZXJlIHJlbW92ZWQgd2hpbGUgdGhlIHRvcG9sb2d5IHdhcyBvdXQgb2Ygc3luYywKKwkgKiBlLmcu
IGR1cmluZyBzdXNwZW5kL3Jlc3VtZQorCSAqLworCW11dGV4X2xvY2soJm1nci0+bG9jayk7CisJ
bGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBvcnQsIHRtcCwgJm1zdGItPnBvcnRzLCBuZXh0KSB7
CisJCWlmIChwb3J0X21hc2sgJiBCSVQocG9ydC0+cG9ydF9udW0pKQorCQkJY29udGludWU7CisK
KwkJRFJNX0RFQlVHX0tNUygicG9ydCAlZCB3YXMgbm90IGluIGxpbmsgYWRkcmVzcywgcmVtb3Zp
bmdcbiIsCisJCQkgICAgICBwb3J0LT5wb3J0X251bSk7CisJCWxpc3RfZGVsKCZwb3J0LT5uZXh0
KTsKKwkJZHJtX2RwX21zdF90b3BvbG9neV9wdXRfcG9ydChwb3J0KTsKKwkJY2hhbmdlZCA9IHRy
dWU7CisJfQorCW11dGV4X3VubG9jaygmbWdyLT5sb2NrKTsKIAogb3V0OgogCWlmIChyZXQgPD0g
MCkKIAkJbXN0Yi0+bGlua19hZGRyZXNzX3NlbnQgPSBmYWxzZTsKIAlrZnJlZSh0eG1zZyk7CisJ
cmV0dXJuIHJldCA8IDAgPyByZXQgOiBjaGFuZ2VkOwogfQogCiBzdGF0aWMgaW50CkBAIC0zMTgx
LDYgKzMyNTEsMjMgQEAgaW50IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3NldF9tc3Qoc3RydWN0
IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsIGJvb2wgbXMKIH0KIEVYUE9SVF9TWU1CT0wo
ZHJtX2RwX21zdF90b3BvbG9neV9tZ3Jfc2V0X21zdCk7CiAKK3N0YXRpYyB2b2lkCitkcm1fZHBf
bXN0X3RvcG9sb2d5X21ncl9pbnZhbGlkYXRlX21zdGIoc3RydWN0IGRybV9kcF9tc3RfYnJhbmNo
ICptc3RiKQoreworCXN0cnVjdCBkcm1fZHBfbXN0X3BvcnQgKnBvcnQ7CisKKwkvKiBUaGUgbGlu
ayBhZGRyZXNzIHdpbGwgbmVlZCB0byBiZSByZS1zZW50IG9uIHJlc3VtZSAqLworCW1zdGItPmxp
bmtfYWRkcmVzc19zZW50ID0gZmFsc2U7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHBvcnQsICZt
c3RiLT5wb3J0cywgbmV4dCkgeworCQkvKiBUaGUgUEJOIGZvciBlYWNoIHBvcnQgd2lsbCBhbHNv
IG5lZWQgdG8gYmUgcmUtcHJvYmVkICovCisJCXBvcnQtPmF2YWlsYWJsZV9wYm4gPSAwOworCisJ
CWlmIChwb3J0LT5tc3RiKQorCQkJZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW52YWxpZGF0ZV9t
c3RiKHBvcnQtPm1zdGIpOworCX0KK30KKwogLyoqCiAgKiBkcm1fZHBfbXN0X3RvcG9sb2d5X21n
cl9zdXNwZW5kKCkgLSBzdXNwZW5kIHRoZSBNU1QgbWFuYWdlcgogICogQG1ncjogbWFuYWdlciB0
byBzdXNwZW5kCkBAIC0zMTk3LDIwICszMjg0LDM2IEBAIHZvaWQgZHJtX2RwX21zdF90b3BvbG9n
eV9tZ3Jfc3VzcGVuZChzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncikKIAlmbHVz
aF93b3JrKCZtZ3ItPnVwX3JlcV93b3JrKTsKIAlmbHVzaF93b3JrKCZtZ3ItPndvcmspOwogCWZs
dXNoX3dvcmsoJm1nci0+ZGVsYXllZF9kZXN0cm95X3dvcmspOworCisJbXV0ZXhfbG9jaygmbWdy
LT5sb2NrKTsKKwlpZiAobWdyLT5tc3Rfc3RhdGUgJiYgbWdyLT5tc3RfcHJpbWFyeSkKKwkJZHJt
X2RwX21zdF90b3BvbG9neV9tZ3JfaW52YWxpZGF0ZV9tc3RiKG1nci0+bXN0X3ByaW1hcnkpOwor
CW11dGV4X3VubG9jaygmbWdyLT5sb2NrKTsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2RwX21zdF90
b3BvbG9neV9tZ3Jfc3VzcGVuZCk7CiAKIC8qKgogICogZHJtX2RwX21zdF90b3BvbG9neV9tZ3Jf
cmVzdW1lKCkgLSByZXN1bWUgdGhlIE1TVCBtYW5hZ2VyCiAgKiBAbWdyOiBtYW5hZ2VyIHRvIHJl
c3VtZQorICogQHN5bmM6IHdoZXRoZXIgb3Igbm90IHRvIHBlcmZvcm0gdG9wb2xvZ3kgcmVwcm9i
aW5nIHN5bmNocm9ub3VzbHkKICAqCiAgKiBUaGlzIHdpbGwgZmV0Y2ggRFBDRCBhbmQgc2VlIGlm
IHRoZSBkZXZpY2UgaXMgc3RpbGwgdGhlcmUsCiAgKiBpZiBpdCBpcywgaXQgd2lsbCByZXdyaXRl
IHRoZSBNU1RNIGNvbnRyb2wgYml0cywgYW5kIHJldHVybi4KICAqCi0gKiBpZiB0aGUgZGV2aWNl
IGZhaWxzIHRoaXMgcmV0dXJucyAtMSwgYW5kIHRoZSBkcml2ZXIgc2hvdWxkIGRvCisgKiBJZiB0
aGUgZGV2aWNlIGZhaWxzIHRoaXMgcmV0dXJucyAtMSwgYW5kIHRoZSBkcml2ZXIgc2hvdWxkIGRv
CiAgKiBhIGZ1bGwgTVNUIHJlcHJvYmUsIGluIGNhc2Ugd2Ugd2VyZSB1bmRvY2tlZC4KKyAqCisg
KiBEdXJpbmcgc3lzdGVtIHJlc3VtZSAod2hlcmUgaXQgaXMgYXNzdW1lZCB0aGF0IHRoZSBkcml2
ZXIgd2lsbCBiZSBjYWxsaW5nCisgKiBkcm1fYXRvbWljX2hlbHBlcl9yZXN1bWUoKSkgdGhpcyBm
dW5jdGlvbiBzaG91bGQgYmUgY2FsbGVkIGJlZm9yZWhhbmQgd2l0aAorICogQHN5bmMgc2V0IHRv
IHRydWUuIEluIGNvbnRleHRzIGxpa2UgcnVudGltZSByZXN1bWUgd2hlcmUgdGhlIGRyaXZlciBp
cyBub3QKKyAqIGV4cGVjdGVkIHRvIGJlIGNhbGxpbmcgZHJtX2F0b21pY19oZWxwZXJfcmVzdW1l
KCksIHRoaXMgZnVuY3Rpb24gc2hvdWxkIGJlCisgKiBjYWxsZWQgd2l0aCBAc3luYyBzZXQgdG8g
ZmFsc2UgaW4gb3JkZXIgdG8gYXZvaWQgZGVhZGxvY2tpbmcuCisgKgorICogUmV0dXJuczogLTEg
aWYgdGhlIE1TVCB0b3BvbG9neSB3YXMgcmVtb3ZlZCB3aGlsZSB3ZSB3ZXJlIHN1c3BlbmRlZCwg
MAorICogb3RoZXJ3aXNlLgogICovCi1pbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfcmVzdW1l
KHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKQoraW50IGRybV9kcF9tc3RfdG9w
b2xvZ3lfbWdyX3Jlc3VtZShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKKwkJ
CQkgICBib29sIHN5bmMpCiB7CiAJaW50IHJldDsKIAl1OCBndWlkWzE2XTsKQEAgLTMyNDMsOCAr
MzM0NiwxOSBAQCBpbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfcmVzdW1lKHN0cnVjdCBkcm1f
ZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKQogCX0KIAlkcm1fZHBfY2hlY2tfbXN0Yl9ndWlkKG1n
ci0+bXN0X3ByaW1hcnksIGd1aWQpOwogCisJLyoKKwkgKiBGb3IgdGhlIGZpbmFsIHN0ZXAgb2Yg
cmVzdW1pbmcgdGhlIHRvcG9sb2d5LCB3ZSBuZWVkIHRvIGJyaW5nIHRoZQorCSAqIHN0YXRlIG9m
IG91ciBpbi1tZW1vcnkgdG9wb2xvZ3kgYmFjayBpbnRvIHN5bmMgd2l0aCByZWFsaXR5LiBTbywK
KwkgKiByZXN0YXJ0IHRoZSBwcm9iaW5nIHByb2Nlc3MgYXMgaWYgd2UncmUgcHJvYmluZyBhIG5l
dyBodWIKKwkgKi8KKwlxdWV1ZV93b3JrKHN5c3RlbV9sb25nX3dxLCAmbWdyLT53b3JrKTsKIAlt
dXRleF91bmxvY2soJm1nci0+bG9jayk7CiAKKwlpZiAoc3luYykgeworCQlEUk1fREVCVUdfS01T
KCJXYWl0aW5nIGZvciBsaW5rIHByb2JlIHdvcmsgdG8gZmluaXNoIHJlLXN5bmNpbmcgdG9wb2xv
Z3kuLi5cbiIpOworCQlmbHVzaF93b3JrKCZtZ3ItPndvcmspOworCX0KKwogCXJldHVybiAwOwog
CiBvdXRfZmFpbDoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA1
ZWVhZmE0NTgzMWEuLjQwM2I1OTNhM2ViNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwpAQCAtNzYyNSw3ICs3NjI1LDggQEAgdm9pZCBpbnRlbF9kcF9tc3RfcmVzdW1l
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJaWYgKCFpbnRlbF9kcC0+Y2Fu
X21zdCkKIAkJCWNvbnRpbnVlOwogCi0JCXJldCA9IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3Jl
c3VtZSgmaW50ZWxfZHAtPm1zdF9tZ3IpOworCQlyZXQgPSBkcm1fZHBfbXN0X3RvcG9sb2d5X21n
cl9yZXN1bWUoJmludGVsX2RwLT5tc3RfbWdyLAorCQkJCQkJICAgICB0cnVlKTsKIAkJaWYgKHJl
dCkgewogCQkJaW50ZWxfZHAtPmlzX21zdCA9IGZhbHNlOwogCQkJZHJtX2RwX21zdF90b3BvbG9n
eV9tZ3Jfc2V0X21zdCgmaW50ZWxfZHAtPm1zdF9tZ3IsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9k
aXNwbnY1MC9kaXNwLmMKaW5kZXggYTlkNmFhMTEwY2ZkLi41NDk0ODZmMWQ5MzcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKQEAgLTEzMDksMTQgKzEzMDksMTQgQEAg
bnY1MF9tc3RtX2Zpbmkoc3RydWN0IG52NTBfbXN0bSAqbXN0bSkKIH0KIAogc3RhdGljIHZvaWQK
LW52NTBfbXN0bV9pbml0KHN0cnVjdCBudjUwX21zdG0gKm1zdG0pCitudjUwX21zdG1faW5pdChz
dHJ1Y3QgbnY1MF9tc3RtICptc3RtLCBib29sIHJ1bnRpbWUpCiB7CiAJaW50IHJldDsKIAogCWlm
ICghbXN0bSB8fCAhbXN0bS0+bWdyLm1zdF9zdGF0ZSkKIAkJcmV0dXJuOwogCi0JcmV0ID0gZHJt
X2RwX21zdF90b3BvbG9neV9tZ3JfcmVzdW1lKCZtc3RtLT5tZ3IpOworCXJldCA9IGRybV9kcF9t
c3RfdG9wb2xvZ3lfbWdyX3Jlc3VtZSgmbXN0bS0+bWdyLCAhcnVudGltZSk7CiAJaWYgKHJldCA9
PSAtMSkgewogCQlkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9zZXRfbXN0KCZtc3RtLT5tZ3IsIGZh
bHNlKTsKIAkJZHJtX2ttc19oZWxwZXJfaG90cGx1Z19ldmVudChtc3RtLT5tZ3IuZGV2KTsKQEAg
LTIyNjMsNyArMjI2Myw3IEBAIG52NTBfZGlzcGxheV9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIGJvb2wgcmVzdW1lLCBib29sIHJ1bnRpbWUpCiAJCWlmIChlbmNvZGVyLT5lbmNvZGVyX3R5
cGUgIT0gRFJNX01PREVfRU5DT0RFUl9EUE1TVCkgewogCQkJc3RydWN0IG5vdXZlYXVfZW5jb2Rl
ciAqbnZfZW5jb2RlciA9CiAJCQkJbm91dmVhdV9lbmNvZGVyKGVuY29kZXIpOwotCQkJbnY1MF9t
c3RtX2luaXQobnZfZW5jb2Rlci0+ZHAubXN0bSk7CisJCQludjUwX21zdG1faW5pdChudl9lbmNv
ZGVyLT5kcC5tc3RtLCBydW50aW1lKTsKIAkJfQogCX0KIApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vZHJtX2RwX21zdF9oZWxwZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmgK
aW5kZXggZmQxNDJkYjQyY2IwLi4xNDQwMjdlMjc0NjQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJt
L2RybV9kcF9tc3RfaGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIu
aApAQCAtNzA2LDcgKzcwNiw4IEBAIHZvaWQgZHJtX2RwX21zdF9kdW1wX3RvcG9sb2d5KHN0cnVj
dCBzZXFfZmlsZSAqbSwKIAogdm9pZCBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9zdXNwZW5kKHN0
cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKTsKIGludCBfX211c3RfY2hlY2sKLWRy
bV9kcF9tc3RfdG9wb2xvZ3lfbWdyX3Jlc3VtZShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9t
Z3IgKm1ncik7Citkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9yZXN1bWUoc3RydWN0IGRybV9kcF9t
c3RfdG9wb2xvZ3lfbWdyICptZ3IsCisJCQkgICAgICAgYm9vbCBzeW5jKTsKIAogc3NpemVfdCBk
cm1fZHBfbXN0X2RwY2RfcmVhZChzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LAogCQkJICAgICB1bnNp
Z25lZCBpbnQgb2Zmc2V0LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXplKTsKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
