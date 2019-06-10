Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE503BED9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 23:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA5E8914F;
	Mon, 10 Jun 2019 21:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5950E8914F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:45:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 14:45:24 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.152])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2019 14:45:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:44:49 -0700
Message-Id: <20190610214449.9447-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] Use ranges for voltage level lookup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmVyc2lvbiAyIG9mIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE3
NDIvLCB0aGlzIHRpbWUKYXBwbGllZCB0byBhbGwgcG9zc2libGUgcGxhdGZvcm1zLCBub3Qgb25s
eSBJY2UgTGFrZS4KCkkgYWxzbyBjaGFuZ2VkIHRoZSBpZiBlbHNlIGNoYWluIHRvIHVzZSBiaWcg
dG8gc21hbGwgZnJlcXVlbmN5IHZhbHVlcwphY2NvcmRpbmcgdG8gdGhlIHN1Z2dlc3Rpb24gZnJv
bSBWaWxsZS4KCiQgZ2l0IGdyZXAgLWUgInN0YXRpYy4qX2NhbGNfdm9sdGFnZV9sZXZlbCIgLS0g
ZHJpdmVycy9ncHUvZHJtL2k5MTUKZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzpz
dGF0aWMgdTggdmx2X2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGludCBjZGNsaykKZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYzpz
dGF0aWMgdTggYmR3X2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NkY2xrLmM6c3RhdGljIHU4IHNrbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50
IGNkY2xrKQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jOnN0YXRpYyB1OCBieHRf
Y2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y2RjbGsuYzpzdGF0aWMgdTggY25sX2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCmRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmM6c3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2Vf
bGV2ZWwoaW50IGNkY2xrKQoKCnZsdjogYWxyZWFkeSB1c2luZyByYW5nZXMgKGFuZCBub3QgYXBw
bGljYWJsZSBmb3IgY2h2KQpiZHc6IG5vdCBhcHBsaWNhYmxlIGFzIGxldmVscyBkb24ndCByZXNw
ZWN0IHRoZSByYW5nZXMgKGNvbmZpcm1lZCBpbgogICAgIHNwZWMsIHRvbykKYnh0OiBub3QgYXBw
bGljYWJsZSBhcyBpdCBqdXN0IGRpdmlkZXMgdGhlIGNkY2xrCgpUaGUgcmVzdCBpcyBpbiB0aGlz
IHNlcmllcy4KCkx1Y2FzIERlIE1hcmNoaSAoMyk6CiAgZHJtL2k5MTUvaWNsOiB1c2UgcmFuZ2Vz
IGZvciB2b2x0YWdlIGxldmVsIGxvb2t1cAogIGRybS9pOTE1L2NubDogdXNlIHJhbmdlcyBmb3Ig
dm9sdGFnZSBsZXZlbCBsb29rdXAKICBkcm0vaTkxNS9za2w6IHVzZSByYW5nZXMgZm9yIHZvbHRh
Z2UgbGV2ZWwgbG9va3VwCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYyB8IDUy
ICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
