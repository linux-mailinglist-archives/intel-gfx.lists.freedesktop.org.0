Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F58296EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A9A6E52F;
	Fri, 23 Oct 2020 12:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BFB6E5BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:56 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t9so1555478wrq.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=13dXuBKsrPtV1DlWwyiIYqTF1cPCadFdp8ckLAWd0AI=;
 b=ZLQYcJfGXFA882t746W/3+RPIsXyZnhi4SwDIyg6MTBPgmo0ug4tuTNhsmPDGRsV1R
 om7kV/lJ7tQL8I335IWN4eoYkgJc5G62sDYmr2kL5A/r0tu/lpbPN15e0H+jst1xf+hU
 NWlcqaPiMhTfjeLoSXdopaVX6OqVUgSNKKf3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=13dXuBKsrPtV1DlWwyiIYqTF1cPCadFdp8ckLAWd0AI=;
 b=Sn65aGHeozx33WSjpvcFjq9pZhQuyzFym1hNdBNK3iAopq/gUxrgnmmlkfdoFVjtw3
 ANW3qa3MOzQSZq4Q6wpVQeQggX+D3qF9rSDKBo93bddxg2H8M2Tl0a5LeVoqMzypMkQd
 DZqw28Co4jqXIWNxd1pPTqkl1bboZMLUWo554s0eNQNeVv0GHk9nc/tjjC2XfNq/k630
 sxmFqjuUUYwhKQN2Ydp/om2FvNku/9u9p0+8tNFske9lbiiZnleR8sqwOFBKImUbFKiQ
 Ms/qTHtc6S4dueKY3JZPs2EcK9z9i9iqZ57Mp2gVjcTQSSBVloZ+I96xXLzqVBSRXChx
 rtZw==
X-Gm-Message-State: AOAM530E3ZxRH/FsBAv5H1sc3B6pZqwGTtcGFKrZotjq5QYPQ65m1swx
 8EUMv1AdgzB+b3NZpySl5UZ8lA==
X-Google-Smtp-Source: ABdhPJyqSAn0aM35YnoVtNUbn1vJJ8l+XxiU6chHGaoO67vyxZzJbEVkyOyc9YZmKmVc8U3bDNN/Yw==
X-Received: by 2002:adf:e685:: with SMTP id r5mr2560251wrm.340.1603455774974; 
 Fri, 23 Oct 2020 05:22:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:40 +0200
