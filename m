Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43897C91709
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 10:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E23310E125;
	Fri, 28 Nov 2025 09:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bROiYvLl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C28710E04A;
 Fri, 28 Nov 2025 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764322080; x=1795858080;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/r6RjDuNcXDKMMbDxjuEaoS7gB+TVKKlBItFUbAaEgU=;
 b=bROiYvLlPc6yUXPR1G8xDYjWfZYGZTb226ox6jmbtnzpVcipRZbH2FkN
 +eb9ecWWdkF4buEz6q4Kv0YvCZvOJESjK0tGwnZCRcJh/vOUo1DXu97zf
 HpOMQl4QeF1JDxwi2wD7tmgWmM892Y1kt6f+mpH/urzRVlIpaYWqOLtEf
 bHD8BmEUmb23U4dQRrSm3XdsSCL6ZnnAFzbtKPJpV5u4r+XGarabl3VdO
 prRDO1jMbmGBt9ED0IhVFvmH4LHq9O80FuTO3gyZvSTTeappObB/DF/oO
 rpL7KrOt9dhJYokwbhTh89HkK90bByFzP1e68Gojr39Kejdnwy3BXwSkE Q==;
X-CSE-ConnectionGUID: bdPbBaKgRG+nwF7PXgBrXA==
X-CSE-MsgGUID: f+9/BcbyTiuUHE7BexS8fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77460365"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="77460365"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 01:27:59 -0800
X-CSE-ConnectionGUID: EOXnuR1XTdWOdR3bDY7k2Q==
X-CSE-MsgGUID: bPMI93eOS3+q/AqXd0gXQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193862341"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 01:27:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC
 implementation to i915
In-Reply-To: <DM3PPF208195D8D6748F2A492BB93672716E3DCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1764090990.git.jani.nikula@intel.com>
 <d362b256934c6c739d9decda717df2dbc3752481.1764090990.git.jani.nikula@intel.com>
 <DM3PPF208195D8D6748F2A492BB93672716E3DCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Fri, 28 Nov 2025 11:27:54 +0200
Message-ID: <d0e81ef460c5ab25b053f38cfa0c3b77f797efd5@intel.com>
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

On Fri, 28 Nov 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC
>> implementation to i915
>> 
>> The HDCP GSC implementation is different for both i915 and xe. Move the
>> i915 specific implementation from display to i915 core.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, series pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
