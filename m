Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E43875B4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7486EDB5;
	Fri,  9 Aug 2019 09:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B296D89DE5;
 Sun,  4 Aug 2019 22:49:46 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id r7so38601256pfl.3;
 Sun, 04 Aug 2019 15:49:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1X33MY8P1PVcaLkCZcp6PkXiHV9wvPThIXgNE9TFbj4=;
 b=nbvSxbUjZgQVeaEVovpycxA7WHH7fS3qJmRrO9lAoTxbM9zqyCz7WFU4Av5CZ3tevZ
 CHrg/Rz1BJKxVmbAGaYvA2Ql/UgW5lg1rYnDFRQPRsTY/iD+86ZWpPd/cnRD60k2aOXT
 EWhhNHw2Xb+Df63tNhtUdbMK08ACKl2ug+Fo+tEJUa7Xp8W7JkPced5wYzIY7QpVpkua
 /veLdH/zk/DH8XqQrjXxLpL+vEn0XPQc/ajKZzrwj7VfKqMsk39XHJf78S3pF1J9OZa6
 bHgaTxvHsDjH5QANw+/axk9/Fjv9r+5Qt6fsJ4QLu5ewNfkNeZgt7ZAO3J54dFMM+v5y
 vOyQ==
X-Gm-Message-State: APjAAAUWtV9t8xET+0w1iGWGvR9SSZbjCvV5t3eVm7vU1TJXAZyWMp/q
 AycZ3D9eT3cxUj38DqPrh5I=
X-Google-Smtp-Source: APXvYqzQPIYoNRubdZIOtSxTDDzyPgcMaQ5zki3KNapO18w6JwMFrcpCjaVO/4MzoXfe6L31Al4dig==
X-Received: by 2002:a65:6859:: with SMTP id q25mr22221333pgt.181.1564958986332; 
 Sun, 04 Aug 2019 15:49:46 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:45 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Sun,  4 Aug 2019 15:48:58 -0700
Message-Id: <20190804224915.28669-18-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1X33MY8P1PVcaLkCZcp6PkXiHV9wvPThIXgNE9TFbj4=;
 b=L35X2QFh0M4JIQvOmPagjixwdLqggClkiY/ITRED3vd5cYmML5rpnhsQYVeJG55L7X
 lfpM/Rw8+9+KW1xLlbUjjd2pEukAuHL9FPW2brNIFLNAAe+xFNLiBhvXwHgfebwSPh6b
 PQimMsMZnxgRdBC8pyrRMZ9Xs902qjGDWwSRlQpLzHZkXMK6vYaJ7jNHAlwygvXZxKWD
 HRNszvS/yLW3PMoeuHrejzjB7JHf9PJVVvjCC1Gi8OYeSyaj8QqsLJjtyVPXxwKbhU1l
 56SfAsWTx6H5Myy0JvyaDz6KAPklX1grAzJq4JD5PKOSOMwKa+X4MP3JYOJahIqu806a
 4oGw==
Subject: [Intel-gfx] [PATCH v2 17/34] vfio: convert put_page() to
 put_user_page*()
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
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
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

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpOb3RlIHRoYXQg
dGhpcyBlZmZlY3RpdmVseSBjaGFuZ2VzIHRoZSBjb2RlJ3MgYmVoYXZpb3IgaW4KcXBfcmVsZWFz
ZV9wYWdlcygpOiBpdCBub3cgdWx0aW1hdGVseSBjYWxscyBzZXRfcGFnZV9kaXJ0eV9sb2NrKCks
Cmluc3RlYWQgb2Ygc2V0X3BhZ2VfZGlydHkoKS4gVGhpcyBpcyBwcm9iYWJseSBtb3JlIGFjY3Vy
YXRlLgoKQXMgQ2hyaXN0b3BoIEhlbGx3aWcgcHV0IGl0LCAic2V0X3BhZ2VfZGlydHkoKSBpcyBv
bmx5IHNhZmUgaWYgd2UgYXJlCmRlYWxpbmcgd2l0aCBhIGZpbGUgYmFja2VkIHBhZ2Ugd2hlcmUg
d2UgaGF2ZSByZWZlcmVuY2Ugb24gdGhlIGlub2RlIGl0CmhhbmdzIG9mZi4iIFsxXQoKWzFdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAxOTA3MjMxNTM2NDAuR0I3MjBAbHN0LmRlCgpDYzog
QWxleCBXaWxsaWFtc29uIDxhbGV4LndpbGxpYW1zb25AcmVkaGF0LmNvbT4KQ2M6IGt2bUB2Z2Vy
Lmtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEu
Y29tPgotLS0KIGRyaXZlcnMvdmZpby92ZmlvX2lvbW11X3R5cGUxLmMgfCA4ICsrKystLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdmZpby92ZmlvX2lvbW11X3R5cGUxLmMgYi9kcml2ZXJzL3ZmaW8vdmZpb19p
b21tdV90eXBlMS5jCmluZGV4IDA1NDM5MWYzMGZhOC4uNWE1NDYxYTE0Mjk5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jCisrKyBiL2RyaXZlcnMvdmZpby92Zmlv
X2lvbW11X3R5cGUxLmMKQEAgLTMyMCw5ICszMjAsOSBAQCBzdGF0aWMgaW50IHB1dF9wZm4odW5z
aWduZWQgbG9uZyBwZm4sIGludCBwcm90KQogewogCWlmICghaXNfaW52YWxpZF9yZXNlcnZlZF9w
Zm4ocGZuKSkgewogCQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHBmbl90b19wYWdlKHBmbik7Ci0JCWlm
IChwcm90ICYgSU9NTVVfV1JJVEUpCi0JCQlTZXRQYWdlRGlydHkocGFnZSk7Ci0JCXB1dF9wYWdl
KHBhZ2UpOworCQlib29sIGRpcnR5ID0gcHJvdCAmIElPTU1VX1dSSVRFOworCisJCXB1dF91c2Vy
X3BhZ2VzX2RpcnR5X2xvY2soJnBhZ2UsIDEsIGRpcnR5KTsKIAkJcmV0dXJuIDE7CiAJfQogCXJl
dHVybiAwOwpAQCAtMzU2LDcgKzM1Niw3IEBAIHN0YXRpYyBpbnQgdmFkZHJfZ2V0X3BmbihzdHJ1
Y3QgbW1fc3RydWN0ICptbSwgdW5zaWduZWQgbG9uZyB2YWRkciwKIAkJICovCiAJCWlmIChyZXQg
PiAwICYmIHZtYV9pc19mc2RheCh2bWFzWzBdKSkgewogCQkJcmV0ID0gLUVPUE5PVFNVUFA7Ci0J
CQlwdXRfcGFnZShwYWdlWzBdKTsKKwkJCXB1dF91c2VyX3BhZ2UocGFnZVswXSk7CiAJCX0KIAl9
CiAJdXBfcmVhZCgmbW0tPm1tYXBfc2VtKTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
