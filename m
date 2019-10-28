Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB1E758B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1622D6E960;
	Mon, 28 Oct 2019 15:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C676E95C;
 Mon, 28 Oct 2019 15:53:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:27 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193298997"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:24 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 28 Oct 2019 16:53:14 +0100
Message-Id: <20191028155318.23416-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v3 0/4] Calculate softpin offsets from
 actual page size
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSB0ZXN0cyBhc3N1bWUgNGtCIHBhZ2Ugc2l6ZSB3aGlsZSB1c2luZyBzb2Z0cGluLiAgVGhh
dCBhc3N1bXB0aW9uCm1heSBiZSB3cm9uZyBvbiBmdXR1cmUgR0VNIGJhY2tlbmRzIHdpdGggcG9z
c2libHkgbGFyZ2VyIG1pbmltdW0gcGFnZQpzaXplcy4gIEFzIGEgcmVzdWx0LCB0aG9zZSB0ZXN0
cyBtYXkgZWl0aGVyIGZhaWwgb24gc29mdHBpbiBhdCBvZmZzZXRzCndoaWNoIGFyZSBpbmNvcnJl
Y3RseSBhbGlnbmVkLCBtYXkgc2lsZW50bHkgc2tpcCBzdWNoIGluY29ycmVjdGx5CmFsaWduZWQg
YWRkcmVzc2VzIGFzc3VtaW5nIHRoZW0gb2NjdXBpZWQgYnkgb3RoZXIgdXNlcnMsIG9yIG1heSBh
bHdheXMKc3VjY2VlZCB3aGVuIGV4YW1pbmluZyBpbnZhbGlkIHVzZSBwYXR0ZXJucy4KClByb3Zp
ZGUgYSBoZWxwZXIgZnVuY3Rpb24gdGhhdCBkZXRlY3RzIG1pbmltdW0gcGFnZSBzaXplIGFuZCBy
ZXR1cm5zCnRoZSBzaXplIG9yZGVyLiAgVXNlIGl0IGluIHRlc3Qgd2hpY2ggcGVyZm9ybSBzb2Z0
cGluIHRvIGNhbGN1bGF0ZQpvZmZzZXRzIHN1aXRhYmxlIGZvciBhY3R1YWxseSB1c2VkIGJhY2tp
bmcgc3RvcmUuCgpDaGFuZ2Vsb2c6CnYyOiBEb24ndCBza2lwIGZhaWxpbmcgb2Zmc2V0cyBvbmx5
IHdoZW4gb24gZnVsbCBQUEdUVCwKICAtIHNpbXBsaWZ5IHRoZSBjb2RlIGJ5IHJldmVyc2luZyB0
aGUgc2l6ZS0+b3JkZXIgY29udmVyc2lvbiwKICAtIGRyb3AgaXJyZWxldmFudCBtb2RpZmljYXRp
b25zIG9mIHJlcXVlc3RlZCBvYmplY3Qgc2l6ZXMuCnYzOiBEcm9wIHBhdGNoIDEvMiAiRG9uJ3Qg
ZmlsdGVyIG91dCBhZGRyZXNzZXMgd2hlbiBvbiBQUEdUVCIgLSBJIGRvbid0CiAgICBrbm93IGhv
dyB0byBkZXRlY3QgaWYgdGhlIGtlcm5lbCBpcyBpbnRlcmZlcmluZyB3aXRoIHRoZSB1c2VyJ3Mg
R1RULAogIC0gaW50cm9kdWNlIHBhdGNoIDEvNCAibGliOiBNb3ZlIHJlZHVuZGFudCBsb2NhbCBo
ZWxwZXJzIHRvIGxpYi8iLAogICAgc3Vic2VxdWVudCBwYXRjaCB3aWxsIHVzZSB0aGUgaGVscGVy
LAogIC0gaW50cm9kdWNlIHBhdGNoIDIvNCAibGliOiBBZGQgR0VNIG1pbmltdW0gcGFnZSBzaXpl
IGhlbHBlciIsCiAgICBzdWJzZXF1ZW50IHBhdGNoZXMgd2lsbCB1c2UgdGhlIG5ldyBoZWxwZXIg
KGluc3BpcmVkIGJ5IENocmlzKSwKICAtIGluIGZvcm1lciBwYXRjaCAyLzIsIG5vdyAzLzQsIGlu
aXRpYWxpemUgcGFnZSBzaXplIG9yZGVyIHdpdGggYW4KICAgIGFjdHVhbCBtaW5pbXVtIHJldHVy
bmVkIGJ5IHRoZSBuZXcgaGVscGVyIChpbnNwaXJlZCBieSBDaHJpcyksCiAgLSBhZGQgYSBuZXcg
Zml4IGZvciBnZW1fY3R4X3NoYXJlZCB0ZXN0IChwYXRjaCA0LzQpLgoKSmFudXN6IEtyenlzenRv
ZmlrICg0KToKICBsaWIvaTkxNTogTW92ZSByZWR1bmRhbnQgbG9jYWwgaGVscGVycyB0byBsaWIv
CiAgbGliL2k5MTU6IEFkZCBHRU0gbWluaW11bSBwYWdlIHNpemUgaGVscGVyCiAgdGVzdHMvZ2Vt
X2V4ZWNfcmVsb2M6IENhbGN1bGF0ZSBzb2Z0cGluIG9mZnNldHMgZnJvbSBhY3R1YWwgcGFnZSBz
aXplCiAgdGVzdHMvZ2VtX2N0eF9zaGFyZWQ6IENhbGN1bGF0ZSBvYmplY3QgYXR0cmlidXRlcyBm
cm9tIGFjdHVhbCBwYWdlIHNpemUKCiBsaWIvaWd0X3g4Ni5jICAgICAgICAgICAgICAgfCAxMyAr
KysrKysKIGxpYi9pZ3RfeDg2LmggICAgICAgICAgICAgICB8ICA1ICsrKwogbGliL2lvY3RsX3dy
YXBwZXJzLmMgICAgICAgIHwgODIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KwogbGliL2lvY3RsX3dyYXBwZXJzLmggICAgICAgIHwgIDEgKwogdGVzdHMvaTkxNS9nZW1fY3R4
X3NoYXJlZC5jIHwgIDYgKystCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAyNiArKysr
LS0tLS0tLS0KIHRlc3RzL2k5MTUvZ2VtX3NvZnRwaW4uYyAgICB8IDEzICstLS0tLQogNyBmaWxl
cyBjaGFuZ2VkLCAxMTUgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
