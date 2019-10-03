Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 710ECCA0FA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 17:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78ED56E14B;
	Thu,  3 Oct 2019 15:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E436E14B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 15:15:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 08:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="391976221"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga005.fm.intel.com with ESMTP; 03 Oct 2019 08:15:22 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:36:47 +0530
Message-Id: <20191003150653.15881-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/6] DP Phy compliace auto test.
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

RHJpdmVyIGNoYW5nZXMgbWFpbmx5IHRvIHByb2Nlc3MgdGhlIHJlcXVlc3QgY29taW5nIGZyb20g
VGVzdCBlcXVpcG1lbnQKYXMgc2hvcnQgcHVsc2UgaHBkIGludGVycnVwdCB0byBjaGFuZ2UgbGlu
ay1wYXR0ZXJuL3Ytc3dpbmcvcHJlLWVtcGhhc2lzCkNvbXBsZXRlIGF1dG8gdGVzdCBzdWl0ZSB0
YWtlcyBtdWNoIGxlc3NlciB0aW1lIHRoYW4gbWFudWFsIHJ1bi4KCk92ZXJhbGwgZGVzaWduOgot
LS0tLS0tLS0tLS0tLQpBdXRvbWF0ZSB0ZXN0IHJlcXVlc3Qgd2lsbCBjb21lIHRvIHNvdXJjZSBk
ZXZpY2UgYXMgSERQIHNob3J0IHB1bHNlCmludGVycnVwdCBmcm9tIHRlc3Qgc2NvcGUuClJlYWQg
RFBDRCAweDIwMSwgQ2hlY2sgZm9yIGJpdCAxIGZvciBhdXRvbWF0ZWQgdGVzdCByZXF1ZXN0LgpJ
ZiBzZXQgY29udGludWUgYW5kIHJlYWQgRFBDRCAweDIxOC4KQ2hlY2sgZm9yIGJpdCAzIGZvciBw
aHkgdGVzdCBwYXR0ZXJuLCBJZiBzZXQgY29udGludWUuCkdldCB0aGUgcmVxdWVzdGVkIHRlc3Qg
cGF0dGVybiB0aHJvdWdoIERQQ0QgMHgyNDguCkNvbXB1dGUgcmVxdWVzdGVkIHZvbHRhZ2Ugc3dp
bmcgbGV2ZWwgYW5kIHByZS1lbXBoYXNpcyBsZXZlbApmcm9tIERQQ0QgMHgyMDYgYW5kIDB4MjA3
ClNldCBzaWduYWwgbGV2ZWwgdGhyb3VnaCB2c3dpbmcgcHJvZ3JhbW1pbmcgc2VxdWVuY2UuCldy
aXRlIERESV9DT01QX0NUTCBhbmQgRERJX0NPTVBfUEFUeCBhcyBwZXIgcmVxdWVzdGVkIHBhdHRl
cm4uCkNvbmZpZ3VyZSB0aGUgbGluayBhbmQgd3JpdGUgdGhlIG5ldyB0ZXN0IHBhdHRlcm4gdGhy
b3VnaCBEUENELgoKSGlnaCBsZXZlbCBwYXRjaCBkZXNjcmlwdGlvbi4KLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KcGF0Y2ggMTogZHJtIGxldmVsIGFwaSBhZGRlZCB0byBnZXQvc2V0IHRl
c3QgcGF0dGVybiBhcyBwZXIgdmVzYQpEUCBzcGVjLiBUaGlzIG1heWJlIHVzZWZ1bCBmb3Igb3Ro
ZXIgZHJpdmVyIHNvIGFkZGVkIGluIGRybSBsYXllci4KcGF0Y2ggMjogdnN3aW5nL3ByZWVtcGhh
c2lzIGFkanVzdG1lbnQgY2FsY3VsYXRpb24gaXMgbmVlZGVkIGR1cmluZwpwaHkgY29tcGxpYW5j
ZSByZXF1ZXN0IHByb2Nlc3NpbmcgYWxvbmcgd2l0aCBleGlzdGluZyBsaW5rIHRyYWluaW5nCnBy
b2Nlc3MsIHNvIG1vdmVkIHRoZSBzYW1lIGZ1bmN0aW9uIGluIGludGVsX2RwLmMuCnBhdGNoIDM6
IFBhcnNlIHRoZSB0ZXN0IHNjb3BlIHJlcXVlc3QgcmVnYXJkaW5nIHRlc3QgcnF1ZXN0ZWQgcGF0
dGVybiwKdnN3aW5nIGxldmVsLCBwcmVlbXBoYXNpcyBsZXZlbC4KcGF0Y2ggNDogUmVnaXN0ZXIg
ZGlmbml0aW9uIG9mIERQIGNvbXBsaWFuY2UgcmVnaXN0ZXIgYWRkZWQuCnBhdGNoIDU6IEZ1bmNp
b24gYWRkZWQgdG8gdXBkYXRlIHRoZSBwYXR0ZXJuIGluIHNvdXJjZSBzaWRlLgpwYXRjaCA2OiBU
aGlzIHBhdGNoIG9zIG1haW5seSBwcm9jZXNzaW5nIHRoZSByZXF1ZXN0LgoKQ3VycmVudGx5IHRo
cm91Z2ggcHJvdG90eXBpbmcgcGF0Y2ggYWJsZSB0byBydW4gRFAgY29tcGxpYW5jZSB3aGVyZQp2
c3dpbmcsIHByZWVtcGhhc2lzIGFuZCB0ZXN0IHBhdHRlcm4gaXMgY2hhbmdpbmcgZmluZSBidXQg
Y29tcGxldGUKdGVzdCBpcyB1bmRlciBwcm9jZXNzLiBJbiBwYXJhbGxlbCB3YW50IHRvIHN0YXJ0
IGRlc2lnbiBkaXNjdXNzaW9uCnNvIHNlbmRpbmcgdGhlIGFib3ZlIHBhdGNoZXMgYXMgUkZDLgoK
QW5pbWVzaCBNYW5uYSAoNik6CiAgZHJtL2RwOiBnZXQvc2V0IHBoeSBjb21wbGlhbmNlIHBhdHRl
cm4uCiAgZHJtL2k5MTUvZHA6IE1vdmUgdnN3aW5nL3ByZS1lbXBoYXNpcyBhZGp1c3RtZW50IGNh
bGN1bGF0aW9uCiAgZHJtL2k5MTUvZHA6IFByZXBhcmF0aW9uIGZvciBEUCBwaHkgY29tcGxpYW5j
ZSBhdXRvIHRlc3QuCiAgZHJtL2k5MTUvZHA6IFJlZ2lzdGVyIGRlZmluaXRpb24gZm9yIERQIGNv
bXBsaWFuY2UgcmVnaXN0ZXIuCiAgZHJtL2k5MTUvZHA6IFVwZGF0ZSB0aGUgcGF0dGVybiBhcyBw
ZXIgcmVxdWVzdC4KICBkcm0vaTkxNS9kcDogUHJvZ3JhbSB2c3dpbmcsIHByZS1lbXBoYXNpcywg
dGVzdC1wYXR0ZXJuCgogZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyAgICAgICAgICAg
ICAgIHwgIDc3ICsrKysrKysrCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
ICAgICAgIHwgMTc4ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oICAgICAgIHwgICAzICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyB8ICAzMiAtLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgICAgfCAgMjAgKysKIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIu
aCAgICAgICAgICAgICAgICAgICB8ICAyOCArKysKIDcgZmlsZXMgY2hhbmdlZCwgMzA3IGluc2Vy
dGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
