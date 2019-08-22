Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6CA99EC9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 20:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1305B6E9FB;
	Thu, 22 Aug 2019 18:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0090B8929A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 18:31:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 11:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="354376267"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga005.jf.intel.com with ESMTP; 22 Aug 2019 11:31:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 11:32:02 -0700
Message-Id: <20190822183213.132380-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/11] Refactor to expand subslice mask (rev 2)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZXR0ZXIgbWF0Y2ggd2hhdCBpcyBwcmVzZW50ZWQgdG8gdXNlcnNwYWNlIHRocm91Z2ggdGhlCkk5
MTVfUVVFUllfVE9QT0xPR1lfSU5GTyBpb2N0bC4gVGhlIGluZGV4IGludG8gdGhpcyBhcnJheSBp
cwp0aGVuIGNhbGN1bGF0ZWQ6CiAgc2xpY2UgKiBzdWJzbGljZSBzdHJpZGUgKyBzdWJzbGljZSBp
bmRleCAvIDgKCk5vdGUgdGhpcyBpcyB0aGUgc2Vjb25kIGl0ZXJhdGlvbiBvZiBhbiBvcmlnaW5h
bCBwYXRjaCB0byBpbXBsZW1lbnQKdGhlIHNhbWUuIFRoZXJlIGFyZSBhIGNvdXBsZSBvZiBtaW5v
ciBjb2RlIGNoYW5nZXMgYmFzZWQgb24gY2hhbmdlcwpzaW5jZSB0aGUgZmlyc3Qgc2VyaWVzIHdh
cyBwb3N0ZWQuIEFkZGl0aW9uYWxseSwgdGhlIG9yaWdpbmFsIHBhdGNoCmhhcyBiZWVuIHNwbGl0
IGludG8gc2V2ZXJhbCBzbWFsbGVyIHBhdGNoZXMgd2l0aCBtb3JlIGlzb2xhdGVkCmNoYW5nZXMg
YmFzZWQgb24gcmV2aWV3IGZlZWRiYWNrIGluIHRoYXQgZmlyc3Qgc2VyaWVzLgoKTGluayB0byB0
aGUgb3JpZ2luYWwgc2VyaWVzOgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzU5NzQyLwoKdjI6IEZpeCAzMi1iaXQgYnVpbGQKdjM6IEZpeCB0eXBvIGluIGhhc3dlbGwg
c3NldSBpbmZvIHJvdXRpbmUgYW5kIGZpeCBTU0VVIHdvcmthcm91bmQKICAgIHByaW50CnY0OiBN
ZXJnZSBwYXRjaCB0byBIU1cgaW4gcHJldmlvdXMgcmV2aXNpb24gd2l0aCBwYXRjaCB0bwogICAg
c2V0IHN1YnNsaWNlX21hc2sgZm9yIGVhY2ggcGxhdGZvcm0gYW5kIGFkZHJlc3MgZmVlZGJhY2sK
ICAgIGZyb20gQ2hyaXMKdjU6IE5vIGNoYW5nZXMgaW4gY29kZS4gUmVzZW5kaW5nIGR1ZSB0byB1
bnJlbGF0ZWQgZmFpbHVyZXMgLSBjb25maXJtZWQKICAgIG5vIGZhaWx1cmVzIHdpdGggdHJ5Ym90
Lgp2NjogTWlub3IgY2hhbmdlIGluIGludGVsX3dvcmthcm91bmRzLmMgdG8gdXNlIHRoZSBuZXcg
aGVscGVyIGZ1bmN0aW9uCnY3OiBTcGxpdCBzZXQgc3VibGljZSBmdW5jdGlvbiBpbnRvIG11bHRp
cGxlIG1vcmUgbWFuYWdlYWJsZSBwYXRjaGVzCiAgICBBbmQgYWRkIGEgY291cGxlIG9mIEdFTV9C
VUdfT04gY2hlY2tzIHJlcXVlc3RlZCBieSBDaHJpcwp2ODogQWRkcmVzcyBuZXcgY29tbWVudHMg
ZnJvbSBDaHJpcyBpbmNsdWRpbmcgYWRkaW5nL21vdmluZwogICAgYSBjb3VwbGUgb2Ygc3MvZXVf
c3RyaWRlIGNoZWNrcyB0byB0aG9zZSBwcmV2aW91c2x5IHJldmlld2VkCiAgICBwYXRjaGVzIGVh
cmxpZXIgaW4gdGhpcyBzZXJpZXMKClN0dWFydCBTdW1tZXJzICgxMSk6CiAgZHJtL2k5MTU6IFVz
ZSB2YXJpYWJsZSBmb3IgZGVidWdmcyBkZXZpY2Ugc3RhdHVzCiAgZHJtL2k5MTU6IEFkZCBmdW5j
dGlvbiB0byBzZXQgU1NFVSBpbmZvIHBlciBwbGF0Zm9ybQogIGRybS9pOTE1OiBBZGQgc3Vic2xp
Y2Ugc3RyaWRlIHJ1bnRpbWUgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IEFkZCBFVSBzdHJpZGUgcnVu
dGltZSBwYXJhbWV0ZXIKICBkcm0vaTkxNTogVXNlIGxvY2FsIHZhcmlhYmxlcyBmb3Igc3Vic2xp
Y2VfbWFzayBmb3IgZGV2aWNlIGluZm8KICBkcm0vaTkxNTogQWRkIGZ1bmN0aW9uIHRvIHNldCBz
dWJzbGljZXMKICBkcm0vaTkxNTogVXNlIHN1YnNsaWNlIHN0cmlkZSB0byBzZXQgc3Vic2xpY2Vz
IGZvciBhIGdpdmVuIHNsaWNlCiAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0byBkZXRlcm1pbmUg
aWYgYSBzbGljZSBoYXMgYSBzdWJzbGljZQogIGRybS9pOTE1OiBSZWZhY3RvciBpbnN0ZG9uZSBs
b29wcyBvbiBuZXcgc3Vic2xpY2UgZnVuY3Rpb25zCiAgZHJtL2k5MTU6IEFkZCBuZXcgZnVuY3Rp
b24gdG8gY29weSBzdWJzbGljZXMgZm9yIGEgc2xpY2UKICBkcm0vaTkxNTogRXhwYW5kIHN1YnNs
aWNlIG1hc2sKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8
ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAg
MzAgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jICAgIHwg
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAgICAgICB8ICAz
OSArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwg
IDMyICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICB8
ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAg
NDkgKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAg
IHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICB8
ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAx
MjIgKysrKysrKysrLS0tLS0tLS0tLQogMTAgZmlsZXMgY2hhbmdlZCwgMTg0IGluc2VydGlvbnMo
KyksIDExNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
