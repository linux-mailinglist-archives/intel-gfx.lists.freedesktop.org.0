Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0947878C315
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 13:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6B910E217;
	Tue, 29 Aug 2023 11:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7394B10E217
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 11:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693307217; x=1724843217;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zGfWj1oSJ87ajfNzMxT4UoMbGjUj3SKjAvOJKD7TsDo=;
 b=ACPUUPp7+K+pzPQKXSMxkjvVka0qStLQs4TXTqjVgg+qcBCkoETH5h7v
 +veLXF++HOszPIpdVO1odHsJC7p0GuvEOzLz2Z84eLIOCzrKx9oGcChA2
 Nx1IHmrRgskZSc1VzPGWmVdc7Mr+IO/o3khqekMyg0oNaqQR/Fon6aDrn
 MahaW51yl/WPkPR9Hn7of1sn7R58syaYgyneeGTcJHlpUZCu37zqttwGE
 t0rEgIDIQ/s3BBFbhxOtUTHuh/kPcQ9Mt6BffYzyH6FZifVW8wpv8/wf7
 GM7SXwlgN5S4BdfI1i4IMjYj53sLr+k+lr6IJYkVZSJFhq26NGivg3Puk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="461700836"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461700836"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 04:06:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="741775325"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="741775325"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.42.59])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 04:06:41 -0700
Date: Tue, 29 Aug 2023 13:06:31 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZO3RN/JQK5Stq1Fl@ashyti-mobl2.lan>
References: <20230828192852.2894671-1-jonathan.cavitt@intel.com>
 <169325572180.20016.4240444909153313222@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169325572180.20016.4240444909153313222@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Wait_longer_for_tasks_in_migrate_selftest?=
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Possible regressions
> 
>   • igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6:
>       □ bat-adlp-11: NOTRUN -> FAIL

mmmhhh... this failure doesn't look related. Would you mind
restarting the tests?

Andi
