Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B70C3B2E8A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 14:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B332D6EB78;
	Thu, 24 Jun 2021 12:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E9B6EB6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 12:04:44 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso5280359otu.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SRZUzaogma2KSZfmisHDH0LYwRTQJaRPPiJFQQsihe0=;
 b=K7m6Xw7CFTpq4mCVggngNelDAIVOo2Nwg3JSlD4n3vQU8Tno91XAU7+o2XuusKv3GM
 fLiNYSWR216kMXs1LRJ78isZQBwGCJuzyqMu9wDQE9sSuX/i1r3WUq96SHRKMiPwwOOs
 3ilVyTLvqEQlYUHPakVH65M+NycWTHDkTpPHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SRZUzaogma2KSZfmisHDH0LYwRTQJaRPPiJFQQsihe0=;
 b=TRDRmNGx1xY/UFpSHnqPYJ9u+NSyiBHclACsV2mAWcR1eIlM4Y4IYxFp7oOEPk3RXd
 CQlazf1UVCOklYAr+UTCjQxgiG0FGdVpLwZfn6njGSYLL84zaAWoxzum+KRRy1xraM2I
 72Q65DPdCOcVq89YptZwmpc3p6XAt7IC8r3WiVy7NtwZI1SQOtUOaxdge7DSFW8sqTCi
 Dy5TWdFhJYlHtZYkljrpfqZP/NZgqr9/lBnydXVHjSNIL3N5a515/v5yPmDQtw/fR7oJ
 Ci7WlnqG0IM3JxFOF65eGxBPL89ftS7QFqxgJf/Q8C3/fCUyNCuCE2xbSnP8rvRPJRDD
 puAA==
X-Gm-Message-State: AOAM530Ze7+sQ/UTdHs1EE5MOUhnmV3OKg6C1UQqD+wtUukjAvIg8cUc
 bFpMqzmhcnesNMcLNOL/1UFltjSUuGlSHuB5nmxxHA==
X-Google-Smtp-Source: ABdhPJxWjeXokMrQHGnfkYM1kXZ1nCTGW4RfMPr510MRVjRPqQyaHAbMMCZYOlXCFag3x+biBRw+xWG6wASJzxeNyVs=
X-Received: by 2002:a05:6830:2370:: with SMTP id
 r16mr4332451oth.188.1624536283558; 
 Thu, 24 Jun 2021 05:04:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210624112914.311984-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624112914.311984-1-thomas.hellstrom@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 24 Jun 2021 14:04:32 +0200
Message-ID: <CAKMK7uEeV0nvf+4ae2rYQHMBQ2rm2NNKT+n8CvDU=gdaEXHHBw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Reinstate the mmap ioctl for
 some platforms
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjQsIDIwMjEgYXQgMToyOSBQTSBUaG9tYXMgSGVsbHN0csO2bQo8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gUmVpbnN0YXRlIHRoZSBtbWFw
IGlvY3RsIGZvciBhbGwgY3VycmVudCBpbnRlZ3JhdGVkIHBsYXRmb3Jtcy4KPiBUaGUgaW50ZW50
aW9uIHdhcyByZWFsbHkgdG8gaGF2ZSBpdCBkaXNhYmxlZCBmb3IgZGlzY3JldGUgZ3JhcGhpY3MK
PiB3aGVyZSB3ZSBlbmZvcmNlIGEgc2luZ2xlIG1tYXAgbW9kZS4KPgo+IEZpeGVzOiAzNWNiZDkx
ZWI1NDEgKCJkcm0vaTkxNTogRGlzYWJsZSBtbWFwIGlvY3RsIGZvciBnZW4xMisiKQo+IFNpZ25l
ZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgoKQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+IC0t
LQo+IHYyOgo+IC0gQWRkZWQgYSBSLUIuCj4gLSBGaXhlZCB1cCB0aGUgY29kZSBjb21tZW50IGEg
Yml0Lgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwg
NyArKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBpbmRleCAy
ZmQxNTU3NDJiZDIuLjRmNTBhNTA4YzdhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYwo+IEBAIC02MiwxMCArNjIsMTEgQEAgaTkxNV9nZW1fbW1hcF9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgICAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgYWRkcjsKPgo+
IC0gICAgICAgLyogbW1hcCBpb2N0bCBpcyBkaXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFm
dGVyIFRHTC1MUC4gIFRoaXMgYWxzbwo+IC0gICAgICAgICogY292ZXJzIGFsbCBwbGF0Zm9ybXMg
d2l0aCBsb2NhbCBtZW1vcnkuCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogbW1hcCBpb2N0bCBp
cyBkaXNhbGxvd2VkIGZvciBhbGwgZGlzY3JldGUgcGxhdGZvcm1zLAo+ICsgICAgICAgICogYW5k
IGZvciBhbGwgcGxhdGZvcm1zIHdpdGggR1JBUEhJQ1NfVkVSID4gMTIuCj4gICAgICAgICAgKi8K
PiAtICAgICAgIGlmIChHUkFQSElDU19WRVIoaTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShp
OTE1KSkKPiArICAgICAgIGlmIChJU19ER0ZYKGk5MTUpIHx8IEdSQVBISUNTX1ZFUihpOTE1KSA+
IDEyKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4KPiAgICAgICAgIGlm
IChhcmdzLT5mbGFncyAmIH4oSTkxNV9NTUFQX1dDKSkKPiAtLQo+IDIuMzEuMQo+CgoKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
