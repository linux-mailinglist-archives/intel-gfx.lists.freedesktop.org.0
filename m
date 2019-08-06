Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A66082C0E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 08:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C83C89D43;
	Tue,  6 Aug 2019 06:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from condef-10.nifty.com (condef-10.nifty.com [202.248.20.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F31989D43
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 06:52:23 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-10.nifty.com
 with ESMTP id x766dfiG007634
 for <intel-gfx@lists.freedesktop.org>; Tue, 6 Aug 2019 15:39:41 +0900
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x766dO7o002982;
 Tue, 6 Aug 2019 15:39:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x766dO7o002982
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Date: Tue,  6 Aug 2019 15:39:19 +0900
Message-Id: <20190806063923.1266-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806063923.1266-1-yamada.masahiro@socionext.com>
References: <20190806063923.1266-1-yamada.masahiro@socionext.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1565073566;
 bh=JlCMJ6teUrNcdw5nNAsjPH8LD60KsqUoMPPEo50W3xc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o38ZfvGh/J6sdmxHNVHbtsTBc2XwPxzojhdjO4Tpd5Jc6Kzy3Zyr1LlhLCxVY+2f9
 uk76CsF2MDxirJh84AVmMmt6NOth+0HBQPu5zFCIvUBB9oIDLxBAVuAbmyjDh7EzI1
 3DsBEU6VC8lh+rnT/JTp0odTWLocGhmPr6h+S4phlAxrKXp32wW51UWyJkZMsKfTUE
 IlFNSH6XyHBqMuOWmUMKRl7IVl3vH4lNHWSeNApCXuk5fda/N4ooUM9ZJ7jVazWlVq
 JHln5DDcHshnn+BrPkCbnohTiM/CkKCA1sdMz+B2qsu7/29jB2Ov327e/YC8obEZ3K
 JOX12HqWukreA==
Subject: [Intel-gfx] [PATCH 1/5] kbuild: treat an object as multi-used when
 $(foo-) is set
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
Cc: Michal Marek <michal.lkml@markovi.net>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Sam Ravnborg <sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5LCBLYnVpbGQgdHJlYXRzIGFuIG9iamVjdCBhcyBtdWx0aS11c2VkIHdoZW4gYW55
IG9mCiQoZm9vLW9ianMpLCAkKGZvby15KSwgJChmb28tbSkgaXMgc2V0LiBJdCBtYWtlcyBtb3Jl
IHNlbnNlIHRvCmNoZWNrICQoZm9vLSkgYXMgd2VsbC4KCkluIHRoZSBjb250ZXh0IG9mIGZvby0k
KENPTkZJR19GT09fRkVBVFVSRTEpLCBDT05GSUdfRk9PX0ZFQVRVUkUxCmNvdWxkIGJlIHVuc2V0
LgoKU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9u
ZXh0LmNvbT4KLS0tCgogc2NyaXB0cy9NYWtlZmlsZS5saWIgfCAxMCArKysrKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3NjcmlwdHMvTWFrZWZpbGUubGliIGIvc2NyaXB0cy9NYWtlZmlsZS5saWIKaW5kZXggNDFjNTBm
OTQ2MWU1Li4wYTU0MDU5OTgyM2UgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvTWFrZWZpbGUubGliCisr
KyBiL3NjcmlwdHMvTWFrZWZpbGUubGliCkBAIC00MSw5ICs0MSw5IEBAIG9iai1tCQk6PSAkKGZp
bHRlci1vdXQgJS8sICQob2JqLW0pKQogIyBTdWJkaXJlY3RvcmllcyB3ZSBuZWVkIHRvIGRlc2Nl
bmQgaW50bwogc3ViZGlyLXltCTo9ICQoc29ydCAkKHN1YmRpci15KSAkKHN1YmRpci1tKSkKIAot
IyBpZiAkKGZvby1vYmpzKSwgJChmb28teSksIG9yICQoZm9vLW0pIGV4aXN0cywgZm9vLm8gaXMg
YSBjb21wb3NpdGUgb2JqZWN0Ci1tdWx0aS11c2VkLXkgOj0gJChzb3J0ICQoZm9yZWFjaCBtLCQo
b2JqLXkpLCAkKGlmICQoc3RyaXAgJCgkKG06Lm89LW9ianMpKSAkKCQobToubz0teSkpKSwgJCht
KSkpKQotbXVsdGktdXNlZC1tIDo9ICQoc29ydCAkKGZvcmVhY2ggbSwkKG9iai1tKSwgJChpZiAk
KHN0cmlwICQoJChtOi5vPS1vYmpzKSkgJCgkKG06Lm89LXkpKSAkKCQobToubz0tbSkpKSwgJCht
KSkpKQorIyBJZiAkKGZvby1vYmpzKSwgJChmb28teSksICQoZm9vLW0pLCBvciAkKGZvby0pIGV4
aXN0cywgZm9vLm8gaXMgYSBjb21wb3NpdGUgb2JqZWN0CittdWx0aS11c2VkLXkgOj0gJChzb3J0
ICQoZm9yZWFjaCBtLCQob2JqLXkpLCAkKGlmICQoc3RyaXAgJCgkKG06Lm89LW9ianMpKSAkKCQo
bToubz0teSkpICQoJChtOi5vPS0pKSksICQobSkpKSkKK211bHRpLXVzZWQtbSA6PSAkKHNvcnQg
JChmb3JlYWNoIG0sJChvYmotbSksICQoaWYgJChzdHJpcCAkKCQobToubz0tb2JqcykpICQoJCht
Oi5vPS15KSkgJCgkKG06Lm89LW0pKSAkKCQobToubz0tKSkpLCAkKG0pKSkpCiBtdWx0aS11c2Vk
ICAgOj0gJChtdWx0aS11c2VkLXkpICQobXVsdGktdXNlZC1tKQogCiAjICQoc3ViZGlyLW9iai15
KSBpcyB0aGUgbGlzdCBvZiBvYmplY3RzIGluICQob2JqLXkpIHdoaWNoIHVzZXMgZGlyLyB0bwpA
QCAtNTIsOCArNTIsOCBAQCBzdWJkaXItb2JqLXkgOj0gJChmaWx0ZXIgJS9idWlsdC1pbi5hLCAk
KG9iai15KSkKIAogIyBSZXBsYWNlIG11bHRpLXBhcnQgb2JqZWN0cyBieSB0aGVpciBpbmRpdmlk
dWFsIHBhcnRzLAogIyBpbmNsdWRpbmcgYnVpbHQtaW4uYSBmcm9tIHN1YmRpcmVjdG9yaWVzCi1y
ZWFsLW9iai15IDo9ICQoZm9yZWFjaCBtLCAkKG9iai15KSwgJChpZiAkKHN0cmlwICQoJChtOi5v
PS1vYmpzKSkgJCgkKG06Lm89LXkpKSksJCgkKG06Lm89LW9ianMpKSAkKCQobToubz0teSkpLCQo
bSkpKQotcmVhbC1vYmotbSA6PSAkKGZvcmVhY2ggbSwgJChvYmotbSksICQoaWYgJChzdHJpcCAk
KCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkgJCgkKG06Lm89LW0pKSksJCgkKG06Lm89LW9i
anMpKSAkKCQobToubz0teSkpICQoJChtOi5vPS1tKSksJChtKSkpCityZWFsLW9iai15IDo9ICQo
Zm9yZWFjaCBtLCAkKG9iai15KSwgJChpZiAkKHN0cmlwICQoJChtOi5vPS1vYmpzKSkgJCgkKG06
Lm89LXkpKSAkKCQobToubz0tKSkpLCQoJChtOi5vPS1vYmpzKSkgJCgkKG06Lm89LXkpKSwkKG0p
KSkKK3JlYWwtb2JqLW0gOj0gJChmb3JlYWNoIG0sICQob2JqLW0pLCAkKGlmICQoc3RyaXAgJCgk
KG06Lm89LW9ianMpKSAkKCQobToubz0teSkpICQoJChtOi5vPS1tKSkgJCgkKG06Lm89LSkpKSwk
KCQobToubz0tb2JqcykpICQoJChtOi5vPS15KSkgJCgkKG06Lm89LW0pKSwkKG0pKSkKIAogIyBE
VEIKICMgSWYgQ09ORklHX09GX0FMTF9EVEJTIGlzIGVuYWJsZWQsIGFsbCBEVCBibG9icyBhcmUg
YnVpbHQKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
