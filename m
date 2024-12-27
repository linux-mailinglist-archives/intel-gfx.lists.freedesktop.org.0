Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 354879FD3D7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0CC89143;
	Fri, 27 Dec 2024 11:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="KdfElt+9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5854010E3B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 11:29:36 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-43634b570c1so51793455e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 03:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1735298975; x=1735903775;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gJclV88QZHtzUeIiQn3ZHUeptS+xMTe0l05Gn8P35xw=;
 b=KdfElt+9g7PwXkesmkvH8gLzQ/vZlwaf+Wuox9vn0OwWE1zDadTVNiWvkC5qjbFboX
 zrzPBdplYvxSOkoSe/KLsQB+tForQ9F1spoh6fyeiOEG1sOki5sYVZf4upld3CVixn4G
 iq+PWw71IPl4e7K19i/M76FWFYtRSvrV2dbVQFUA0FLy8H2lVI3B1Imf7ZSuuJfkwHSn
 H2T/+iuLAfFUKXd+7Y1LmFAAiUzG3ca9yDpLywt6mAFdXOJR7oBwhfQAMNKyenKkRwIr
 sSkSmUPDK5X02QD2Wvw5wuLpT5FtyLGgqKGM3HkQ+W9vBXg/INjM1vAV56vmp1IRebUI
 JuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735298975; x=1735903775;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gJclV88QZHtzUeIiQn3ZHUeptS+xMTe0l05Gn8P35xw=;
 b=HlblWdHK+BLn5w0yPuE3c74Y7bptuOrCB38BQV4kzTX0jseOI7+doCYxQf/gefHMhL
 HPGhwG2wBrzp7jXbYZk4X19ziIEoVfnsEqg0FVe9upwEi18krGBSDVB1PcNX/EdWWfkp
 bHQi3YgtLQVjBddmHEnJgPAHl4BYymV5/O8gGrMwdmQAAXarSJBZqmYrHgQIS9Ve91gb
 bRQSAr/+dW7oXIr7LWvjyy4feZ45ljWbUNxUWBefdMjhBniFXi1SW+uV/OgqNKuEOT6U
 Hiukj4up4mG3ELqhbbu6dXIBgJJKFcaQGF0K4KH4hiJW0MRC4E4YrDjWth/efrWpISlU
 KAJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPVoon4MX8aq9/G1iEuPD1wzTvyBXguGBYCAt6xfXplX9+xa2+CmYZbPev9aVZ9si2lT7IME+0YZ0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwB0XXL5DnfnyQUlGfc1/3QviwuUF8l0mqOfAgjpbs76MnB8aRB
 ld8UIzwn6Yns5i2rnAs8uU/ZvJGQ+oWW5igBCjqxMUO6ykDY/ofuLXga15xK140OosAMdZ+OKRn
 3
X-Gm-Gg: ASbGnctvQ2KukAOwE2Nz4UH1As/BElq7N2Eqw6dtueG/l9QsF94lDI6zh1Th2WMq0vT
 Y6cGwb0sL9NeCJmK3Ti2VLZjzrm4lmn4YI4QY7voLlIOyZRq0y+Nibn7dSZ9Op8jNr7i0WKDkSn
 p7arRNT2Mm9TSijB795OHJXaJi0ZvPe7QO49WgIIOB+MQkIE1gcuQCe+CiPXnALW7JhuyfyY/nw
 lPAREg6i7p+QTyStb75zCbCVuzuQ0niDuRlcI3rVAEARk2euzrokRjvcewPamevTLlFotMx
X-Google-Smtp-Source: AGHT+IFlMxRKaTsjxuPK5d+9gwkm9xyOfQqiwMsOXnHf5t0pdkpM0kLd/X3i38cd90nRdWjqP8ZnGQ==
X-Received: by 2002:adf:a341:0:b0:38a:4b8b:c57a with SMTP id
 ffacd0b85a97d-38a4b8bc5d9mr1323911f8f.44.1735298974708; 
 Fri, 27 Dec 2024 03:29:34 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c89e278sm22249175f8f.75.2024.12.27.03.29.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Dec 2024 03:29:33 -0800 (PST)
Message-ID: <a07c6872-51a6-4072-9390-67119a5989ef@ursulin.net>
Date: Fri, 27 Dec 2024 11:29:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gt: Add GEM_BUG_ON to ensure at least one engine
 supports migration
To: apoorva.singh@intel.com, intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@linux.intel.com
References: <20241227111128.1546618-1-apoorva.singh@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20241227111128.1546618-1-apoorva.singh@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/12/2024 11:11, apoorva.singh@intel.com wrote:
> From: Apoorva Singh <apoorva.singh@intel.com>
> 
> Ensure GEM_BUG_ON verifies at least one engine supports migration.
> Additionally, it prevents passing an uninitialized variable to
> intel_context_create().

Under what circumstances can this happen ie. does it need a Fixes: tag?

Also consider that if it can happen in production on some real hardware 
then GEM_BUG_ON does not prevent anything (GEM_BUG_ON is compiled out). 
On debug builds it also strictly doesn't prevent anything but crashes 
the machine.

Consider this as an alternative (if the error scenario is real):

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c 
b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 6f7af4077135..83e6c20cb750 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -296,7 +296,9 @@ static struct intel_context 
*__migrate_engines(struct intel_gt *gt)
                         engines[count++] = engine;
         }

-       return intel_context_create(engines[random_index(count)]);
+       return count ?
+              intel_context_create(engines[random_index(count)]) :
+              ERR_PTR(-ENOENT);
  }

  struct intel_context *intel_migrate_create_context(struct 
intel_migrate *m)

But check if the whole error propagation chain is fine to handle it.

Regards,

Tvrtko

> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Apoorva Singh <apoorva.singh@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_migrate.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 6f7af4077135..528a7cba3623 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -296,6 +296,9 @@ static struct intel_context *__migrate_engines(struct intel_gt *gt)
>   			engines[count++] = engine;
>   	}
>   
> +	/* At least one engine must support migration! */
> +	GEM_BUG_ON(!count);
> +
>   	return intel_context_create(engines[random_index(count)]);
>   }
>   
