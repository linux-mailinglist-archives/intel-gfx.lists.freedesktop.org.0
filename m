Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B8287556
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A3E6ED86;
	Fri,  9 Aug 2019 09:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50F389CDE;
 Sun,  4 Aug 2019 22:49:20 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id t132so38659502pgb.9;
 Sun, 04 Aug 2019 15:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AIONVD1ibu9lCnP7gBI5NeGvxxgvVJwLeJRH750Gszo=;
 b=MXwFx1bRryozBe8Om8pTEsN4VLRXQIdmmgcqAUi2AKbpg7CoyG/3nztwisgZUFdNRv
 bJeNItKKZS4swv8BQHdhRnV3ilvgmZxBQSaxi2VGT3G2PD9Ipz3dxr+5gHhCIkdjjCKg
 AlZHr79hPgTQIXU13SSsmet9PBK74p75873h8GSri3dAAam/Jh8NsqO1ZwyYDrShSASZ
 zlNIhDbT/KNPx2niliab41mTC4KjrmaOgDIobIabtKHzDO9YSnsIjh8EDWkEiq3vtboZ
 y45ST6tMGewqTckrYuro/Xe4lRJLE5hw5V37XIHm/9d2eJZo0xsSonxU8qTkCTShlK7C
 l9LA==
X-Gm-Message-State: APjAAAWEL0jtrx3Yz9mDF47d3SFTGU121wjFl3g8wLCkvyGl+pEeir0L
 qf4dQ8tF2NK4RhJ4N9TykVM=
X-Google-Smtp-Source: APXvYqw+Gs8uCFGZ/xGn3M492gK3yhtVQ4yJrqubZlSSb+W+S6ocNyF/MC9tWdBhydO3x2a3gSthgw==
X-Received: by 2002:a62:5c01:: with SMTP id q1mr48066780pfb.53.1564958960521; 
 Sun, 04 Aug 2019 15:49:20 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:19 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Sun,  4 Aug 2019 15:48:42 -0700
Message-Id: <20190804224915.28669-2-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AIONVD1ibu9lCnP7gBI5NeGvxxgvVJwLeJRH750Gszo=;
 b=gJZZQQvmwAPTKnrJBe+ly3fvjfaXUI9ig+EFFukhMT3EgWNu7MIfa2Xzv4wNTIBYye
 NFJ0dtKSbQJ3MvgPOaANox+0PexWsWwun47HNmnaW64hQ1NJK+gdSzFnsU8ifz8NBkIr
 aSa5/5lwJ0gzybFkpRxwlqrkvRElsoPkruabuI7OZLYl9GPATcWTn1GgddkEaQmRPfqv
 Z3Tg2wfua6Z9GfEdNatHRJ4+PcYaht6L9WFhhQ03OkN4K2gxdxDhjCAbZPTWveg0faSy
 fAJxDkAHd9r8mct4Il8/tP2K+Hmjdf++oXjwtZFm13dDXT5ZjA706JV5qknjjglBcxuw
 +vWw==
