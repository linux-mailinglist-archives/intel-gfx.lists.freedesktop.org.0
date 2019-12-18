Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBD1124372
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 10:39:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F666E29D;
	Wed, 18 Dec 2019 09:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799A36E29B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 09:39:01 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id q10so1467876wrm.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=nFPcr6Vhf/vTUjnzKn/DgVDi3KeDiuALX41REntGwaE=;
 b=V/K3+TWVGK3j3wHm/pvunVZKgm/4sFvM7qY+23Kd9QQibFKlW5umPl8RNbE5nVx+Zf
 FjdOYqcyo2HvBpD66JePTkC7aVAbWrqNs05VBqdqU6+fcIUBt2ETMv7Fpd/qkJEhq3iS
 sAwPgriUz/aXUOpMmjLz43xPTxgNaYw/jiYA62sRfCcpiIHWnp7GHqV/KnAjjahsa7sG
 ilpdIqsAjAKAhkzESCyACJcpbuwlAs8L10eHvbzv73PWG4WL3DGVhRk85SqnD0tEBiYr
 Kg0qBelmU+Mk1Xpz8QrN6cz/EDoRUSalKERhbQhc7RzPYvn1PKpec21zQlt/TdmHW41z
 pkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nFPcr6Vhf/vTUjnzKn/DgVDi3KeDiuALX41REntGwaE=;
 b=E9VdUZtEukMH7F8WOjYvhUy64WN4/u70rbBuxmo/yUNkCL8FSaOjKCgOaLlcQU/UUw
 kB55ZfkT6M6OZvC2WsDTfwUU/kreOHIh5t7e6nPC/OTw8+Mn3/Ns9eaC4BYgBA8AOcg4
 fq7NJTGiC+LBWuS7g8dm2f3rZq3drdy7tATX9/aW+0aRH5vD38z7wEVCeXUDlRUrwYVu
 +jgUJa7Boiv36s5gW5j90TsI+tnDuLe3WEotBuqNFDJ7smmFDSy2iHAuT6XSBjZDf6Lz
 QceyGG+qG6Am1XBImA51GRGXv457snsss8j6/V6D7rpy52N1OH2zJEVj6LdR0+qFIGhi
 RGFA==
X-Gm-Message-State: APjAAAXzQDhcTpigOl9D63pkbWVjIRg6p1BctbNqACL8DeArrSJS6cY6
 mzDRwz7eITLzn7AEtddBIVDq+m2Gudw=
X-Google-Smtp-Source: APXvYqzSJKUl+4Mp9mXUnWGBYdOx1N4C65CovJGXTy3EzFZSQQGVRwoIgvyZ3eGDW5jE2Jo022hASQ==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr1743769wrh.121.1576661940179; 
 Wed, 18 Dec 2019 01:39:00 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id k8sm1975793wrl.3.2019.12.18.01.38.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 01:38:59 -0800 (PST)
Date: Wed, 18 Dec 2019 09:38:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191218093859.GO18955@dell>
References: <20191212155209.GC3468@dell>
 <4d07445d-98b1-f23c-0aac-07709b45df78@redhat.com>
 <20191213082734.GE3468@dell>
 <d648794d-4c76-cfa1-dcbd-16c34d409c51@redhat.com>
 <20191216093016.GE3648@dell>
 <fc3c29da-528d-a6b6-d13b-92e6469eadea@redhat.com>
 <20191217081127.GI18955@dell> <87immfyth2.fsf@intel.com>
 <20191217135140.GL18955@dell> <87a77q14wo.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a77q14wo.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] mfd: intel_soc_pmic: Rename
 pwm_backlight pwm-lookup to pwm_pmic_backlight
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
Cc: linux-acpi@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOCBEZWMgMjAxOSwgSmFuaSBOaWt1bGEgd3JvdGU6Cgo+IE9uIFR1ZSwgMTcgRGVj
IDIwMTksIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gSGFucyB3
YXMgbWFraW5nIHRoZSBjYXNlIHRoYXQgdGhpcyB3YXMgaW1wcmFjdGljYWwgZm9yIERSTSwgZHVl
IHRvIHRoZQo+ID4gYW1vdW50IG9mIGNodXJuIHlvdSBndXlzIHJlY2VpdmUsIGhlbmNlIHRoZSBk
aXNjdXNzaW9uLiAgSSdtIHZlcnkKPiA+IHBsZWFzZWQgdGhhdCB0aGlzIGlzIG5vdCB0aGUgY2Fz
ZS4KPiAKPiBIZWgsIHdlbGwsIGl0IGlzIHRoZSBjYXNlLCBidXQgdGhlIHBvaW50IGlzIHRoYXQg
c2hvdWxkIGJlIG91ciBwcm9ibGVtLAo+IG5vdCB5b3Vycy4gOykKCjopCgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKU
giBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJv
b2sgfCBUd2l0dGVyIHwgQmxvZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
