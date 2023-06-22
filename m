Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A30A73A24A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 15:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B4810E56C;
	Thu, 22 Jun 2023 13:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3F110E56B;
 Thu, 22 Jun 2023 13:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687442172; x=1718978172;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iwvWjTXOATc+/cgzxfPqHvCL/9Mmo5XEzzxlVw4W7tY=;
 b=j382NUErFfHfaTI5cAbglM7ltbAdBwtzBPrV6t3s+9Hb0O0ggVcYJ60o
 Oinfnx4cub0pK4BqIdv1K1TX9a/E4j9WDkLqbwKqAYq9Fg+ixAIyilcJK
 6d+GI5b2hpcOo67slz30iM1yWuWUMbhlBN2N0GoSQWjHzpSdTQj9BoHBX
 OmwrQCkq3MSVw52Gt6mLY3Q72yffs41v1McaZ7YjWkWaWJ5mhaFHWWyst
 uTaHWnwFcde8JjBRic1ikXam03spxW9FI0pXhQBhPA4ADQ34TZof9Ofob
 TzKQ9R6opUSB+0dAk/MewdYWkZzEVoMhq65TVhOXx17H5zYcDVaWNB/pr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="390236808"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="390236808"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804794065"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="804794065"
Received: from akivisil-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.96])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:56:09 -0700
Date: Thu, 22 Jun 2023 15:56:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ZJRS9uWyMiq2uB8/@ashyti-mobl2.lan>
References: <20230622101412.78426-1-thomas.hellstrom@linux.intel.com>
 <20230622101412.78426-5-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230622101412.78426-5-thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/ttm: Don't leak a resource on
 swapout move error
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
Cc: Christian =?iso-8859-15?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-15?Q?K=F6nig?= <christian.koenig@amd.com>,
 stable@vger.kernel.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

On Thu, Jun 22, 2023 at 12:14:12PM +0200, Thomas Hellström wrote:
> If moving the bo to system for swapout failed, we were leaking
> a resource. Fix.
> 
> Fixes: bfa3357ef9ab ("drm/ttm: allocate resource object instead of embedding it v2")
> Cc: Christian König <christian.koenig@amd.com>
> Cc: "Christian König" <ckoenig.leichtzumerken@gmail.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v5.14+
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
