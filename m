Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1710510AAF3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 08:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99FD6E126;
	Wed, 27 Nov 2019 07:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393A96E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 07:12:10 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id d202so10280182qkb.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 23:12:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oJkYG+PfkmqEVorDT/xLGPovWe1HtuePg3QyR4exBgc=;
 b=lpPZj0nV1236eZaDSEBK5Z9XLi4Ij9w/CNv0S1UI6xKE8PM4XjjBgw0m+GjzZosSNl
 86D1uBqDyGFQv+c961GTflKPOs/3bZ7FS+LDBc9AdRbwvDQg0dWPMpw85GmslUkiP2At
 VUnDEcp2p4M4+TkMrOeqzSNlOD0EcApUHyu+A+jlWMzUxWOZO9RpAOxXvzdz2MMyysoe
 uDHK15xbWkzs7Wj6sl5bc3AeumTGsXaht/ZI0WBOk273xY/KCOoKz7eePAMvAATWCDei
 BhNxAZQUdiYbOColTNyL8Pv0eLCyK6nfI7wBRNHlQKSSTpc7M6a+amDxXsyZwhwqWR+5
 O9Bw==
X-Gm-Message-State: APjAAAXKhnX5K9k/rYs6cSLWnPoeR0NQNU8saGyoKdUQu719dXkDhLiU
 fE7Vjkf+EkXgjRhXUGnnfAMyJLnmmHeQcD5mI/lGsw==
X-Google-Smtp-Source: APXvYqz4vn7IqXG30mzmWM9WMV83AUJkAFkjCEU/vordNv0ITz0nMB1WhLOP88knEPqVwBOVBI4pLayz9Sux1WPLW2M=
X-Received: by 2002:a37:a5c7:: with SMTP id o190mr2810967qke.478.1574838729124; 
 Tue, 26 Nov 2019 23:12:09 -0800 (PST)
MIME-Version: 1.0
References: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
From: Daniel Drake <drake@endlessm.com>
Date: Wed, 27 Nov 2019 15:11:58 +0800
Message-ID: <CAD8Lp45k_J394rNGN-pDWy41EKrj3SKOPb6PppSW2-NGfEv1Lg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=oJkYG+PfkmqEVorDT/xLGPovWe1HtuePg3QyR4exBgc=;
 b=hh9Y20OnNu/9ibkDi9XFXoA3edMds642aZXfEbCY0wQLrtNno0eylFuP1RJ7xazvnT
 0QGRD96VHOvl2xE9UA4tZZg1laUAuAHrbjfiJndDfeoVDCH+2WgMLcN+w74RO2mBBevb
 0OidqQxQePg/uTmlWXbNRhT7KHJl1cLwzsi+l1OgIuWaxzF7JGBXfVkaubga4Rk5rWXh
 VCY9eTPBPX+AUkgfS3rgnrGtGpKNspVHb3t8g+naNdYankWEBB60BJ8E6W3wZeFo/HBL
 SV1+TLc4rPbUx6POSpqlBEGM9GiUwtTCER+l4WsRL/wNMSde6qNQgOPo1oVVsqb3Xipi
 aO/w==
