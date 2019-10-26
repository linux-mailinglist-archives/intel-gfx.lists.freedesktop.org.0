Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46FBE586A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 06:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54D16EBE7;
	Sat, 26 Oct 2019 04:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FE26EBE7
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 04:06:56 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id b19so1098522otq.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 21:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s9ZDTpvmXMJMaGvq/9uthxHv+KTj3hxV6f/TzH8e7RU=;
 b=AleP879ux/Gu2tg4T53W7L+8Yt/XQXwsOPhXoIF8QeavedlEnahy4ISzaztxTEnqDE
 e5IRIj+4smZwlhYbw8HwGaRrdyKUIysZL1cmRWoBZ4q2CxmLqNzblYuZ/nAgiP6OruMt
 8lfYAVjw8kQIaaIpl1y987wz4xBa8MdRG38J0O9nVc6UpKupxDQ+xRXnpEdLMkD/1YuE
 HZHYbNhf6U1OWC6/Gi1ovukLpeDhg50VSvzIVni2+IwRJEtrRrzqFBGnKX3qCKoA1rHl
 tequGV/lk4P2PywjaaDRKnjgYFo2Yjyu/kFTTGx67hXkhBd5sYYe3ogVhx8sD1yfmIxy
 mh8g==
X-Gm-Message-State: APjAAAV5SCtm0iABlV6SbOkDm1yHHmiCvEFjIDWvC5cyjtbHTGXOLgOM
 8EjrhrEtzfMQCFwSD1gZk0g=
X-Google-Smtp-Source: APXvYqx3HCSLIcF9j92JapBi0LAIgJmOsa+21RTUe9ToqDiL5a2Zrjp/mL3C1j/iZh0duroX12nm2A==
X-Received: by 2002:a9d:e85:: with SMTP id 5mr5144924otj.348.1572062814728;
 Fri, 25 Oct 2019 21:06:54 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id v1sm198721otq.34.2019.10.25.21.06.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 21:06:53 -0700 (PDT)
Date: Fri, 25 Oct 2019 21:06:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191026040652.GA48586@ubuntu-m2-xlarge-x86>
References: <20191025135943.12524-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025135943.12524-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s9ZDTpvmXMJMaGvq/9uthxHv+KTj3hxV6f/TzH8e7RU=;
 b=GPyXjuWDxeshVO5sd/xKY+im2dIu4ZSFUfqYtvKS5N0gsvBdrAL848smIC1jM7GidZ
 h23jZuLSJOlEMuMk4D3wDQGR51yFupCux2qFb5WSWce0QUW21A4bImunw0nKNVsOB0WS
 CwwRTfu2xXLvcj33sCMyeOWkyug/PAUSagy6IEi8VNVG94Q3+6bbZJDJYFyrw4KpkX28
 j4sQDTpWqO1Pt/iKCM4wPuQYLLnDLps4UoG69nw9lf/E0977gqJ1+4jxvS4mNpYuXNA2
 1822Tc0ljUB8yHA5e5LwWG4utoRWaTxA+RlfgEgABvTuwDWGPzz9GqxbF+E3gtndozbi
 A3oQ==
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Encapsulate kconfig constant
 values inside boolean predicates
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDI6NTk6NDJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEF2b2lkIGFuZ2VyaW5nIGNsYW5nIGFuZCBzbWF0Y2ggYnkgdXNpbmcgYSBjb25zdGFu
dCB2YWx1ZSBpbiBhICcmJicgdGVzdCwKPiBieSBmb3JjaW5nIHRoYXQgY29uc3RhbnQgdmFsdWUg
aW50byBhIGJvb2xlYW4uCj4gCj4gRS5nLiwKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfaGVhcnRiZWF0LmM6MTU5OjEzOiB3YXJuaW5nOiB1c2Ugb2YgbG9naWNhbCAnJiYn
IHdpdGggY29uc3RhbnQgb3BlcmFuZCBbLVdjb25zdGFudC1sb2dpY2FsLW9wZXJhbmRdCj4gCWlm
ICghZGVsYXkgJiYgQ09ORklHX0RSTV9JOTE1X1BSRUVNUFRfVElNRU9VVCkgewo+ICAgICAgICAg
ICAgICAgICAgICAgICBeICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gCj4gUmVw
b3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBOYXRoYW4g
Q2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgo+IENjOiBOaWNrIERlc2F1bG5p
ZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KCkxHVE0sIHRoYW5rIHlvdSBmb3IgdGhlIGZpeCEKClJldmlld2VkLWJ5
OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
