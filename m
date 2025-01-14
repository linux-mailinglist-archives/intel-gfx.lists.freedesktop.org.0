Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC26A105AC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 12:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A86B10E1B3;
	Tue, 14 Jan 2025 11:40:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="TqK0H09+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4D610E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 11:40:48 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-53ffaaeeb76so5337141e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 03:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736854847; x=1737459647; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RApK6ABZb5RLkZkJuxLbChpY8t9FmD5Eg7LXWFRYRmI=;
 b=TqK0H09+ssZ1fcoYARLxc6w/2bcNV/3DXQNkgXhlF0BbR3ifXmjOlNaV5pfsDPF1u2
 5Mlgmh9/JHly8ftYc0ps8Nj/KInFWspxheEqa9CVx+t5f6eYP2ksVh7qmwDdxFpxvwyE
 dSalhCzPca/HBaz2gsKUzGuCGs3U4xbawgJfAjaVlhBgjSmahO7TXLRsZceMSQwsdgfd
 P3DJAjAJ23gXG5vpCfoHQZXKp54KS2KAXhC9zwQiJn25OAYL+PQgzdHl+Yk+akmAIfSs
 iKSz8/sOLVkchvlCQQR17HADfIs7iVYEyvvMJXfczJd7ZOr98FGs2MIGTM7h9xR1UFKx
 SXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736854847; x=1737459647;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RApK6ABZb5RLkZkJuxLbChpY8t9FmD5Eg7LXWFRYRmI=;
 b=N3PbX+oQDCCXc1i+i8f2HfWzgzB14muD7PqC3HNumVlNIqk5wNPVbxng2RsF7KPo10
 lU3iNABb9lrggeM4YkZRZmhiIEKaWqN05CO5jgOxWTv3FxJIRUnEof7n/t30NbleQv50
 3ZlTiwezoZntGlNejKoZz3lETTgK3IH3vMTEyQqF7VRMf0pJ6MxY+JMRkYprfOxEVYKN
 95KK+Z2Y2UWzMjov1d8+PvCTMALO6qZbyF3nz13WeJgZZrDKiCw3ieGVOFCmeqF/Swpk
 go8UwFF4Z+AgVitivM6o/gRh4ZtVqpPrAYhtBi+X7myXzsO8CBb9t3vDzV6QHW+pYwUw
 yUFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCULZQzH+4LlqaavhF5iPh18DtfetcZnxa8pyGSF2TySgsT045sMIRTnF4csT+eCvFbho4Jz6pD6CDM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyA+akZv8ifjaEO6Dl4KQ/G8RUQkLNMgLfUm4avyiBbCX3ULScv
 68/JHsqCnYILWYPIDiQWGaJ5noTMzeiVbi9/tTwbpdp78pwlB58pd5qs6s4laUM=
X-Gm-Gg: ASbGnctqMrb583xgicKDnOVSHdxkSzKpPEdUzqqGdrJfwyYd4DOnyYadZuzR63g2vSy
 DfqO/JgGQpz4IxKiQ2kHfdrdcjb1Z2hYoF3DtLMRCM1Z6dK3rCZyfNrD+Mu2u7o7Dbh/rnNpgEi
 kl2vwGX6Ms4T7c+5+s9uQn05wEEdXzy7GqYREgitA2krglMJ7MlkJh4a9cKTN8rCiPWTSOQcFZW
 hwflxQLao6vT+1diPqdbnzoF3sLyWjCdN3CqmqCcMX8+G5r4mY6xQzI9aRhry6FfpBtidk7NLRG
 SDgE/EuB/O9S1ynzGpPu1t5sO/oKuw4Kosm9
X-Google-Smtp-Source: AGHT+IEP3QuLGe6bUVSbTfGj70OEbmA3v0rl9rotK0Soo8E/zBAkb5J8r0RoTnIkZJH41eNgQ3s5pA==
X-Received: by 2002:a05:6512:3d18:b0:542:2a28:e30f with SMTP id
 2adb3069b0e04-542845d315emr8457141e87.31.1736854846750; 
 Tue, 14 Jan 2025 03:40:46 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428be49a28sm1633804e87.42.2025.01.14.03.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 03:40:45 -0800 (PST)
Date: Tue, 14 Jan 2025 13:40:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, 
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build warnings after merge of the drm-misc tree
Message-ID: <2f74opyehgqxnd7337fc23hwwow2ggod25obqweu72j2zfbo6g@xuvurpzbwbyd>
References: <20250106174645.463927e0@canb.auug.org.au>
 <20250114164324.3a42700e@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250114164324.3a42700e@canb.auug.org.au>
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

On Tue, Jan 14, 2025 at 04:43:24PM +1100, Stephen Rothwell wrote:
> Hi all,
> 
> On Mon, 6 Jan 2025 17:46:45 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > After merging the drm-misc tree, today's linux-next build (htmldocs)
> > produced these warnings:
> > 
> > include/drm/drm_bridge.h:738: warning: Function parameter or struct member 'hdmi_audio_prepare' not described in 'drm_bridge_funcs'
> > include/drm/drm_bridge.h:738: warning: Excess struct member 'prepare' description in 'drm_bridge_funcs'
> > 
> > Introduced by commit
> > 
> >   0beba3f9d366 ("drm/bridge: connector: add support for HDMI codec framework")
> 
> I am still seeing those warnings.  This commit is now in the drm tree.

The patch is pending reviewal:

https://lore.kernel.org/dri-devel/20250107-drm-bridge-fix-docs-v1-1-84e539e6f348@linaro.org/


-- 
With best wishes
Dmitry
