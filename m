Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF219DF431
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Dec 2024 01:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA6710E17A;
	Sun,  1 Dec 2024 00:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="LnqM43Ua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C3210E17A
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Dec 2024 00:27:10 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id
 38308e7fff4ca-2ffc81cee68so31342081fa.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 16:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733012828; x=1733617628; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=E9Qt7URTO4k9qAUkSHIf1xJQE4jLU+R6wI1osn6SJjE=;
 b=LnqM43UaDx0EwQ2YzktgZCvBV8QYlMXLVz2yAl4htYehabaP53U2YSKS3maGYK6RfE
 60Gx0bT6tlzcRCy34A2GiyTz32WfnvImUvHM0fbNJ9gWObus9L6zj2kwftyLjL6hcbEV
 5PCeKc5pcdL4IxnUkxp7BuvmGSo8aun1GFDRy7dKqPKcSSzdXhqe3Hn8LR1lDL4Wd/1j
 MPD78a0Zo9S+kSwvWYMLN7TVbyYi89Uj0bfer4LPgC5N4fBqlqT0NiQIx75ANmaJiDIs
 eOe13hywOacYBOfPIdwK/9a+AZoeJxUJwgdtxduZTxJaNEMrDYB2N637JJgu+X6K1FrO
 UZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733012828; x=1733617628;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E9Qt7URTO4k9qAUkSHIf1xJQE4jLU+R6wI1osn6SJjE=;
 b=syrLN06rN2nJFeKCjtdycaFds89aNuNCS2/o1ABgeq22lyfZoQ2hJgbHOAJ8DvdRJT
 UE6jMAPyiQaVpScml7+YseNduEXawXRu6ZrW5A46ruykoScvdOhgt11RZrxVu8o0ex6o
 vF5LfYwXca+VMjUYt4614BJPoEbwko2fdJANmy08a6x+HRqQbdXHvMzRb3WxGNNF9n70
 W+rThBqYbsaUUBXVbXmO1hcIQtuxn+lGszeHKBmv2FNnEcgIACTmQRvHrHb9+is0v735
 lsNJ57sAwewwrEqN8J/MPmSZhn0dNHB4UGS/m6lFK0pLPFXC4qEK7Ke12RlxMRMiPok+
 //SA==
X-Gm-Message-State: AOJu0YzCX1SSdQKFwsuYqi7FKBRRMczV28szVBaqz4ubjcT/Ko/Z+RRk
 GmxkEpNyTD/Jk0ZUaFUabUvyNTveoyjCbb736Qhch2xal6vzxm6xqXGS4SySxpg2Z5VJMdWVgtS
 Y
X-Gm-Gg: ASbGncsBaeS2pyzWw0q445m9SBPQCIxoeO5DT0JP92JOeX6wUlfbMmrrmmYwNwNTQFC
 5w1yiCQpcR0pjcagdCDSct+FD2OhmxCoYPp2eRiXHo5taHhxqfV8KCFDot17mDbYjeVmUcmFYH9
 pCQ+q/lRTwJzlDh3PCqa9k5LWxL0WEwfc4Yxph9FsQsNBde2mn4u5t87oTMxg5b4WWiD40J+wKF
 //ziyRkGTzaBYvSqNNNtNdUYy9Fh07vXlwBs8ODDx7O8t2QUphNq/M5uAUT1O8N3E9i9w+QFryR
 E8BPJTpxttdNsuzanqign7ahjsejEg==
X-Google-Smtp-Source: AGHT+IGl3VdJ4KWXc/ITRZayM5yxFnScBUl3eCGnk+fw/8Krier3Qk4BoVYN7/D7hbQeCL/bjUDhxg==
X-Received: by 2002:a05:6512:690:b0:53d:ceff:5a4 with SMTP id
 2adb3069b0e04-53df00aa05amr8808710e87.10.1733012828066; 
 Sat, 30 Nov 2024 16:27:08 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df646effdsm908786e87.130.2024.11.30.16.27.05
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 16:27:06 -0800 (PST)
Date: Sun, 1 Dec 2024 02:27:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXI=?= =?utf-8?Q?e?= for
 drm/connector: add eld_mutex to protect connector->eld
Message-ID: <m3hibof6gdp4tibailrxl5gb46sze6u635vnkcb2koldnlt5ao@4oo5inqpxnma>
References: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
 <173301106785.1054768.10767657030217680139@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173301106785.1054768.10767657030217680139@b555e5b46a47>
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

On Sat, Nov 30, 2024 at 11:57:47PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/connector: add eld_mutex to protect connector->eld
> URL   : https://patchwork.freedesktop.org/series/141958/
> State : failure
> 
> == Summary ==
> 
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/141958/revisions/1/mbox/ not applied
> Applying: drm/connector: add mutex to protect ELD from concurrent access
> Applying: drm/bridge: anx7625: use eld_mutex to protect access to connector->eld
> Applying: drm/bridge: ite-it66121: use eld_mutex to protect access to connector->eld
> Applying: drm/amd/display: use eld_mutex to protect access to connector->eld
> Applying: drm/exynos: hdmi: use eld_mutex to protect access to connector->eld
> Applying: drm/i915/audio: use eld_mutex to protect access to connector->eld
> Applying: drm/msm/dp: use eld_mutex to protect access to connector->eld
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/msm/dp/dp_audio.c

Okay... I see. I branched off drm-misc-next, but drm/msm has changed
since the last merge point. I'll wait for drm-misc-next to be updated in
linux-next before reposting the series.

The rest of the code can still be reviewed normally.

> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/msm/dp/dp_audio.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/msm/dp/dp_audio.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0007 drm/msm/dp: use eld_mutex to protect access to connector->eld
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced
> 
> 

-- 
With best wishes
Dmitry
