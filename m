Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E771F84310C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C07D113700;
	Tue, 30 Jan 2024 23:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC69113700
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:20:06 +0000 (UTC)
Received: by mail-vk1-f175.google.com with SMTP id
 71dfb90a1353d-4bd91d89fbeso1244138e0c.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656745; x=1707261545;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8MzQh60IBx0TvQ77rgTiwu4kDYsxcY5vTTdl2z48QQQ=;
 b=CtHdQgypHV1ePjPuDJW2BMEnN6wgsVVasFutrynfTEbFSsbv9gTK534d2Wk28vlY1z
 8oIbOSnxl+XHKz7nvJh+6lsreJa5c5vgmjZLoxf/XpxtwjIG0N0thBWEWnDI5vW2hZNe
 8B82SBgA0HZM9doh7gSeGY9ahJFmoEsGrTNxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656745; x=1707261545;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8MzQh60IBx0TvQ77rgTiwu4kDYsxcY5vTTdl2z48QQQ=;
 b=ZynTysGy+81BsAjcVLpraMjwMoBa1vKAfiLb8zt+c59XBU0FxLqbU0DKaK17pLLGTF
 arqFrSoC8SsIBHWsWH512uLc/ZYJgwlYRqI9D6zhtFd4yqmQxgCTgr0zx5PCGFpGqc7+
 3TxHyYIlPEV+hRVzVY5+y31EG6jlAJxf9PLH/iQtap1SymRya7LiyYMkoquz+U0pccAk
 RxRcuzYLjicmzlayJa1czkZAi3kLUCt9aCLsKkDldDebmBlWw6kTFqh8e/JnjbOqk7ep
 05q5siIhHhWbumNNUHODgEcpwYv5mjc+XmaPPsBH3qYk5LLJ+THNzJhnixrn17as/qoT
 zxeg==
X-Gm-Message-State: AOJu0Yx1wWXqk2+6DzMetDrLzaFimRAVzh9l1tYYvMRtWzhvW4obYAgY
 y1BndQN33LuG+gen7y+zyFCjyDxlWTR1ySaRnapnwgyppdXO/wACzfMXd8Vu9w==
X-Google-Smtp-Source: AGHT+IFb7XQXATQbJz9WT9zVQRN5Cn8gmuiou3PqvMcVuh+1p0EAG0CzsVm0U3cU06ie1ejlsjGMPA==
X-Received: by 2002:a05:6122:201f:b0:4b7:46f8:2fe3 with SMTP id
 l31-20020a056122201f00b004b746f82fe3mr1074672vkd.8.1706656745142; 
 Tue, 30 Jan 2024 15:19:05 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 ph29-20020a0562144a5d00b0068c524a70fbsm2058852qvb.66.2024.01.30.15.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:19:04 -0800 (PST)
Date: Tue, 30 Jan 2024 23:19:03 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4 04/16] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
 stolen memory access
Message-ID: <ZbmD593pzqVt00kV@google.com>
References: <20240116075636.6121-5-ville.syrjala@linux.intel.com>
 <20240125102714.22499-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240125102714.22499-1-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 25, 2024 at 12:27:14PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On MTL accessing stolen memory via the BARs is somehow borked,
> and it can hang the machine. As a workaround let's bypass the
> BARs and just go straight to DSMBASE/GSMBASE instead.
> 
> Note that on every other platform this itself would hang the
> machine, but on MTL the system firmware is expected to relax
> the access permission guarding stolen memory to enable this
> workaround, and thus direct CPU accesses should be fine.
> 
> The raw stolen memory areas won't be passed to VMs so we'll
> need to risk using the BAR there for the initial setup. Once
> command submission is up we should switch to MI_UPDATE_GTT
> which at least shouldn't hang the whole machine.
> 
> v2: Don't use direct GSM/DSM access on guests
>     Add w/a number
> v3: Check register 0x138914 to see if pcode did its job
>     Add some debug prints
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

