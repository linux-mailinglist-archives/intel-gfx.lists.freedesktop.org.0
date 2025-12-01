Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEADFC9608D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 08:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A531A10E0AE;
	Mon,  1 Dec 2025 07:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="EHYXEo/w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E596F10E0AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 07:40:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1764574835; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WCnlhziMQKp5iFMEMICnHZqYYOLmIyhcXzTcNCEiMfnrKnsjd/mvyB0/ljaLbgUyfdHV5aTk3gdkydrx/7FMelHVZBroxQSAWmT0EUwB1ECuAdOp8MHUVPTmqgvQRzuoTrXY1LN0tcULtZ5ay6Wb1ut8vHmoKTd7qta/4TRBsw0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1764574835;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=vAR26bqthkak+RzVdohu+m6qN+v5iGeZzca85vFunVU=; 
 b=SAEEBG4AKDgCwSAXe6KOa8MGSLQyC77HnOxlx4XE28oaYMaPlP+64VllhQGArfm2BxRSi3Pugxfh8E3G0X0v3Q6I3ZI5tmrXwvsw8EkRpzSn4y+YgWKAjLvXS81gTg8bhKEFoFbY0tRS05RUvq2NYjEr3RNrO+Qhz0iUHSswAUs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764574835; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To:Cc;
 bh=vAR26bqthkak+RzVdohu+m6qN+v5iGeZzca85vFunVU=;
 b=EHYXEo/wVA7erY81vjw/e7+PFYCWHNP/gDUkOFtsHlR4PyuNWybif7VolsNQWnc6
 jRZbE17TqfzJzd/CGtPXHKp+U0rKg/eg4MpNscEFbBBCcfduDi3tNWcgiMmI+9IeNh4
 UuNXQISbapBkXSfjyI+aZaBRE5nnTmT4J7gQmZEo=
Received: by mx.zohomail.com with SMTPS id 176457483432081.2685506901521;
 Sun, 30 Nov 2025 23:40:34 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.CHECKPATCH: warning for Add new general DRM
 property "color format" (rev2)
Date: Mon, 01 Dec 2025 08:40:31 +0100
Message-ID: <5077723.31r3eYUQgx@workhorse>
In-Reply-To: <176436598285.39153.14578789056730747031@a3b018990fe9>
References: <20251128-color-format-v5-0-63e82f1db1e1@collabora.com>
 <176436598285.39153.14578789056730747031@a3b018990fe9>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Friday, 28 November 2025 22:39:42 Central European Standard Time Patchwork wrote:
> == Series Details ==
> 
> Series: Add new general DRM property "color format" (rev2)
> URL   : https://patchwork.freedesktop.org/series/157910/
> State : warning

I will fix most of these (I guess the CI uses a different checkpatch
preset than b4 prep --check, had only one of these) but there's
three that I won't address because they're stupid:

> 
> == Summary ==
> 
> [snip]
> b979329d91af drm/bridge: Act on the DRM color format property
> -:73: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
> #73: FILE: drivers/gpu/drm/drm_bridge.c:1182:
> +			ret = -ENOTSUPP;
> 
> total: 0 errors, 1 warnings, 0 checks, 57 lines checked

The whole point of using -ENOTSUPP here is that it's the same return
code as other branches in drm_atomic_bridge_chain_select_bus_fmts
already take, and the caller already handles.

> [snip]
> 943216634f10 drm/tests: hdmi: Add tests for the color_format property
> -:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #90: FILE: drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c:2036:
> +	priv = drm_kunit_helper_connector_hdmi_init_with_edid_funcs(test,
> +				BIT(HDMI_COLORSPACE_RGB) |
> [snip]
> -:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #133: FILE: drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c:2079:
> +	priv = drm_kunit_helper_connector_hdmi_init_with_edid_funcs(test,
> +				BIT(HDMI_COLORSPACE_RGB) |
> 
> total: 0 errors, 0 warnings, 4 checks, 150 lines checked
> 

This is a big "no" from me. I'm not going to align stuff to the
opening brace when function names are so long they take up almost
the entire line, and it seems every other invocation in this file
agrees with me here.



