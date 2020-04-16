Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A183F1ABDAB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 12:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCDB6E2EF;
	Thu, 16 Apr 2020 10:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395E96E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 10:13:17 +0000 (UTC)
IronPort-SDR: jcmk6M/FDooFX8zYrHjcAGc5LMqQMrcuVUoa7fBYo7pwqX/zps7alVCdi08W4IGwk4iI5mxcXy
 1GtFyyZn7ZBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:13:16 -0700
IronPort-SDR: C7Z/hoRB0wWX4IdpCvnjF3X/aZgdv5CiXfY0jx2GQX5L9LhcDsL7p/KeYkyq0qaL0j+h8UtXoo
 k09MLzdfV9mQ==
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="427783217"
Received: from ellenfax-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.44.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:13:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
In-Reply-To: <20200416095828.GK5533@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200416074721.472-1-uma.shankar@intel.com>
 <20200416095828.GK5533@intel.com>
Date: Thu, 16 Apr 2020 13:13:12 +0300
Message-ID: <877dyf4u2v.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v5] drm/i915/display: Enable DP Display Audio WA
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
Cc: kai.vehmanen@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Apr 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> 	IMHO with control flow this function above initilization is not required.
> 	u may remove this initilization if u agree, while pushing the patch. 

I don't recommend anyone changing anything even remotely functional
while pushing. I'm fine with doing comment and whitepace changes, and as
a rule nothing else.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
