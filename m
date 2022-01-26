Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0355D49D555
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440B089F41;
	Wed, 26 Jan 2022 22:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A6689F41
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643235542; x=1674771542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tg958Znr4FORIBa+hnOxad5eKD6nuzudjy4U2BrfAxU=;
 b=VsDFgdYLtfRCMtfX3A9L68zP97zkWA9oTAZEIXiR4o8DAHqDWbdHbUsN
 uUoTGlgFlXwdRO8MKhkhsjmMykatteZcZ+UzqXWRZDabJa0+12gZTnSe+
 1KAfQevpJ41JqNdZOZUSZ4sva986dWOOKkjVYPqchTi3UDZq/8HRDglmE
 8/D9PvOGIhEYCiXGTKtsB30MLQ8KVjE6sPhFofujqtNq6CQ3mmqDxwxBF
 UJtRO3m7Obt9e7dBkS7wPe1a6L4qDOjMxWKmjr9Fh/2T3+qAwnEK6Bo0o
 6I8Wik5fCkXNj9aO3HF3FpYH7RYtL6mBxe/Fdg/faZBgyupSlgIm40HeA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245501616"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="245501616"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:19:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="477625301"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:19:01 -0800
Date: Wed, 26 Jan 2022 14:19:00 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126221900.p3cxefyuadkyxac5@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Parameterize
 R_PWR_CLK_STATE register definition
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:23PM -0800, Matt Roper wrote:
>At the moment we only use R_PWR_CLK_STATE in the context of the RCS
>engine, but upcoming support for compute engines will start using
>instances relative to the CCS engine base offsets.  Let's parameterize
>the register and move it to the engine reg header.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
