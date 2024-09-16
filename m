Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBF7979F02
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CACA10E312;
	Mon, 16 Sep 2024 10:13:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="EjjIR17/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30747886A4;
 Mon, 16 Sep 2024 10:13:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9232EA41C67;
 Mon, 16 Sep 2024 10:13:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73093C4CEC4;
 Mon, 16 Sep 2024 10:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726481613;
 bh=xxi8czYF+zpfW+NyqGizSO/JM3i+2CVO1xmYS5v4kys=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EjjIR17/sYDnmA4FJ+9blNvJv3jaQ4FBIlfdqRE/E+CJaBWknTTOoLKKoRiUbc2A5
 VvOXmDeoBCXy/lugVULyXiuBvJ/IsKlnQS/6anynPzHO60jKP6SHtsGW4SXAoVL5na
 O+0vVWjnwarW9whmiB1/LQP0B9fu2OCtjgTWR/ApTj4PYOVMueD5fb7shSMBL0Chk9
 uVHo8DCz9qYKdfyQieC+7+d+/FT3lYRXJBLQ8xVze27sLpLIlKVzDZF99KDQK1iWqw
 Lpo2E++c945g9lJDVfRSVh2co9Bei6Uyh8GvwOtU8OlvM82+5Ti7lWg1Xt7S0od3EZ
 3eofwqyAgDCcw==
Date: Mon, 16 Sep 2024 12:13:27 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Yan Zhen <yanzhen@vivo.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
Subject: Re: [PATCH v1] drm/i915: Fix typo in the comment
Message-ID: <pb2orbzsopaoxojtx6gdgr23idqdpuleo2gclwuhytu5ntblsq@643rpnj4mpph>
References: <20240914064141.295712-1-yanzhen@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240914064141.295712-1-yanzhen@vivo.com>
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

Hi Yan,

On Sat, Sep 14, 2024 at 02:41:41PM GMT, Yan Zhen wrote:
> Correctly spelled comments make it easier for the reader to understand
> the code.
> 
> Replace 'ojects' with 'objects' in the comment &
> replace 'resonable' with 'reasonable' in the comment &
> replace 'droping' with 'dropping' in the comment &
> replace 'sacrifical' with 'sacrificial' in the comment.
> 
> Signed-off-by: Yan Zhen <yanzhen@vivo.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
