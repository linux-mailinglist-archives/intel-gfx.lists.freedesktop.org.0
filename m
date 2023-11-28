Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868C97FBBF0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0179210E547;
	Tue, 28 Nov 2023 13:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CB610E401
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 05:15:05 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id
 5614622812f47-3b58d96a3bbso3065531b6e.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 21:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1701148504; x=1701753304; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=2JoDhAoTR0SgWotjuFJFh8rPqxox7iwGsvE9hRWNQRY=;
 b=lva/RLKIGYj+egp/r5PR+8bz8hW7uEwP4XWHZMbfcFHF26RpWZek3M652dLybTgfFt
 XE1Jpg7MRe+VP/mF+Gvcu9emxDkLR4/UTScS7gxTuKQaI7Zy45oyRPRlMCegCsotumHq
 /YfgewLW1vDWZMBxYU7RzX9bYd2olC9AahNCfqTVATGr806N8ZEiXrR0QvUgh0tWtHGl
 FV4FcwTUSIRK0FdpxccC0Si6IxIlUEats4LJXNpuSI42FSdeCC7tK/CQDEf3kS6H8Fjw
 xMz4f8XkeqXNfz9fTkF94fqEiFmJCGceUbx9JOHSa3+DMfRbh9d89w2Vy79nANuoegIx
 Fg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701148504; x=1701753304;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2JoDhAoTR0SgWotjuFJFh8rPqxox7iwGsvE9hRWNQRY=;
 b=RFeZekaH7nDPD8l0r4EoT4aQ4C/Yf0PC6XGU55nARSF2hFhtjUP3F/B956OsOTwQmv
 3a4Bgipd/X0Gx9zFIL0Ez/At37vqw7XMnUcSkyR3W6nbrxsUhoHJQh8KwUhAtjOQ6MN7
 4uTPm+HriWtKTLHBFkx64zCpmYsbsLvRVfbf9M1B/OowY81HKtOO47baUpTWyXGw3shr
 NA1RXh1Z7LIzU8Tc20ea1XZM7gPfvGFSGE2jQCq9FNbt/FKWP7pxNpBUAXYqqLwc7sSq
 rP5DdklEZzsdCL/54KTZlrACo9piaRLh/WxhgmH5CfXxO624VKZE14Ny0wwTJSGMGLNr
 pDdg==
X-Gm-Message-State: AOJu0YxnWiMt77ZxjbbG9E34NnV2d7J5Vaz6uANEqsLMWCKIoBK8BDok
 b6hEd6nnfSg9Gc5elyZ9/nya
X-Google-Smtp-Source: AGHT+IGyf/7KAwi2AXPmYeCIDQnKIhHc2XSuIyEGnblje0EJXhZBPY9aMi6CVPuB2Vd6usaT1FIhGA==
X-Received: by 2002:a05:6808:3209:b0:3b8:4ada:7d7b with SMTP id
 cb9-20020a056808320900b003b84ada7d7bmr19405065oib.28.1701148504384; 
 Mon, 27 Nov 2023 21:15:04 -0800 (PST)
Received: from thinkpad ([117.213.103.241]) by smtp.gmail.com with ESMTPSA id
 r24-20020a62e418000000b006cb9725f5fdsm8033842pfh.217.2023.11.27.21.15.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 21:15:03 -0800 (PST)
Date: Tue, 28 Nov 2023 10:44:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Message-ID: <20231128051456.GA3088@thinkpad>
References: <20231128042026.130442-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231128042026.130442-1-vignesh.raman@collabora.com>
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
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, helen.koike@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 28, 2023 at 09:50:26AM +0530, Vignesh Raman wrote:
> Commit a2458d8f618a ("PCI/ASPM: pci_enable_link_state: Add argument
> to acquire bus lock") has added an argument to acquire bus lock
> in pci_enable_link_state, but qcom_pcie_enable_aspm calls it
> without this argument, resulting in below build error.
> 

Where do you see this error? That patch is not even merged. Looks like you are
sending the patch against some downstream tree.

- Mani

> drivers/pci/controller/dwc/pcie-qcom.c:973:9: error: too few arguments to function 'pci_enable_link_state'
> 
> This commit fixes the compilation error by passing the sem argument
> to pci_enable_link_state in the qcom_pcie_enable_aspm function.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 6902e97719d1..e846e3531d8e 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -970,7 +970,7 @@ static int qcom_pcie_enable_aspm(struct pci_dev *pdev, void *userdata)
>  {
>  	/* Downstream devices need to be in D0 state before enabling PCI PM substates */
>  	pci_set_power_state(pdev, PCI_D0);
> -	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL);
> +	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL, false);
>  
>  	return 0;
>  }
> -- 
> 2.40.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்
