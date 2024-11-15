Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D7F9CD65A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 06:00:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC02F10E151;
	Fri, 15 Nov 2024 05:00:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="lLfFzd5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F1B10E135
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2024 05:00:50 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-71ec997ad06so1083948b3a.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2024 21:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1731646850; x=1732251650;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=YYwG3fsMUujlh8YdlQYTp9mSk2fRAG+oygfyzhkdia4=;
 b=lLfFzd5Eh6DwlEv7Pc/tZ/eNgvAa/OI8/Vl0y7lwQwdf2tetS+Zc0x4wDf7pjUlsDU
 MKV4JuULSE3BOZ8r3fd0yR/QOoqwWPa9ShVJhZtcVQdMcW5uQ7LOzxSaUtjUuJqYPqhi
 9HQWWjRLvfZ2WoflYMFtSI6wRUukCAWSDdFQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731646850; x=1732251650;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YYwG3fsMUujlh8YdlQYTp9mSk2fRAG+oygfyzhkdia4=;
 b=fvqLQcFR6SSOEZ/D11YWwscmXedgeoLn/ZgonX+miRy0MraZVG2BSnGhU9ALCC2De+
 /CPu/P0GEtG5/PYkLQlrDj1ziOPwmHB5rVVg1s7XVro5dE8b+YWnCTyVB9jR+iYAz4SB
 zuUfJ2bwL4VFoHibj4TMBJl0tOgf2J7ujQwEnXKj1XXEpX+JTZid0IlCTPN8ZLF/Q+iZ
 9eK3l6focMC2PtRa6gyYykWn6I6qknkVfET0eE/4GUPr8eYNqaSG7fOYrAfR6iMr0AzZ
 srpcPS107qeq/9n7Ygv0PE7suZ9UCnWDCIlT8v7Tu0Kqvf3M5vn3DmY/HPBAdvZeJTAS
 T7Pg==
X-Gm-Message-State: AOJu0YxzLzHUpGCg5mcpR+1wfNQaYfqdaYkrjfzl1OHAAaIAaLm5uaw7
 q2JbDqGkTmnIivrwmeMX5r48l4Gn/BR3XjtgBAI4hPa3m7BCBD5bimVJilncaw==
X-Google-Smtp-Source: AGHT+IEMj5dXeOXbzB74a2pWj/jZAvDbT1Lt9QazhvyUiUSRg1R9MwBH9JRSwYuPVCaZSvbG0b+CSg==
X-Received: by 2002:a05:6a21:c214:b0:1d9:386d:9441 with SMTP id
 adf61e73a8af0-1dc90b267fcmr1352824637.10.1731646850400; 
 Thu, 14 Nov 2024 21:00:50 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:142f:6cb4:e895:7127])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7f8c1dd62dasm461592a12.74.2024.11.14.21.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 21:00:49 -0800 (PST)
Date: Fri, 15 Nov 2024 14:00:45 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 0/3] drm/i915/display: handle hdmi connector init failures
Message-ID: <20241115050045.GM1458936@google.com>
References: <cover.1731599468.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1731599468.git.jani.nikula@intel.com>
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

On (24/11/14 17:52), Jani Nikula wrote:
> This is an attempt to resolve [1].
> 
> [1] https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
> 
> Jani Nikula (3):
>   drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
>   drm/i915/hdmi: add error handling in g4x_hdmi_init()
>   drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()

So these look reasonable and good to me, and I think landing them
makes a lot of sense.  For that part feel free to add:

Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
and FWIW
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>



Now, regarding the issue in question - we are getting there, but not
quite there yet.

I'm still seeing multiple NULL-ptr derefs, namely on

 DDI A/PHY A
 DDI TC1/PHY TC1
 DDI TC2/PHY TC2
 DDI TC3/PHY TC3
 DDI TC4/PHY TC4

The thing is, all of them are DP connectors, we only ever call
intel_ddi_init_dp_connector() on them, so dig_port->hdmi
is not init-ed, wheres intel_hdmi_encoder_shutdown() doesn't
distinguish and treats everyone as HDMI connector, dereferencing
->hdmi.

With the small addition I don't see null-ptr derefs anymore:

---

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1abf080b4a20..0c6bb378b708 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2377,6 +2377,11 @@ void intel_hdmi_encoder_shutdown(struct intel_encoder *encoder)
 {
        struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 
+       if (intel_encoder_is_dp(encoder)) {
+               pr_err(":: oops another day ::\n");
+               return;
+       }
+
        /*
         * Give a hand to buggy BIOSen which forget to turn
         * the TMDS output buffers back on after a reboot.
