Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C581985FD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 23:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3298D6E4AB;
	Mon, 30 Mar 2020 21:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4393689762;
 Mon, 30 Mar 2020 15:57:04 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id f206so8771467pfa.10;
 Mon, 30 Mar 2020 08:57:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9/4thFLv6op3Zs+mK/Ns7jr79rR0HQCcdVScaqGH3CI=;
 b=q9tAUUv2KGQFYjcqognMFjix2ThEKXqjdTxIlhK16M5k/6koBgsCaIGnSBP0yi0Py7
 JIYHALuNaoFUVpLgI+XMAIVY+IAvII41bld958un4uO9IFaZBHuqnf5s+pNDKpOo7Vs4
 xEKL+Ocz3L7eOsztavXzLEHuXUCrwCBZMXDwTe1SrmndyivHnTJHdynmI5g7fkexgCFu
 UbPI6xPkakBBLSIlZhsaThuPX5nUNkwQH+YupW346J/MuazulRhXgUgxcSHlsoUp6GPE
 NnefAnPXCVln7f1UhFjXEPXp5sHT+C/IKOA70OhebfHopI3qpDSaMzz2FWnq3SOubs3/
 ejug==
X-Gm-Message-State: ANhLgQ2cVbo0ru5kX0Dkq6wa8oieSWzz38fiv3u7cro92QGq+ZjsdQ6h
 xErGFtFjzyQK+vzr/Rya8OA=
X-Google-Smtp-Source: ADFU+vtihdAM3uF+uZiYX8jQA7Gpu44e6L9q7VAk6bt3CwQo2h+zcGyH16iilVCBjpS3TvXUE3jqXg==
X-Received: by 2002:a63:c09:: with SMTP id b9mr13852057pgl.222.1585583823668; 
 Mon, 30 Mar 2020 08:57:03 -0700 (PDT)
Received: from sultan-box.localdomain (static-198-54-129-52.cust.tzulo.com.
 [198.54.129.52])
 by smtp.gmail.com with ESMTPSA id r189sm10026510pgr.31.2020.03.30.08.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 08:57:03 -0700 (PDT)
Date: Mon, 30 Mar 2020 08:56:59 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: stable@vger.kernel.org
Message-ID: <20200330155659.GC2022@sultan-box.localdomain>
References: <20200330033057.2629052-1-sultan@kerneltoast.com>
 <20200330033057.2629052-3-sultan@kerneltoast.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330033057.2629052-3-sultan@kerneltoast.com>
X-Mailman-Approved-At: Mon, 30 Mar 2020 21:04:08 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Schedule request
 retirement when timeline idles
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CC'ing relevant folks. My apologies.

Sultan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
