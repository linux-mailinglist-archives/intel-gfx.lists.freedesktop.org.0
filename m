Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48513220D49
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 14:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B746EB48;
	Wed, 15 Jul 2020 12:47:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A306EB48
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 12:47:11 +0000 (UTC)
IronPort-SDR: EB3U4LXoPr2nqQCZDn+RFS/+Q6JnnJWcCVEVqVlSsLv/W56w9ir63tKI95mNR4nLjnCTgPvz7K
 VRa9zLrwGd0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="136591980"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="136591980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 05:47:10 -0700
IronPort-SDR: oGG+GDlRkdOyjffG3O7qBjo5hGXFXngRbqvRjgFXVysNcsChTrWp47sqHnBQ4Yu7M7tXSlFrx1
 PWYNSU4HMY1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="326168610"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by orsmga007.jf.intel.com with ESMTP; 15 Jul 2020 05:47:09 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jul 2020 13:47:07 +0100
Date: Wed, 15 Jul 2020 15:47:06 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Melissa Wen <melissa.srw@gmail.com>
Message-ID: <20200715124706.f6bvf7g7dqbcnyaj@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <cover.1592840756.git.melissa.srw@gmail.com>
 <0cef6a7b7dbd8510de62f0c17e8cd952cfa84678.1592840756.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0cef6a7b7dbd8510de62f0c17e8cd952cfa84678.1592840756.git.melissa.srw@gmail.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] test/kms_cursor_crc: release old
 pipe_crc before create a new one
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
Cc: intel-gfx@lists.freedesktop.org, twoerner@gmail.com,
 Rodrigo.Siqueira@amd.com, rodrigosiqueiramelo@gmail.com,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 22, 2020 at 01:37:55PM -0300, Melissa Wen wrote:
> When a subtest fails, it skips the cleanup, and its pipe_crc remains allocated.
> As a consequence, the following subtest also fails (timeout) when trying to
> create a new one. This patch releases any remaining pipe_crc to enable the
> creation of a new one for the next subtest.
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> ---
>  tests/kms_cursor_crc.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
> index f105e295..5976df5f 100644
> --- a/tests/kms_cursor_crc.c
> +++ b/tests/kms_cursor_crc.c
> @@ -423,6 +423,8 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
>  	igt_display_commit(display);
>  
>  	/* create the pipe_crc object for this pipe */
> +	if (data->pipe_crc)
> +		igt_pipe_crc_free(data->pipe_crc);

That's a welcome improvement, but you may want to also look at
06333955bf3d ("tests/kms_cursor_crc: start crc only once per test")
for some extra inspiration for future work on this.

It should be possible to initiate pipe crc to be initalized only once
per each tested pipe in run_tests_on_pipe() - igt_pipe_crc_new() can be
costly on some real panels.

Anyway,
Reviewed-by: Arkadiusz Hiler <arkadiusz.hiler@intel.com>


>  	data->pipe_crc = igt_pipe_crc_new(data->drm_fd, data->pipe,
>  					  INTEL_PIPE_CRC_SOURCE_AUTO);
>  
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
