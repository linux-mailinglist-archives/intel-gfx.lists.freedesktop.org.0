Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FCA1B01AF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 08:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAB66E187;
	Mon, 20 Apr 2020 06:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCED16E187
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 06:40:22 +0000 (UTC)
IronPort-SDR: YjiloS2EVZcWkCqpSMGmu78t7cZDzVQcppekjtWQAdqPPK8ckPv3kWWvjZ6i+hiaJElDK31v4h
 3lnR/9iq4ezQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 23:40:22 -0700
IronPort-SDR: 7Z1WIDqCXIk9cJcY0cwy1iM4Kqhl0MEFAKKOacGH+tlbKSVfyJH9Xeg9Px7gAxmwY40Ng6DGD0
 PTHrREsdykLw==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429011459"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 23:40:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158713249868.2062.16583016796681686099@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200417130109.12791-1-jani.nikula@intel.com>
 <158713249868.2062.16583016796681686099@build.alporthouse.com>
Date: Mon, 20 Apr 2020 09:40:18 +0300
Message-ID: <878siq3bjh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix Sphinx build duplicate label
 warning
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Apr 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-04-17 14:01:09)
>> Fix the warning caused by enabling the autosectionlabel extension in the
>> kernel Sphinx build:
>> 
>> Documentation/gpu/i915.rst:610: WARNING: duplicate label
>> gpu/i915:layout, other instance in Documentation/gpu/i915.rst
>> 
>> In the warning message, Sphinx is unable to reference the labels in
>> their true locations in the kernel-doc comments in source. In this case,
>> there's "Layout" sections in both gt/intel_workarounds.c and
>> i915_reg.h. Rename the section in the latter to "File Layout".
>> 
>> Fixes: 58ad30cf91f0 ("docs: fix reference to core-api/namespaces.rst")
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed is probably too strong, but I comprehend your problem
> statement, if not entirely grokking Sphinx,

Thanks for the review, pushed with some more explanation of the exact
failure mode added to the commit message.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
