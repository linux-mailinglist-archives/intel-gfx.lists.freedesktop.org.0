Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCF7EB3ED
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 16:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE4E6EECA;
	Thu, 31 Oct 2019 15:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CA96EECA;
 Thu, 31 Oct 2019 15:29:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:19 -0700
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="190661091"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 31 Oct 2019 16:28:53 +0100
Message-Id: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v4 0/4] Calculate softpin offsets from
 minimum GTT alignment
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
Zml4IGZvciBnZW1fY3R4X3NoYXJlZCB0ZXN0IChwYXRjaCA0LzQpLgp2NDogUmVuYW1lIHRoZSBo
ZWxwZXIsIHVzZSAnbWluaW11bSBHVFQgYWxpZ25tZW50JyB0ZXJtIGFjcm9zcyB0aGUKICAgIGNo
YW5nZXMgKENocmlzKSwKICAtIHVwZGF0ZSB2YXJpYWJsZSBuYW1lcyBhY2NvcmRpbmdseSwKICAt
IHVzZSBlcnJvciBudW1iZXJzIHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4gaW52YWxpZCBvZmZzZXRz
IGFuZAogICAgYWRkcmVzc2VzIG9jY3VwaWVkIGJ5IG90aGVyIHVzZXJzLCB0aGVuCiAgLSBzaW1w
bGlmeSB0aGUgaGVscGVyIGNvZGUgKENocmlzKSwKICAtIGRyb3Agbm8gbG9uZ2VyIHJlcXVpcmVk
IHBhdGNoIDEvNCAibGliOiBNb3ZlIHJlZHVuZGFudCBsb2NhbAogICAgaGVscGVycyB0byBsaWIv
IiwKICAtIHJlaW50cm9kdWNlIGZvcm1lciBwYXRjaCAxLzIgYXMgMS80ICJ0ZXN0cy9nZW1fZXhl
Y19yZWxvYzogRG9uJ3QKICAgIGZpbHRlciBvdXQgaW52YWxpZCBhZGRyZXNzZXMiIHdpdGggdGhl
IGZvcm1lciBub3Qgb24gZnVsbCBQUEdUVAogICAgcmVxdWlyZW1lbnQgZm9yIHNraXBwaW5nIG5v
dyByZXBsYWNlZCB3aXRoIGVycm9yIGNvZGUgY2hlY2tpbmcuCgpKYW51c3ogS3J6eXN6dG9maWsg
KDQpOgogIHRlc3RzL2dlbV9leGVjX3JlbG9jOiBEb24ndCBmaWx0ZXIgb3V0IGludmFsaWQgYWRk
cmVzc2VzCiAgbGliOiBBZGQgbWluaW11bSBHVFQgYWxpZ25tZW50IGhlbHBlcgogIHRlc3RzL2dl
bV9leGVjX3JlbG9jOiBDYWxjdWxhdGUgb2Zmc2V0cyBmcm9tIG1pbmltdW0gR1RUIGFsaWdubWVu
dAogIHRlc3RzL2dlbV9jdHhfc2hhcmVkOiBBbGlnbiBvYmplY3RzIHVzaW5nIG1pbmltdW0gR1RU
IGFsaWdubWVudAoKIGxpYi9pb2N0bF93cmFwcGVycy5jICAgICAgICB8IDQ2ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIGxpYi9pb2N0bF93cmFwcGVycy5oICAgICAgICB8
ICAyICsrCiB0ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMgfCAgNiArKystLQogdGVzdHMvaTkx
NS9nZW1fZXhlY19yZWxvYy5jIHwgMjIgKysrKysrKysrKysrLS0tLS0tCiA0IGZpbGVzIGNoYW5n
ZWQsIDY3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
