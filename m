Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E334179D47
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 02:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8876C6EB82;
	Thu,  5 Mar 2020 01:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7096EB83
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 01:23:52 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id f27so2673344pfq.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 17:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc:content-transfer-encoding;
 bh=xVbKhPYa03B/7Fj2wzK9whmItxLhEu9PIS8rQfMj+SU=;
 b=GM2z4ud+9K0JKzbxsFheloVDdBaQxSOGR7UIizgqv6Fz3VfjncftQN2pKYvj/ugTrJ
 mMLygJcH56f9wyVkGssID3FkFnLLrIPZAIW6W4LRnh+L2ihE5QKtAmn2oqIIpUFk1apN
 8d38W5ToUj9qvA1qIicW38AR0EroTnBYVFjbJ33csWp+zI4q8tuJFR/VkHAf6bTlZRIe
 IPeY1Jx9dlQ5AiAz0ocL2KKG8XzORqbjzlMCzPHjKEP3Kupx/yzVN/JcRTfgh5nE8trH
 P6YObwrzcc3Uha/ST7nirtLf3DxrE4c0hojx9bg92k3iePINHFff5+OoApSeTOvBobrT
 ml+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc:content-transfer-encoding;
 bh=xVbKhPYa03B/7Fj2wzK9whmItxLhEu9PIS8rQfMj+SU=;
 b=QUgvF4Uaan4cqPM1dWQz46N50BgeyOIUCoJ8W6b+jJ8nudD2MuvrWuKjEz796qeMma
 3eL/mVB+TQco0wQVj16dGwZNq2vuzyfFiKud7LoPfuAtPYsUIjkFVMt9nTbmAG3WLmaN
 LSTApPMoDG0IkOTFGVpdtHdVRGUYcMKUAn6vRp9eqf9MxoSvdN03P6nGmRgPhw1QBp/r
 z2nhmsC193Solzf5VikCe1l20V7qeiCOJSdx92fhTEKm4B9sTNcYUTcEQmyNdSpXEhPm
 8Hra3Q8QSOOvGo00l53hCwaX/kO7Yp62jG+45llyibippmv0Ifv5XD2yqfcqTnu8lOJe
 wglw==
X-Gm-Message-State: ANhLgQ1mIIfffwTDK1YYjWOy7vuS/4EPt+XScuXh1ctx/f4rC6WZTACY
 2llpjbtPasqqC1cASjCu3cLk+hgzxbOz
X-Google-Smtp-Source: ADFU+vu9pNnubG4QZFewleUzGXkCy2THuipbLYTYtQx0hzQy+4owF20BomGvEjVc33UZsofb5kI0PQhzFQ/O
X-Received: by 2002:a65:488d:: with SMTP id n13mr5008755pgs.91.1583371431651; 
 Wed, 04 Mar 2020 17:23:51 -0800 (PST)
