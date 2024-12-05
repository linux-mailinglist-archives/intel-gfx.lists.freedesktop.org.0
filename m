Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4069E4CE1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 04:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7097610E37D;
	Thu,  5 Dec 2024 03:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="YyIzfUsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB65510E37C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 03:53:30 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-725935d001cso406676b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2024 19:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1733370810; x=1733975610;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZZSHV0LKLhgrBuMbp+ZWR29V4e1LVWQGoaBkExJal3k=;
 b=YyIzfUsVPm1cRrEru/U/XAp5iaW6nlwZML35pqCEmv+TkYfQCQ4+Q/Zxf5vI1+ij5Q
 CfNbFS6VIgJENhqn2hGFGnClukhuWb72qgH8is45N9oBmJ3EpmDkvIKEHPTk2hXeFeFr
 ryazggUav39780M9bzpGxnXW34afwe9FZU38U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733370810; x=1733975610;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZZSHV0LKLhgrBuMbp+ZWR29V4e1LVWQGoaBkExJal3k=;
 b=hru43OMISfiOgKJzzXP9iyUuFJJOBVq13kul479eVaBGNl20ObYHjclGrtZcrN70b/
 RxPd0U8HKJFEHv/uDDb1wqn0gYpvPmCFZK5DvhEG+6WTZLPOe/A3Q6qVhVVzQ3POnRIQ
 ETv13tLzLcB/EGNg8l5viw+6rn0/VLV5CODdj5xmWvOrgT2eDMFkVIbSjY7Ed3vmJTs7
 23ZDn9An8a/qHqzIv19alxxbZGezBYXquTR2e9tvvByVP5pkgQzhD6W8MpvphuJjMM/3
 kJKqLNkbY9Khumh2+GQF/gU2/ojTOzKRfjY+cgGuQZg6QuhdpFgWmgNAz/IdOK8SSZuc
 WV9g==
X-Gm-Message-State: AOJu0Yyck7sNblTKCDG9OdpOKa7zh48eef1TUIdXdjZoIAEb7gV1E+ta
 zLjd0HGP9XCGcYnuFEZyZzJMuac9ZGXiQPFqTXRc5zWfoFKQ1o8yOrB+fkRLWQ==
X-Gm-Gg: ASbGncusdklwBv+zLu1R4oo069BIaxwfug8Wk9XrOVYqed33W07TQu5EdYnUP/RrdZ4
 HPgt0G1f7J8x3FiAuBNJp1H3d0576PnWJow/W4ef3RHmiEYnGmRgUzUNxL39V11zqbPYmL0v40w
 Fb7webji23L1yoR1nkYWqzxPdj9HqUF81OHZgt1PvSUCTVt1DBn7De9iBZ5lb/bLD+iIIXdvhno
 43e0AUKbvicKqNT++XTqd1jtQbq5CvnWd3Fe2X5q/oOK8brGee+
X-Google-Smtp-Source: AGHT+IEpqntxhBxjXGPvDXVCuneN7k7K0pj00Sr3u1kw039fQL0FpKMhBXxl/Rcb3K7xZhQPSVrq2A==
X-Received: by 2002:a05:6a00:9289:b0:720:9a03:b6dc with SMTP id
 d2e1a72fcca58-7257fcb8d0emr12161298b3a.18.1733370810174; 
 Wed, 04 Dec 2024 19:53:30 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:84f:5a2a:8b5d:f44f])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-725a2cb5588sm267630b3a.170.2024.12.04.19.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2024 19:53:29 -0800 (PST)
Date: Thu, 5 Dec 2024 12:53:26 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 0/5] drm/i915/display: handle hdmi connector init
 failures, and no HDMI/DP cases
Message-ID: <20241205035326.GD16709@google.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
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

On (24/12/04 17:07), Jani Nikula wrote:
> 
> v2 of [1] attempting to resolve [2].

Works like a charm!

Tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