Subject: [Intel-gfx] [PATCH v2 01/34] mm/gup: add make_dirty arg to
 put_user_pages_dirty_lock()
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKUHJvdmlkZSBhIG1vcmUg
Y2FwYWJsZSB2YXJpYXRpb24gb2YgcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jaygpLAphbmQgZGVs
ZXRlIHB1dF91c2VyX3BhZ2VzX2RpcnR5KCkuIFRoaXMgaXMgYmFzZWQgb24gdGhlCmZvbGxvd2lu
ZzoKCjEuIExvdHMgb2YgY2FsbCBzaXRlcyBiZWNvbWUgc2ltcGxlciBpZiBhIGJvb2wgaXMgcGFz
c2VkCmludG8gcHV0X3VzZXJfcGFnZSooKSwgaW5zdGVhZCBvZiBtYWtpbmcgdGhlIGNhbGwgc2l0
ZQpjaG9vc2Ugd2hpY2ggcHV0X3VzZXJfcGFnZSooKSB2YXJpYW50IHRvIGNhbGwuCgoyLiBDaHJp
c3RvcGggSGVsbHdpZydzIG9ic2VydmF0aW9uIHRoYXQgc2V0X3BhZ2VfZGlydHlfbG9jaygpCmlz
IHVzdWFsbHkgY29ycmVjdCwgYW5kIHNldF9wYWdlX2RpcnR5KCkgaXMgdXN1YWxseSBhCmJ1Zywg
b3IgYXQgbGVhc3QgcXVlc3Rpb25hYmxlLCB3aXRoaW4gYSBwdXRfdXNlcl9wYWdlKigpCmNhbGxp
bmcgY2hhaW4uCgpUaGlzIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgQVBJIGNob2ljZXM6CgogICAg
KiBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKHBhZ2UsIG5wYWdlcywgbWFrZV9kaXJ0eSkKCiAg
ICAqIFRoZXJlIGlzIG5vIHB1dF91c2VyX3BhZ2VzX2RpcnR5KCkuIFlvdSBoYXZlIHRvCiAgICAg
IGhhbmQgY29kZSB0aGF0LCBpbiB0aGUgcmFyZSBjYXNlIHRoYXQgaXQncwogICAgICByZXF1aXJl
ZC4KClJldmlld2VkLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KQ2M6IE1hdHRo
ZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgpDYzogSmFuIEthcmEgPGphY2tAc3VzZS5j
ej4KQ2M6IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4KQ2M6IEphc29uIEd1bnRob3Jw
ZSA8amdnQHppZXBlLmNhPgpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52
aWRpYS5jb20+Ci0tLQogZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbS5jICAgICAgICAgICAg
IHwgICA1ICstCiBkcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS91c2VyX3BhZ2VzLmMgICAgfCAg
IDUgKy0KIGRyaXZlcnMvaW5maW5pYmFuZC9ody9xaWIvcWliX3VzZXJfcGFnZXMuYyB8ICAxMyAr
LS0KIGRyaXZlcnMvaW5maW5pYmFuZC9ody91c25pYy91c25pY191aW9tLmMgICB8ICAgNSArLQog
ZHJpdmVycy9pbmZpbmliYW5kL3N3L3Npdy9zaXdfbWVtLmMgICAgICAgIHwgIDE5ICstLS0KIGlu
Y2x1ZGUvbGludXgvbW0uaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArLQogbW0vZ3Vw
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTE1ICsrKysrKysrKy0tLS0t
LS0tLS0tLQogNyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspLCAxMDYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbS5jIGIvZHJpdmVy
cy9pbmZpbmliYW5kL2NvcmUvdW1lbS5jCmluZGV4IDA4ZGE4NDBlZDdlZS4uOTY1Y2Y5ZGVhNzFh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtLmMKKysrIGIvZHJpdmVy
cy9pbmZpbmliYW5kL2NvcmUvdW1lbS5jCkBAIC01NCwxMCArNTQsNyBAQCBzdGF0aWMgdm9pZCBf
X2liX3VtZW1fcmVsZWFzZShzdHJ1Y3QgaWJfZGV2aWNlICpkZXYsIHN0cnVjdCBpYl91bWVtICp1
bWVtLCBpbnQgZAogCiAJZm9yX2VhY2hfc2dfcGFnZSh1bWVtLT5zZ19oZWFkLnNnbCwgJnNnX2l0
ZXIsIHVtZW0tPnNnX25lbnRzLCAwKSB7CiAJCXBhZ2UgPSBzZ19wYWdlX2l0ZXJfcGFnZSgmc2df
aXRlcik7Ci0JCWlmICh1bWVtLT53cml0YWJsZSAmJiBkaXJ0eSkKLQkJCXB1dF91c2VyX3BhZ2Vz
X2RpcnR5X2xvY2soJnBhZ2UsIDEpOwotCQllbHNlCi0JCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwor
CQlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCZwYWdlLCAxLCB1bWVtLT53cml0YWJsZSAmJiBk
aXJ0eSk7CiAJfQogCiAJc2dfZnJlZV90YWJsZSgmdW1lbS0+c2dfaGVhZCk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS91c2VyX3BhZ2VzLmMgYi9kcml2ZXJzL2luZmlu
aWJhbmQvaHcvaGZpMS91c2VyX3BhZ2VzLmMKaW5kZXggYjg5YTliOWFlZjdhLi40NjlhY2I5NjFm
YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9ody9oZmkxL3VzZXJfcGFnZXMuYwor
KysgYi9kcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS91c2VyX3BhZ2VzLmMKQEAgLTExOCwxMCAr
MTE4LDcgQEAgaW50IGhmaTFfYWNxdWlyZV91c2VyX3BhZ2VzKHN0cnVjdCBtbV9zdHJ1Y3QgKm1t
LCB1bnNpZ25lZCBsb25nIHZhZGRyLCBzaXplX3QgbnAKIHZvaWQgaGZpMV9yZWxlYXNlX3VzZXJf
cGFnZXMoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHN0cnVjdCBwYWdlICoqcCwKIAkJCSAgICAgc2l6
ZV90IG5wYWdlcywgYm9vbCBkaXJ0eSkKIHsKLQlpZiAoZGlydHkpCi0JCXB1dF91c2VyX3BhZ2Vz
X2RpcnR5X2xvY2socCwgbnBhZ2VzKTsKLQllbHNlCi0JCXB1dF91c2VyX3BhZ2VzKHAsIG5wYWdl
cyk7CisJcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jayhwLCBucGFnZXMsIGRpcnR5KTsKIAogCWlm
IChtbSkgeyAvKiBkdXJpbmcgY2xvc2UgYWZ0ZXIgc2lnbmFsLCBtbSBjYW4gYmUgTlVMTCAqLwog
CQlhdG9taWM2NF9zdWIobnBhZ2VzLCAmbW0tPnBpbm5lZF92bSk7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2luZmluaWJhbmQvaHcvcWliL3FpYl91c2VyX3BhZ2VzLmMgYi9kcml2ZXJzL2luZmluaWJh
bmQvaHcvcWliL3FpYl91c2VyX3BhZ2VzLmMKaW5kZXggYmZiZmJiN2UwZmY0Li4yNmMxZmI4ZDQ1
Y2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9ody9xaWIvcWliX3VzZXJfcGFnZXMu
YworKysgYi9kcml2ZXJzL2luZmluaWJhbmQvaHcvcWliL3FpYl91c2VyX3BhZ2VzLmMKQEAgLTM3
LDE1ICszNyw2IEBACiAKICNpbmNsdWRlICJxaWIuaCIKIAotc3RhdGljIHZvaWQgX19xaWJfcmVs
ZWFzZV91c2VyX3BhZ2VzKHN0cnVjdCBwYWdlICoqcCwgc2l6ZV90IG51bV9wYWdlcywKLQkJCQkg
ICAgIGludCBkaXJ0eSkKLXsKLQlpZiAoZGlydHkpCi0JCXB1dF91c2VyX3BhZ2VzX2RpcnR5X2xv
Y2socCwgbnVtX3BhZ2VzKTsKLQllbHNlCi0JCXB1dF91c2VyX3BhZ2VzKHAsIG51bV9wYWdlcyk7
Ci19Ci0KIC8qKgogICogcWliX21hcF9wYWdlIC0gYSBzYWZldHkgd3JhcHBlciBhcm91bmQgcGNp
X21hcF9wYWdlKCkKICAqCkBAIC0xMjQsNyArMTE1LDcgQEAgaW50IHFpYl9nZXRfdXNlcl9wYWdl
cyh1bnNpZ25lZCBsb25nIHN0YXJ0X3BhZ2UsIHNpemVfdCBudW1fcGFnZXMsCiAKIAlyZXR1cm4g
MDsKIGJhaWxfcmVsZWFzZToKLQlfX3FpYl9yZWxlYXNlX3VzZXJfcGFnZXMocCwgZ290LCAwKTsK
KwlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKHAsIGdvdCwgZmFsc2UpOwogYmFpbDoKIAlhdG9t
aWM2NF9zdWIobnVtX3BhZ2VzLCAmY3VycmVudC0+bW0tPnBpbm5lZF92bSk7CiAJcmV0dXJuIHJl
dDsKQEAgLTEzMiw3ICsxMjMsNyBAQCBpbnQgcWliX2dldF91c2VyX3BhZ2VzKHVuc2lnbmVkIGxv
bmcgc3RhcnRfcGFnZSwgc2l6ZV90IG51bV9wYWdlcywKIAogdm9pZCBxaWJfcmVsZWFzZV91c2Vy
X3BhZ2VzKHN0cnVjdCBwYWdlICoqcCwgc2l6ZV90IG51bV9wYWdlcykKIHsKLQlfX3FpYl9yZWxl
YXNlX3VzZXJfcGFnZXMocCwgbnVtX3BhZ2VzLCAxKTsKKwlwdXRfdXNlcl9wYWdlc19kaXJ0eV9s
b2NrKHAsIG51bV9wYWdlcywgdHJ1ZSk7CiAKIAkvKiBkdXJpbmcgY2xvc2UgYWZ0ZXIgc2lnbmFs
LCBtbSBjYW4gYmUgTlVMTCAqLwogCWlmIChjdXJyZW50LT5tbSkKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaW5maW5pYmFuZC9ody91c25pYy91c25pY191aW9tLmMgYi9kcml2ZXJzL2luZmluaWJhbmQv
aHcvdXNuaWMvdXNuaWNfdWlvbS5jCmluZGV4IDBiMDIzN2Q0MTYxMy4uNjJlNmZmYTlhZDc4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvdXNuaWMvdXNuaWNfdWlvbS5jCisrKyBi
L2RyaXZlcnMvaW5maW5pYmFuZC9ody91c25pYy91c25pY191aW9tLmMKQEAgLTc1LDEwICs3NSw3
IEBAIHN0YXRpYyB2b2lkIHVzbmljX3Vpb21fcHV0X3BhZ2VzKHN0cnVjdCBsaXN0X2hlYWQgKmNo
dW5rX2xpc3QsIGludCBkaXJ0eSkKIAkJZm9yX2VhY2hfc2coY2h1bmstPnBhZ2VfbGlzdCwgc2cs
IGNodW5rLT5uZW50cywgaSkgewogCQkJcGFnZSA9IHNnX3BhZ2Uoc2cpOwogCQkJcGEgPSBzZ19w
aHlzKHNnKTsKLQkJCWlmIChkaXJ0eSkKLQkJCQlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCZw
YWdlLCAxKTsKLQkJCWVsc2UKLQkJCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOworCQkJcHV0X3VzZXJf
cGFnZXNfZGlydHlfbG9jaygmcGFnZSwgMSwgZGlydHkpOwogCQkJdXNuaWNfZGJnKCJwYTogJXBh
XG4iLCAmcGEpOwogCQl9CiAJCWtmcmVlKGNodW5rKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5m
aW5pYmFuZC9zdy9zaXcvc2l3X21lbS5jIGIvZHJpdmVycy9pbmZpbmliYW5kL3N3L3Npdy9zaXdf
bWVtLmMKaW5kZXggNjcxNzFjODJiMGM0Li4xZTE5Nzc1M2JmMmYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaW5maW5pYmFuZC9zdy9zaXcvc2l3X21lbS5jCisrKyBiL2RyaXZlcnMvaW5maW5pYmFuZC9z
dy9zaXcvc2l3X21lbS5jCkBAIC02MCwyMCArNjAsNiBAQCBzdHJ1Y3Qgc2l3X21lbSAqc2l3X21l
bV9pZDJvYmooc3RydWN0IHNpd19kZXZpY2UgKnNkZXYsIGludCBzdGFnX2luZGV4KQogCXJldHVy
biBOVUxMOwogfQogCi1zdGF0aWMgdm9pZCBzaXdfZnJlZV9wbGlzdChzdHJ1Y3Qgc2l3X3BhZ2Vf
Y2h1bmsgKmNodW5rLCBpbnQgbnVtX3BhZ2VzLAotCQkJICAgYm9vbCBkaXJ0eSkKLXsKLQlzdHJ1
Y3QgcGFnZSAqKnAgPSBjaHVuay0+cGxpc3Q7Ci0KLQl3aGlsZSAobnVtX3BhZ2VzLS0pIHsKLQkJ
aWYgKCFQYWdlRGlydHkoKnApICYmIGRpcnR5KQotCQkJcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9j
ayhwLCAxKTsKLQkJZWxzZQotCQkJcHV0X3VzZXJfcGFnZSgqcCk7Ci0JCXArKzsKLQl9Ci19Ci0K
IHZvaWQgc2l3X3VtZW1fcmVsZWFzZShzdHJ1Y3Qgc2l3X3VtZW0gKnVtZW0sIGJvb2wgZGlydHkp
CiB7CiAJc3RydWN0IG1tX3N0cnVjdCAqbW1fcyA9IHVtZW0tPm93bmluZ19tbTsKQEAgLTgyLDgg
KzY4LDkgQEAgdm9pZCBzaXdfdW1lbV9yZWxlYXNlKHN0cnVjdCBzaXdfdW1lbSAqdW1lbSwgYm9v
bCBkaXJ0eSkKIAlmb3IgKGkgPSAwOyBudW1fcGFnZXM7IGkrKykgewogCQlpbnQgdG9fZnJlZSA9
IG1pbl90KGludCwgUEFHRVNfUEVSX0NIVU5LLCBudW1fcGFnZXMpOwogCi0JCXNpd19mcmVlX3Bs
aXN0KCZ1bWVtLT5wYWdlX2NodW5rW2ldLCB0b19mcmVlLAotCQkJICAgICAgIHVtZW0tPndyaXRh
YmxlICYmIGRpcnR5KTsKKwkJcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jayh1bWVtLT5wYWdlX2No
dW5rW2ldLnBsaXN0LAorCQkJCQkgIHRvX2ZyZWUsCisJCQkJCSAgdW1lbS0+d3JpdGFibGUgJiYg
ZGlydHkpOwogCQlrZnJlZSh1bWVtLT5wYWdlX2NodW5rW2ldLnBsaXN0KTsKIAkJbnVtX3BhZ2Vz
IC09IHRvX2ZyZWU7CiAJfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbS5oIGIvaW5jbHVk
ZS9saW51eC9tbS5oCmluZGV4IDAzMzRjYTk3YzU4NC4uOTc1OWI2YTI0NDIwIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L21tLmgKKysrIGIvaW5jbHVkZS9saW51eC9tbS5oCkBAIC0xMDU3LDgg
KzEwNTcsOSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgcHV0X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZSAq
cGFnZSkKIAlwdXRfcGFnZShwYWdlKTsKIH0KIAotdm9pZCBwdXRfdXNlcl9wYWdlc19kaXJ0eShz
dHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBsb25nIG5wYWdlcyk7Ci12b2lkIHB1dF91c2Vy
X3BhZ2VzX2RpcnR5X2xvY2soc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgbG9uZyBucGFn
ZXMpOwordm9pZCBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKHN0cnVjdCBwYWdlICoqcGFnZXMs
IHVuc2lnbmVkIGxvbmcgbnBhZ2VzLAorCQkJICAgICAgIGJvb2wgbWFrZV9kaXJ0eSk7CisKIHZv
aWQgcHV0X3VzZXJfcGFnZXMoc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgbG9uZyBucGFn
ZXMpOwogCiAjaWYgZGVmaW5lZChDT05GSUdfU1BBUlNFTUVNKSAmJiAhZGVmaW5lZChDT05GSUdf
U1BBUlNFTUVNX1ZNRU1NQVApCmRpZmYgLS1naXQgYS9tbS9ndXAuYyBiL21tL2d1cC5jCmluZGV4
IDk4ZjEzYWIzN2JhYy4uN2ZlZmQ3YWIwMmM0IDEwMDY0NAotLS0gYS9tbS9ndXAuYworKysgYi9t
bS9ndXAuYwpAQCAtMjksODUgKzI5LDcwIEBAIHN0cnVjdCBmb2xsb3dfcGFnZV9jb250ZXh0IHsK
IAl1bnNpZ25lZCBpbnQgcGFnZV9tYXNrOwogfTsKIAotdHlwZWRlZiBpbnQgKCpzZXRfZGlydHlf
ZnVuY190KShzdHJ1Y3QgcGFnZSAqcGFnZSk7Ci0KLXN0YXRpYyB2b2lkIF9fcHV0X3VzZXJfcGFn
ZXNfZGlydHkoc3RydWN0IHBhZ2UgKipwYWdlcywKLQkJCQkgICB1bnNpZ25lZCBsb25nIG5wYWdl
cywKLQkJCQkgICBzZXRfZGlydHlfZnVuY190IHNkZikKLXsKLQl1bnNpZ25lZCBsb25nIGluZGV4
OwotCi0JZm9yIChpbmRleCA9IDA7IGluZGV4IDwgbnBhZ2VzOyBpbmRleCsrKSB7Ci0JCXN0cnVj
dCBwYWdlICpwYWdlID0gY29tcG91bmRfaGVhZChwYWdlc1tpbmRleF0pOwotCi0JCS8qCi0JCSAq
IENoZWNraW5nIFBhZ2VEaXJ0eSBhdCB0aGlzIHBvaW50IG1heSByYWNlIHdpdGgKLQkJICogY2xl
YXJfcGFnZV9kaXJ0eV9mb3JfaW8oKSwgYnV0IHRoYXQncyBPSy4gVHdvIGtleSBjYXNlczoKLQkJ
ICoKLQkJICogMSkgVGhpcyBjb2RlIHNlZXMgdGhlIHBhZ2UgYXMgYWxyZWFkeSBkaXJ0eSwgc28g
aXQgc2tpcHMKLQkJICogdGhlIGNhbGwgdG8gc2RmKCkuIFRoYXQgY291bGQgaGFwcGVuIGJlY2F1
c2UKLQkJICogY2xlYXJfcGFnZV9kaXJ0eV9mb3JfaW8oKSBjYWxsZWQgcGFnZV9ta2NsZWFuKCks
Ci0JCSAqIGZvbGxvd2VkIGJ5IHNldF9wYWdlX2RpcnR5KCkuIEhvd2V2ZXIsIG5vdyB0aGUgcGFn
ZSBpcwotCQkgKiBnb2luZyB0byBnZXQgd3JpdHRlbiBiYWNrLCB3aGljaCBtZWV0cyB0aGUgb3Jp
Z2luYWwKLQkJICogaW50ZW50aW9uIG9mIHNldHRpbmcgaXQgZGlydHksIHNvIGFsbCBpcyB3ZWxs
OgotCQkgKiBjbGVhcl9wYWdlX2RpcnR5X2Zvcl9pbygpIGdvZXMgb24gdG8gY2FsbAotCQkgKiBU
ZXN0Q2xlYXJQYWdlRGlydHkoKSwgYW5kIHdyaXRlIHRoZSBwYWdlIGJhY2suCi0JCSAqCi0JCSAq
IDIpIFRoaXMgY29kZSBzZWVzIHRoZSBwYWdlIGFzIGNsZWFuLCBzbyBpdCBjYWxscyBzZGYoKS4K
LQkJICogVGhlIHBhZ2Ugc3RheXMgZGlydHksIGRlc3BpdGUgYmVpbmcgd3JpdHRlbiBiYWNrLCBz
byBpdAotCQkgKiBnZXRzIHdyaXR0ZW4gYmFjayBhZ2FpbiBpbiB0aGUgbmV4dCB3cml0ZWJhY2sg
Y3ljbGUuCi0JCSAqIFRoaXMgaXMgaGFybWxlc3MuCi0JCSAqLwotCQlpZiAoIVBhZ2VEaXJ0eShw
YWdlKSkKLQkJCXNkZihwYWdlKTsKLQotCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwotCX0KLX0KLQog
LyoqCi0gKiBwdXRfdXNlcl9wYWdlc19kaXJ0eSgpIC0gcmVsZWFzZSBhbmQgZGlydHkgYW4gYXJy
YXkgb2YgZ3VwLXBpbm5lZCBwYWdlcwotICogQHBhZ2VzOiAgYXJyYXkgb2YgcGFnZXMgdG8gYmUg
bWFya2VkIGRpcnR5IGFuZCByZWxlYXNlZC4KKyAqIHB1dF91c2VyX3BhZ2VzX2RpcnR5X2xvY2so
KSAtIHJlbGVhc2UgYW5kIG9wdGlvbmFsbHkgZGlydHkgZ3VwLXBpbm5lZCBwYWdlcworICogQHBh
Z2VzOiAgYXJyYXkgb2YgcGFnZXMgdG8gYmUgbWF5YmUgbWFya2VkIGRpcnR5LCBhbmQgZGVmaW5p
dGVseSByZWxlYXNlZC4KICAqIEBucGFnZXM6IG51bWJlciBvZiBwYWdlcyBpbiB0aGUgQHBhZ2Vz
IGFycmF5LgorICogQG1ha2VfZGlydHk6IHdoZXRoZXIgdG8gbWFyayB0aGUgcGFnZXMgZGlydHkK
ICAqCiAgKiAiZ3VwLXBpbm5lZCBwYWdlIiByZWZlcnMgdG8gYSBwYWdlIHRoYXQgaGFzIGhhZCBv
bmUgb2YgdGhlIGdldF91c2VyX3BhZ2VzKCkKICAqIHZhcmlhbnRzIGNhbGxlZCBvbiB0aGF0IHBh
Z2UuCiAgKgogICogRm9yIGVhY2ggcGFnZSBpbiB0aGUgQHBhZ2VzIGFycmF5LCBtYWtlIHRoYXQg
cGFnZSAob3IgaXRzIGhlYWQgcGFnZSwgaWYgYQotICogY29tcG91bmQgcGFnZSkgZGlydHksIGlm
IGl0IHdhcyBwcmV2aW91c2x5IGxpc3RlZCBhcyBjbGVhbi4gVGhlbiwgcmVsZWFzZQotICogdGhl
IHBhZ2UgdXNpbmcgcHV0X3VzZXJfcGFnZSgpLgorICogY29tcG91bmQgcGFnZSkgZGlydHksIGlm
IEBtYWtlX2RpcnR5IGlzIHRydWUsIGFuZCBpZiB0aGUgcGFnZSB3YXMgcHJldmlvdXNseQorICog
bGlzdGVkIGFzIGNsZWFuLiBJbiBhbnkgY2FzZSwgcmVsZWFzZXMgYWxsIHBhZ2VzIHVzaW5nIHB1
dF91c2VyX3BhZ2UoKSwKKyAqIHBvc3NpYmx5IHZpYSBwdXRfdXNlcl9wYWdlcygpLCBmb3IgdGhl
IG5vbi1kaXJ0eSBjYXNlLgogICoKICAqIFBsZWFzZSBzZWUgdGhlIHB1dF91c2VyX3BhZ2UoKSBk
b2N1bWVudGF0aW9uIGZvciBkZXRhaWxzLgogICoKLSAqIHNldF9wYWdlX2RpcnR5KCksIHdoaWNo
IGRvZXMgbm90IGxvY2sgdGhlIHBhZ2UsIGlzIHVzZWQgaGVyZS4KLSAqIFRoZXJlZm9yZSwgaXQg
aXMgdGhlIGNhbGxlcidzIHJlc3BvbnNpYmlsaXR5IHRvIGVuc3VyZSB0aGF0IHRoaXMgaXMKLSAq
IHNhZmUuIElmIG5vdCwgdGhlbiBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkgc2hvdWxkIGJl
IGNhbGxlZCBpbnN0ZWFkLgorICogc2V0X3BhZ2VfZGlydHlfbG9jaygpIGlzIHVzZWQgaW50ZXJu
YWxseS4gSWYgaW5zdGVhZCwgc2V0X3BhZ2VfZGlydHkoKSBpcworICogcmVxdWlyZWQsIHRoZW4g
dGhlIGNhbGxlciBzaG91bGQgYSkgdmVyaWZ5IHRoYXQgdGhpcyBpcyByZWFsbHkgY29ycmVjdCwK
KyAqIGJlY2F1c2UgX2xvY2soKSBpcyB1c3VhbGx5IHJlcXVpcmVkLCBhbmQgYikgaGFuZCBjb2Rl
IGl0OgorICogc2V0X3BhZ2VfZGlydHlfbG9jaygpLCBwdXRfdXNlcl9wYWdlKCkuCiAgKgogICov
Ci12b2lkIHB1dF91c2VyX3BhZ2VzX2RpcnR5KHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2lnbmVk
IGxvbmcgbnBhZ2VzKQordm9pZCBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKHN0cnVjdCBwYWdl
ICoqcGFnZXMsIHVuc2lnbmVkIGxvbmcgbnBhZ2VzLAorCQkJICAgICAgIGJvb2wgbWFrZV9kaXJ0
eSkKIHsKLQlfX3B1dF91c2VyX3BhZ2VzX2RpcnR5KHBhZ2VzLCBucGFnZXMsIHNldF9wYWdlX2Rp
cnR5KTsKLX0KLUVYUE9SVF9TWU1CT0wocHV0X3VzZXJfcGFnZXNfZGlydHkpOworCXVuc2lnbmVk
IGxvbmcgaW5kZXg7CiAKLS8qKgotICogcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jaygpIC0gcmVs
ZWFzZSBhbmQgZGlydHkgYW4gYXJyYXkgb2YgZ3VwLXBpbm5lZCBwYWdlcwotICogQHBhZ2VzOiAg
YXJyYXkgb2YgcGFnZXMgdG8gYmUgbWFya2VkIGRpcnR5IGFuZCByZWxlYXNlZC4KLSAqIEBucGFn
ZXM6IG51bWJlciBvZiBwYWdlcyBpbiB0aGUgQHBhZ2VzIGFycmF5LgotICoKLSAqIEZvciBlYWNo
IHBhZ2UgaW4gdGhlIEBwYWdlcyBhcnJheSwgbWFrZSB0aGF0IHBhZ2UgKG9yIGl0cyBoZWFkIHBh
Z2UsIGlmIGEKLSAqIGNvbXBvdW5kIHBhZ2UpIGRpcnR5LCBpZiBpdCB3YXMgcHJldmlvdXNseSBs
aXN0ZWQgYXMgY2xlYW4uIFRoZW4sIHJlbGVhc2UKLSAqIHRoZSBwYWdlIHVzaW5nIHB1dF91c2Vy
X3BhZ2UoKS4KLSAqCi0gKiBQbGVhc2Ugc2VlIHRoZSBwdXRfdXNlcl9wYWdlKCkgZG9jdW1lbnRh
dGlvbiBmb3IgZGV0YWlscy4KLSAqCi0gKiBUaGlzIGlzIGp1c3QgbGlrZSBwdXRfdXNlcl9wYWdl
c19kaXJ0eSgpLCBleGNlcHQgdGhhdCBpdCBpbnZva2VzCi0gKiBzZXRfcGFnZV9kaXJ0eV9sb2Nr
KCksIGluc3RlYWQgb2Ygc2V0X3BhZ2VfZGlydHkoKS4KLSAqCi0gKi8KLXZvaWQgcHV0X3VzZXJf
cGFnZXNfZGlydHlfbG9jayhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBsb25nIG5wYWdl
cykKLXsKLQlfX3B1dF91c2VyX3BhZ2VzX2RpcnR5KHBhZ2VzLCBucGFnZXMsIHNldF9wYWdlX2Rp
cnR5X2xvY2spOworCS8qCisJICogVE9ETzogdGhpcyBjYW4gYmUgb3B0aW1pemVkIGZvciBodWdl
IHBhZ2VzOiBpZiBhIHNlcmllcyBvZiBwYWdlcyBpcworCSAqIHBoeXNpY2FsbHkgY29udGlndW91
cyBhbmQgcGFydCBvZiB0aGUgc2FtZSBjb21wb3VuZCBwYWdlLCB0aGVuIGEKKwkgKiBzaW5nbGUg
b3BlcmF0aW9uIHRvIHRoZSBoZWFkIHBhZ2Ugc2hvdWxkIHN1ZmZpY2UuCisJICovCisKKwlpZiAo
IW1ha2VfZGlydHkpIHsKKwkJcHV0X3VzZXJfcGFnZXMocGFnZXMsIG5wYWdlcyk7CisJCXJldHVy
bjsKKwl9CisKKwlmb3IgKGluZGV4ID0gMDsgaW5kZXggPCBucGFnZXM7IGluZGV4KyspIHsKKwkJ
c3RydWN0IHBhZ2UgKnBhZ2UgPSBjb21wb3VuZF9oZWFkKHBhZ2VzW2luZGV4XSk7CisJCS8qCisJ
CSAqIENoZWNraW5nIFBhZ2VEaXJ0eSBhdCB0aGlzIHBvaW50IG1heSByYWNlIHdpdGgKKwkJICog
Y2xlYXJfcGFnZV9kaXJ0eV9mb3JfaW8oKSwgYnV0IHRoYXQncyBPSy4gVHdvIGtleQorCQkgKiBj
YXNlczoKKwkJICoKKwkJICogMSkgVGhpcyBjb2RlIHNlZXMgdGhlIHBhZ2UgYXMgYWxyZWFkeSBk
aXJ0eSwgc28gaXQKKwkJICogc2tpcHMgdGhlIGNhbGwgdG8gc2V0X3BhZ2VfZGlydHkoKS4gVGhh
dCBjb3VsZCBoYXBwZW4KKwkJICogYmVjYXVzZSBjbGVhcl9wYWdlX2RpcnR5X2Zvcl9pbygpIGNh
bGxlZAorCQkgKiBwYWdlX21rY2xlYW4oKSwgZm9sbG93ZWQgYnkgc2V0X3BhZ2VfZGlydHkoKS4K
KwkJICogSG93ZXZlciwgbm93IHRoZSBwYWdlIGlzIGdvaW5nIHRvIGdldCB3cml0dGVuIGJhY2ss
CisJCSAqIHdoaWNoIG1lZXRzIHRoZSBvcmlnaW5hbCBpbnRlbnRpb24gb2Ygc2V0dGluZyBpdAor
CQkgKiBkaXJ0eSwgc28gYWxsIGlzIHdlbGw6IGNsZWFyX3BhZ2VfZGlydHlfZm9yX2lvKCkgZ29l
cworCQkgKiBvbiB0byBjYWxsIFRlc3RDbGVhclBhZ2VEaXJ0eSgpLCBhbmQgd3JpdGUgdGhlIHBh
Z2UKKwkJICogYmFjay4KKwkJICoKKwkJICogMikgVGhpcyBjb2RlIHNlZXMgdGhlIHBhZ2UgYXMg
Y2xlYW4sIHNvIGl0IGNhbGxzCisJCSAqIHNldF9wYWdlX2RpcnR5KCkuIFRoZSBwYWdlIHN0YXlz
IGRpcnR5LCBkZXNwaXRlIGJlaW5nCisJCSAqIHdyaXR0ZW4gYmFjaywgc28gaXQgZ2V0cyB3cml0
dGVuIGJhY2sgYWdhaW4gaW4gdGhlCisJCSAqIG5leHQgd3JpdGViYWNrIGN5Y2xlLiBUaGlzIGlz
IGhhcm1sZXNzLgorCQkgKi8KKwkJaWYgKCFQYWdlRGlydHkocGFnZSkpCisJCQlzZXRfcGFnZV9k
aXJ0eV9sb2NrKHBhZ2UpOworCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOworCX0KIH0KIEVYUE9SVF9T
WU1CT0wocHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jayk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
