Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7035599E139
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 10:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0073110E05C;
	Tue, 15 Oct 2024 08:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e5zDOVVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EA710E05C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 08:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728981431; x=1760517431;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Ru83ws6TH/LDeKMgoUWIP7z+bgpC2Yl8KJoYbj3ijdE=;
 b=e5zDOVVdHpB3nPt8gNRzl6atHPaF9IYrgcubQswSQKY/RJUkA8uAtqpb
 HwjLpmx1mbX2v5bt8O7UjGmPJ1YJtpV31f3TnfVYAx3+sIqZNqqNdkE6C
 BMo3/8Yy6RxEan6KlEoK8FJfyTGRFySf+QId/WpQeRI+b+r8oB0KoE10C
 4AnGx4EjWYjPuItlgCQKxsQ24DkwRTd5A6HDgRWL/s/vRmLK8fZCnOZqV
 DjabBfQ6M5ikxs6WfCfP0cXdzy6JAg6ffYj72fq73maL4felX+3wAPYfk
 UjehcI0xxheRYQn7Y56Qe113gc4vYY8zN3SRXI9waK2Hh0ZQkSPZMpLge g==;
X-CSE-ConnectionGUID: GarzsI7vQrula3gC2qbl4Q==
X-CSE-MsgGUID: WCySq1kIR0qMxpmCNw+Bxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28148187"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28148187"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 01:37:11 -0700
X-CSE-ConnectionGUID: qbHpn3+jRXKby9hVIlQ1yA==
X-CSE-MsgGUID: LVJwhHVgRRGULW4RkA2iWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="77769367"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 01:37:09 -0700
Date: Tue, 15 Oct 2024 11:37:05 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nilawar, Badal" <badal.nilawar@intel.com>,
 "Tauro, Riana" <riana.tauro@intel.com>
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Message-ID: <Zw4psVTdcC-wEoR_@black.fi.intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
 <CY5PR11MB621150027D63DDA95B01427895442@CY5PR11MB6211.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY5PR11MB621150027D63DDA95B01427895442@CY5PR11MB6211.namprd11.prod.outlook.com>
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

On Mon, Oct 14, 2024 at 10:01:50AM +0530, Gupta, Anshuman wrote:
> > On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
> > > On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > > > Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
> AFAIU it discrete card firmware not HOST bios.

Yes, although firmware relies on native ASPM for G8 entry, which is setup
by host BIOS.

https://www.intel.com/content/www/us/en/support/articles/000092564/graphics.html

Raag
