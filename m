Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7639E762A84
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 06:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4402710E411;
	Wed, 26 Jul 2023 04:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F4B10E411
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 04:58:48 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-3fba8e2aa52so63040225e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690347527; x=1690952327;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8VSCNiqtjM63gyIxgjIBJEUZn4+F4fATzLK2EYdkNIY=;
 b=KAne/S+rw2HDnpOYoq0XxAAGGDmFqVEL+4b4QaJcz22Motczt/sEQi9P3+LqtencG5
 gffk18N2un8Un3gVDBbLDRJCSvj/U8kQRXbeQ3sQi+huU3lOUDhkEacR32UfE0BX4PXh
 R5/AZ6BiObX/u6qK7p5VAxfARPx+dYhRpdGh8YMNmi7dfD3cWvKAT9kHjYSnEJ5f8VY9
 O4DK8ND7BY98sdM+l45wVaQtDojEafUaGFQgGsLdy7qT7doz5fcB77x8RhaQWCvIVbYf
 16flgyVtRYvWqtls+t8zRp/16OIRitE9lb7iBK7d3/SPlHxDXZmPwzdX6fReubLyHpoC
 4YXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690347527; x=1690952327;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8VSCNiqtjM63gyIxgjIBJEUZn4+F4fATzLK2EYdkNIY=;
 b=ZucVBHRolBTDyNbd0gUZ3B3JrzyIg7M/1qGn1fuJbYiEMardpeMaJs0C0oP9gB544D
 e+QslL1vQqo04f76S9kT+ol8jiEsE5yNzPERNCE9p3SD/D6u/uyveEMNapZkPMea1T0N
 BI4hIDdqgEcHIQBePgkDv2hym2bA/G3Wo0IP8VRmqKOrnDL4EYL2r2YrIn0YJQc98n8E
 zTgCarFzo9lkemxKxnAXlpoO/C1DaiNicSEWckGFn68Pj/Crln9aqW+Cax58ufOXdL8s
 FyW+TBoRRfhi5H7oYUdclLtXkAuAFZ72LLLGULT7AUMaejPoEAeLJw6Zbbb/UpB7Y8B0
 L2Rg==
X-Gm-Message-State: ABy/qLbcGbaFetK/qIsd1AmVLDh+42hJjXYNnMOCHJzlMC+xcM4eus3D
 qZoT9fLWW+W9Bx0JLVp38Rcf3A==
X-Google-Smtp-Source: APBJJlGmyTCKXK1KhdP6dWBqtNLQ81LaRl/lodbuRe1N53MLle/JLuh+e2iJ/WFJxYTYet9lHw3Lew==
X-Received: by 2002:adf:e3c5:0:b0:317:5d1c:9719 with SMTP id
 k5-20020adfe3c5000000b003175d1c9719mr515001wrm.9.1690347527148; 
 Tue, 25 Jul 2023 21:58:47 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 h10-20020a5d6e0a000000b003141e9e2f81sm18453128wrz.4.2023.07.25.21.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jul 2023 21:58:46 -0700 (PDT)
Date: Wed, 26 Jul 2023 07:58:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Su Hui <suhui@nfschina.com>
Message-ID: <a4350cec-4ed6-40bc-b68b-3a3a89aa08ac@kadam.mountain>
References: <5d096bcf-c394-4dad-b307-3d7e33ab6e6f@kadam.mountain>
 <630b9f2e-00e8-5b54-ad1c-3e4d404454a1@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <630b9f2e-00e8-5b54-ad1c-3e4d404454a1@nfschina.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tv: avoid possible division by
 zero
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
Cc: mripard@kernel.org, kernel-janitors@vger.kernel.org, llvm@lists.linux.dev,
 daniel@ffwll.ch, trix@redhat.com, intel-gfx@lists.freedesktop.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, nathan@kernel.org,
 andrzej.hajda@intel.com, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 26, 2023 at 09:21:50AM +0800, Su Hui wrote:
> On 2023/7/25 13:51, Dan Carpenter wrote:
> > The reason why the first five attempts had bugs is because we are
> > trying to write it in the most complicated way possible, shifting by
> > logical not what?
> Wonderful! Should I add your name as signed-of-by?

Sure.  Or you can put it as a Suggested-by.

regards,
dan carpenter

