Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9553F61210E
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Oct 2022 09:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5E410E250;
	Sat, 29 Oct 2022 07:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7C510E250
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Oct 2022 07:32:16 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id v28so6418515pfi.12
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Oct 2022 00:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fZy5lCa/2Ecq1kSp+TM41cU7cXmzgRAAem3qyDrtqVE=;
 b=A6ozaRuL05mZkdsRzdSlURHF6+RyhhlQMHJ17oRbpBtm3eHluiPPTe/pjG6GCA10vk
 tspsEtfuGzEps6YAzOIbVmjuDaXvqm1pWzEH1nBnDI3wqRh0OvIqYp2m7/OwTKipwoyl
 NAZ2yriUdMjhNWS1Wx7WX9sK0FE0Y59FOGeLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fZy5lCa/2Ecq1kSp+TM41cU7cXmzgRAAem3qyDrtqVE=;
 b=sZ+OOeXkg6SdCcMD1Vd+MfAx4UA3mnDlXugTYrPmQNXwvgYrNyxx/CmxDGVId5qzry
 NYCW2SrHSUZEyhO7APcaxuoBfNKTNmAKzS/i1EPnviwxe2vPWT/BXqy9ASqGkB/JQxKu
 Tzq2RGwJFJLL6dl38lRm14lAA/OW5a6YBU5WoHC4/Pcj3SxL5zj3o1FlikFHUTqnWUA+
 yVx20Fb9cUfwX5b3aQW5V/u0q+7gDPoaEcp0ERU1w+XJrDtxM/z30FkC5EgwqOoRlEW5
 WTM5yx0azpIh7cofLSbD8v82zxKpfyS5oqwafx7YflW1coZb4hW57wwfYFnYGVLWlF3B
 Sa7w==
X-Gm-Message-State: ACrzQf0nrKRYtCK2iDdDUbsXE/lcDTax9cr6g82GW7BctSgHLfjgMIBG
 PlGCznRw7S8CI9DS3Ivg3ldSOQ==
X-Google-Smtp-Source: AMsMyM6/CT3Vh+btOf4K3+q/dntWfviHzwWozBtDItq+XamMQLfaCbtowXk6VHNabYjKDdbmPNU6XA==
X-Received: by 2002:a05:6a02:10a:b0:461:26b8:1c95 with SMTP id
 bg10-20020a056a02010a00b0046126b81c95mr2895261pgb.503.1667028736033; 
 Sat, 29 Oct 2022 00:32:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 j7-20020a170902758700b001868ba9a867sm607345pll.303.2022.10.29.00.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Oct 2022 00:32:15 -0700 (PDT)
Date: Sat, 29 Oct 2022 00:32:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <202210290029.3CD089A86C@keescook>
References: <20220926191109.1803094-1-keescook@chromium.org>
 <20221024201125.1416422-1-gwan-gyeong.mun@intel.com>
 <ffcfb7ce-7646-c827-8d29-7c41e4b121d6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ffcfb7ce-7646-c827-8d29-7c41e4b121d6@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] overflow: Introduce overflows_type() and
 castable_to_type()
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
Cc: arnd@kernel.org, airlied@linux.ie, trix@redhat.com, dlatypov@google.com,
 llvm@lists.linux.dev, ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, gustavoars@kernel.org, nathan@kernel.org,
 linux-sparse@vger.kernel.org, linux-hardening@vger.kernel.org,
 rodrigo.vivi@intel.com, mchehab@kernel.org, intel-gfx@lists.freedesktop.org,
 luc.vanoostenryck@gmail.com, vitor@massaru.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Oct 29, 2022 at 08:55:43AM +0300, Gwan-gyeong Mun wrote:
> Hi Kees,

Hi! :)

> I've updated to v5 with the last comment of Nathan.
> Could you please kindly review what more is needed as we move forward with
> this patch?

It looks fine to me -- I assume it'll go via the drm tree? Would you
rather I carry the non-drm changes in my tree instead?

>
-- 
Kees Cook
