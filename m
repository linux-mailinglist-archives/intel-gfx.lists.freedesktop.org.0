Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5033CAE8B8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0546F6E8BA;
	Tue, 10 Sep 2019 10:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F042A6E8BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:57:48 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id w16so5379958uap.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 03:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=69UnW+2FNR/jripFTo1qk/F3m15e7cGUUclSehVzrI0=;
 b=crB6ZsPIstzqpH7DDNG7TQizq+YKG0T6iDfLREXhU1YDP/rJW783GWYTMAdwDCg8zo
 de3DfNE4rhg+I9HGJy1OyW2hKgiJcVOb16J6EdQ3n5KtpTZcEOh55qIfhldEEKsk0Vu3
 2XH5PFhG2clbkdo0lxDL2PO9kBgfYfdaZ0aR4aGKQbjgXl4K0wvecqC1Jo59/qS0j0Mh
 LOvv0HeCBbzq8Qw6H6Cuiol31p8BeM1S8fqfUM0lRx0n3yh0g7hMIql57nF/vApKWFaq
 ScboCiSDNRa97z+8sCx2dApp+vVVS0ZPhcLG6XXditEuQNcwBXdMh0okbJ6/IPorNI0E
 GJuA==
X-Gm-Message-State: APjAAAWpuWjY2codQohohweZuRwZY4RV0D7F3wp+GYuxEl7NzA/nqdi0
 NXwCmK3h3vyKUu+hmZewMoKNuH5m1mjEuE6dAZY=
X-Google-Smtp-Source: APXvYqxsRK+HR7zDJjSjVlBEoXFhwjRkls6xxFmzSkLcQARS2elgQwvp5LrPXKnHfooxZisrPoDqJbd6J/69budsGMg=
X-Received: by 2002:ab0:4261:: with SMTP id i88mr13740103uai.95.1568113067863; 
 Tue, 10 Sep 2019 03:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190909110011.8958-1-chris@chris-wilson.co.uk>
 <20190909110011.8958-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190909110011.8958-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 11:57:21 +0100
