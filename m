Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C92D10F69A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 06:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA076E388;
	Tue,  3 Dec 2019 05:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A2F6E388
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 05:05:25 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id g18so1769559otj.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Dec 2019 21:05:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=osUNpNM//nKn64BScrcKYS6MZQOeG183ZwQRVniSg24=;
 b=r5Dyg2xKeKLa+ZQYMr+W3VXlch/ZYsBMhNScUIMC225JRw4Hqv8+fm3cuS9wPOrhk1
 blzti/iG96mayy8m5AK57ptE/2eS6XHjFWIn7M3CZtnVecdBDiSbSqvTFWRtZHTyDiI8
 uw9OEDJX2AMBftBn40Nc+8YQkeGkULvpD66gDdIAm7kr5BOm7v4Lc9t57tN1oCxR4zNL
 RtrqdYedCUx2kF2AFo+VtcqH4LE06XoLa3e8UUxWOBhLAI/iA+f7x5+J59Hs3HfFJnlc
 3hwkvcN/KAxkvwtKzruq90RUKH+YZoap7lMW57r3/UrFcmCOp8xOzG7Iw1nhybaZheHk
 0f4A==
X-Gm-Message-State: APjAAAVRhb38dJMbR6OFw6UQumKkJzXyjQLoih/fAA4bytI4krS4qU7o
 OV2Pde1gV7r6q6ivKj7tQ6jKwTeB
X-Google-Smtp-Source: APXvYqwJXBipr3Okh70GrJV/28QVzskqa/msbInBMr5QpCyXc8VLfVLKIgSJu1s/m4nkFngIFx48ag==
X-Received: by 2002:a05:6830:18e6:: with SMTP id
 d6mr447977otf.170.1575349523984; 
 Mon, 02 Dec 2019 21:05:23 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
 by smtp.gmail.com with ESMTPSA id r82sm753007oib.15.2019.12.02.21.05.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Dec 2019 21:05:23 -0800 (PST)
Date: Mon, 2 Dec 2019 22:05:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191203050522.GA12176@ubuntu-x2-xlarge-x86>
References: <20191101192116.12647-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101192116.12647-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=osUNpNM//nKn64BScrcKYS6MZQOeG183ZwQRVniSg24=;
 b=bSBNQAfhJ8Cg07xjaLufXKgIH6vNd3BtobSDdmoujZAaju/20xTTcRrpRIfwUieFGN
 mZwzUZU79McupIM3astmxIAGkeDV6ZVe3JVLPkNOaQe2rebUc7RCL7+kVE9bjq/xAsgF
 rYoEyfZR82pGGhZxZvQwNG7vK96ytvsNLr3Aq8ptFWHT6p4ucWvGpy1VGyfUzM1DAtB+
 lOJYangJcG+RJfGkdxjYxNUsevXGMzw0sLk7jztgaIHM+Iblrz5qpzrLTGeiLNUBzT8I
 YdEJWNMzmvaQC8nfjUk4f+h9SlSXxmV7pYKWDijHAXRkcDIVF8h8FN57NCF11bjv1EW8
 7rAQ==
Subject: Re: [Intel-gfx] [v2] drm/i915/perf: Reverse a ternary to make
 sparse happy
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDc6MjE6MTZQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEF2b2lkCj4gCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MjQ0Mjo4
NTogd2FybmluZzogZHViaW91czogeCB8ICF5Cj4gCj4gc2ltcGx5IGJ5IGludmVydGluZyB0aGUg
cHJlZGljYXRlIGFuZCByZXZlcnNpbmcgdGhlIHRlcm5hcnkuCj4gCj4gdjI6IE1vcmUgdGhlIGxv
bmcgbGluZXMgaW50byB0aGVpciBvd24gZnVuY3Rpb24gc28gdGhlcmUgaXMgbm8gY29uZnVzaW9u
Cj4gb24gb3BlcmF0b3IgcHJlY2VkZW5jZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVW1lc2ggTmVybGlnZSBSYW1hcHBh
IDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgo+IENjOiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CgpJIGRvbid0IHNlZSB0aGlzIGFwcGxp
ZWQgdG8gZHJtLWludGVsIHlldCAodW5sZXNzIEkgYW0gYmxpbmQpIGFuZCBjbGFuZwp3YXJucyBh
Ym91dCB0aGlzIGFzIHdlbGwuCgpSZXZpZXdlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVj
aGFuY2VsbG9yQGdtYWlsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
