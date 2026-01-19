Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F1CD3BB11
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 23:57:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344D310E22E;
	Mon, 19 Jan 2026 22:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj07FLmR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C750410E22E;
 Mon, 19 Jan 2026 22:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768863474; x=1800399474;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=hCqUAAXoq/Tnx3O74zxKv5KdWfE1Wd+aULQTwp+bNE4=;
 b=cj07FLmRvUJQ8sRP7w5gESK4a3/uN1dHOpTY0LQDq9CPEfKFmeuVr6U4
 knr926O7qKwOwhJP6dJMGjCJIaPnNvW9MtuUaEXuylYaTdBUu04/w8jIX
 B7AZ1lEetD7pexaSatkIIExmwscvgWBT7tghAY6HEp3jYQjrYy8ewhFmS
 X3m0IHjukx93m3F3seDTjLe2VvEcpm8hYY5WihfvnBTOdyrwRseqhqZnE
 Yh+dZPFvat4Xj1aafEyz5FZeYW7AWjFo69SbFNuGVT3q3gUBy3ogD2XP0
 q/Jv4eMSMh9SBa6HrNpJspdIKdSudoPOuBRtqpdGRCM17ujb3nGu16i9D Q==;
X-CSE-ConnectionGUID: cYdiK8YKR3Wy4BX1ii8RdQ==
X-CSE-MsgGUID: tFiQlNTOQCiyWQ+s7pa57w==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70123456"
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="70123456"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 14:57:53 -0800
X-CSE-ConnectionGUID: ofx34AQbQv+lkGBdXbcnvQ==
X-CSE-MsgGUID: X/zQ0/LRTJ6jdFZh0qspDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="210449501"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 14:57:51 -0800
Date: Mon, 19 Jan 2026 23:57:49 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [v2] drm/{i915, xe}/pcode: move display pcode calls to parent
 interface
In-Reply-To: <037265c310c9f3901e2e47d00e2e225c76370f94@intel.com>
Message-ID: <21d8ca2f-c021-ac5f-4807-272890d39ab1@intel.com>
References: <20260115113337.4079184-1-jani.nikula@intel.com>
 <f7329c3b-77f2-1944-16de-f3a75aa1a2aa@intel.com>
 <037265c310c9f3901e2e47d00e2e225c76370f94@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-2043904845-1768863472=:3942884"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2043904845-1768863472=:3942884
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 19 Jan 2026, Jani Nikula wrote:
> On Fri, 16 Jan 2026, Michał Grzelak <michal.grzelak@intel.com> wrote:
>> While moving the code, should we rename val & val1 into val1 & val2 (or
>> val2 & val1)? I think even renaming val -> val0 would suffice.
>
> The variable naming matches the register macro naming. Historically,
> there was only GEN6_PCODE_DATA, and GEN6_PCODE_DATA1 was added
> afterwards. Hence val and val1.
>
> Nowadays the spec has DATA0 and DATA1, so renaming both the register
> macro and the variable to DATA0 and val0, respectively, would be fine.

One question though: should the renaming include also variable from
functions which take only val as argument instead of val & val1?
E.g. should we rename val->val0 from snb_pcode_write_timeout() or
is it unnecessary?

Asking since unsure if the argument consistenly references generic
variable name or former register macro.

BR,
Michał

>
> Just not in this patch. Generally, only do one thing at a time.
>
>> Or (if the comment is valid) should I send it as a separate patch?
>
> The latter.
>
>> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
>
> Thanks,
> Jani.
>
>
> -- 
> Jani Nikula, Intel
>
--8323329-2043904845-1768863472=:3942884--
