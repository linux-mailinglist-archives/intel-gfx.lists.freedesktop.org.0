Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4B874FB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84ED76ED59;
	Fri,  9 Aug 2019 09:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A73D6E861;
 Fri,  2 Aug 2019 02:21:05 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 19so35149008pfa.4;
 Thu, 01 Aug 2019 19:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=mUzAfHJCqGft+HH1JK5Y1ifB8wvx0Xh7OLNGfdlMFUZOeWNgYyn/xO+hwNv5QauPJ4
 RqmkgyIhTBTr3pAK9L2kqs1MCLkPaUkFwpcCW8XxZKUeHqk8diz+bChYgcWuW5O1QseF
 Fk94Calbh/RQ1gDo7ARHFsvst1PtVjew1u9wh/CVuUbfb3iVRrwo1+/tw4K+uyQDTYQa
 l1x0OUPYbTJifecnFaoSxodipac54jAbHj+3GB0gmWQO5y/ZDk+LEbSj6y+DA3Orj4gI
 Afp1J0vAo3tZHCQdbkcLB+aWmBBW8oxBoUfXlbKkcY5amRTEgGpKsDIhhu4TBtdZ6jrG
 pmKg==
X-Gm-Message-State: APjAAAXKQuL8lIrzU681BypCSJLLC3xhrTc7MFuHrZVa7CdW4zKt873T
 VtWGsi4aKDWEudjrjZ5QAcU=
X-Google-Smtp-Source: APXvYqyVNDRGKP1+FIQlU/b+5yAYmGOv3Rdk0fT5tiuKvQ+opVgMWL9GCqpjN6ICYNfQCU9j4FRWrg==
X-Received: by 2002:a17:90a:338b:: with SMTP id
 n11mr1859934pjb.21.1564712465215; 
 Thu, 01 Aug 2019 19:21:05 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.21.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:21:04 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu,  1 Aug 2019 19:20:05 -0700
Message-Id: <20190802022005.5117-35-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=DBN1w3/7Hxm2aTYhnTNoj1HADN0/qC4HQ/EIZkVxJXA/K2S11Q3/N9TAattYeDs6aQ
 J+nm7tV2AKcpGrK2TkCrU1wyclxrRwBj4vymoXpkg4vkH9XlaJfQ55nzl3mveOP2o9MV
 NUxRk2vipQv8FWXVtFS9aXrUBeQOuTE0Ko4oz4Isj8tPzLI9EqzmjnQsyBDLHQ25vBM5
 q3jhgaW+xd3z7DYehUibJdxR/1EjTpgU+Bek0hJIqh1wGhpzFJhljWoUMm0t5/61KoNk
 q3ATC6nVfWca/Nm/vukTsQm8ST5Kyw83g7ix2hN//xECaTu+OgVyIUA+IQWq3fIPa/3T
 uZLw==
Subject: [Intel-gfx] [PATCH 34/34] fs/binfmt_elf: convert put_page() to
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

RnJvbTogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgoKRm9yIHBhZ2VzIHRoYXQgd2Vy
ZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMKdmlh
IHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0X3Bh
Z2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29udmVy
c2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9kdWNl
IHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpnZXRfZHVtcF9wYWdl
IGNhbGxzIGdldF91c2VyX3BhZ2Ugc28gcHV0X3VzZXJfcGFnZSBtdXN0IGJlIHVzZWQKdG8gbWF0
Y2guCgpTaWduZWQtb2ZmLWJ5OiBJcmEgV2VpbnkgPGlyYS53ZWlueUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KLS0tCiBmcy9iaW5m
bXRfZWxmLmMgICAgICAgfCAyICstCiBmcy9iaW5mbXRfZWxmX2ZkcGljLmMgfCAyICstCiAyIGZp
bGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9mcy9iaW5mbXRfZWxmLmMgYi9mcy9iaW5mbXRfZWxmLmMKaW5kZXggZDRlMTFiMmUwNGY2Li45
MmU0YTVjYTk5ZDggMTAwNjQ0Ci0tLSBhL2ZzL2JpbmZtdF9lbGYuYworKysgYi9mcy9iaW5mbXRf
ZWxmLmMKQEAgLTIzNzcsNyArMjM3Nyw3IEBAIHN0YXRpYyBpbnQgZWxmX2NvcmVfZHVtcChzdHJ1
Y3QgY29yZWR1bXBfcGFyYW1zICpjcHJtKQogCQkJCXZvaWQgKmthZGRyID0ga21hcChwYWdlKTsK
IAkJCQlzdG9wID0gIWR1bXBfZW1pdChjcHJtLCBrYWRkciwgUEFHRV9TSVpFKTsKIAkJCQlrdW5t
YXAocGFnZSk7Ci0JCQkJcHV0X3BhZ2UocGFnZSk7CisJCQkJcHV0X3VzZXJfcGFnZShwYWdlKTsK
IAkJCX0gZWxzZQogCQkJCXN0b3AgPSAhZHVtcF9za2lwKGNwcm0sIFBBR0VfU0laRSk7CiAJCQlp
ZiAoc3RvcCkKZGlmZiAtLWdpdCBhL2ZzL2JpbmZtdF9lbGZfZmRwaWMuYyBiL2ZzL2JpbmZtdF9l
bGZfZmRwaWMuYwppbmRleCBkODZlYmQwZGNjM2QuLjMyMTcyNGIzYmUyMiAxMDA2NDQKLS0tIGEv
ZnMvYmluZm10X2VsZl9mZHBpYy5jCisrKyBiL2ZzL2JpbmZtdF9lbGZfZmRwaWMuYwpAQCAtMTUx
MSw3ICsxNTExLDcgQEAgc3RhdGljIGJvb2wgZWxmX2ZkcGljX2R1bXBfc2VnbWVudHMoc3RydWN0
IGNvcmVkdW1wX3BhcmFtcyAqY3BybSkKIAkJCQl2b2lkICprYWRkciA9IGttYXAocGFnZSk7CiAJ
CQkJcmVzID0gZHVtcF9lbWl0KGNwcm0sIGthZGRyLCBQQUdFX1NJWkUpOwogCQkJCWt1bm1hcChw
YWdlKTsKLQkJCQlwdXRfcGFnZShwYWdlKTsKKwkJCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwogCQkJ
fSBlbHNlIHsKIAkJCQlyZXMgPSBkdW1wX3NraXAoY3BybSwgUEFHRV9TSVpFKTsKIAkJCX0KLS0g
CjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
