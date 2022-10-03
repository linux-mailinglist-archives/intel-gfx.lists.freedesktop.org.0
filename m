Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D7E5F3A02
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808B910E11A;
	Mon,  3 Oct 2022 23:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7408C10E11A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 23:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664840759; x=1696376759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iwMublcTQ0MmcVzd++UGsxtF292+vft1v3icPrbWPkQ=;
 b=hKoIUkiShkQQcVIdlcJTVADb+qwjtkRQoA/ptd9cl1voN4S2UEWCV7z0
 R2h4ynM/eusFVzTN5gzQuUrSxt7tgRqy0x+AxdtD6v1E+tdQLjNP4o2NL
 9uUjfEkcs6Ciz9B+77qIHuVD/CAbJWWm2CxCiIvT2idX3Vo4luvOnk2nD
 Hbh5vbm0R0AxzgvrXBgPr56guC06uMRBOsfsm5A89mYN/9K2+6e6BmLe3
 8jy0wWgV3RJUBojUccxc7l9YPAatk2zFj3IkDUb7f6RT3SrGhUWtjbkfi
 ZepI2/nnlw83esleP1ePgkbjWp0BTGv3HRQiez0eVdLLV+xQRSZls15Sx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="301507967"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="301507967"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:45:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686342320"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686342320"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:45:57 -0700
Date: Tue, 4 Oct 2022 01:45:55 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yzt0M2en0w/CuARE@ashyti-mobl2.lan>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-3-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003223258.2650934-3-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Use intel_uncore
 alias if defined
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Oct 04, 2022 at 12:32:56AM +0200, Andrzej Hajda wrote:
> Alias is shorter and more readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