Message-ID: <CAM0jSHPQZSUGw4p9Vu0+j0-3rEKfMr8THkSYK00icdkzOeXcPA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=69UnW+2FNR/jripFTo1qk/F3m15e7cGUUclSehVzrI0=;
 b=Cc/8r4Fwt9gAqA6UrsIoVgchfTLfUm/nmOUN9xfjWzTXs1r1GlVwcxFgGyeIGUeqZF
 y2FeIaOGA/9LrwfaoDT73YCQSAFnw49cTw74mzucLVMoSlKTmQA4BykfpVWO/wHdnV/k
 G2gBEdNWwqtDwxchY6cJCesPlrD5uzuN3pVEXfo7Iyj1nbq1Dy+doUAFptnO6B38bdqB
 Uz63KofAqFprQWGpVdRK/G55RzXV8BB3DyFc3vd/3CjRiKBUAs3IkqKM5fAjA7YU7Qdd
 1z5Y/JQQAVCxYrSc1+qzMoAHFjWfnv2QC6VvcGEHBj+PT4ZXboG41A243BUwIUbgk7lR
 sALA==
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Take runtime
 wakeref for igt_ggtt_lowlevel
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCA5IFNlcCAyMDE5IGF0IDEyOjAwLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBCZWluZyBhICJsb3ctbGV2ZWwiIHRlc3QsIHdlIG9wdCB0
byBieXBhc3MgdGhlIG5vcm1hbCBiaW5kL3VuYmluZCBob29rcwo+IGZvciB0aGUgbG93ZXIgbGV2
ZWwgaW5zZXJ0X2VudHJpZXMvY2xlYXJfcmFuZ2UuIEZvciBnZ3R0LCB0aGUKPiBiaW5kL3VuYmlu
ZCBob29rcyBwcm92aWRlIHRoZSBydW50aW1lIHdha2VyZWYgYW5kIHNvIHdlIG11c3QgYWxzbyBo
YW5kbGUKPiB0aGlzIGluIGV4ZXJjaXNpbmcgdGhlIGxvdyBsZXZlbCBob29rcy4KPgo+IDw0PiBb
NTM4LjE1MTY3Ml0gUlBNIHJhdy13YWtlcmVmIG5vdCBoZWxkCj4gPDQ+IFs1MzguMTUxODI1XSBX
QVJOSU5HOiBDUFU6IDAgUElEOiAxMSBhdCAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uaDoxMDcgZnd0YWJsZV9yZWFkMzIrMHgxYmUvMHgzMDAgW2k5MTVdCj4gPDQ+IFs1
MzguMTUxODMwXSBNb2R1bGVzIGxpbmtlZCBpbjogaTkxNSgrKSBhbWRncHUgZ3B1X3NjaGVkIHR0
bSB2Z2VtIHNuZF9oZGFfY29kZWNfaGRtaSBzbmRfaGRhX2NvZGVjX3JlYWx0ZWsgc25kX2hkYV9j
b2RlY19nZW5lcmljIG1laV9oZGNwIGJ0dXNiIGJ0cnRsIGJ0YmNtIHg4Nl9wa2dfdGVtcF90aGVy
bWFsIGNvcmV0ZW1wIGJ0aW50ZWwgY3JjdDEwZGlmX3BjbG11bCBibHVldG9vdGggY3JjMzJfcGNs
bXVsIHNuZF9pbnRlbF9uaGx0IHNuZF9oZGFfY29kZWMgZWNkaF9nZW5lcmljIGdoYXNoX2NsbXVs
bmlfaW50ZWwgZWNjIHNuZF9od2RlcCBzbmRfaGRhX2NvcmUgbHBjX2ljaCByODE2OSByZWFsdGVr
IHNuZF9wY20gbWVpX21lIG1laSBwcmltZV9udW1iZXJzIHBpbmN0cmxfYnJveHRvbiBwaW5jdHJs
X2ludGVsIFtsYXN0IHVubG9hZGVkOiBpOTE1XQo+IDw0PiBbNTM4LjE1MTg2MV0gQ1BVOiAwIFBJ
RDogMTEgQ29tbTogbWlncmF0aW9uLzAgVGFpbnRlZDogRyAgICAgVSAgICAgICAgICAgIDUuMy4w
LXJjNy1DSS1Ucnlib3RfNDkzOCsgIzEKPiA8ND4gWzUzOC4xNTE4NjRdIEhhcmR3YXJlIG5hbWU6
IEludGVsIGNvcnBvcmF0aW9uIE5VQzZDQVlTL05VQzZDQVlCLCBCSU9TIEFZQVBMQ0VMLjg2QS4w
MDU2LjIwMTguMDkyNi4xMTAwIDA5LzI2LzIwMTgKPiA8ND4gWzUzOC4xNTE5NjBdIFJJUDogMDAx
MDpmd3RhYmxlX3JlYWQzMisweDFiZS8weDMwMCBbaTkxNV0KPiA8ND4gWzUzOC4xNTE5NjVdIENv
ZGU6IGU4IGU3IGY5IDVmIGUwIGU5IDBiIGZmIGZmIGZmIDgwIDNkIGQ1IDhkIDI2IDAwIDAwIDBm
IDg1IDgxIGZlIGZmIGZmIDQ4IGM3IGM3IGVmIDAxIGJkIGEwIGM2IDA1IGMxIDhkIDI2IDAwIDAx
IGU4IGIyIGU0IDZhIGUwIDwwZj4gMGIgZTkgNjcgZmUgZmYgZmYgODAgM2QgYWQgOGQgMjYgMDAg
MDAgMGYgODUgNjUgZmUgZmYgZmYgNDggYzcKPiA8ND4gWzUzOC4xNTE5NjldIFJTUDogMDAxODpm
ZmZmYzkwMDAwMDdiZTEwIEVGTEFHUzogMDAwMTAwODYKPiA8ND4gWzUzOC4xNTE5NzJdIFJBWDog
MDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4ODgyNmJlMTBkNTAgUkNYOiAwMDAwMDAwMDAwMDAw
MDAyCj4gPDQ+IFs1MzguMTUxOTc1XSBSRFg6IDAwMDAwMDAwODAwMDAwMDIgUlNJOiAwMDAwMDAw
MDAwMDAwMDAwIFJESTogMDAwMDAwMDBmZmZmZmZmZgo+IDw0PiBbNTM4LjE1MTk3OF0gUkJQOiAw
MDAwMDAwMDAwMDAwMDAwIFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAw
MDAKPiA8ND4gWzUzOC4xNTE5ODFdIFIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IGZmZmZjOTAw
MDAwN2JjYjAgUjEyOiAwMDAwMDAwMDAwMTAxMDA4Cj4gPDQ+IFs1MzguMTUxOTg0XSBSMTM6IDAw
MDAwMDAwMDAwMDAwMDAgUjE0OiBmZmZmYzkwMDAwMzZmNjM4IFIxNTogMDAwMDAwMDAwMDAwMDAw
Mgo+IDw0PiBbNTM4LjE1MTk4N10gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY4
ODgyNzdhMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbNTM4LjE1MTk5
MF0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IDw0
PiBbNTM4LjE1MTk5M10gQ1IyOiAwMDAwN2ZkNDhlNzA1MmY4IENSMzogMDAwMDAwMDAwNTIxMDAw
MCBDUjQ6IDAwMDAwMDAwMDAzNDA2ZjAKPiA8ND4gWzUzOC4xNTE5OTVdIENhbGwgVHJhY2U6Cj4g
PDQ+IFs1MzguMTUyMTA2XSAgYnh0X3Z0ZF9nZ3R0X2NsZWFyX3JhbmdlX19jYisweDM4LzB4NDAg
W2k5MTVdCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