Date: Wed,  4 Mar 2020 17:23:38 -0800
In-Reply-To: <20200305012338.219746-1-rajatja@google.com>
Message-Id: <20200305012338.219746-4-rajatja@google.com>
Mime-Version: 1.0
References: <20200305012338.219746-1-rajatja@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 "=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=" <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 "=?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=" <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 gregkh@linuxfoundation.org, mathewk@google.com, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, seanpaul@google.com,
 Duncan Laurie <dlaurie@google.com>, 
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>, 
 Tomoki Maruichi <maruichit@lenovo.com>, groeck@google.com
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915: Add support for integrated
 privacy screens
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2VydGFpbiBsYXB0b3BzIG5vdyBjb21lIHdpdGggcGFuZWxzIHRoYXQgaGF2ZSBpbnRlZ3JhdGVk
IHByaXZhY3kKc2NyZWVucyBvbiB0aGVtLiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3Igc3Vj
aCBwYW5lbHMgYnkgYWRkaW5nCmEgcHJpdmFjeS1zY3JlZW4gcHJvcGVydHkgdG8gdGhlIGludGVs
X2Nvbm5lY3RvciBmb3IgdGhlIHBhbmVsLCB0aGF0CnRoZSB1c2Vyc3BhY2UgY2FuIHRoZW4gdXNl
IHRvIGNvbnRyb2wgYW5kIGNoZWNrIHRoZSBzdGF0dXMuCgpJZGVudGlmeWluZyB0aGUgcHJlc2Vu
Y2Ugb2YgcHJpdmFjeSBzY3JlZW4sIGFuZCBjb250cm9sbGluZyBpdCwgaXMgZG9uZQp2aWEgQUNQ
SSBfRFNNIG1ldGhvZHMuCgpDdXJyZW50bHksIHRoaXMgaXMgZG9uZSBvbmx5IGZvciB0aGUgSW50
ZWwgZGlzcGxheSBwb3J0cy4gQnV0IGluIGZ1dHVyZSwKdGhpcyBjYW4gYmUgZG9uZSBmb3IgYW55
IG90aGVyIHBvcnRzIGlmIHRoZSBoYXJkd2FyZSBiZWNvbWVzIGF2YWlsYWJsZQooZS5nLiBleHRl
cm5hbCBtb25pdG9ycyBzdXBwb3J0aW5nIGludGVncmF0ZWQgcHJpdmFjeSBzY3JlZW5zPykuCgpT
aWduZWQtb2ZmLWJ5OiBSYWphdCBKYWluIDxyYWphdGphQGdvb2dsZS5jb20+Ci0tLQp2NjogQWx3
YXlzIGluaXRpYWxpemUgcHJvcCBpbiBpbnRlbF9hdHRhY2hfcHJpdmFjeV9zY3JlZW5fcHJvcGVy
dHkoKQp2NTogZml4IGEgY29zbWV0aWMgY2hlY2twYXRjaCB3YXJuaW5nCnY0OiBGaXggYSB0eXBv
IGluIGludGVsX3ByaXZhY3lfc2NyZWVuLmgKdjM6ICogQ2hhbmdlIGxpY2Vuc2UgdG8gR1BMLTIu
MCBPUiBNSVQKICAgICogTW92ZSBwcml2YWN5IHNjcmVlbiBlbnVtIGZyb20gVUFQSSB0byBpbnRl
bF9kaXNwbGF5X3R5cGVzLmgKICAgICogUmVuYW1lIHBhcmFtZXRlciBuYW1lIGFuZCBzb21lIG90
aGVyIG1pbm9yIGNoYW5nZXMuCnYyOiBGb3JtZWQgYnkgc3BsaXR0aW5nIHRoZSBvcmlnaW5hbCBw
YXRjaCBpbnRvIG11bHRpcGxlIHBhdGNoZXMuCiAgICAtIEFsbCBjb2RlIGhhcyBiZWVuIG1vdmVk
IGludG8gaTkxNSBub3cuCiAgICAtIFByaXZhY3kgc2NyZWVuIGlzIGEgaTkxNSBwcm9wZXJ0eQog
ICAgLSBIYXZlIGEgbG9jYWwgc3RhdGUgdmFyaWFibGUgdG8gc3RvcmUgdGhlIHBydmFjeSBzY3Jl
ZW4uIERvbid0IHJlYWQKICAgICAgaXQgZnJvbSBoYXJkd2FyZS4KCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyAgIHwgMTMgKysrLQogLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jICAgIHwgMzUgKysrKysrKysrCiAuLi4vZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmggICAgfCAgMSArCiAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAxOCArKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDYgKysKIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMgICB8IDcyICsrKysrKysrKysrKysrKysrKysKIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmggICB8IDI3ICsrKysrKysK
IDggZmlsZXMgY2hhbmdlZCwgMTcxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5
X3NjcmVlbi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wcml2YWN5X3NjcmVlbi5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCA5OTFhOGM1
MzdkMTIzLi44MjU5NTFiNGNkMDA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMjA4LDcgKzIw
OCw4IEBAIGk5MTUteSArPSBcCiAJZGlzcGxheS9pbnRlbF92Z2EubwogaTkxNS0kKENPTkZJR19B
Q1BJKSArPSBcCiAJZGlzcGxheS9pbnRlbF9hY3BpLm8gXAotCWRpc3BsYXkvaW50ZWxfb3ByZWdp
b24ubworCWRpc3BsYXkvaW50ZWxfb3ByZWdpb24ubyBcCisJZGlzcGxheS9pbnRlbF9wcml2YWN5
X3NjcmVlbi5vCiBpOTE1LSQoQ09ORklHX0RSTV9GQkRFVl9FTVVMQVRJT04pICs9IFwKIAlkaXNw
bGF5L2ludGVsX2ZiZGV2Lm8KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmMKaW5kZXggZDA0MzA1N2QyZmEwMy4uNGVkNTM3Yzg3Nzc3NyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCkBAIC00MCw2ICs0MCw3IEBACiAj
aW5jbHVkZSAiaW50ZWxfZ2xvYmFsX3N0YXRlLmgiCiAjaW5jbHVkZSAiaW50ZWxfaGRjcC5oIgog
I2luY2x1ZGUgImludGVsX3Bzci5oIgorI2luY2x1ZGUgImludGVsX3ByaXZhY3lfc2NyZWVuLmgi
CiAjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgiCiAKIC8qKgpAQCAtNjAsMTEgKzYxLDE0IEBAIGlu
dCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfZ2V0X3Byb3BlcnR5KHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IsCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkZXYpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAq
aW50ZWxfY29ubl9zdGF0ZSA9CiAJCXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0
YXRlKTsKKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRl
bF9jb25uZWN0b3IoY29ubmVjdG9yKTsKIAogCWlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+Zm9y
Y2VfYXVkaW9fcHJvcGVydHkpCiAJCSp2YWwgPSBpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRp
bzsKIAllbHNlIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0
eSkKIAkJKnZhbCA9IGludGVsX2Nvbm5fc3RhdGUtPmJyb2FkY2FzdF9yZ2I7CisJZWxzZSBpZiAo
cHJvcGVydHkgPT0gaW50ZWxfY29ubmVjdG9yLT5wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eSkKKwkJ
KnZhbCA9IGludGVsX2Nvbm5fc3RhdGUtPnByaXZhY3lfc2NyZWVuX3N0YXR1czsKIAllbHNlIHsK
IAkJZHJtX2RiZ19hdG9taWMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgICAgIlVua25vd24gcHJv
cGVydHkgW1BST1A6JWQ6JXNdXG4iLApAQCAtOTMsMTUgKzk3LDE4IEBAIGludCBpbnRlbF9kaWdp
dGFsX2Nvbm5lY3Rvcl9hdG9taWNfc2V0X3Byb3BlcnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IsCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShk
ZXYpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9z
dGF0ZSA9CiAJCXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0YXRlKTsKKwlzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3Io
Y29ubmVjdG9yKTsKIAogCWlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+Zm9yY2VfYXVkaW9fcHJv
cGVydHkpIHsKIAkJaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPSB2YWw7CiAJCXJldHVy
biAwOwotCX0KLQotCWlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9w
ZXJ0eSkgeworCX0gZWxzZSBpZiAocHJvcGVydHkgPT0gZGV2X3ByaXYtPmJyb2FkY2FzdF9yZ2Jf
cHJvcGVydHkpIHsKIAkJaW50ZWxfY29ubl9zdGF0ZS0+YnJvYWRjYXN0X3JnYiA9IHZhbDsKIAkJ
cmV0dXJuIDA7CisJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBpbnRlbF9jb25uZWN0b3ItPnByaXZh
Y3lfc2NyZWVuX3Byb3BlcnR5KSB7CisJCWludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwoaW50
ZWxfY29ubmVjdG9yLCB2YWwpOworCQlpbnRlbF9jb25uX3N0YXRlLT5wcml2YWN5X3NjcmVlbl9z
dGF0dXMgPSB2YWw7CisJCXJldHVybiAwOwogCX0KIAogCWRybV9kYmdfYXRvbWljKCZkZXZfcHJp
di0+ZHJtLCAiVW5rbm93biBwcm9wZXJ0eSBbUFJPUDolZDolc11cbiIsCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYwppbmRleCA5MDNlNDk2NTlmNTYx
Li41NWY4MDIxOWNiMjY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Nvbm5lY3Rvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29ubmVjdG9yLmMKQEAgLTI5NywzICsyOTcsMzggQEAgaW50ZWxfYXR0YWNoX2NvbG9yc3Bh
Y2VfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAlkcm1fb2JqZWN0
X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLAogCQkJCSAgIGNvbm5lY3Rvci0+Y29s
b3JzcGFjZV9wcm9wZXJ0eSwgMCk7CiB9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3Bf
ZW51bV9saXN0IHByaXZhY3lfc2NyZWVuX2VudW1bXSA9IHsKKwl7IFBSSVZBQ1lfU0NSRUVOX0RJ
U0FCTEVELCAiRGlzYWJsZWQiIH0sCisJeyBQUklWQUNZX1NDUkVFTl9FTkFCTEVELCAiRW5hYmxl
ZCIgfSwKK307CisKKy8qKgorICogaW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3Byb3BlcnR5
IC0KKyAqICAgICBjcmVhdGUgYW5kIGF0dGFjaCB0aGUgY29ubmVjdGVyJ3MgcHJpdmFjeS1zY3Jl
ZW4gcHJvcGVydHkuICoKKyAqIEBjb25uZWN0b3I6IGNvbm5lY3RvciBmb3Igd2hpY2ggdG8gaW5p
dCB0aGUgcHJpdmFjeS1zY3JlZW4gcHJvcGVydHkKKyAqCisgKiBUaGlzIGZ1bmN0aW9uIGNyZWF0
ZXMgYW5kIGF0dGFjaGVzIHRoZSAicHJpdmFjeS1zY3JlZW4iIHByb3BlcnR5IHRvIHRoZQorICog
Y29ubmVjdG9yLiBJbml0aWFsIHN0YXRlIG9mIHByaXZhY3ktc2NyZWVuIGlzIHNldCB0byBkaXNh
YmxlZC4KKyAqLwordm9pZAoraW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7CisJc3Ry
dWN0IGRybV9wcm9wZXJ0eSAqcHJvcCA9IGludGVsX2Nvbm5lY3Rvci0+cHJpdmFjeV9zY3JlZW5f
cHJvcGVydHk7CisKKwlpZiAoIXByb3ApIHsKKwkJcHJvcCA9IGRybV9wcm9wZXJ0eV9jcmVhdGVf
ZW51bShjb25uZWN0b3ItPmRldiwKKwkJCQkJCURSTV9NT0RFX1BST1BfRU5VTSwKKwkJCQkJCSJw
cml2YWN5LXNjcmVlbiIsCisJCQkJCQlwcml2YWN5X3NjcmVlbl9lbnVtLAorCQkJCQkgICAgQVJS
QVlfU0laRShwcml2YWN5X3NjcmVlbl9lbnVtKSk7CisJCWlmICghcHJvcCkKKwkJCXJldHVybjsK
KworCQlpbnRlbF9jb25uZWN0b3ItPnByaXZhY3lfc2NyZWVuX3Byb3BlcnR5ID0gcHJvcDsKKwl9
CisKKwlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLCBwcm9wLAor
CQkJCSAgIFBSSVZBQ1lfU0NSRUVOX0RJU0FCTEVEKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5oCmluZGV4IDkzYTczNzVjODE5NmQuLjYxMDA1
ZjM3YTMzODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29ubmVjdG9yLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25u
ZWN0b3IuaApAQCAtMzEsNSArMzEsNiBAQCB2b2lkIGludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19w
cm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKIHZvaWQgaW50ZWxfYXR0
YWNoX2Jyb2FkY2FzdF9yZ2JfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
cik7CiB2b2lkIGludGVsX2F0dGFjaF9hc3BlY3RfcmF0aW9fcHJvcGVydHkoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3Rvcik7CiB2b2lkIGludGVsX2F0dGFjaF9jb2xvcnNwYWNlX3Byb3Bl
cnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwordm9pZCBpbnRlbF9hdHRhY2hf
cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7
CiAKICNlbmRpZiAvKiBfX0lOVEVMX0NPTk5FQ1RPUl9IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggZDcwNjEyY2Mx
YmEyYS4uZGUyMGVmZmIzZTA3MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTQ0Miw2ICs0NDIsMjMgQEAgc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciB7CiAJc3RydWN0IHdvcmtfc3RydWN0IG1vZGVzZXRfcmV0cnlfd29yazsK
IAogCXN0cnVjdCBpbnRlbF9oZGNwIGhkY3A7CisKKwkvKiBPcHRpb25hbCAicHJpdmFjeS1zY3Jl
ZW4iIHByb3BlcnR5IGZvciB0aGUgY29ubmVjdG9yIHBhbmVsICovCisJc3RydWN0IGRybV9wcm9w
ZXJ0eSAqcHJpdmFjeV9zY3JlZW5fcHJvcGVydHk7Cit9OworCisvKioKKyAqIGVudW0gaW50ZWxf
cHJpdmFjeV9zY3JlZW5fc3RhdHVzIC0gcHJpdmFjeV9zY3JlZW4gc3RhdHVzCisgKgorICogVGhp
cyBlbnVtIGlzIHVzZWQgdG8gdHJhY2sgYW5kIGNvbnRyb2wgdGhlIHN0YXRlIG9mIHRoZSBpbnRl
Z3JhdGVkIHByaXZhY3kKKyAqIHNjcmVlbiBwcmVzZW50IG9uIHNvbWUgZGlzcGxheSBwYW5lbHMs
IHZpYSB0aGUgInByaXZhY3ktc2NyZWVuIiBwcm9wZXJ0eS4KKyAqCisgKiBAUFJJVkFDWV9TQ1JF
RU5fRElTQUJMRUQ6IFRoZSBwcml2YWN5LXNjcmVlbiBvbiB0aGUgcGFuZWwgaXMgZGlzYWJsZWQK
KyAqIEBQUklWQUNZX1NDUkVFTl9FTkFCTEVEOiAgVGhlIHByaXZhY3ktc2NyZWVuIG9uIHRoZSBw
YW5lbCBpcyBlbmFibGVkCisgKiovCitlbnVtIGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyB7
CisJUFJJVkFDWV9TQ1JFRU5fRElTQUJMRUQgPSAwLAorCVBSSVZBQ1lfU0NSRUVOX0VOQUJMRUQg
PSAxLAogfTsKIAogc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlIHsKQEAgLTQ0
OSw2ICs0NjYsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgewogCiAJ
ZW51bSBoZG1pX2ZvcmNlX2F1ZGlvIGZvcmNlX2F1ZGlvOwogCWludCBicm9hZGNhc3RfcmdiOwor
CWVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3RhdHVzIHByaXZhY3lfc2NyZWVuX3N0YXR1czsK
IH07CiAKICNkZWZpbmUgdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoeCkgY29udGFp
bmVyX29mKHgsIHN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSwgYmFzZSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCAxNzE4MjExMTNkMzYyLi5m
Zjc2Yzc5OTM2NGQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBA
IC02Miw2ICs2Miw3IEBACiAjaW5jbHVkZSAiaW50ZWxfbHNwY29uLmgiCiAjaW5jbHVkZSAiaW50
ZWxfbHZkcy5oIgogI2luY2x1ZGUgImludGVsX3BhbmVsLmgiCisjaW5jbHVkZSAiaW50ZWxfcHJp
dmFjeV9zY3JlZW4uaCIKICNpbmNsdWRlICJpbnRlbF9wc3IuaCIKICNpbmNsdWRlICJpbnRlbF9z
aWRlYmFuZC5oIgogI2luY2x1ZGUgImludGVsX3RjLmgiCkBAIC02ODQxLDYgKzY4NDIsNyBAQCBp
bnRlbF9kcF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOwogCWVudW0gcG9ydCBwb3J0ID0gZHBfdG9f
ZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLnBvcnQ7CisJc3RydWN0IGludGVsX2Nvbm5lY3RvciAq
aW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7CiAKIAlpZiAo
IUlTX0c0WChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0EpCiAJCWludGVsX2F0dGFjaF9mb3Jj
ZV9hdWRpb19wcm9wZXJ0eShjb25uZWN0b3IpOwpAQCAtNjg3MSw2ICs2ODczLDEwIEBAIGludGVs
X2RwX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0CiAKIAkJLyogTG9va3VwIHRoZSBBQ1BJIG5vZGUgY29ycmVzcG9u
ZGluZyB0byB0aGUgY29ubmVjdG9yICovCiAJCWludGVsX2FjcGlfZGV2aWNlX2lkX3VwZGF0ZShk
ZXZfcHJpdik7CisKKwkJLyogQ2hlY2sgZm9yIGludGVncmF0ZWQgUHJpdmFjeSBzY3JlZW4gc3Vw
cG9ydCAqLworCQlpZiAoaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChpbnRlbF9jb25uZWN0
b3IpKQorCQkJaW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KGNvbm5lY3Rvcik7
CiAJfQogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ByaXZhY3lfc2NyZWVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3By
aXZhY3lfc2NyZWVuLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwMC4u
YzhhNWI2NGY5NGZiNwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uYwpAQCAtMCwwICsxLDcyIEBACisvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQKKy8qCisgKiBJbnRlbCBBQ1BJIHByaXZh
Y3kgc2NyZWVuIGNvZGUKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBHb29nbGUgSW5jLgorICov
CisKKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+CisKKyNpbmNsdWRlICJpbnRlbF9wcml2YWN5X3Nj
cmVlbi5oIgorCisjZGVmaW5lIENPTk5FQ1RPUl9EU01fUkVWSUQgMQorCisjZGVmaW5lIENPTk5F
Q1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUJCTIKKyNkZWZpbmUgQ09OTkVDVE9SX0RTTV9GTl9Q
UklWQUNZX0RJU0FCTEUJCTMKKworc3RhdGljIGNvbnN0IGd1aWRfdCBkcm1fY29ubl9kc21fZ3Vp
ZCA9CisJR1VJRF9JTklUKDB4QzcwMzMxMTMsIDB4ODcyMCwgMHg0Q0VCLAorCQkgIDB4OTAsIDB4
OTAsIDB4OUQsIDB4NTIsIDB4QjMsIDB4RTUsIDB4MkQsIDB4NzMpOworCisvKiBNYWtlcyBfRFNN
IGNhbGwgdG8gc2V0IHByaXZhY3kgc2NyZWVuIHN0YXR1cyAqLworc3RhdGljIHZvaWQgYWNwaV9w
cml2YWN5X3NjcmVlbl9jYWxsX2RzbShhY3BpX2hhbmRsZSBjb25uX2hhbmRsZSwgdTY0IGZ1bmMp
Cit7CisJdW5pb24gYWNwaV9vYmplY3QgKm9iajsKKworCW9iaiA9IGFjcGlfZXZhbHVhdGVfZHNt
KGNvbm5faGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQsCisJCQkJQ09OTkVDVE9SX0RTTV9SRVZJ
RCwgZnVuYywgTlVMTCk7CisJaWYgKCFvYmopIHsKKwkJRFJNX0RFQlVHX0RSSVZFUigiZmFpbGVk
IHRvIGV2YWx1YXRlIF9EU00gZm9yIGZuICVsbHhcbiIsIGZ1bmMpOworCQlyZXR1cm47CisJfQor
CisJQUNQSV9GUkVFKG9iaik7Cit9CisKK3ZvaWQgaW50ZWxfcHJpdmFjeV9zY3JlZW5fc2V0X3Zh
bChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkJICBlbnVtIGludGVsX3By
aXZhY3lfc2NyZWVuX3N0YXR1cyB2YWwpCit7CisJYWNwaV9oYW5kbGUgYWNwaV9oYW5kbGUgPSBj
b25uZWN0b3ItPmFjcGlfaGFuZGxlOworCisJaWYgKCFhY3BpX2hhbmRsZSkKKwkJcmV0dXJuOwor
CisJaWYgKHZhbCA9PSBQUklWQUNZX1NDUkVFTl9ESVNBQkxFRCkKKwkJYWNwaV9wcml2YWN5X3Nj
cmVlbl9jYWxsX2RzbShhY3BpX2hhbmRsZSwKKwkJCQkJICAgICBDT05ORUNUT1JfRFNNX0ZOX1BS
SVZBQ1lfRElTQUJMRSk7CisJZWxzZSBpZiAodmFsID09IFBSSVZBQ1lfU0NSRUVOX0VOQUJMRUQp
CisJCWFjcGlfcHJpdmFjeV9zY3JlZW5fY2FsbF9kc20oYWNwaV9oYW5kbGUsCisJCQkJCSAgICAg
Q09OTkVDVE9SX0RTTV9GTl9QUklWQUNZX0VOQUJMRSk7CisJZWxzZQorCQlEUk1fV0FSTigiJXM6
IENhbm5vdCBzZXQgcHJpdmFjeSBzY3JlZW4gdG8gaW52YWxpZCB2YWwgJXVcbiIsCisJCQkgZGV2
X25hbWUoY29ubmVjdG9yLT5iYXNlLmRldi0+ZGV2KSwgdmFsKTsKK30KKworYm9vbCBpbnRlbF9w
cml2YWN5X3NjcmVlbl9wcmVzZW50KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikK
K3sKKwlhY3BpX2hhbmRsZSBoYW5kbGUgPSBjb25uZWN0b3ItPmFjcGlfaGFuZGxlOworCisJaWYg
KCFoYW5kbGUpCisJCXJldHVybiBmYWxzZTsKKworCWlmICghYWNwaV9jaGVja19kc20oaGFuZGxl
LCAmZHJtX2Nvbm5fZHNtX2d1aWQsCisJCQkgICAgQ09OTkVDVE9SX0RTTV9SRVZJRCwKKwkJCSAg
ICAxIDw8IENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUgfAorCQkJICAgIDEgPDwgQ09O
TkVDVE9SX0RTTV9GTl9QUklWQUNZX0RJU0FCTEUpKSB7CisJCURSTV9XQVJOKCIlczogT2RkLCBj
b25uZWN0b3IgQUNQSSBub2RlIGJ1dCBubyBwcml2YWN5IHNjcm4/XG4iLAorCQkJIGRldl9uYW1l
KGNvbm5lY3Rvci0+YmFzZS5kZXYtPmRldikpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCURSTV9E
RVZfSU5GTyhjb25uZWN0b3ItPmJhc2UuZGV2LT5kZXYsICJzdXBwb3J0cyBwcml2YWN5IHNjcmVl
blxuIik7CisJcmV0dXJuIHRydWU7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwMC4uNzQwMTNhNzg4NWM3MAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaApAQCAtMCwwICsxLDI3
IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQgKi8KKy8qCisg
KiBDb3B5cmlnaHQgwqkgMjAxOSBHb29nbGUgSW5jLgorICovCisKKyNpZm5kZWYgX19EUk1fUFJJ
VkFDWV9TQ1JFRU5fSF9fCisjZGVmaW5lIF9fRFJNX1BSSVZBQ1lfU0NSRUVOX0hfXworCisjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgorCisjaWZkZWYgQ09ORklHX0FDUEkKK2Jvb2wg
aW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IpOwordm9pZCBpbnRlbF9wcml2YWN5X3NjcmVlbl9zZXRfdmFsKHN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvciwKKwkJCQkgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3Rh
dHVzIHZhbCk7CisjZWxzZQorc3RhdGljIGJvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2Vu
dChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJcmV0dXJuIGZhbHNlOwor
fQorCitzdGF0aWMgdm9pZAoraW50ZWxfcHJpdmFjeV9zY3JlZW5fc2V0X3ZhbChzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkgICAgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3Jl
ZW5fc3RhdHVzIHZhbCkKK3sgfQorI2VuZGlmIC8qIENPTkZJR19BQ1BJICovCisKKyNlbmRpZiAv
KiBfX0RSTV9QUklWQUNZX1NDUkVFTl9IX18gKi8KLS0gCjIuMjUuMC4yNjUuZ2JhYjJlODZiYTAt
Z29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
