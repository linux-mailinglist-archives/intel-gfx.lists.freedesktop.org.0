Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534AD7D7F3C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8057B10E785;
	Thu, 26 Oct 2023 09:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F019E10E785;
 Thu, 26 Oct 2023 09:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698311018; x=1729847018;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c4MSt3IVC5wsSmd/sv/I3QLhx8bWU+8cjmY2sivFi4A=;
 b=NXGi0h63TpR+kaDdbVk7dQwlEfzTQMaGnI6qpk1NToujlQKmnHjbxcC5
 mcsm2hQHY/qKVf2pWMUHOLU3OL9xsFpb2Ku3nCulBqGoP5IruTsVTRjoO
 14+0kZle8tLCAotawF9WfTOnhWt8tLU2vktzpaRdPyGmCLLwfeQyt6KN2
 1KCZsxH+KELbIp2wqX/Q7G9biRUU6d5G7gr1aHpHuUR0qCD9YU6/fycWx
 KCRZqHWuOn8oLLHrf2VXqISKySs186YVIDQKNNkKwa7SwkoNT/A/PUER1
 mR1fr0rtThO7waBOVlWDtlGrvh6MYxAOTsJotrNbxHIAghDofpJdK09A0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="386376368"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="386376368"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="752648970"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="752648970"
Received: from kacperbu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:03:34 -0700
Date: Thu, 26 Oct 2023 11:03:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Soumya Negi <soumya.negi97@gmail.com>
Message-ID: <ZTorZEeJUJ_FFeYx@ashyti-mobl2.lan>
References: <20231026044309.17213-1-soumya.negi97@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026044309.17213-1-soumya.negi97@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove {} from if-else
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Soumya,

On Wed, Oct 25, 2023 at 09:43:08PM -0700, Soumya Negi wrote:
> In accordance to Linux coding style(Documentation/process/4.Coding.rst),
> remove unneeded braces from if-else block as all arms of this block
> contain single statements.
> 
> Suggested-by: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>

Acked-by: Karolina Stolarek <karolina.stolarek@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
