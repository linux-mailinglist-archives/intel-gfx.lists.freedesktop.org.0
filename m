Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D82E607E4F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 20:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880A610E5E0;
	Fri, 21 Oct 2022 18:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A991D10E5E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 18:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666377145; x=1697913145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yg75nse8RtfflMtjUamkeFqf+ubtKKEfpmc8BF6xleM=;
 b=BBfRItWvhAzehMKNyCndyVMJuT5kISKaEf4doa+oiuQ6RFI0/IXdPz0V
 8OwczqM6lxaiZdWjkliAKeNgKMYB+7INGSkfYSgswFEluM0RvRgYW4pyT
 CkXRSXUuVjH/KHlvxb/uWHlhwnPUcnNPdeOvodmY8FQu5jebsxUcSDCkX
 YmDrrvFidn46Sn2EwfFY5CYuxRWXcgX0mKLpszIsHDX0GM6ySRih8XHuf
 davoYKOaJikek7P9/vxYK8slYPgDTGvemPHnm2GKgBBAv8io0iabIv0Wg
 vribTFMjqzxCMOOn/zE0a6OyCMsBfwx7nOCxcHG72R/krVL/68tbAyhv0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="305809583"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="305809583"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:32:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="630603365"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="630603365"
Received: from apierro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.148])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:32:21 -0700
Date: Fri, 21 Oct 2022 20:32:19 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1Lls6uW9J0tAjII@ashyti-mobl2.lan>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <20221019143818.244339-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019143818.244339-2-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: use intel_uncore_rmw
 when appropriate
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

On Wed, Oct 19, 2022 at 04:38:18PM +0200, Andrzej Hajda wrote:
> This patch replaces all occurences of the form
> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> with intel_uncore_rmw.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