Message-Id: <20201023122216.2373294-29-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/65] s390/pci: Remove races against pte updates
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Kees Cook <keescook@chromium.org>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 John Hubbard <jhubbard@nvidia.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2F5IGJhY2sgaXQgd2FzIGEgcmVhc29uYWJsZSBhc3N1bXB0aW9ucyB0aGF0IGlvbWVtIG1hcHBp
bmdzIG5ldmVyCmNoYW5nZSB0aGUgcGZuIHJhbmdlIHRoZXkgcG9pbnQgYXQuIEJ1dCB0aGlzIGhh
cyBjaGFuZ2VkOgoKLSBncHUgZHJpdmVycyBkeW5hbWljYWxseSBtYW5hZ2UgdGhlaXIgbWVtb3J5
IG5vd2FkYXlzLCBpbnZhbGlkYXRpbmcKcHRlcyB3aXRoIHVubWFwX21hcHBpbmdfcmFuZ2Ugd2hl
biBidWZmZXJzIGdldCBtb3ZlZAoKLSBjb250aWd1b3VzIGRtYSBhbGxvY2F0aW9ucyBoYXZlIG1v
dmVkIGZyb20gZGVkaWNhdGVkIGNhcnZldG91dHMgdG8KY21hIHJlZ2lvbnMuIFRoaXMgbWVhbnMg
aWYgd2UgbWlzcyB0aGUgdW5tYXAgdGhlIHBmbiBtaWdodCBjb250YWluCnBhZ2VjYWNoZSBvciBh
bm9uIG1lbW9yeSAod2VsbCBhbnl0aGluZyBhbGxvY2F0ZWQgd2l0aCBHRlBfTU9WRUFCTEUpCgot
IGV2ZW4gL2Rldi9tZW0gbm93IGludmFsaWRhdGVzIG1hcHBpbmdzIHdoZW4gdGhlIGtlcm5lbCBy
ZXF1ZXN0cyB0aGF0CmlvbWVtIHJlZ2lvbiB3aGVuIENPTkZJR19JT19TVFJJQ1RfREVWTUVNIGlz
IHNldCwgc2VlIGNvbW1pdAozMjM0YWM2NjRhODcgKCIvZGV2L21lbTogUmV2b2tlIG1hcHBpbmdz
IHdoZW4gYSBkcml2ZXIgY2xhaW1zIHRoZQpyZWdpb24iKQoKQWNjZXNzaW5nIHBmbnMgb2J0YWlu
ZWQgZnJvbSBwdGVzIHdpdGhvdXQgaG9sZGluZyBhbGwgdGhlIGxvY2tzIGlzCnRoZXJlZm9yZSBu
byBsb25nZXIgYSBnb29kIGlkZWEuIEZpeCB0aGlzLgoKU2luY2UgenBjaV9tZW1jcHlfZnJvbXx0
b2lvIHNlZW1zIHRvIG5vdCBkbyBhbnl0aGluZyBuZWZhcmlvdXMgd2l0aApsb2NrcyB3ZSBqdXN0
IG5lZWQgdG8gb3BlbiBjb2RlIGdldF9wZm4gYW5kIGZvbGxvd19wZm4gYW5kIG1ha2Ugc3VyZQp3
ZSBkcm9wIHRoZSBsb2NrcyBvbmx5IGFmdGVyIHdlJ3JlIGRvbmUuIFRoZSB3cml0ZSBmdW5jdGlv
biBhbHNvIG5lZWRzCnRoZSBjb3B5X2Zyb21fdXNlciBtb3ZlLCBzaW5jZSB3ZSBjYW4ndCB0YWtl
IHVzZXJzcGFjZSBmYXVsdHMgd2hpbGUKaG9sZGluZyB0aGUgbW1hcCBzZW0uCgp2MjogTW92ZSBW
TV9JTyB8IFZNX1BGTk1BUCBjaGVja3MgYXJvdW5kIHNvIHRoZXkga2VlcCByZXR1cm5pbmcgRUlO
VkFMCmxpa2UgYmVmb3JlIChHZXJhcmQpCgp2MzogUG9saXNoIGNvbW1pdCBtZXNzYWdlIChOaWts
YXMpCgpSZXZpZXdlZC1ieTogR2VyYWxkIFNjaGFlZmVyIDxnZXJhbGQuc2NoYWVmZXJAbGludXgu
aWJtLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CkNjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4KQ2M6IERhbiBXaWxsaWFt
cyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgpDYzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJv
bWl1bS5vcmc+CkNjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgpD
YzogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgpDYzogSsOpcsO0bWUgR2xpc3Nl
IDxqZ2xpc3NlQHJlZGhhdC5jb20+CkNjOiBKYW4gS2FyYSA8amFja0BzdXNlLmN6PgpDYzogbGlu
dXgtbW1Aa3ZhY2sub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Q2M6IGxpbnV4LXNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnCkNjOiBOaWtsYXMgU2NobmVsbGUgPHNjaG5lbGxlQGxpbnV4LmlibS5jb20+
CkNjOiBHZXJhbGQgU2NoYWVmZXIgPGdlcmFsZC5zY2hhZWZlckBsaW51eC5pYm0uY29tPgpDYzog
bGludXgtczM5MEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IE5pa2xhcyBTY2huZWxsZSA8c2NobmVsbGVA
bGludXguaWJtLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4KLS0tCiBhcmNoL3MzOTAvcGNpL3BjaV9tbWlvLmMgfCA5OCArKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTcgaW5zZXJ0
aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9zMzkwL3BjaS9wY2lf
bW1pby5jIGIvYXJjaC9zMzkwL3BjaS9wY2lfbW1pby5jCmluZGV4IDQwMWNmNjcwYTI0My4uMWE2
YWRiYzY4ZWU4IDEwMDY0NAotLS0gYS9hcmNoL3MzOTAvcGNpL3BjaV9tbWlvLmMKKysrIGIvYXJj
aC9zMzkwL3BjaS9wY2lfbW1pby5jCkBAIC0xMTksMzMgKzExOSwxNSBAQCBzdGF0aWMgaW5saW5l
IGludCBfX21lbWNweV90b2lvX2ludXNlcih2b2lkIF9faW9tZW0gKmRzdCwKIAlyZXR1cm4gcmM7
CiB9CiAKLXN0YXRpYyBsb25nIGdldF9wZm4odW5zaWduZWQgbG9uZyB1c2VyX2FkZHIsIHVuc2ln
bmVkIGxvbmcgYWNjZXNzLAotCQkgICAgdW5zaWduZWQgbG9uZyAqcGZuKQotewotCXN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqdm1hOwotCWxvbmcgcmV0OwotCi0JbW1hcF9yZWFkX2xvY2soY3VycmVu
dC0+bW0pOwotCXJldCA9IC1FSU5WQUw7Ci0Jdm1hID0gZmluZF92bWEoY3VycmVudC0+bW0sIHVz
ZXJfYWRkcik7Ci0JaWYgKCF2bWEpCi0JCWdvdG8gb3V0OwotCXJldCA9IC1FQUNDRVM7Ci0JaWYg
KCEodm1hLT52bV9mbGFncyAmIGFjY2VzcykpCi0JCWdvdG8gb3V0OwotCXJldCA9IGZvbGxvd19w
Zm4odm1hLCB1c2VyX2FkZHIsIHBmbik7Ci1vdXQ6Ci0JbW1hcF9yZWFkX3VubG9jayhjdXJyZW50
LT5tbSk7Ci0JcmV0dXJuIHJldDsKLX0KLQogU1lTQ0FMTF9ERUZJTkUzKHMzOTBfcGNpX21taW9f
d3JpdGUsIHVuc2lnbmVkIGxvbmcsIG1taW9fYWRkciwKIAkJY29uc3Qgdm9pZCBfX3VzZXIgKiwg
dXNlcl9idWZmZXIsIHNpemVfdCwgbGVuZ3RoKQogewogCXU4IGxvY2FsX2J1Zls2NF07CiAJdm9p
ZCBfX2lvbWVtICppb19hZGRyOwogCXZvaWQgKmJ1ZjsKLQl1bnNpZ25lZCBsb25nIHBmbjsKKwlz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYTsKKwlwdGVfdCAqcHRlcDsKKwlzcGlubG9ja190ICpw
dGw7CiAJbG9uZyByZXQ7CiAKIAlpZiAoIXpwY2lfaXNfZW5hYmxlZCgpKQpAQCAtMTU4LDcgKzE0
MCw3IEBAIFNZU0NBTExfREVGSU5FMyhzMzkwX3BjaV9tbWlvX3dyaXRlLCB1bnNpZ25lZCBsb25n
LCBtbWlvX2FkZHIsCiAJICogV2Ugb25seSBzdXBwb3J0IHdyaXRlIGFjY2VzcyB0byBNSU8gY2Fw
YWJsZSBkZXZpY2VzIGlmIHdlIGFyZSBvbgogCSAqIGEgTUlPIGVuYWJsZWQgc3lzdGVtLiBPdGhl
cndpc2Ugd2Ugd291bGQgaGF2ZSB0byBjaGVjayBmb3IgZXZlcnkKIAkgKiBhZGRyZXNzIGlmIGl0
IGlzIGEgc3BlY2lhbCBaUENJX0FERFIgYW5kIHdvdWxkIGhhdmUgdG8gZG8KLQkgKiBhIGdldF9w
Zm4oKSB3aGljaCB3ZSBkb24ndCBuZWVkIGZvciBNSU8gY2FwYWJsZSBkZXZpY2VzLiAgQ3VycmVu
dGx5CisJICogYSBwZm4gbG9va3VwIHdoaWNoIHdlIGRvbid0IG5lZWQgZm9yIE1JTyBjYXBhYmxl
IGRldmljZXMuICBDdXJyZW50bHkKIAkgKiBJU00gZGV2aWNlcyBhcmUgdGhlIG9ubHkgZGV2aWNl
cyB3aXRob3V0IE1JTyBzdXBwb3J0IGFuZCB0aGVyZSBpcyBubwogCSAqIGtub3duIG5lZWQgZm9y
IGFjY2Vzc2luZyB0aGVzZSBmcm9tIHVzZXJzcGFjZS4KIAkgKi8KQEAgLTE3NiwyMSArMTU4LDM3
IEBAIFNZU0NBTExfREVGSU5FMyhzMzkwX3BjaV9tbWlvX3dyaXRlLCB1bnNpZ25lZCBsb25nLCBt
bWlvX2FkZHIsCiAJfSBlbHNlCiAJCWJ1ZiA9IGxvY2FsX2J1ZjsKIAotCXJldCA9IGdldF9wZm4o
bW1pb19hZGRyLCBWTV9XUklURSwgJnBmbik7CisJcmV0ID0gLUVGQVVMVDsKKwlpZiAoY29weV9m
cm9tX3VzZXIoYnVmLCB1c2VyX2J1ZmZlciwgbGVuZ3RoKSkKKwkJZ290byBvdXRfZnJlZTsKKwor
CW1tYXBfcmVhZF9sb2NrKGN1cnJlbnQtPm1tKTsKKwlyZXQgPSAtRUlOVkFMOworCXZtYSA9IGZp
bmRfdm1hKGN1cnJlbnQtPm1tLCBtbWlvX2FkZHIpOworCWlmICghdm1hKQorCQlnb3RvIG91dF91
bmxvY2tfbW1hcDsKKwlpZiAoISh2bWEtPnZtX2ZsYWdzICYgKFZNX0lPIHwgVk1fUEZOTUFQKSkp
CisJCWdvdG8gb3V0X3VubG9ja19tbWFwOworCXJldCA9IC1FQUNDRVM7CisJaWYgKCEodm1hLT52
bV9mbGFncyAmIFZNX1dSSVRFKSkKKwkJZ290byBvdXRfdW5sb2NrX21tYXA7CisKKwlyZXQgPSBm
b2xsb3dfcHRlX3BtZCh2bWEtPnZtX21tLCBtbWlvX2FkZHIsIE5VTEwsICZwdGVwLCBOVUxMLCAm
cHRsKTsKIAlpZiAocmV0KQotCQlnb3RvIG91dDsKLQlpb19hZGRyID0gKHZvaWQgX19pb21lbSAq
KSgocGZuIDw8IFBBR0VfU0hJRlQpIHwKKwkJZ290byBvdXRfdW5sb2NrX21tYXA7CisKKwlpb19h
ZGRyID0gKHZvaWQgX19pb21lbSAqKSgocHRlX3BmbigqcHRlcCkgPDwgUEFHRV9TSElGVCkgfAog
CQkJKG1taW9fYWRkciAmIH5QQUdFX01BU0spKTsKIAotCXJldCA9IC1FRkFVTFQ7CiAJaWYgKCh1
bnNpZ25lZCBsb25nKSBpb19hZGRyIDwgWlBDSV9JT01BUF9BRERSX0JBU0UpCi0JCWdvdG8gb3V0
OwotCi0JaWYgKGNvcHlfZnJvbV91c2VyKGJ1ZiwgdXNlcl9idWZmZXIsIGxlbmd0aCkpCi0JCWdv
dG8gb3V0OworCQlnb3RvIG91dF91bmxvY2tfcHQ7CiAKIAlyZXQgPSB6cGNpX21lbWNweV90b2lv
KGlvX2FkZHIsIGJ1ZiwgbGVuZ3RoKTsKLW91dDoKK291dF91bmxvY2tfcHQ6CisJcHRlX3VubWFw
X3VubG9jayhwdGVwLCBwdGwpOworb3V0X3VubG9ja19tbWFwOgorCW1tYXBfcmVhZF91bmxvY2so
Y3VycmVudC0+bW0pOworb3V0X2ZyZWU6CiAJaWYgKGJ1ZiAhPSBsb2NhbF9idWYpCiAJCWtmcmVl
KGJ1Zik7CiAJcmV0dXJuIHJldDsKQEAgLTI3NCw3ICsyNzIsOSBAQCBTWVNDQUxMX0RFRklORTMo
czM5MF9wY2lfbW1pb19yZWFkLCB1bnNpZ25lZCBsb25nLCBtbWlvX2FkZHIsCiAJdTggbG9jYWxf
YnVmWzY0XTsKIAl2b2lkIF9faW9tZW0gKmlvX2FkZHI7CiAJdm9pZCAqYnVmOwotCXVuc2lnbmVk
IGxvbmcgcGZuOworCXN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hOworCXB0ZV90ICpwdGVwOwor
CXNwaW5sb2NrX3QgKnB0bDsKIAlsb25nIHJldDsKIAogCWlmICghenBjaV9pc19lbmFibGVkKCkp
CkBAIC0yODcsNyArMjg3LDcgQEAgU1lTQ0FMTF9ERUZJTkUzKHMzOTBfcGNpX21taW9fcmVhZCwg
dW5zaWduZWQgbG9uZywgbW1pb19hZGRyLAogCSAqIFdlIG9ubHkgc3VwcG9ydCByZWFkIGFjY2Vz
cyB0byBNSU8gY2FwYWJsZSBkZXZpY2VzIGlmIHdlIGFyZSBvbgogCSAqIGEgTUlPIGVuYWJsZWQg
c3lzdGVtLiBPdGhlcndpc2Ugd2Ugd291bGQgaGF2ZSB0byBjaGVjayBmb3IgZXZlcnkKIAkgKiBh
ZGRyZXNzIGlmIGl0IGlzIGEgc3BlY2lhbCBaUENJX0FERFIgYW5kIHdvdWxkIGhhdmUgdG8gZG8K
LQkgKiBhIGdldF9wZm4oKSB3aGljaCB3ZSBkb24ndCBuZWVkIGZvciBNSU8gY2FwYWJsZSBkZXZp
Y2VzLiAgQ3VycmVudGx5CisJICogYSBwZm4gbG9va3VwIHdoaWNoIHdlIGRvbid0IG5lZWQgZm9y
IE1JTyBjYXBhYmxlIGRldmljZXMuICBDdXJyZW50bHkKIAkgKiBJU00gZGV2aWNlcyBhcmUgdGhl
IG9ubHkgZGV2aWNlcyB3aXRob3V0IE1JTyBzdXBwb3J0IGFuZCB0aGVyZSBpcyBubwogCSAqIGtu
b3duIG5lZWQgZm9yIGFjY2Vzc2luZyB0aGVzZSBmcm9tIHVzZXJzcGFjZS4KIAkgKi8KQEAgLTMw
NiwyMiArMzA2LDM4IEBAIFNZU0NBTExfREVGSU5FMyhzMzkwX3BjaV9tbWlvX3JlYWQsIHVuc2ln
bmVkIGxvbmcsIG1taW9fYWRkciwKIAkJYnVmID0gbG9jYWxfYnVmOwogCX0KIAotCXJldCA9IGdl
dF9wZm4obW1pb19hZGRyLCBWTV9SRUFELCAmcGZuKTsKKwltbWFwX3JlYWRfbG9jayhjdXJyZW50
LT5tbSk7CisJcmV0ID0gLUVJTlZBTDsKKwl2bWEgPSBmaW5kX3ZtYShjdXJyZW50LT5tbSwgbW1p
b19hZGRyKTsKKwlpZiAoIXZtYSkKKwkJZ290byBvdXRfdW5sb2NrX21tYXA7CisJaWYgKCEodm1h
LT52bV9mbGFncyAmIChWTV9JTyB8IFZNX1BGTk1BUCkpKQorCQlnb3RvIG91dF91bmxvY2tfbW1h
cDsKKwlyZXQgPSAtRUFDQ0VTOworCWlmICghKHZtYS0+dm1fZmxhZ3MgJiBWTV9XUklURSkpCisJ
CWdvdG8gb3V0X3VubG9ja19tbWFwOworCisJcmV0ID0gZm9sbG93X3B0ZV9wbWQodm1hLT52bV9t
bSwgbW1pb19hZGRyLCBOVUxMLCAmcHRlcCwgTlVMTCwgJnB0bCk7CiAJaWYgKHJldCkKLQkJZ290
byBvdXQ7Ci0JaW9fYWRkciA9ICh2b2lkIF9faW9tZW0gKikoKHBmbiA8PCBQQUdFX1NISUZUKSB8
IChtbWlvX2FkZHIgJiB+UEFHRV9NQVNLKSk7CisJCWdvdG8gb3V0X3VubG9ja19tbWFwOworCisJ
aW9fYWRkciA9ICh2b2lkIF9faW9tZW0gKikoKHB0ZV9wZm4oKnB0ZXApIDw8IFBBR0VfU0hJRlQp
IHwKKwkJCShtbWlvX2FkZHIgJiB+UEFHRV9NQVNLKSk7CiAKIAlpZiAoKHVuc2lnbmVkIGxvbmcp
IGlvX2FkZHIgPCBaUENJX0lPTUFQX0FERFJfQkFTRSkgewogCQlyZXQgPSAtRUZBVUxUOwotCQln
b3RvIG91dDsKKwkJZ290byBvdXRfdW5sb2NrX3B0OwogCX0KIAlyZXQgPSB6cGNpX21lbWNweV9m
cm9taW8oYnVmLCBpb19hZGRyLCBsZW5ndGgpOwotCWlmIChyZXQpCi0JCWdvdG8gb3V0OwotCWlm
IChjb3B5X3RvX3VzZXIodXNlcl9idWZmZXIsIGJ1ZiwgbGVuZ3RoKSkKKworb3V0X3VubG9ja19w
dDoKKwlwdGVfdW5tYXBfdW5sb2NrKHB0ZXAsIHB0bCk7CitvdXRfdW5sb2NrX21tYXA6CisJbW1h
cF9yZWFkX3VubG9jayhjdXJyZW50LT5tbSk7CisKKwlpZiAoIXJldCAmJiBjb3B5X3RvX3VzZXIo
dXNlcl9idWZmZXIsIGJ1ZiwgbGVuZ3RoKSkKIAkJcmV0ID0gLUVGQVVMVDsKIAotb3V0OgogCWlm
IChidWYgIT0gbG9jYWxfYnVmKQogCQlrZnJlZShidWYpOwogCXJldHVybiByZXQ7Ci0tIAoyLjI4
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
