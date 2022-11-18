Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481AC62FAC1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 17:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DD910E77B;
	Fri, 18 Nov 2022 16:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C8D10E777
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 16:49:25 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id g62so5382151pfb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 08:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-disposition:mime-version:message-id:subject:cc:to:date:from
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ehUyg9og+6g03rh9x9ts9jERlST9RZLtaqEmFDxKGMc=;
 b=L35mCNVIZNLiioNel/sW2fV4ieca4G2sXtR9lRBysm0PPqP3SFS0FLNmN8Pea7Zmbv
 tDwxDHIiDpeQ6gWL1H+yPvNjqinYeC71M4fdxdlOjiXQcofY6SpelDE6VqUFkvmHdGu9
 WXTxrvdq6Su4POXtCphZuJDBBBKqzcEdSnJDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:date:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ehUyg9og+6g03rh9x9ts9jERlST9RZLtaqEmFDxKGMc=;
 b=kK8jmMipl4Wtjx1MUXVX1cEu8P+tyQcpwWZlL8iDY3irWMKtkqy+rWI90MarxPJjTE
 yZd8yqSHOEa5Xrwx69ZA/nLw97La8TKxb5biRzCooTpa647KSL7Vpw6xPCoCBtAc6syP
 +UUhYwSdRU1S141LnyDIh49XlWv7vX+ESKKAqdGR98Ht925wpyX+kDNysvqtiJNj5NOB
 ucObrvTGhOfUgl7/O3TtRCm9FOb6YFezouszTfsn+BkDpYDAjmSlhQhAvIDijEHBM2Cz
 toY3DTxkeYr/4yHIHw3C971SRH+MVM9MfJX3s4XFfz9IoXyf2TprlqD0jMappIVBj703
 Dgyg==
X-Gm-Message-State: ANoB5pm9Rn5wBbqhU9MecKbHhp0YS5IE+EckT6h4ZArToN0nqEUbFl4k
 fYT+5VQ8EwCXJThHAdKSYk0fGw==
X-Google-Smtp-Source: AA0mqf60R75nwNvLu1XMvAA/HsqOTSPrQI5sXAOc+NHgyvwwAhweU9UnGjVFQ7VloaXUCUCft31vGQ==
X-Received: by 2002:a63:f354:0:b0:476:db6f:e79d with SMTP id
 t20-20020a63f354000000b00476db6fe79dmr7426913pgj.399.1668790165373; 
 Fri, 18 Nov 2022 08:49:25 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q4-20020a17090311c400b001865c298588sm3878961plh.258.2022.11.18.08.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Nov 2022 08:49:25 -0800 (PST)
From: coverity-bot <keescook@chromium.org>
X-Google-Original-From: coverity-bot <keescook+coverity-bot@chromium.org>
Date: Fri, 18 Nov 2022 08:49:24 -0800
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <202211180848.D39006C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] Coverity: intel_hti_uses_phy(): Integer handling issues
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, linux-next@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 linux-hardening@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello!

This is an experimental semi-automated report about issues detected by
Coverity from a scan of next-20221118 as part of the linux-next scan project:
https://scan.coverity.com/projects/linux-next-weekly-scan

You're getting this email because you were associated with the identified
lines of code (noted below) that were touched by commits:

  Thu Nov 17 16:12:56 2022 +0200
    62749912540b ("drm/i915/display: move hti under display sub-struct")

Coverity reported the following:

*** CID 1527374:  Integer handling issues  (BAD_SHIFT)
drivers/gpu/drm/i915/display/intel_hti.c:24 in intel_hti_uses_phy()
18     	if (INTEL_INFO(i915)->display.has_hti)
19     		i915->display.hti.state = intel_de_read(i915, HDPORT_STATE);
20     }
21
22     bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
23     {
vvv     CID 1527374:  Integer handling issues  (BAD_SHIFT)
vvv     In expression "1UL << 2 * phy + 1", shifting by a negative amount has undefined behavior.  The shift amount, "2 * phy + 1", is as little as -1.
24     	return i915->display.hti.state & HDPORT_ENABLED &&
25     		i915->display.hti.state & HDPORT_DDI_USED(phy);
26     }
27
28     u32 intel_hti_dpll_mask(struct drm_i915_private *i915)
29     {

If this is a false positive, please let us know so we can mark it as
such, or teach the Coverity rules to be smarter. If not, please make
sure fixes get into linux-next. :) For patches fixing this, please
include these lines (but double-check the "Fixes" first):

Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
Addresses-Coverity-ID: 1527374 ("Integer handling issues")
Fixes: 62749912540b ("drm/i915/display: move hti under display sub-struct")

This code appears to be safe currently (intel_hti_uses_phy() is never
called with PHY_NONE), but perhaps add an explicit check?

	if (WARN_ON(phy == PHY_NONE))
		return false;

Thanks for your attention!

-- 
Coverity-bot
