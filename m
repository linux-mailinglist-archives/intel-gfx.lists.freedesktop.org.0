Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE554872801
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 20:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8438B112C73;
	Tue,  5 Mar 2024 19:52:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="fUIJs477";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BABD112C73
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 19:52:35 +0000 (UTC)
Received: by mail-ua1-f41.google.com with SMTP id
 a1e0cc1a2514c-7daf957595bso1673336241.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Mar 2024 11:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709668354; x=1710273154;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=R3fkcH2hFJLKaxf4bfMHS7hfpNy7K9Hi8XESNCkiAzE=;
 b=fUIJs47792fJlNY9QfwEjsFpf5gZiSQKX9UcKdzokIIzJ0HSv6EYe9aaZfa3TNiedD
 j46keOAwA/KdKovfVfk33qjOwLFJK02LxyNpskmXTD5vZctq56+nXCfQjNAlzVjeAOHT
 C7/X1ZIa1HK00m89ahJLRyOWVwraJri76nq4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709668354; x=1710273154;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R3fkcH2hFJLKaxf4bfMHS7hfpNy7K9Hi8XESNCkiAzE=;
 b=QZoKM8abA2xWm/E1cuqQPQjWyPsw1rlr+Kz8bsJ8pUxB0GTLR/7m1zBgL73jK6zdIu
 B3AnkMBi5JnVsxErKbcZxzvPyTQnFQ0N+YrwU9NSsbAug6M6G9oAJvBxgIuY3uVYPAac
 nAXQqB4tqKUPAugtWr/S/vOKXcnLra4cp0ycPBnJA2EylALOdhsxWGJjKCHLK1xXlxM8
 N63vH3lRVFBDkDNpKdSZtcmBonS2McR7RzHpPYtruXwYoNBWyd/IHqZiwVG4HHgGxhUo
 UbD1LpZQuUO9UMPoiTZlsw7f4StoCpiPKzRFFFk9y50NoJIJtrdlYZe4asoSNu6kKJi2
 /BgA==
X-Gm-Message-State: AOJu0YyodG3bVJ4mRICBNBx/6b8FOz9AmUNeSkYx6ayCGGObXEpqr2Rs
 W/S5mQTJ8TjUgsug0QUmmYJaMdp4+qGKiekbOknXeEYZKc26OHuOepTNi+2Zbg==
X-Google-Smtp-Source: AGHT+IFg9j11r0RCuGeY9SIMLVxRif9/LXI+eDro/a1WAyKCmwkgT290Tj8ZGDicrVzY1v/XK1AacA==
X-Received: by 2002:a05:6102:2912:b0:472:ab4f:1c10 with SMTP id
 cz18-20020a056102291200b00472ab4f1c10mr3626031vsb.11.1709668353968; 
 Tue, 05 Mar 2024 11:52:33 -0800 (PST)
Received: from google.com (206.254.145.34.bc.googleusercontent.com.
 [34.145.254.206]) by smtp.gmail.com with ESMTPSA id
 c6-20020a05620a11a600b0078823804a9asm2973573qkk.18.2024.03.05.11.52.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Mar 2024 11:52:33 -0800 (PST)
Date: Tue, 5 Mar 2024 19:52:32 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/2] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <Zed4AMj66C-pmSAK@google.com>
References: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
 <20240228080213.17441-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228080213.17441-2-stanislav.lisovskiy@intel.com>
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

On Wed, Feb 28, 2024 at 10:02:12AM +0200, Stanislav Lisovskiy wrote:
> According to BSpec we need to do correspondent MBUS updates before
> or after DBUF reallocation, depending on whether we are reducing
> or increasing amount of pipes(typical scenario is swithing between
> multiple and single displays).
> 
> As of BSpec 49213 if we are swithing from multiple to single display
> MBUS registers should be updated with correspondent values _before_
> Dbuf reallocation happens, however if we are switching from single
> display to multiple then it should happen _after_ DDB reallocation(i.e
> plane programming).
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Thank you for this patch, Stanislav!
We tested it on a MTL-U based Chromebook (Screebo),
using different configurations (eDP, eDP + HDMI, HDMI, etc.), and
it worked well -- joined the mbus + no visual issues or i915 errors.

Tested-by: Paz Zcharya <pazz@chromium.org>
