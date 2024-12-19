Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532949F7A74
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 12:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E7F10ECD2;
	Thu, 19 Dec 2024 11:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbOGHejl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF1E10E491;
 Thu, 19 Dec 2024 11:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734608118; x=1766144118;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XNfyo1CGuGtwHMl87IHhVltSQ/N8j1jpSrnGF0qYfoU=;
 b=jbOGHejlHOQ+hlxHsB4j57sWw+D3R+eH6WcVlOigHF53V9N2QVpsJVfy
 MncAaeoKtPixWBvLT6NhJxipgFsTWvzS3AZQebMwl8k37FCOtrc94u/MZ
 MSGMM0wqcw4SSGZLyn4F+LvqjCgeeNimJTZls87K25Mv3rLzyfDjACkSD
 U+RWkpMNcA+uuW9m2bZAUEkwgD3MfHRbcqkjbRD+gzRu8PVGsOrWKsUxE
 ez+LcMuzCIQjvK5tQL95Hg2+aiU20EGNzTlXexcxPT0CGzk0l//SKyEjA
 g8ZUsi09D93X17UQ3fOGRcVsma6HQh/63YcASWmzU07kWEs2jSgdejVan Q==;
X-CSE-ConnectionGUID: vCuj2nYHRVqzChBxWumxXg==
X-CSE-MsgGUID: yp5sR6jlSw2UCS8bwvKeKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45797259"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="45797259"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 03:35:17 -0800
X-CSE-ConnectionGUID: jZcoJUqmQxOEauiin0CyOg==
X-CSE-MsgGUID: jrOC2liTSY2snsGLVpQaMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98643017"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 03:35:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: UHBR rates for Thunderbolt
In-Reply-To: <MW4PR11MB7054A983FD2C1B68E6DCB357EF062@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241217143440.572308-1-mika.kahola@intel.com>
 <Z2LirmqeUmqLw17A@ideak-desk.fi.intel.com>
 <MW4PR11MB7054A983FD2C1B68E6DCB357EF062@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Thu, 19 Dec 2024 13:35:11 +0200
Message-ID: <871py3rjm8.fsf@intel.com>
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

On Thu, 19 Dec 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
> Thanks for the review! Patch is now merged with the change of naming
> to XE3_*. This is used elsewhere in the driver so maybe it's ok to use
> here as well.

Nag, I don't really like modifying patches while applying. Personally, I
try to avoid it altogether, occasionally changing whitespace or
comments, but hardly ever anything functional.

BR,
Jani.


-- 
Jani Nikula, Intel
