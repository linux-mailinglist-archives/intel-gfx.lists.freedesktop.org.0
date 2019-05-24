Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15D0293AB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED94A6E0D0;
	Fri, 24 May 2019 08:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867D46E0C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:23 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id n17so13371885edb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qFqlt6mo9F4Pd9G7O8MT8qo6u/5jZNMJ/2yl3qsAQiY=;
 b=huFP+0hf7H+EFfh3oEC+6hQc69hZ5RmfoL5K4O4l/JPIt9YqoiT1PSgUKxGomzUior
 g/rHzJYJLme5UzI2/3tF+VW9GYuiZ7SzFf4K7P8aNq+EiB3kACaE/AA+wOzd73fx6UU0
 HWsSIFO7IDB619Kd5A/vA0QpzpTAuwe0+IiXowTpdiJvOKg/QxKC/vLhRAUfg9gViRl+
 rxjiKpZnehmLcAW2HXtqDY9jLfP/Znul6IsqclexUmR7BucbyT7lQJEsKaE5sd91mR3d
 odfNlQgk/hXGwcorU1Wp6RhQLtdjTXpGUj9Z94YfPtWi0lmR7V4NWD4tTTDHA7qGQ7pO
 XFAg==
X-Gm-Message-State: APjAAAWgouu8wJKiOVo5mFHU3/HM7qgwo0VgVXf0LnPmmT0moP1iVHKx
 kuPeQlFp21xFjwdNX4UVAmTO1g==
X-Google-Smtp-Source: APXvYqxfH4m8cM3kQ2a9m5Bu7sZt3awOs0EZLiDpP3Rw5DPOFSPeezL+a7RRX9L5t0jF0ChIS5R+Zw==
X-Received: by 2002:a50:908a:: with SMTP id
 c10mr102215126eda.226.1558688060655; 
 Fri, 24 May 2019 01:54:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:35 +0200
Message-Id: <20190524085354.27411-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qFqlt6mo9F4Pd9G7O8MT8qo6u/5jZNMJ/2yl3qsAQiY=;
 b=EgPw0s1XuffFZvuQmIb+u1grhbjqLNzg/527P2g071z9I1Srgh63ZYAtIrTqJ9/3WB
 4fGr4+vWcQgnQhJwsaUixthTYD4PW/g7mB8dJEg2qZkoDJYIjq9AS/XYnSozEbuQlWH0
 0XPhcaEJ9eNRxGY5BRpufgjXn4h9qrDKGVZ08=
Subject: [Intel-gfx] [PATCH 14/33] staging/olpc: lock_fb_info can't fail
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
Cc: Daniel Drake <dsd@laptop.org>, Jens Frederich <jfrederich@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2ltcGx5IGJlY2F1c2Ugb2xwYyBuZXZlciB1bnJlZ2lzdGVycyB0aGUgZGFtbiB0aGluZy4gSXQg
YWxzbwpyZWdpc3RlcnMgdGhlIGZyYW1lYnVmZmVyIGRpcmVjdGx5IGJ5IHBva2luZyBhcm91bmQg
aW4gZmJkZXYKY29yZSBpbnRlcm5hbHMsIHNvIGl0J3MgYWxsIGFyb3VuZCByYXRoZXIgYnJva2Vu
LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
Q2M6IEplbnMgRnJlZGVyaWNoIDxqZnJlZGVyaWNoQGdtYWlsLmNvbT4KQ2M6IERhbmllbCBEcmFr
ZSA8ZHNkQGxhcHRvcC5vcmc+CkNjOiBKb24gTmV0dGxldG9uIDxqb24ubmV0dGxldG9uQGdtYWls
LmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jIHwgNiArLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jIGIvZHJpdmVycy9z
dGFnaW5nL29scGNfZGNvbi9vbHBjX2Rjb24uYwppbmRleCA2YjcxNGY3NDBhYzMuLmEyNTQyMzhi
ZTE4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL29scGNfZGNvbi9vbHBjX2Rjb24uYwor
KysgYi9kcml2ZXJzL3N0YWdpbmcvb2xwY19kY29uL29scGNfZGNvbi5jCkBAIC0yNTAsMTEgKzI1
MCw3IEBAIHN0YXRpYyBib29sIGRjb25fYmxhbmtfZmIoc3RydWN0IGRjb25fcHJpdiAqZGNvbiwg
Ym9vbCBibGFuaykKIAlpbnQgZXJyOwogCiAJY29uc29sZV9sb2NrKCk7Ci0JaWYgKCFsb2NrX2Zi
X2luZm8oZGNvbi0+ZmJpbmZvKSkgewotCQljb25zb2xlX3VubG9jaygpOwotCQlkZXZfZXJyKCZk
Y29uLT5jbGllbnQtPmRldiwgInVuYWJsZSB0byBsb2NrIGZyYW1lYnVmZmVyXG4iKTsKLQkJcmV0
dXJuIGZhbHNlOwotCX0KKwlsb2NrX2ZiX2luZm8oZGNvbi0+ZmJpbmZvKTsKIAogCWRjb24tPmln
bm9yZV9mYl9ldmVudHMgPSB0cnVlOwogCWVyciA9IGZiX2JsYW5rKGRjb24tPmZiaW5mbywKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
