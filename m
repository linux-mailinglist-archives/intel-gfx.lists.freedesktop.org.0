Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3C7A28590
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D75810E18C;
	Wed,  5 Feb 2025 08:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="stPNLe9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238110E08C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 08:30:23 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-4361b6f9faeso3284415e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Feb 2025 00:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1738744221; x=1739349021; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6LtisalJeGFYXyS5STnVd2MdEJAM5pbkFQFh55QG3IQ=;
 b=stPNLe9Hg03Q9Qk7WZ0XsQFb+8w1SXUW2bpI5t2p6pAh7JrN7wD2UZjipHwf3ft9fc
 u3qzQ7vfg3WPmoSTr0iaBSIf8uKV17YiE4wZRKfo23BKVHDnF9qtMgjXteD5WV7shB94
 kApDRmnjTw1UB7bvqYiN0uwLM0TC1ncfacZS34Fbr28PbT2Srkau9it/OfIU6qwPYpVL
 zNKqZgv+k+nkPa0FsOMcDNmT9zs4Dou9kQQdtR4BdL98XggxM8RKUicAgMLjI0/ycRAB
 RG7vk0HH2C3D+BS5xDKdwENGj94MybEjp+tOPOYmLRxxplKGAOp9clW/XSK+GFcJAdLq
 d+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738744221; x=1739349021;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6LtisalJeGFYXyS5STnVd2MdEJAM5pbkFQFh55QG3IQ=;
 b=A7mdf0pX7G+g6K7V24FQHfnrqI5MNx+52qGS8aAk6qUQa8lAoM+hfbGxCBdfzmBFtW
 SRGITrr4CjPiRV3ZQE0yLZYowMEFsmuPppkv4DIPgfJ0iaBZujd9FuK79V3ucYntVFqN
 FZQWi044yyN6Ch7Xgj6uc7c0+f3OAISJscrYzrs5cK1VYXdTJnlylBqXSRSFGcHn+Efu
 coRYMsvclX9D+P8thABzSx7lWYt5tsV4VLO8/V8aFwBzdd0quNhjEBdZsbAkr35lhfnT
 iDGCKAKgr9cjHHDWMd2i8K8SrQ7GTGr8JOuHZns66GpbzBdW2TA8nUh6lyPvxRRdMOdt
 Q4oA==
X-Gm-Message-State: AOJu0YxN5dLgszWgJ9YhnP/fcPqjUQjybtNCTJZ2KxeieQqK7agIJnI0
 Zto0snA+6Ie9OxEmG/e/nnOtxazLt48qjxhuuDfdTnL1Z94odMR1rbTpxjUmyKGk5PBEeOxkkFl
 F
X-Gm-Gg: ASbGnctzrUCjklTcDQ8pvmHQiDzcrExSLnItj0lg7a2GRXK/uELjoLwrLk52rO0qWCj
 FwRnMyK0haFO5/zdhZTXoAp1sE2a3Ebwe3wMMELgpNfk9TURM/JHpTSBQRmc+QJqkpoLEaNalTf
 rKRT4F6YkILD3qwoHhUA980guCh/H32W+pigWcIeiESs6sbU9t66pWwUH0oJexGAUyTytY/ENMa
 SrAUPsbaJJ7/vtpj/u2oBDFIpqG8LW7y29sSGoqLnAzzRmJrcVEW/gvJyjqrpV53vlKn8tqnv2S
 MNhWJQ3T7UULTIAckvPV
X-Google-Smtp-Source: AGHT+IG5awWwFNV8Dtn8n1JUX+K7nd4qV+dktqZCA6+UxgfofhjA5n4Szdj9T87dfG09jK3FfzG73Q==
X-Received: by 2002:a05:600c:c87:b0:434:9e17:190c with SMTP id
 5b1f17b1804b1-4390ce688f1mr12157525e9.0.1738744221549; 
 Wed, 05 Feb 2025 00:30:21 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4390d964c71sm13542465e9.18.2025.02.05.00.30.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2025 00:30:21 -0800 (PST)
Date: Wed, 5 Feb 2025 11:30:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/dp: Get optimal link config to have best
 compressed bpp
Message-ID: <6d13f0d4-9644-40eb-a0f4-71691ae93697@stanley.mountain>
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

Hello Ankit Nautiyal,

Commit 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have
best compressed bpp") from Aug 17, 2023 (linux-next), leads to the
following Smatch static checker warning:

	drivers/gpu/drm/i915/display/intel_dp.c:2481 intel_dp_dsc_compute_pipe_bpp_limits()
	warn: always clamps to 24

drivers/gpu/drm/i915/display/intel_dp.c
    2472 static void
    2473 intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
    2474                                      struct link_config_limits *limits)
    2475 {
    2476         struct intel_display *display = to_intel_display(intel_dp);
    2477         int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
    2478         int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
    2479 
    2480         limits->pipe.max_bpp = clamp(limits->pipe.max_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
--> 2481         limits->pipe.min_bpp = clamp(limits->pipe.min_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
    2482 }

This is an unpublished static checker warning that complains about weird
clamps() so it only just started showing up now.  The problem is a
mismatch between intel_dp_min_bpp() and intel_dp_dsc_min_src_input_bpc().

In intel_dp_min_bpp() it uses "6 * 3" but then that gets overwriten with
"8 * 3" eventually.  The warning is that "6 * 3" might be pointless?
I haven't followed the code totally, but it seems like potentially the
checker is correct.

drivers/gpu/drm/i915/display/intel_dp.c
  1175  int intel_dp_min_bpp(enum intel_output_format output_format)
  1176  {
  1177          if (output_format == INTEL_OUTPUT_FORMAT_RGB)
  1178                  return 6 * 3;
                               ^^^^^
Is this pointless?  Should we just always return "8 * 3" since
that's what it's clamped to in the end?

  1179          else
  1180                  return 8 * 3;
  1181  }

drivers/gpu/drm/i915/display/intel_dp.c
  2161  int intel_dp_dsc_min_src_input_bpc(void)
  2162  {
  2163          /* Min DSC Input BPC for ICL+ is 8 */
  2164          return 8;

This 8 becomes "8 * 3" in the caller.

  2165  }

regards,
dan carpenter

