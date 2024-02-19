Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB66859F53
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 10:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDED10E1C6;
	Mon, 19 Feb 2024 09:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="C1je1ZHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC3B10E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:10:59 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-563e330351dso2919922a12.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 01:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708333857; x=1708938657; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AWqKscCHD1TAhcTFB59H1+GyIm++hMMsznHhLVzhit0=;
 b=C1je1ZHQowNd9/nbB3b4b7TybfY5N3HA/XegjDYczFHwOTZgDM23WU2FZN5WcGRhbQ
 Q6GzkcfLDsQNSY542QDbfJdzyJUaQorZQNoXGN2Lf2heakNmBbsE0DZL/V1/iCf0qOAL
 8vsH/JIkNgfv7jaELvaT0o8BqirPSy2l5E1iSu+gaGb4Oz+PWgC5GBz3yCy0zZMg/0Yt
 u2j5WECwq25claXn5q6rUVGGbjAytH2VJu7QpWAV/9mIA2k/Fr94tOhDVzTr2TdqChFG
 zkTSxxS/1UmLRDEOY7Pjxq4JYdVR8N6Nc/UOmUMuDBFysy3u/eFTHwAPFb1a1uD0eHu+
 eUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708333857; x=1708938657;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AWqKscCHD1TAhcTFB59H1+GyIm++hMMsznHhLVzhit0=;
 b=JcZbVMlgEgNkZu//0NbUAYddLQZ1nb7GSashI+XIQSg1oWSBoL9V6USc4+LjWggwRG
 wXDGAIlM7bTrl9sr6gIzqLfCZR8EbQvqHTi9Nit8hqjwRmLKEoUhr7NzEovvQCBtPVuL
 CPZiJgJmnZdanV7LIj8g9+xpwNJjMMNgQa8RtL4HBRFB0YQKPI0UaNA8IN04B8Dgh6C/
 2PhocnlS0VxK7fYOlEslwyAF7JMJVzMRYI9yeQi9G5WWn/xaJng4UASLSnvX6073Koe7
 W44/T8XGAWcQKNXDzB+JhwkevLagp2Cg7cKqTAW6nT2xvfq3ZQwrMORGUGXhqum6LfGL
 JGxg==
X-Gm-Message-State: AOJu0YwPg/EVz1Y6Oa54st1kH8KHQDPVrGxHuSWWQvOGsdhrZZAW1WsW
 yaiJR+OHD897tWu7Wf61wtXzSe9bsNNJ+mkZm23Itxgcb/FuZdXQGmfox87RmjM=
X-Google-Smtp-Source: AGHT+IG8vlpwwOaOwMvRqnBHUfPgkXhcDlBvbvq+p+2eerNmA8fCivm3x56Yq0U5p12g0XstY/ECYw==
X-Received: by 2002:a17:906:b106:b0:a3d:dc7f:6e92 with SMTP id
 u6-20020a170906b10600b00a3ddc7f6e92mr6072036ejy.73.1708333857654; 
 Mon, 19 Feb 2024 01:10:57 -0800 (PST)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 ps6-20020a170906bf4600b00a3d00616e1fsm2719844ejb.193.2024.02.19.01.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Feb 2024 01:10:57 -0800 (PST)
Date: Mon, 19 Feb 2024 12:10:53 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: jani.nikula@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915: switch from drm_debug_printer() to device
 specific drm_dbg_printer()
Message-ID: <2299d768-41c4-43f6-8a6d-857176232d05@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hello Jani Nikula,

This is a semi-automatic email about new static checker warnings.

    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:102 show_heartbeat()
    warn: variable dereferenced before check 'rq' (see line 99)

drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
    98	{
    99		struct drm_printer p = drm_dbg_printer(&rq->i915->drm, DRM_UT_DRIVER,
                                                       ^^^^^^^^^^^^^^
The patch adds an unchecked dereference

   100						       "heartbeat");
   101	
   102		if (!rq) {
                    ^^^
Previously we assumed "rq" could be NULL.

   103			intel_engine_dump(engine, &p,
   104					  "%s heartbeat not ticking\n",

regards,
dan carpenter
