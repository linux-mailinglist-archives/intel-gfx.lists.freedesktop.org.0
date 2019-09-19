Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B2B7B82
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A206F7CB;
	Thu, 19 Sep 2019 14:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210126F7CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:04:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="178060355"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:47 +0300
Message-Id: <cover.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: modeset probe/remove path
 refactoring
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLCBJIHN0YXJ0ZWQgbG9va2luZyBpbnRvIGNsZWFuaW5nIHVwIHRoZSBtb2Rlc2V0IHBy
b2JlL3JlbW92ZQpwYXRocy4gV2UgaGF2ZSBhIG51bWJlciBvZiBpc3N1ZXMgdGhlcmUuIE1vZGVz
ZXQgYW5kIG5vbi1tb2Rlc2V0CmluaXRpYWxpemF0aW9uIGFuZCBjbGVhbnVwIGhhcHBpbHkgbWl4
ZWQgdXAuIEluaXRpYWxpemF0aW9uIGFuZCBjbGVhbnVwCm9mIHZhcmlvdXMgdGhpbmdzIGhhcHBl
biBhdCBkaWZmZXJlbnQgbGF5ZXJzIGluIHRoZSBzdGFjay4KClRoaXMgaXMgdGllZCB0byB0aGUg
cHJldmlvdXMgcGF0Y2hlcyBvbiBkaXNwbGF5IGRpc2FibGUgLyBubyBkaXNwbGF5LgoKVGhlIGZp
cnN0IDYgcGF0Y2hlcyBhcmUgcmVhbGx5IHN0cmFpZ2h0Zm9yd2FyZCBjbGVhbnVwLiBUaGVuIHRo
aW5ncwpzdGFydCBnZXR0aW5nIGludGVyZXN0aW5nLiBJbiBnZW5lcmFsIEknbSB0cnlpbmcgdG8g
c3BsaXQgdGhlCmluaXQvY2xlYW51cCB0byBwYXJ0cyBiZWZvcmUgYW5kIGFmdGVyIGlycSZnZW0g
aW5pdC9jbGVhbnVwLCBzbyB0aGF0IHdlCmNhbiBoYXZlIHRoZSBpcnEmZ2VtIHN0dWZmIGF0IHRo
ZSBoaWdoZXIgbGV2ZWwgb2YgaTkxNSBwcm9iZSBpbnN0ZWFkIG9mCmluIG1vZGVzZXQgY29kZS4K
ClRoZXJlIGFyZSBzZXZlcmFsIGxldmVscyBvZiB1Z2xpbmVzcyBhc3NvY2lhdGVkIHdpdGggdGhp
cy4gRmlyc3QsCm5hbWluZy4gKERvb3Igb3BlbiBmb3IgYmlrZXNoZWRkaW5nLCB5YXkuKSBTZWNv
bmQsIHRoZSBzcGxpdCBpbml0IGFuZApjbGVhbnVwIGFyZSBub3Qgc3ltbWV0cmljYWwuIFRoZSBp
bml0IGJlZm9yZSBpcnEgaW5zdGFsbGVkIGRvZXMgbm90Cm1hdGNoIHRoZSBjbGVhbnVwIGFmdGVy
IGlycSB1bmluc3RhbGxlZCwgZm9yIHZhcmlvdXMgcmVhc29ucy4gVGhpcyBpcwpub3Qgc28gYmFk
IGZvciBvdmVyYWxsIHByb2JlIGFuZCBkcml2ZXIgcmVtb3ZlIGluIGdlbmVyYWwsIGJ1dDogVGhp
cmQsCnRoZSBwcm9iZSBmYWlsdXJlIHBhdGhzIGFyZSBhIHRvdGFsIG1lc3MuIFRoZXkgYXJlIGFs
cmVhZHkgbm93LCBpbiBtYW55CndheXMsIGJ1dCB0aGlzIGRvZXNuJ3QgcmVhbGx5IGhlbHAsIGVp
dGhlci4gU28gSSdtIG5vdCBzdXJlIHRoaXMgc2hvdWxkCmJlIGEgYmxvY2tlciwgYnV0IGl0J3Mg
bm90IHByZXR0eS4KCkJSLApKYW5pLgoKCkphbmkgTmlrdWxhICgxMyk6CiAgZHJtL2k5MTU6IGFk
ZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZSgpCiAgZHJtL2k5MTU6IHBhc3MgaTkxNSB0byBp
OTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkKICBkcm0vaTkxNTogcGFzcyBpOTE1IHRvIGludGVs
X21vZGVzZXRfZHJpdmVyX3JlbW92ZSgpCiAgZHJtL2k5MTU6IGFic3RyYWN0IGludGVsX3BhbmVs
X3Nhbml0aXplX3NzYygpIGZyb20KICAgIGludGVsX21vZGVzZXRfaW5pdCgpCiAgZHJtL2k5MTU6
IGFic3RyYWN0IGludGVsX21vZGVfY29uZmlnX2luaXQoKSBmcm9tIGludGVsX21vZGVzZXRfaW5p
dCgpCiAgZHJtL2k5MTU6IHBhc3MgaTkxNSB0byBpbnRlbF9tb2Rlc2V0X2luaXQoKSBhbmQKICAg
IGludGVsX21vZGVzZXRfaW5pdF9odygpCiAgZHJtL2k5MTU6IHNwbGl0IGludGVsX21vZGVzZXRf
ZHJpdmVyX3JlbW92ZSgpIHRvIHByZS9wb3N0IGlycQogICAgdW5pbnN0YWxsCiAgZHJtL2k5MTU6
IHNwbGl0IGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKCkgdG8gcHJlL3Bvc3QgaXJxIHVuaW5z
dGFsbAogIGRybS9pOTE1OiBtb3ZlIGdtYnVzIHNldHVwIGRvd24gdG8gaW50ZWxfbW9kZXNldF9p
bml0KCkKICBkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZSgpIHRvIHBy
ZS9wb3N0IGlycSBpbnN0YWxsCiAgZHJtL2k5MTU6IG1vdmUgZ2VtIGluaXQgdXAgZnJvbSBtb2Rl
c2V0IGluaXQKICBkcm0vaTkxNTogcHVzaCBpbnRlbF9vdmVybGF5X2luaXQoKSBkb3duIHRvIGlu
dGVsX21vZGVzZXRfaW5pdCgpCiAgZHJtL2k5MTU6IHNwbGl0IGludGVsX21vZGVzZXRfaW5pdCgp
IHRvIHByZS9wb3N0IGlycSBpbnN0YWxsCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAyNDkgKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgIHwgMTM5ICsrKysrKystLS0tCiAzIGZpbGVzIGNo
YW5nZWQsIDIyNSBpbnNlcnRpb25zKCspLCAxNzEgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