Subject: Re: [Intel-gfx] [PATCH 00/13] drm/i915/fbc: Fix FBC for glk+
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>, intel-gfx@lists.freedesktop.org,
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpJdCdzIGdyZWF0IHRvIHNlZSBJbnRlbCBwdXR0aW5nIGF0dGVudGlvbiBpbnRv
IHRoaXMsIHRoYW5rcyEKCk9uIFdlZCwgTm92IDI3LCAyMDE5IGF0IDE6MDkgQU0gVmlsbGUgU3ly
amFsYQo8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IEltcGxlbWVudCB0
aGUgbWlzc2luZyB3L2EgZm9yIGJhY2sgdG8gYmFjayBGQkMgZGlzYWJsZSArIHBsYW5lCj4gdXBk
YXRlIG9uIGdsaysuIFRoZSBzY2FyaWVzdCBwYXJ0IG9mIHRoaXMgaXMgdGhhdCB3ZSBub3cgc3Rh
cnQKPiB0byB1c2UgZmxpcCBudWtlIHNvIHRoYXQgd2UgY2FuIGF2b2lkIHRoZSB3L2EgKGFzIGl0
IHdvdWxkIGNvc3QKPiB1cyBvbmUgZXh0cmEgZnJhbWUgZm9yIGV2ZXJ5IHBsYW5lIHVwZGF0ZSku
IEhvcGVmdWxseSBteSAiY2FuCj4gd2UgZmxpcCBudWtlIHNhZmVseT8iIGNoZWNrIGlzIGdvb2Qg
ZW5vdWdoLgoKSSB0ZXN0ZWQgb24gQXN1cyBFNDA2TUEgd2hpY2ggaXMgb25lIG9mIHRoZSBvcmln
aW5hbCBwbGF0Zm9ybXMgd2hlcmUKd2Ugd2VyZSBzZWVpbmcgdGhlIGNvcnJ1cHRpb24gYXQgdGhl
IHRvcCBvZiB0aGUgc2NyZWVuLgoKSSBmaXJzdCB0b29rIHlvdXIgYnJhbmNoICp3aXRob3V0KiB5
b3VyIG5ldyBwYXRjaGVzIGFwcGxpZWQsIHRvCnJlY29uZmlybSB0aGUgYmFzZSBjYXNlIG9mIEZC
QyBjYXVzaW5nIGNvcnJ1cHRpb24uCkhvd2V2ZXIgdGhpcyBkaWRuJ3Qgd29yayBhcyBkZXNpcmVk
IC0gRkJDIGRpZCBub3QgZ2V0IGVuYWJsZWQgYW5kCmk5MTVfZmJjX3N0YXR1cyByZXBvcnRlZCAi
bm8gc3VpdGFibGUgQ1JUQyBmbyBGQkMiLgpUaGlzIG11c3QgYmUgYSBjaGFuZ2UgaW4gYmVoYXZp
b3VyIHNpbmNlIHdlIG9yaWdpbmFsbHkgc2F3IHRoZQpjb3JydXB0aW9uIGJ1ZyBhIHdoaWxlIGJh
Y2suIEkgY2hlY2tlZCB0aGF0IHNrbF9wbGFuZV9oYXNfZmJjKCkKY29ycmVjdGx5IG1hcmtzIHRo
ZSByaWdodCBwbGFuZSAocGlwZSBBLCBwcmltYXJ5IHBsYW5lKSBhcyBoYXNfZmJjPTEKaG93ZXZl
ciB0aGUgbG9vcCBpbnNpZGUgaW50ZWxfZmJjX2Nob29zZV9jcnRjKCkgd2FzIG9ubHkgY29uc2lk
ZXJpbmcKcGxhbmUgNyAoUExBTkVfQ1VSU09SKSBhbmQgdGhlbiBkZWNpZGluZyB0aGF0IHRoZXJl
IHdlcmUgbm8KRkJDLWNhcGFibGUgcGxhbmVzLgoKSSB0aGVuIGFwcGxpZWQgeW91ciBwYXRjaCBz
ZXJpZXMgYW5kIGNoZWNrZWQgYWdhaW4uIEZCQyBzdGlsbApkaXNhYmxlZCwgYnV0IHRoaXMgdGlt
ZSB0aGUgcmVhc29uIGlzICJDRkIgcmVxdWlyZW1lbnRzIGNoYW5nZWQiLgoKSSB0aGVuIGJvb3Rl
ZCB3aXRoIGk5MTUuZmFzdGJvb3Q9MCBhbmQgbm93IEZCQyBpcyBlbmFibGVkLiBJJ20gdW5hYmxl
CnRvIHJlcHJvZHVjZSB0aGUgZ3JhcGhpY3MgY29ycnVwdGlvbiB1bmRlciB0aGlzIHNldHVwLCBz
byBpdCBsb29rcwpsaWtlIHlvdXIgcGF0Y2hlcyBtYXkgaGF2ZSBzb2x2ZWQgdGhlIG9yaWdpbmFs
IGlzc3VlLiBIb3dldmVyLCBpdCdzCnVuZm9ydHVuYXRlIHRoYXQgRkJDIHdpbGwgY29udGludWUg
dG8gcmVtYWluIGRpc2FibGVkIGZvciB1c2VycyBvZgp0aGlzIHBsYXRmb3JtLCBhcyBmYXN0Ym9v
dCBkZWZhdWx0cyB0byBvbiAoYW5kIHRoZSBmYXN0Ym9vdCBhc3NvY2lhdGVkCmJvb3QgZmxpY2tl
ciByZWR1Y3Rpb24gaXMgdmVyeSB3ZWxjb21lKS4gRG8geW91IHRoaW5rIHRoaXMgcG9pbnQgaXMK
d29ydGggZm9sbG93aW5nIHVwIG9uPwoKVGhhbmtzLApEYW5pZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
