Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C62D3136E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 13:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C1310E87E;
	Fri, 16 Jan 2026 12:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nx6VcXD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1B110E87E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jan 2026 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768567231; x=1800103231;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ufffkS2mqiwHD+dssele3gbXuEWdXctSIPFchjeDzoE=;
 b=nx6VcXD4Ic2bp0saGwCbW6FUkuh0ANFYgAcpkDAGR3ENJbbZiMgbYKib
 xCSNyNNMftZ+bg0OtbOuM8Qiz/OEm2KLXSoEEl7/eNzPpRL4bDBNoUFM0
 w6MM+fDxyin6VcKqOkcc/jATlDRJkzbe6MrdWmeZO1WNMYEbSAbolrkbJ
 eFn+xpIV6amm1tSJmYQJ+pSj2Qp3QrE6DFJyZubece6eMlPvJg6A50hXa
 ZANRuytMbzwg0DExXAZ5v5IPe3ugulGf4UIFRfVAZ/CiI5wsEp9WEa9t6
 H0QPpyVQxPWeAa2y/dNcgxz+OcPedgj4aVZpUKrqd8bzHf9Q6I1g5YnSC A==;
X-CSE-ConnectionGUID: GHDrngpuRVOZviDFSSBhfA==
X-CSE-MsgGUID: TP1KTYCQTuGeW239shrALg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="72468500"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="72468500"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 04:38:25 -0800
X-CSE-ConnectionGUID: iaetJsT1RKyI0uRWnCN3ow==
X-CSE-MsgGUID: k9pFfR2VQa+1B3oEpgpzJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="204842126"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 04:38:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/crtc: Guard vblank wait when CRTC lookup fails
In-Reply-To: <LV3PR11MB87689200E77909E362FAC0A6F58DA@LV3PR11MB8768.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260116062203.1650454-1-kaushlendra.kumar@intel.com>
 <6f7ad8bd5d41e50176d98cfb658aaa7b77f63cd0@intel.com>
 <LV3PR11MB87689200E77909E362FAC0A6F58DA@LV3PR11MB8768.namprd11.prod.outlook.com>
Date: Fri, 16 Jan 2026 14:38:18 +0200
Message-ID: <71f5fe5fe81d887c3a1331f76a46f8e889fdaa1d@intel.com>
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

On Fri, 16 Jan 2026, "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com> wrote:
> On Fri, 16 Jan 2026, Jani Nikula wrote:
>
>> Do you have the backtrace?
>
> Hi Jani,
>
> I don't have a backtrace 
> intel_crtc_for_pipe() can return NULL, and dereferencing it without 
> checking seemed risky. If you'd prefer to see an actual crash before 
> applying, I understand. Happy to drop this if the NULL case isn't reachable in practice..

Yeah, I'd like to know if this can actually happen, and if it has ever
happened.

If this is static analyzer inspired, there's the problem that IME adding
NULL checks on these is a positive feedback loop to the analyzer that
some places check for NULL i.e. not checking is an error.

BR,
Jani.




-- 
Jani Nikula, Intel
