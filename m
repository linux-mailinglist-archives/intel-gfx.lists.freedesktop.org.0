Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F5B1464B3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C126FB8F;
	Thu, 23 Jan 2020 09:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E686FB7E;
 Thu, 23 Jan 2020 09:38:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 01:38:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="220611101"
Received: from tletko-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.38.232])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 01:38:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Bharadiya\,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200123090041.GA804@plaxmina-desktop.iind.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
 <878slzea12.fsf@intel.com>
 <20200123090041.GA804@plaxmina-desktop.iind.intel.com>
Date: Thu, 23 Jan 2020 11:39:37 +0200
Message-ID: <87blquik9y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [ [PATCH v2 00/10] drm: Introduce struct drm_device
 based WARN* and use them in i915
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sam@ravnborg.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Jan 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> Will rebase remaining patches and submit.

Please also add a patch to convert MISSING_CASE(), and another to remove
the WARN_ON/WARN_ON_ONCE "overrides" that we have in i915_utils.h.

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
