Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B5324331B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 06:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3A16E198;
	Thu, 13 Aug 2020 04:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D6E6E198
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 04:07:41 +0000 (UTC)
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1k64Wh-0006w5-TZ
 for intel-gfx@lists.freedesktop.org; Thu, 13 Aug 2020 04:07:40 +0000
Received: by mail-pl1-f197.google.com with SMTP id f7so3108320plj.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 21:07:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=mEHwsfmkTZJWIzaKF8yFqaX/0DquB6n/mWzEiW5khM4=;
 b=KzwtC51yNtUSQzaYyXyU4s/Cp1kCOwPlYTPHXq77Q5Bb481hFge0BHXVLxwWXgfCvP
 k2HbcqRfLaiH+ah+EozuMxi9ow7a427QtDNFQUvQ0aRmxupfXoqurD/hZRU2NiUWSEuz
 fmvP82SuWuZ1Nee0zfS9sw9S8DUvlvUxnmwKdZKAkMObV+eTJ49If0S7gj4woNDuA6VU
 NGYOMWPiIkzQguOy1maB9BS7frckkfhNVxg+Ml0O47VJPV9TLqDiYRuw2NHbRPu/dqgZ
 0a5TSra4/Wh7GN0oP4CjxpNWt290HpTSLL0meapRGgNKWaDhrv13p2DhSDHENt/V45r8
 RcSQ==
X-Gm-Message-State: AOAM532Bg8tdgL4SaDWiqNYTQ1MC51Er3JtTFYBSWCeA9b/FUtQ56iIG
 0MED3bcoG1xl0taJ69Zlb+JhZtFCOqjhVVNbRXNUqM26CRqoROjTaWAxVBHeAzLffCpDEhkoB/0
 uac9W+ws0A3NjJf8CmsiHHFyBk4cl5/Y0QaOPKlb6DIW98Q==
X-Received: by 2002:a65:5aca:: with SMTP id d10mr2115932pgt.247.1597291658064; 
 Wed, 12 Aug 2020 21:07:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1u+kF44TT4iqFhGW2wajqSTXBrBvqo/Uqr5cMsbGcDoBoXCRl70FkM60+O4SVrCsKxnNXxA==
X-Received: by 2002:a65:5aca:: with SMTP id d10mr2115915pgt.247.1597291657609; 
 Wed, 12 Aug 2020 21:07:37 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id bj18sm3475675pjb.5.2020.08.12.21.07.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Aug 2020 21:07:37 -0700 (PDT)
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Message-Id: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
Date: Thu, 13 Aug 2020 12:07:34 +0800
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, arthur.j.runyan@intel.com
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: [Intel-gfx] [Regression] "drm/i915: Implement display w/a #1143"
 breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpUaGVyZSdzIGEgcmVncmVzc2lvbiByZXBvcnRlZCB0aGF0IEhETUkgb3V0cHV0IHN0b3Bz
IHdvcmtpbmcgYWZ0ZXIgb3MgdXBncmFkZToKaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvYnVn
cy8xODcxNzIxCgpIZXJlJ3MgdGhlIGJpc2VjdCByZXN1bHQ6CjA1MTljMTAyZjUyODU0NzZkNzg2
OGEzODdiZGI2YzU4Mzg1ZTQwNzQgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQKY29tbWl0IDA1MTlj
MTAyZjUyODU0NzZkNzg2OGEzODdiZGI2YzU4Mzg1ZTQwNzQKQXV0aG9yOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpEYXRlOiAgIE1vbiBKYW4gMjIgMTk6
NDE6MzEgMjAxOCArMDIwMAoKICAgIGRybS9pOTE1OiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzEx
NDMKCiAgICBBcHBhcmVudGx5IFNLTC9LQkwvQ0ZMIG5lZWQgc29tZSBtYW51YWwgaGVscCB0byBn
ZXQgdGhlCiAgICBwcm9ncmFtbWVkIEhETUkgdnN3aW5nIHRvIHN0aWNrLiBJbXBsZW1lbnQgdGhl
IHJlbGV2YW50CiAgICB3b3JrYXJvdW5kIChkaXNwbGF5IHcvYSAjMTE0MykuCgogICAgTm90ZSB0
aGF0IHRoZSByZWxldmFudCBjaGlja2VuIGJpdHMgbGl2ZSBpbiBhIHRyYW5zY29kZXIgcmVnaXN0
ZXIKICAgIGV2ZW4gdGhvdWdoIHRoZSBiaXRzIGFmZmVjdCBhIHNwZWNpZmljIERESSBwb3J0IHJh
dGhlciB0aGFuIGEKICAgIHNwZWNpZmljIHRyYW5zY29kZXIuIEhlbmNlIHdlIG11c3QgcGljayB0
aGUgY29ycmVjdCB0cmFuc2NvZGVyCiAgICByZWdpc3RlciBpbnN0YW5jZSBiYXNlZCBvbiB0aGUg
cG9ydCByYXRoZXIgdGhhbiBiYXNlZCBvbiB0aGUKICAgIGNwdV90cmFuc2NvZGVyLgoKICAgIEFs
c28gbm90ZSB0aGF0IGZvciBjb21wbGV0ZW5lc3MgSSBpbmNsdWRlZCBzdXBwb3J0IGZvciBEREkg
QS9FCiAgICBpbiB0aGUgY29kZSBldmVuIHRob3VnaCB3ZSBuZXZlciBoYXZlIEhETUkgb24gdGhv
c2UgcG9ydHMuCgogICAgdjI6IENGTCBuZWVkcyB0aGUgdy9hIGFzIHdlbGwgKFJvZHJpZ28gYW5k
IEFydCkKCiAgICBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgogICAg
Q2M6IEFydCBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+CiAgICBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgogICAg
TGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTgw
MTIyMTc0MTMxLjI4MDQ2LTEtdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20KICAgIFJldmll
d2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CgoKZG1lc2cgZnJv
bSBkcm0tdGlwIHdpdGggZHJtLmRlYnVnPTB4ZSBjYW4gYmUgZm91bmQgaGVyZToKaHR0cHM6Ly9i
dWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2UvbGludXgvK2J1Zy8xODcxNzIxL2NvbW1l
bnRzLzY0CgpLYWktSGVuZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
