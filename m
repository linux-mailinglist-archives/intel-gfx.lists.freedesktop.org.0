Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC76E15F614
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EF06FB8D;
	Fri, 14 Feb 2020 18:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009716FB73
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 18:14:43 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id z193so11549697iof.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Tb+un5ER0ihevvMNWBeBo1/9xeZWjdzmTv/S+JLW97w=;
 b=V0kSCo1LWbbKCzg2k/h9lOfaYqKFjbfeLJ7sjEkk0M8HFmP6HryE6UYoIYU+4SebdU
 Ei01ei06hHuoMPSW2L7JN6ZUyhG2Olbgadc+/F26nn+UC5YDyr/nCBdFNH8aZGJ2LSx5
 yytXBoM3ppz8RwoAIrx3ByQeSxq6XtA18rQ431CSf4x6NVMZ+LoupdQCOjhC8kxgiqRd
 L/RQ8KnmBBEfQ2DQSUClJoSIta2fKAe2JBdwAHE9JlQk6feA3b4wVhNaWGy4BE7i7CeX
 mx+F9XAnoBHqkLeD6RUGABKB9UYo3P9ISbnk2yrlhswi2WJGVOx8GYOC95T4w8b3Yk2Z
 GCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Tb+un5ER0ihevvMNWBeBo1/9xeZWjdzmTv/S+JLW97w=;
 b=NvY74+mvEzpSWk9Ha5xbIQRl0jZpqpxMbaF2yUTOZ60axRDQDngd41J75UAAe25iPv
 OlR8bOqcRCdJAymLEWGXisrMsr/Z0cAvLQh11hGcGr+tegNeJvteKVY5UfIZPodU+XA2
 jjbq6OJ1Pr30kfhR2a7C/ywrrEGytEGP6KUOHt+O658ayVLuZJoMtmKNeNDekhh7Q5jn
 UZHQSTMNV3Kp45iQrndnyFlY6dYnXapQAKRkC6D/b6A9rQRk2aKWoBivlFUSsZLTcbRX
 Iz3YJtK6QgZIsSJrmMubLnt1Olv97bO1zFxvmR8l+FMUxya8tkzhc2tiTkaPsgSC5l9Y
 r6Dg==
X-Gm-Message-State: APjAAAUGYru40RwxFCEnrWsNzISpwCwvc8eWaUkMAgCl61eZfz2rxSrM
 Li39bUkP6YC7lVxWQ8bEFtxn0Q==
X-Google-Smtp-Source: APXvYqzScjDoVMtHvxn90P4qTc63u8x+jl56ywYA9N3bz30P4wcfTF8W+cLkudG6NKVg/yIaSIB9fQ==
X-Received: by 2002:a05:6602:2201:: with SMTP id
 n1mr3312701ion.32.1581704083043; 
 Fri, 14 Feb 2020 10:14:43 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id v18sm2212550ilm.85.2020.02.14.10.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 10:14:41 -0800 (PST)
Date: Fri, 14 Feb 2020 11:14:40 -0700
From: Ross Zwisler <zwisler@google.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200214181440.GA24285@google.com>
References: <20200214015038.122913-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214015038.122913-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 14 Feb 2020 18:48:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Force PSR probe only after
 full initialization
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 13, 2020 at 05:50:38PM -0800, Jos=E9 Roberto de Souza wrote:
> Commit 60c6a14b489b ("drm/i915/display: Force the state compute phase
> once to enable PSR") was forcing the state compute too earlier
> causing errors because not everything was initialized, so here
> moving to i915_driver_register() when everything is ready and driver
> is registering into the rest of the system.
> =

> Also fixing the place where it disarm the force probe as during the
> atomic check phase errors could happen like the ones due locking and
> it would cause PSR to never be enabled if that happens.
> Leaving the disarm to the atomic commit phase, intel_psr_enable() or
> intel_psr_update() will be called even if the current state do not
> allow PSR to be enabled.
> =

> Fixes: 60c6a14b489b ("drm/i915/display: Force the state compute phase onc=
e to enable PSR")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1151
> Reported-by: Ross Zwisler <zwisler@google.com>

Tested-by: Ross Zwisler <zwisler@google.com>

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Note that when applying to the current upstream/master from Linus you have =
one
small conflict:

$ cat drivers/gpu/drm/i915/i915_drv.h.rej
--- drivers/gpu/drm/i915/i915_drv.h
+++ drivers/gpu/drm/i915/i915_drv.h
@@ -505,7 +505,7 @@ struct i915_psr {
 	bool dc3co_enabled;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
-	bool initially_probed;
+	bool force_mode_changed;
 };

In Linus's tree the end of that structure looks like:

	bool dc3co_enabled;
	u32 dc3co_exit_delay;
	struct delayed_work idle_work;
	bool initially_probed;
};

Where the 'struct delayed_work' element is named differently.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
