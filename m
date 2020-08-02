Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5072357B3
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 16:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69086E14E;
	Sun,  2 Aug 2020 14:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886026E14B
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596380037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1kkoTewt7Fx4Q+2DDC1UGcR4JlqqtBcQK2oUP1r3rTc=;
 b=KnqpS4ViDCoCa1PcV2Psr+Ko7l0krOoOdTkpQQu7ws8TF8Zd+tHqIOp3rw8C4/nfaZbIR6
 kvkX9VP8Zoo27YEtvOT/jVB9j1DzSS4thjHFRFRxjAlrGLhTxaXmFur6gz5eC0v5a8I3sl
 2I5eDkmQ88njW6EdxAKYfdGnPSQzQ6E=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-e1rR2C3dNUqpgnhTm_Sm5Q-1; Sun, 02 Aug 2020 10:53:51 -0400
X-MC-Unique: e1rR2C3dNUqpgnhTm_Sm5Q-1
Received: by mail-qt1-f198.google.com with SMTP id b1so17590127qto.17
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Aug 2020 07:53:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1kkoTewt7Fx4Q+2DDC1UGcR4JlqqtBcQK2oUP1r3rTc=;
 b=BGI2t+x2Btn0t3JkKKp0pfo7j3Im33C0dCMKWMxjUKlCUDiljKhpKUJGDXdc+ZUHug
 62sswYu3tzCnpfXC7O/tpvHaqbPY7fTG3+ces3TENh+cYpOwc4hOzUc5VlR/eBkHG3mB
 +kaPYA+ScIrd2bEgQxAtaJtR1RwvUaU1gGM5oPR5XilaVYIvMgY5LsC+W0Yfn2WRsevj
 jcqY0RPHKj4yr8IXYPj/BqltLqNyiCrpKQxhw/mjporslfeTRcgKSVz+jLngVJ4sgUgi
 HW0+xc0WM9nBXPqwd1V8JhppuWcLf1cAIOBANq3E5vO5/pEGrgmvZWVftG3tZ2hjzY/S
 fpKw==
X-Gm-Message-State: AOAM5304gmvzXcpAiQI9kvS0teL6wev3wu49iOL6cm5BQSQmCJGDYlru
 9onFERTL9lL2kS3/ol+LSUdKLiuwFJ159kGSHJ8lvLMxnKtuQPpGHDiOCVq93VtLMsHEjON5E1U
 XLMy8q6tC5i/y7uYlBN5ZwEZbco0l
X-Received: by 2002:a0c:f007:: with SMTP id z7mr12711386qvk.53.1596380031319; 
 Sun, 02 Aug 2020 07:53:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsaj772ZR8xxDSmSbCv1i3DbzhNyKSnnIAtdh3ZvECGhzafck69cLoHqLTgfamrb5jJgzXtg==
X-Received: by 2002:a0c:f007:: with SMTP id z7mr12711349qvk.53.1596380031093; 
 Sun, 02 Aug 2020 07:53:51 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id t127sm16326265qkc.100.2020.08.02.07.53.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Aug 2020 07:53:50 -0700 (PDT)
To: Borislav Petkov <bp@alien8.de>,
 "Saheed O. Bolarinwa" <refactormyself@gmail.com>
References: <20200801112446.149549-1-refactormyself@gmail.com>
 <20200801125657.GA25391@nazgul.tnic>
From: Tom Rix <trix@redhat.com>
Message-ID: <6ecce8f3-350a-b5d5-82c9-4609f2298e61@redhat.com>
Date: Sun, 2 Aug 2020 07:53:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200801125657.GA25391@nazgul.tnic>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC PATCH 00/17] Drop uses of pci_read_config_*()
 return value
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org,
 linux-fpga@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-rdma@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Joerg Roedel <joro@8bytes.org>, linux-atm-general@lists.sourceforge.net,
 helgaas@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Wolfgang Grandegger <wg@grandegger.com>, intel-gfx@lists.freedesktop.org,
 linux-gpio@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 skhan@linuxfoundation.org, bjorn@helgaas.com,
 Kalle Valo <kvalo@codeaurora.org>, linux-edac@vger.kernel.org,
 linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 dmaengine@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/1/20 5:56 AM, Borislav Petkov wrote:
> On Sat, Aug 01, 2020 at 01:24:29PM +0200, Saheed O. Bolarinwa wrote:
>> The return value of pci_read_config_*() may not indicate a device error.
>> However, the value read by these functions is more likely to indicate
>> this kind of error. This presents two overlapping ways of reporting
>> errors and complicates error checking.
> So why isn't the *value check done in the pci_read_config_* functions
> instead of touching gazillion callers?
>
> For example, pci_conf{1,2}_read() could check whether the u32 *value it
> just read depending on the access method, whether that value is ~0 and
> return proper PCIBIOS_ error in that case.
>
> The check you're replicating
>
> 	if (val32 == (u32)~0)
>
> everywhere, instead, is just ugly and tests a naked value ~0 which
> doesn't mean anything...
>
I agree, if there is a change, it should be in the pci_read_* functions.

Anything returning void should not fail and likely future users of the proposed change will not do the extra checks.

Tom

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
