Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5592D734D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 11:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CA06ED18;
	Fri, 11 Dec 2020 10:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81066ED18
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 10:04:41 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id a11so670343wrr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 02:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1m1097L8Z65yNEwPVsqCFAhMTO7JcIQztqm0XMNCEPQ=;
 b=QxFc8GC7E8T+U1gL6XJZvjeXxiWbuXfRqv6+3/ZJOEoQYn8YiRuOLDZAWueGTraddr
 xPqz2bb/8UoAjcvd5vsoN8LW5Iq1Lp0AqSabcEPsXCi+l/VkgtRG+OzcSz2lDjE/Pdix
 jshzcxstN+qosX02zQCGS+/I2FYEYzEAEBcOtJSJ1mr8h1MxoB17ALXOASyS2RwWORLD
 sYyHzWywWpvht4yy3yfrgCqZgrWTC9ga2KkmmQ+oI2PP2v+Qn9n0ORXRDwcKBkqiCMKf
 N0XznwYuSkPJfUeKcTzGZ2pjw4N1X+j5jdnHapfeS7fwZVeyxQTBUj+e7/XfSTgXR3Ap
 ykzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1m1097L8Z65yNEwPVsqCFAhMTO7JcIQztqm0XMNCEPQ=;
 b=ADfoNc5jHr0JlLTizP8H1sXtBmcv438nNcBORvfedr/7ZG82aE4XPeKMY5NFxHB8iV
 PuNI2VsRFCj7IZYE2N9+oWZ7rDWK2IM/2Ag3Bpg+dLCeYh49KY2fkpNSbY0mD06aoXL2
 9wFI3JKhU8a2m8cucFdRNYaKYMMoAt/XZWIzFfCdEH46p9t6aiOPWSRSlYzAiMjN9qmi
 QrlarinGqYSFoolQX4YyWDuadD8XsjIngb6q2UKR8gpxd59jUOVLUhbAFk7A+WwciZAQ
 HbwWoQ7haTuIr63s7fkdU0vM5IZmOZLMImbFBncdEE2hK0K8PpUAiuV+zQE+G2nnwy/i
 0huQ==
X-Gm-Message-State: AOAM531puPGaFp7rbW8kaevCVcKKiXRsR4NhKJbY9LsMq1pHHmdSkcmE
 PLqqiRMUvqPVs3nsq1HShKkfAg==
X-Google-Smtp-Source: ABdhPJwPXfTZPDeiEu60EOOVLfjPDebdQDfkcu30zCcF3k07tbHpbRDSiAPsDeGxO9u3bWjkQ8cNJw==
X-Received: by 2002:a5d:6ccc:: with SMTP id c12mr13142414wrc.4.1607681080467; 
 Fri, 11 Dec 2020 02:04:40 -0800 (PST)
Received: from dell ([91.110.221.240])
 by smtp.gmail.com with ESMTPSA id 125sm14307876wmc.27.2020.12.11.02.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 02:04:39 -0800 (PST)
Date: Fri, 11 Dec 2020 10:04:36 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201211100436.GC5029@dell>
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.157283633@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210194044.157283633@linutronix.de>
Subject: Re: [Intel-gfx] [patch 16/30] mfd: ab8500-debugfs: Remove the racy
 fiddling with irq_desc
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 netdev@vger.kernel.org, Will Deacon <will@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh@kernel.org>,
 linux-s390@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-gfx@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-gpio@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 David Airlie <airlied@linux.ie>, linux-parisc@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, LKML <linux-kernel@vger.kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Jon Mason <jdmason@kudzu.us>,
 linux-ntb@googlegroups.com, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxMCBEZWMgMjAyMCwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgoKPiBGaXJzdCBvZiBh
bGwgZHJpdmVycyBoYXZlIGFic29sdXRlbHkgbm8gYnVzaW5lc3MgdG8gZGlnIGludG8gdGhlIGlu
dGVybmFscwo+IG9mIGFuIGlycSBkZXNjcmlwdG9yLiBUaGF0J3MgY29yZSBjb2RlIGFuZCBzdWJq
ZWN0IHRvIGNoYW5nZS4gQWxsIG9mIHRoaXMKPiBpbmZvcm1hdGlvbiBpcyByZWFkaWx5IGF2YWls
YWJsZSB0byAvcHJvYy9pbnRlcnJ1cHRzIGluIGEgc2FmZSBhbmQgcmFjZQo+IGZyZWUgd2F5Lgo+
IAo+IFJlbW92ZSB0aGUgaW5zcGVjdGlvbiBjb2RlIHdoaWNoIGlzIGEgYmxhdGFudCB2aW9sYXRp
b24gb2Ygc3Vic3lzdGVtCj4gYm91bmRhcmllcyBhbmQgcmFjeSBhZ2FpbnN0IGNvbmN1cnJlbnQg
bW9kaWZpY2F0aW9ucyBvZiB0aGUgaW50ZXJydXB0Cj4gZGVzY3JpcHRvci4KPiAKPiBQcmludCB0
aGUgaXJxIGxpbmUgaW5zdGVhZCBzbyB0aGUgaW5mb3JtYXRpb24gY2FuIGJlIGxvb2tlZCB1cCBp
biBhIHNhbmUKPiB3YXkgaW4gL3Byb2MvaW50ZXJydXB0cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiBDYzogTGludXMgV2FsbGVpaiA8
bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAtLS0K
PiAgZHJpdmVycy9tZmQvYWI4NTAwLWRlYnVnZnMuYyB8ICAgMTYgKysrLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCkFja2Vk
LWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
