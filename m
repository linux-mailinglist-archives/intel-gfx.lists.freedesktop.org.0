Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E171682C0C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 08:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A4D89D43;
	Tue,  6 Aug 2019 06:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 388 seconds by postgrey-1.36 at gabe;
 Tue, 06 Aug 2019 06:51:35 UTC
Received: from condef-10.nifty.com (condef-10.nifty.com [202.248.20.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0763789D43
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 06:51:34 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-10.nifty.com
 with ESMTP id x766dm2i007639
 for <intel-gfx@lists.freedesktop.org>; Tue, 6 Aug 2019 15:39:48 +0900
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x766dO7q002982;
 Tue, 6 Aug 2019 15:39:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x766dO7q002982
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Date: Tue,  6 Aug 2019 15:39:21 +0900
Message-Id: <20190806063923.1266-4-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806063923.1266-1-yamada.masahiro@socionext.com>
References: <20190806063923.1266-1-yamada.masahiro@socionext.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1565073568;
 bh=sw9gOrsRe1Xt1eVzCXiD4YS6wfm2vzRin5darkdpJ1A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xo7yNbFFf7vTcp5uurMMAUy6l1kcnjkSAIb7IRnyaHiiyAlAcXxZ3cyxMRIfAF3IA
 RJFKw5LdIswvKCFYjwKmz9RHp15n+CtAag32hNQlL5eiKbQKP59yVdqQefLpzLnsBF
 7+WEC4FrwSP86RG8SrayMPhEWuED4gZLTGefyiXp+Blnnr6roMqkmKeufvt0/eZ5+/
 IXrQ/CPghsEJrEJoVgp3IH3wNvtsG+cHXqxylzZyT6FP1jPzUfG/dVubZ37i/9KlhW
 pHXreWssCbxLY4DZEzBl/6Mg57IBK5JdSPtXlRzBRD4m6CZ02CkgdgA+qjNtiNZZTS
 sTT+Z9Yk9Drlg==
Subject: [Intel-gfx] [PATCH 3/5] kbuild: rename cmd_ar_builtin to
 cmd_ar_no_sym
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

SW4gdGhlIG5leHQgY29tbWl0LCBJIHdpbGwgcmUtdXNlIHRoaXMgZm9yIHRoaW4tYXJjaGl2ZXMg
b2Ygb2JqZWN0cwpsaWtlZCBpbnRvIG1vZHVsZXMuCgpSZW5hbWUgY21kX2FyX2J1aWx0aW4gdG8g
YSBtb3JlIGdlbmVyaWMgY21kX2FyX25vX3N5bS4KKGNtZF9hciBpcyBhbHJlYWR5IGRlZmluZWQg
aW4gc2NyaXB0cy9NYWtlZmlsZS5saWIpCgpJIHJlbW92ZWQgdW5uZWVkZWQgaWZkZWYgYnVpbHRp
bi10YXJnZXQuCgpObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRlZC4KClNpZ25lZC1vZmYtYnk6
IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+Ci0tLQoKIHNj
cmlwdHMvTWFrZWZpbGUuYnVpbGQgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvTWFrZWZpbGUu
YnVpbGQgYi9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkCmluZGV4IGIwZmY2MGFjMGM0Mi4uNjg2MjJj
YmRmZGE1IDEwMDY0NAotLS0gYS9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkCisrKyBiL3NjcmlwdHMv
TWFrZWZpbGUuYnVpbGQKQEAgLTQwNCwxNiArNDA0LDE0IEBAICQoc29ydCAkKHN1YmRpci1vYmot
eSkpOiAkKHN1YmRpci15bSkgOwogIwogIyBSdWxlIHRvIGNvbXBpbGUgYSBzZXQgb2YgLm8gZmls
ZXMgaW50byBvbmUgLmEgZmlsZSAod2l0aG91dCBzeW1ib2wgdGFibGUpCiAjCi1pZmRlZiBidWls
dGluLXRhcmdldAogCi1xdWlldF9jbWRfYXJfYnVpbHRpbiA9IEFSICAgICAgJEAKLSAgICAgIGNt
ZF9hcl9idWlsdGluID0gcm0gLWYgJEA7ICQoQVIpIHJjU1RQJChLQlVJTERfQVJGTEFHUykgJEAg
JChyZWFsLXByZXJlcXMpCitxdWlldF9jbWRfYXJfbm9fc3ltID0gQVIgICAgICAkQAorICAgICAg
Y21kX2FyX25vX3N5bSA9IHJtIC1mICRAOyAkKEFSKSByY1NUUCQoS0JVSUxEX0FSRkxBR1MpICRA
ICQocmVhbC1wcmVyZXFzKQogCiAkKGJ1aWx0aW4tdGFyZ2V0KTogJChyZWFsLW9iai15KSBGT1JD
RQotCSQoY2FsbCBpZl9jaGFuZ2VkLGFyX2J1aWx0aW4pCisJJChjYWxsIGlmX2NoYW5nZWQsYXJf
bm9fc3ltKQogCiB0YXJnZXRzICs9ICQoYnVpbHRpbi10YXJnZXQpCi1lbmRpZiAjIGJ1aWx0aW4t
dGFyZ2V0CiAKICMKICMgUnVsZSB0byBjcmVhdGUgbW9kdWxlcy5vcmRlciBmaWxlCi0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
