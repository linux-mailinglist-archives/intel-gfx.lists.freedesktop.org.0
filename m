Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1370A727A16
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 10:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5D110E594;
	Thu,  8 Jun 2023 08:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B551C10E594
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 08:37:28 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-3f735259fa0so2550345e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jun 2023 01:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686213445; x=1688805445;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hZCb5PdhS0IYwvvsDCa/VL+qib/TSEpn0dlyBBSbqu4=;
 b=xKQFIVRwB7u6411rnPYsy+hEEYogWdc8ES4TQnFINVLWFc25NgIeIXrP/VQnMgykrQ
 rjI6GEND5upFg3dpwUQY89Zxl4ZG5SH3PIjoaKwqKlz6i9UATKNayO/6LlVvaJrqIrQH
 4QTOJp2PRR8uMD4RQQCzHmNe324K7rBbzN86kAK8oPRXSbYV3BQasQW2KkjbPcjac4r6
 uKDieZr29nVwFV4cibwlYkwqvnPcsX75h3JKpXmmTfWIUxttT+jzCscA1NHZwAS74yCK
 XQ+8DsQpuhMWKcKQNX6bB7Xdkm+79fro+mLsj+33y/o1sHiAADv2XVuD4sRX1KWsA7kv
 nykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686213445; x=1688805445;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hZCb5PdhS0IYwvvsDCa/VL+qib/TSEpn0dlyBBSbqu4=;
 b=BYjZzP6MjpbcFVRECIdnWvmZY5ovnTahTSzSMBcbmLqzfk2vOTmxti9a4FtXfjxJzo
 Ehy6m8shfkqIpf/JofxwTEAf3jECQ8MUNbcSMsE9/3hxuwMEDDdvvGQgghBbCl8Gbebc
 pN4BQsA5t4lr8F/2cYOfnuyAOD3/eMGmg9bIlJLNaELYSRme7INLRYiGwUoElVgwt9OH
 0CUnWtZZlOw6bNaVr/LhGZGRKmhnJzZskCpXUl1dIG5MHvlPGZikAD8OK6/A3iaei2gC
 wFAgfgwpFUu+eB9H00ToedO4nF4LFscnMa8XMgS5rNLDpUeSV+IUnKILYZu265Tg6aWe
 QHQw==
X-Gm-Message-State: AC+VfDwhXI0OJo6dQIgxmBv3rJPMJ+nE1GYhSz3WsTiGPHBjxb+NbVYB
 vv1JZQ6GFhiZTuX7xias7SbeJg==
X-Google-Smtp-Source: ACHHUZ5vuL1W6b8niAAPfGRlfaNV/+KpO2VZNptTpFgmafvFmI1nX/PAJMGEPxfYM1xfvu/yuhX4OQ==
X-Received: by 2002:a7b:c84c:0:b0:3f6:128:36a5 with SMTP id
 c12-20020a7bc84c000000b003f6012836a5mr762472wml.10.1686213445085; 
 Thu, 08 Jun 2023 01:37:25 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 n10-20020a05600c294a00b003f6050d35c9sm1209725wmd.20.2023.06.08.01.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jun 2023 01:37:23 -0700 (PDT)
Date: Thu, 8 Jun 2023 11:37:19 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <2cf8065f-6841-442e-b68c-14e0d2b055c8@kadam.mountain>
References: <ZH7sr+Vs4zOQoouU@moroto>
 <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
 <a0088658-d7d0-4047-9b5e-ea8e1987afc0@kadam.mountain>
 <9fae9daf7b2c745db1b8c359a822e4da88ce71c1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fae9daf7b2c745db1b8c359a822e4da88ce71c1.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 07, 2023 at 06:44:54PM +0000, Teres Alexis, Alan Previn wrote:
> On Tue, 2023-06-06 at 21:32 +0300, Dan Carpenter wrote:
> > On Tue, Jun 06, 2023 at 06:07:19PM +0000, Teres Alexis, Alan Previn wrote:
> > > That was my bad, i could have sword i'd fixed that before the final rev. Thanks for fixing this.
> > > nit: below function applies to MTL only which at the moment is still force-probed, so not sure if the fixes tag is significant.
> > > 
> > 
> > The Fixes tag is correct.  It's definitely a bug fix.
> > 
> > (I invented the Fixes tag so technically that makes me the worlds #1
> > expert on Fixes tags).
> > 
> So sorry my bad.

LOL.

Presumably the appology was intended sarcastically?  Hopefully?  Oh my
goodness.  ROFL...

regards,
dan carpenter
