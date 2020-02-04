Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44852151B85
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:42:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3A76EEB4;
	Tue,  4 Feb 2020 13:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF8F6EEB4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:42:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="224297181"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:42:19 +0200
Message-Id: <cover.1580823606.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: modeset probe/remove cleanup,
 again
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSd2ZSBzZW50IGl0ZXJhdGlvbnMgb2YgdGhpcyBiZWZvcmUsIGhlcmUncyB0aGUgcmViYXNlZCBz
ZXJpZXMuIEl0J3Mgbm90CnBlcmZlY3QsIGVzcGVjaWFsbHkgdGhlIGVycm9yIHBhdGhzLCBidXQg
dGhlbiBuZWl0aGVyIGFyZSB0aGUgY3VycmVudCBlcnJvcgpwYXRocy4gSXQgdGFrZXMgYSBsb3Qg
b2Ygc3RlcHMgdG93YXJkcyBzcGxpdHRpbmcgb3V0IG1vZGVzZXQgcHJvYmUvY2xlYW51cCBmcm9t
CnRoZSByZXN0LgoKQlIsCkphbmkuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KCgpKYW5pIE5pa3VsYSAoOSk6CiAgZHJtL2k5MTU6IHJlZ2lzdGVy
IHZnYSBzd2l0Y2hlcm9vIGxhdGVyLCB1bnJlZ2lzdGVyIGVhcmxpZXIKICBkcm0vaTkxNTogc3dp
dGNoIGk5MTVfZHJpdmVyX3Byb2JlKCkgdG8gdXNlIGk5MTUgbG9jYWwgdmFyaWFibGUKICBkcm0v
aTkxNTogc3BsaXQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKCkgdG8gcHJlL3Bvc3QgaXJx
CiAgICB1bmluc3RhbGwKICBkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1v
dmUoKSB0byBwcmUvcG9zdCBpcnEgdW5pbnN0YWxsCiAgZHJtL2k5MTU6IHNwbGl0IGk5MTVfZHJp
dmVyX21vZGVzZXRfcHJvYmUoKSB0byBwcmUvcG9zdCBpcnEgaW5zdGFsbAogIGRybS9pOTE1OiBz
cGxpdCBpbnRlbF9tb2Rlc2V0X2luaXQoKSB0byBwcmUvcG9zdCBpcnEgaW5zdGFsbAogIGRybS9p
OTE1OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2luaXQoKSBwcmUvcG9zdCBnZW0gaW5pdAogIGRybS9p
OTE1OiBtb3ZlIG1vcmUgZGlzcGxheSByZWxhdGVkIHByb2JlL3JlbW92ZSBzdHVmZiB0byBkaXNw
bGF5CiAgZHJtL2k5MTU6IHJlbW92ZSB0aGUgbm93IHJlZHVuZGFudCBpOTE1X2RyaXZlcl9tb2Rl
c2V0XyogY2FsbCBsYXllcgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgIDgyICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAg
ICAgICAgICB8IDE4OCArKysrKysrLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE0MSBp
bnNlcnRpb25zKCspLCAxMzIgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
