Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB9C7FBBE3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A050010E534;
	Tue, 28 Nov 2023 13:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A673E10E4BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 10:46:05 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id
 af79cd13be357-7788f513872so285715685a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 02:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1701168364; x=1701773164; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Ody4rvie3s+8GD4mOiQPrgYycVPJoTVFCyOTzD8p7Dc=;
 b=QRtWCtCm4JbowQTveI3HZcUgb3qOgwjTwNGQbVorto9RswYqQe2CKT56+hu2AqUdn0
 kYYijztFnyukkEZyqzeMGwAAEUc3cAkUkiEGu0csGQa2yMSEVOZnGZ8gMEh5r6nCFUaV
 8YiL324NrTbBfqoGs+4w7kL1w3EY/i1ITjk2SL4OrBVKZRhr7UPXhCD6FZxvViHss8iJ
 8RGRPhiQLXZkPqM7uh8cQ/wzl/WSUYLFO8QdDAOI0SR2ZRYrcHC7BSvPPCNK4ct0Jyoq
 P22bi404EDX8JUZisN3qPM7+x0HJNbTsERmeK5nTkS2AkdP+dY8j6NmnEXAMTU6ws0sO
 5n0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701168364; x=1701773164;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ody4rvie3s+8GD4mOiQPrgYycVPJoTVFCyOTzD8p7Dc=;
 b=VuyLKxQ3PzwQGU78kshKtJBTqe6MZQc1p1H5GZw/gxbj+4hKMx7QxLD+IzLn2uQKQi
 rmDnjJ1Iyt3Q8/RfDUwgK2+J9N6r0Lo1UAdyrUL83AfREjM+G9ndTeMG2dAcmh1+08Ti
 9EiTh/ssqA3dyJnXF/RoAaN9kHZJlp4yWImrxIj9Bfgo0KEr6rFK8yV8yktV49b39hq1
 Lts4lnmca3PDQlIzqB5hhAVjCePtJue724S5JPuCGYH4brq84telHtzaEQ0njCYbHAjv
 /kIYSvDSp2PJR2J0RyUKN/qzyWyp7lrzueIek8qV2NgdaaR3wY88x+c3WUBbyX+73f0a
 4fxg==
X-Gm-Message-State: AOJu0YzgwdnjQk8bctZhS3lvQTIyEHwvdELMzGKx3uxFv9nL0/5ixQyq
 8gN2EwZoFBX3okhpxNXXzbEo
X-Google-Smtp-Source: AGHT+IE8SWfZ7GqO4s0fMyj3jKQqECEGMDFDC8TEC7GRCVPyBE185OA3cmNu5rktS/g6Fo8eFgfD6g==
X-Received: by 2002:a0c:fd6b:0:b0:67a:5457:77c9 with SMTP id
 k11-20020a0cfd6b000000b0067a545777c9mr3755673qvs.11.1701168364626; 
 Tue, 28 Nov 2023 02:46:04 -0800 (PST)
Received: from thinkpad ([59.92.99.177]) by smtp.gmail.com with ESMTPSA id
 b18-20020a0c9b12000000b0065b13180892sm5074170qve.16.2023.11.28.02.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Nov 2023 02:46:04 -0800 (PST)
Date: Tue, 28 Nov 2023 16:15:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20231128104549.GM3088@thinkpad>
References: <20231128042026.130442-1-vignesh.raman@collabora.com>
 <20231128051456.GA3088@thinkpad>
 <50a9f061-e1d3-6aca-b528-56dbb6c729d9@collabora.com>
 <20231128065104.GK3088@thinkpad> <87a5qy88mx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a5qy88mx.fsf@intel.com>
X-Mailman-Approved-At: Tue, 28 Nov 2023 13:53:26 +0000
Subject: Re: [Intel-gfx] [PATCH] PCI: qcom: Fix compile error
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
Cc: daniels@collabora.com, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Vignesh Raman <vignesh.raman@collabora.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 helen.koike@collabora.com, Bjorn Helgaas <helgaas@kernel.org>,
 "David E. Box" <david.e.box@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 28, 2023 at 12:39:02PM +0200, Jani Nikula wrote:
> On Tue, 28 Nov 2023, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
> > On Tue, Nov 28, 2023 at 11:44:26AM +0530, Vignesh Raman wrote:
> >> Hi Mani,
> >> 
> >> On 28/11/23 10:44, Manivannan Sadhasivam wrote:
> >> > On Tue, Nov 28, 2023 at 09:50:26AM +0530, Vignesh Raman wrote:
> >> > > Commit a2458d8f618a ("PCI/ASPM: pci_enable_link_state: Add argument
> >> > > to acquire bus lock") has added an argument to acquire bus lock
> >> > > in pci_enable_link_state, but qcom_pcie_enable_aspm calls it
> >> > > without this argument, resulting in below build error.
> >> > > 
> >> > 
> >> > Where do you see this error? That patch is not even merged. Looks like you are
> >> > sending the patch against some downstream tree.
> >> 
> >> I got this error with drm-tip - git://anongit.freedesktop.org/drm-tip
> >> 
> >> This commit is merged in drm-intel/topic/core-for-CI -
> >> https://cgit.freedesktop.org/drm-intel/log/?h=topic/core-for-CI
> >> 
> >
> > Okay. Since this patch is just for CI, please do not CC linux-pci as it causes
> > confusion.
> 
> Agreed. More on-topic for linux-pci is what happened with [1].
> 
> We've been running CI with that for months now to avoid lockdep splats,
> and it's obviously in everyone's best interest to get a fix upstream.
> 

Yes, ofc. Right now we have 2 series/patches to fix the locking issue:

https://lore.kernel.org/all/20230321233849.3408339-1-david.e.box@linux.intel.com/
https://lore.kernel.org/linux-pci/20231128081512.19387-1-johan+linaro@kernel.org/

Bjorn has to choose one among them.

- Mani

> David, Bjorn?
> 
> 
> BR,
> Jani.
> 
> 
> [1] https://lore.kernel.org/all/20230321233849.3408339-1-david.e.box@linux.intel.com/
> 
> 
> 
> 
> >
> > - Mani
> >
> >> Regards,
> >> Vignesh
> 
> -- 
> Jani Nikula, Intel

-- 
மணிவண்ணன் சதாசிவம்
