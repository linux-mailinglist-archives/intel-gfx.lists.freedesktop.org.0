Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D456B2C04
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 18:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D93010E8B5;
	Thu,  9 Mar 2023 17:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C98010E20D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 17:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678382929; x=1709918929;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7SZFCKWebul5vhX9MH9avFb2g7t19nwEXEAGQnbrX64=;
 b=k0l1/ElW/3W27XQeICUo+16kJb93oczkc9iq5WwIUHpe1klgCYRdemVi
 q0LJ0gwuz/DO/6tRLPWS6RQsTf2MMLmKlDrVnypd0GmLnABk16uX5KgLi
 3qjoaazWs2/vFETvZTyzix3JhPrXfcX7k4Y50BNeJ1YdUW7aGowzeaUxf
 L3c+v2lZ9079jHksLRbuurqNOQS1pZjZhFFs9ie3+czkPsGCa9kgmJyz1
 EPZ+roJm8Qwrtt9nFzBDXnleWKy9kk9W3aP5isDGAbwIcIwsedrANf2H8
 mKhn9wel7ddx2pgPYJosDgl7JBWzLHUrnHYgeHPv43UDj2xypeU0KyIir g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="333985969"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="333985969"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:28:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="801244280"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="801244280"
Received: from pmezinca-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.71])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:28:47 -0800
Date: Thu, 9 Mar 2023 18:28:43 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZAoXS4Udeh8bVmgs@ashyti-mobl2.lan>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-6-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230301201053.928709-6-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/display/mtl: Program latch
 to phy reset
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, Mar 01, 2023 at 12:10:53PM -0800, Radhakrishna Sripada wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Latch reset of phys during DC9 and when driver is unloaded to avoid
> phy reset.
> 
> Specification ask us to program it closer to the step that enables
> DC9 in DC_STATE_EN but doing this way allow us to sanitize the phy
> latch during driver load.
> 
> BSpec: 49197
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
