Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0E5985569
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 10:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF65F10E7BB;
	Wed, 25 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrEGRPzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956B910E7BB;
 Wed, 25 Sep 2024 08:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727252752; x=1758788752;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SAJ16mz+DDaQ++pt/h+jvlEfdXUK7e8PqJ5E1/ivQ2E=;
 b=OrEGRPzL8j9wgQO2+XBI2yk8ExdrM5FidhOLqpQC1JiBKtyLb9ZxDum7
 7LQ2gm7eoypX+Lx+vDNLoMbOuHVah+sotQFneiuqfSvc0Nu2P7AlG1nzr
 KSH6ktkF/v67bQz87sP8IijOR8us6IvD0pGH5QkPbh/PRR8olynbrLVUo
 PZrj047E/YNdLrOb/H/JptG7oHESnB/5FMfh6zW159zgeQcC0/9sd7VZo
 5bpdXGBUtP2DkM7yCT+92axtFMvPz7buxm+Oq8e6hNNGuJeLlboQteHXb
 I8GVatrtzRFASvu1zkFVq3YEnFW9MhSjQSkXQliJD0Y3TiLdMqexKWRka g==;
X-CSE-ConnectionGUID: VXtunTH+QYyimZYpXqegdg==
X-CSE-MsgGUID: HJrumJDvQwijaC0AjVyYKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="30174746"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="30174746"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:25:39 -0700
X-CSE-ConnectionGUID: TMGhIv2wSN+SUhcA/a/TPQ==
X-CSE-MsgGUID: cU6azY/9Q4i16DBCN3jsPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="75801746"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:25:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
In-Reply-To: <IA0PR11MB730764C8A2E8453527F25CFABA692@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240924061358.1725306-1-arun.r.murthy@intel.com>
 <20240924061358.1725306-3-arun.r.murthy@intel.com>
 <871q195w77.fsf@intel.com>
 <IA0PR11MB730764C8A2E8453527F25CFABA692@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 25 Sep 2024 11:25:33 +0300
Message-ID: <877cb03zsy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 25 Sep 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> > +		/*
>> > +		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h
>> to 00207h and
>> > +		 * 0200Ch through 0200Fh.
>> > +		 */
>> 
>> I really like comments that are actual helpful sentences. Why do I I need to look
>> up what 02216h and 00202h-00207h are? What's wrong with the original
>> comment?
>> 
> Original comment was wrong "read delay before reading link status"
> In the updated comment will replace the registers with meaningful name.

If you replace the registers with meaningful names, won't you end up
with "DPCD 02216h" -> "delay" and "DPCD 00202h to 00207h" -> "link
status"?

BR,
Jani.




>
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Jani Nikula, Intel
